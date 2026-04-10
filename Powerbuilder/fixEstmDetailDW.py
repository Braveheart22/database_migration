"""
fixEstmDetailDW.py
------------------
Rewrites the retrieve= SQL in d_estm_detail_quote_quotes_liners_prep.srd
to use nested subqueries, fixing SQL Server's disallowance of
SELECT-list column alias forward-references.

SQLA allows a SELECT column alias to be referenced by later expressions in
the same SELECT list, and in the WHERE clause.  SQL Server does not.

Each of the 16 UNION members is restructured as 4 nested subqueries:

  SELECT * FROM (                         -- outer: WHERE with alias refs
    SELECT *, total_new, net_new FROM (   -- L4
      SELECT *, base_cost_new FROM (      -- L3
        SELECT *, myexclusive_price, base_cost_raw,
                  showme, present, new_product_description FROM (   -- L2
          SELECT  <all raw cols> + L1 computed  -- L1 (innermost)
          FROM prep, prep_manf, product
          WHERE <no alias refs>
        ) _l1
      ) _l2
    ) _l3
  ) _l4
  WHERE showme = 1 AND present = 0 AND ...
"""

import re
import os

FILEPATH = os.path.join(os.path.dirname(__file__), 'llPrep',
                        'd_estm_detail_quote_quotes_liners_prep.srd')


# ---------------------------------------------------------------------------
# Template builders
# ---------------------------------------------------------------------------

def build_union(wall_new, bottom_new, price_pid, quote_type,
                l1_extra_where,    # e.g. "AND 1362 = product.product_id"
                outer_product_cond,  # final AND (...) block in outer WHERE
                outer_myexcl=False,  # add is_myexclusive = 'N' to outer WHERE
                disabled_cond=None): # e.g. "1 = 2" or "1000 = 100"
    """Return one fully nested UNION member as a SQL string."""

    # --- L1 WHERE ---
    l1_where = f"""\
                    prep.prep_id = prep_manf.prep_id
                  AND prep.type = 'LN'
                  AND prep_manf.product_group = 'C'
                  AND prep.prep_id = :al_prep_id
                  AND prep_manf.base_cost > 0
                  AND prep_manf.status > 0
                  AND prep_manf.product_id = product.product_id
                  AND prep_manf.quote_no = (
                          select min(pm2.quote_no)
                          from prep_manf as pm2
                          where pm2.prep_id = prep.prep_id
                            and pm2.status > 0
                      ){l1_extra_where}"""

    # --- outer WHERE ---
    outer_extra = ""
    if disabled_cond:
        outer_extra += f"\n  AND {disabled_cond}"
    if outer_myexcl:
        outer_extra += "\n  AND is_myexclusive = 'N'"
    outer_extra += f"\n  AND (\n{outer_product_cond}\n  )"

    # The outermost SELECT must list the 40 columns in the exact original
    # order because PowerBuilder binds DataWindow columns positionally.
    # Extra helper cols (_manf_quote_no, grid_size, _manf_product_id) are
    # present in _l4 but are intentionally excluded here.
    sql = f"""\
SELECT
    prep_id,
    base_cost,
    treatment_cost,
    cover_hardware_cost,
    cover_net,
    other_list,
    other_net,
    markdown,
    liner_wall_thickness,
    liner_bottom_thickness,
    shape,
    dealer_discount,
    dealer_discount_factor,
    is_myexclusive,
    myexclusive_price,
    liner_upcharge,
    base_cost_raw,
    liner_upcharge_new,
    base_cost_new,
    total_new,
    net_new,
    showme,
    wallbottom,
    wallbottom_quote,
    sqft,
    sales_tax,
    description,
    new_product_description,
    list_only,
    quote_type,
    letter_quote,
    present,
    wall_thickness_allowed,
    bottom_thickness_allowed,
    used_quote,
    product_id,
    is_pearlessence_embossed,
    lew,
    lew_type,
    lewamount
FROM (
    SELECT *,
        ((CASE WHEN is_myexclusive = 'Y' then myexclusive_price else  base_cost_new  END)
             + treatment_cost +  cover_hardware_cost ) as total_new ,
        (
            ((CASE WHEN is_myexclusive = 'Y' then myexclusive_price else  base_cost_new  END)
                 * dealer_discount_factor )
            + DBA.dbf_get_treatment_cost_of_job(prep_id, used_quote)
            + (cover_hardware_cost * dealer_discount_factor)
        ) as net_new
    FROM (
        SELECT *,
            (
                (
                    CASE WHEN shape = 'FF' and 3 = 4 then
                        (base_cost_raw * (1 + liner_upcharge_new)) * 1.15
                    else
                        (base_cost_raw * (1 + liner_upcharge_new))
                    END
                ) -
                coalesce(
                    (
                        select coalesce(sum(treatment_price.unit_price), 0)
                        from product_treatment, treatment_h, treatment_price, prep_treatment
                        where product_treatment.treatment_code = treatment_h.treatment_code
                          and treatment_h.treatment_code = treatment_price.treatment_code
                          and treatment_price.effective_date in (
                              select max(tp.effective_date)
                              from treatment_price as tp
                              where tp.treatment_code = treatment_price.treatment_code
                          )
                          and product_treatment.product_id = _manf_product_id
                          and product_treatment.texture_treatment = 'N'
                          and prep_treatment.treatment_code = treatment_h.treatment_code
                          and prep_treatment.treatment_code in ('L120', 'L121','L120B','L134')
                          and prep_treatment.prep_id = prep_id
                          and prep_treatment.quote_no = used_quote
                    ),
                    0
                )
            ) as base_cost_new
        FROM (
            SELECT *,
                (CASE WHEN is_myexclusive = 'Y' then
                    DBA.f_Get_Price({price_pid}, grid_size, sqft, shape) * sqft
                else
                    0
                END) as myexclusive_price,
                (CASE WHEN shape = 'FF' and 3 = 4 then
                    ((base_cost / 1.15) / (1 + liner_upcharge))
                 else
                    (base_cost / (1 + liner_upcharge))
                 END) as base_cost_raw,
                (
                    CASE WHEN wallbottom = wallbottom_quote then
                        CASE WHEN is_pearlessence_embossed > 0 then 1 else 0 END
                    else
                        1
                    END
                ) as showme,
                (
                    select count(*)
                    from prep_manf as pm
                    where pm.prep_id = prep_id
                      and pm.liner_wall_thickness = 20
                      and pm.liner_bottom_thickness = 20
                      and pm.product_id = _manf_product_id
                      and pm.quote_no <> used_quote
                      and is_pearlessence_embossed = 0
                ) as present,
                (
                    CASE WHEN is_pearlessence_embossed > 0 then
                        (select p.description from product as p where p.product_id = 148)
                    else ''
                    END
                ) as new_product_description
            FROM (
                SELECT
                    prep.prep_id,
                    prep_manf.base_cost,
                    prep_manf.treatment_cost,
                    prep_manf.cover_hardware_cost,
                    prep_manf.cover_net,
                    prep_manf.other_list,
                    prep_manf.other_net,
                    prep_manf.markdown,
                    prep_manf.liner_wall_thickness,
                    prep_manf.liner_bottom_thickness,
                    prep_manf.shape,
                    prep_manf.dealer_discount,
                    DBA.f_Effective_Discount(prep_manf.dealer_discount) as dealer_discount_factor,
                    DBA.dbf_is_myexclusive(prep_manf.prep_id, prep_manf.quote_no) as is_myexclusive,
                    DBA.f_get_discount_for_liners(prep_manf.prep_id, prep_manf.quote_no,
                        prep_manf.liner_wall_thickness, prep_manf.liner_bottom_thickness) as liner_upcharge,
                    DBA.f_get_discount_for_liners(prep_manf.prep_id, prep_manf.quote_no,
                        {wall_new}, {bottom_new}) as liner_upcharge_new,
                    (prep_manf.liner_wall_thickness + prep_manf.liner_bottom_thickness) as wallbottom,
                    '2020' as wallbottom_quote,
                    prep_manf.sqft,
                    prep_manf.sales_tax,
                    product.description,
                    (
                        select count(*)
                        from prep_rules
                        where prep_rules.prep_id = prep.prep_id
                          and prep_rules.type = 'List'
                          and prep_rules.active = 'Y'
                    ) as list_only,
                    '{quote_type}' as quote_type,
                    '1' as letter_quote,
                    (
                        select min(pm.quote_no)
                        from prep_manf as pm
                        where pm.prep_id = prep.prep_id
                          and pm.status > 0
                    ) as used_quote,
                    product.product_id,
                    (
                        select count(*)
                        from product_treatment, product as p
                        where product_treatment.product_id = p.product_id
                          and product_treatment.treatment_code in ('L120', 'L121','L120B','L134')
                          and product_treatment.texture_treatment = 'N'
                          and product_treatment.active = 'Y'
                          and product_treatment.product_id = product.product_id
                    ) as is_pearlessence_embossed,
                    (
                        select warranty_Header.liner_extended_warranty
                        from warranty_header
                        where (prep.prep_type = 'E' and prep.prep_id = warranty_header.prep_id)
                           or (prep.prep_type = 'O' and prep.order_no = warranty_header.order_no)
                    ) as lew,
                    (
                        select warranty_Header.liner_extended_warranty_type
                        from warranty_header
                        where (prep.prep_type = 'E' and prep.prep_id = warranty_header.prep_id)
                           or (prep.prep_type = 'O' and prep.order_no = warranty_header.order_no)
                    ) as lew_type,
                    (
                        select max(coalesce(warranty_header.lew_amount, 0))
                        from warranty_header
                        where (prep.prep_type = 'E' and prep.prep_id = warranty_header.prep_id)
                           or (prep.prep_type = 'O' and prep.order_no = warranty_header.order_no)
                    ) as lewamount,
                    product.wall_thickness_allowed,
                    product.bottom_thickness_allowed,
                    prep_manf.quote_no as _manf_quote_no,
                    prep_manf.grid_size,
                    prep_manf.product_id as _manf_product_id
                FROM prep, prep_manf, product
                WHERE {l1_where}
            ) _l1
        ) _l2
    ) _l3
) _l4
) _l5
WHERE showme = 1
  AND present = 0{outer_extra}"""

    return sql


# ---------------------------------------------------------------------------
# Outer WHERE product/thickness conditions
# ---------------------------------------------------------------------------

def outer_cond_thickness(wall_str, bottom_str):
    """For unions 1-4: filter by wall/bottom thickness or pearlessence."""
    return (f"      (wall_thickness_allowed in ('A','{wall_str}') "
            f"and bottom_thickness_allowed in ('A','{bottom_str}'))\n"
            f"      OR is_pearlessence_embossed > 0")


def outer_cond_product(wall_str, bottom_str):
    """For unions 5-16: filter by pearlessence or product thickness subquery."""
    return (f"      is_pearlessence_embossed = 0\n"
            f"      OR (\n"
            f"          select count(*)\n"
            f"          from product as p\n"
            f"          where (p.wall_thickness_allowed = 'A' or p.wall_thickness_allowed = '{wall_str}')\n"
            f"            and (p.bottom_thickness_allowed = 'A' or p.bottom_thickness_allowed = '{bottom_str}')\n"
            f"            and p.product_id = _manf_product_id\n"
            f"      ) > 0")


# ---------------------------------------------------------------------------
# Union definitions
# (wall_new, bottom_new, price_pid, quote_type,
#  l1_extra_where, outer_product_cond, outer_myexcl, disabled_cond)
# ---------------------------------------------------------------------------

UNIONS = [
    # 1-4: general liner unions (no fixed product_id)
    build_union(20, 20, 1185, 'Wall: 20 mil - Bottom: 20 mil',
                '',
                outer_cond_thickness('20', '20')),
    build_union(20, 28, 1186, 'Wall: 20 mil - Bottom: 28 mil',
                '',
                outer_cond_thickness('20', '28')),
    build_union(28, 20, 1186, 'Wall: 28 mil - Bottom: 20 mil',
                '',
                outer_cond_thickness('28', '20')),
    build_union(28, 28, 1186, 'Wall: 28 mil - Bottom: 28 mil',
                '',
                outer_cond_thickness('28', '28')),
    # 5-8: product 1362
    build_union(20, 20, 1185, 'Wall: 20 mil - Bottom: 20 mil',
                '\n                  AND 1362 = product.product_id',
                outer_cond_product('20', '20'),
                outer_myexcl=True),
    build_union(28, 20, 1185, 'Wall: 28 mil - Bottom: 20 mil',
                '\n                  AND 1362 = product.product_id',
                outer_cond_product('28', '20'),
                outer_myexcl=True),
    build_union(28, 28, 1185, 'Wall: 28 mil - Bottom: 28 mil',
                '\n                  AND 1362 = product.product_id',
                outer_cond_product('28', '28'),
                outer_myexcl=True),
    build_union(20, 28, 1185, 'Wall: 20 mil - Bottom: 28 mil',
                '\n                  AND 1362 = product.product_id',
                outer_cond_product('20', '28'),
                outer_myexcl=True),
    # 9-12: product 1544
    build_union(20, 20, 1185, 'Wall: 20 mil - Bottom: 20 mil',
                '\n                  AND 1544 = product.product_id',
                outer_cond_product('20', '20'),
                outer_myexcl=True, disabled_cond='1000 = 100'),
    build_union(28, 20, 1185, 'Wall: 28 mil - Bottom: 20 mil',
                '\n                  AND 1544 = product.product_id',
                outer_cond_product('28', '20'),
                outer_myexcl=True, disabled_cond='1 = 2'),
    build_union(28, 28, 1185, 'Wall: 28 mil - Bottom: 28 mil',
                '\n                  AND 1544 = product.product_id',
                outer_cond_product('28', '28'),
                outer_myexcl=True),
    build_union(20, 28, 1185, 'Wall: 20 mil - Bottom: 28 mil',
                '\n                  AND 1544 = product.product_id',
                outer_cond_product('20', '28'),
                outer_myexcl=True, disabled_cond='1 = 2'),
    # 13-16: product 1543
    build_union(20, 20, 1185, 'Wall: 20 mil - Bottom: 20 mil',
                '\n                  AND 1543 = product.product_id',
                outer_cond_product('20', '20'),
                outer_myexcl=True, disabled_cond='1 = 2'),
    build_union(28, 20, 1185, 'Wall: 28 mil - Bottom: 20 mil',
                '\n                  AND 1543 = product.product_id',
                outer_cond_product('28', '20'),
                outer_myexcl=True, disabled_cond='1 = 2'),
    build_union(28, 28, 1185, 'Wall: 28 mil - Bottom: 28 mil',
                '\n                  AND 1543 = product.product_id',
                outer_cond_product('28', '28'),
                outer_myexcl=True),
    build_union(20, 28, 1185, 'Wall: 20 mil - Bottom: 28 mil',
                '\n                  AND 1543 = product.product_id',
                outer_cond_product('20', '28'),
                outer_myexcl=True, disabled_cond='1 = 2'),
]


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main():
    print(f"Reading: {FILEPATH}")
    with open(FILEPATH, 'r', encoding='utf-16', errors='replace') as f:
        content = f.read()

    pattern = re.compile(r'(retrieve=")(.*?)(?<!~)(")', re.DOTALL | re.IGNORECASE)
    match = pattern.search(content)
    if not match:
        print("ERROR: No retrieve block found.")
        return

    new_sql = '\nUNION\n'.join(UNIONS) + '\n'
    new_content = content[:match.start(2)] + new_sql + content[match.end(2):]

    backup = FILEPATH + '.bak'
    with open(backup, 'w', encoding='utf-16') as f:
        f.write(content)
    print(f"Backup: {backup}")

    with open(FILEPATH, 'w', encoding='utf-16') as f:
        f.write(new_content)
    print(f"Done: {FILEPATH}")
    print(f"New SQL length: {len(new_sql)} chars  ({len(UNIONS)} UNION members)")


if __name__ == '__main__':
    main()
