-- =============================================================
-- SQL Server view definitions
-- Converted from SQL Anywhere (Smith) -> SQL Server (Loop-Loc_v1)
-- =============================================================

-- ============================================================
-- VIEW: dealer_key_target_visted
-- Changes: DBA. prefix removed, "date" -> [date]
-- ============================================================
CREATE VIEW dealer_key_target_visted (dealer_code, buys_covers, buys_liner, call_type, visted_year, visted_month)
AS
SELECT DISTINCT
    dealer_key_target.dealer_code,
    dealer_key_target.buys_covers,
    dealer_key_target.buys_liner,
    sales_call_log.call_type,
    YEAR(sales_call_log.[date]),
    MONTH(sales_call_log.[date])
FROM DBO.dealer_key_target
LEFT OUTER JOIN DBO.sales_call_log ON dealer_key_target.dealer_code = sales_call_log.dealer_code
WHERE sales_call_log.sales_person <> 'blue'
GO

-- ============================================================
-- VIEW: dealer_unique_pricing_view
-- Changes: DBA. prefix removed, implicit join -> explicit JOIN
-- ============================================================
CREATE VIEW dealer_unique_pricing_view (dealer_code, product_id, type)
AS
SELECT
    dealer_unique_pricing.dealer_code,
    dealer_unique_pricing.product_id,
    product.type
FROM DBO.dealer_unique_pricing
JOIN DBO.product ON dealer_unique_pricing.product_id = product.product_id
WHERE dealer_unique_pricing.active = 'Y'
GO

-- ============================================================
-- VIEW: listyearjob
-- Changes: DBA. prefix removed
-- ============================================================
CREATE VIEW listyearjob (yearjob)
AS
SELECT DISTINCT YEAR(prep.entry_date)
FROM DBO.prep
WHERE YEAR(prep.entry_date) >= 2010
GO

-- ============================================================
-- VIEW: production_cap_scheduled
-- Changes: DBA. prefix removed, DBA.dbf_show_shipdates -> dbo.dbf_show_shipdates
-- ============================================================
CREATE VIEW production_cap_scheduled (production_date, holiday, unit_capacity, liner_capacity, scheduled, outofstock_scheduled, liner_scheduled)
AS
SELECT
    production_cap.production_date,
    production_cap.holiday,
    production_cap.unit_capacity,
    production_cap.liner_capacity,
    (SELECT SUM(qty) FROM dbo.production_detail AS p0
     WHERE p0.production_date = production_cap.production_date
       AND p0.quote_no = (SELECT MIN(quote_no) FROM dbo.production_detail AS p1
                          WHERE p1.prep_id = p0.prep_id AND p1.production_date = p0.production_date)
       AND (SELECT [Type] FROM dbo.prep WHERE prep.prep_id = p0.prep_id) <> 'LN'
       AND (SELECT prep.status FROM dbo.prep WHERE prep.prep_id = p0.prep_id) <> 'XLD'
       AND (SELECT COUNT(*) FROM dbo.prep, dbo.prep_manf
            WHERE prep.prep_id = p0.prep_id
              AND prep.prep_id = prep_manf.prep_id
              AND ((prep.selected_quote_no = prep_manf.quote_no
                    AND prep_manf.product_group NOT IN ('S','O'))
                   OR (prep.selected_quote_no = 0))) > 0
       AND dbo.dbf_show_shipdates(p0.prep_id) = 0),
    (SELECT SUM(qty) FROM dbo.production_detail AS p0
     WHERE p0.production_date = production_cap.production_date
       AND p0.quote_no = (SELECT MIN(quote_no) FROM dbo.production_detail AS p1
                          WHERE p1.prep_id = p0.prep_id AND p1.production_date = p0.production_date)
       AND (SELECT [Type] FROM dbo.prep WHERE prep.prep_id = p0.prep_id) <> 'LN'
       AND (SELECT prep.status FROM dbo.prep WHERE prep.prep_id = p0.prep_id) <> 'XLD'
       AND (SELECT COUNT(*) FROM dbo.prep, dbo.prep_manf
            WHERE prep.prep_id = p0.prep_id
              AND prep.prep_id = prep_manf.prep_id
              AND ((prep.selected_quote_no = prep_manf.quote_no
                    AND prep_manf.product_group = 'O')
                   OR (prep.selected_quote_no = 0))) > 0
       AND dbo.dbf_show_shipdates(p0.prep_id) = 0),
    (SELECT SUM(qty) FROM dbo.production_detail AS p0
     WHERE p0.production_date = production_cap.production_date
       AND p0.quote_no = (SELECT MIN(quote_no) FROM dbo.production_detail AS p1
                          WHERE p1.prep_id = p0.prep_id AND p1.production_date = p0.production_date)
       AND (SELECT [Type] FROM dbo.prep WHERE prep.prep_id = p0.prep_id) = 'LN'
       AND (SELECT prep.status FROM dbo.prep WHERE prep.prep_id = p0.prep_id) <> 'XLD'
       AND dbo.dbf_show_shipdates(p0.prep_id) = 0)
FROM dbo.production_cap
GO

-- ============================================================
-- VIEW: production_cap_scheduled_archive
-- Changes: DBA. prefix removed
-- ============================================================
CREATE VIEW production_cap_scheduled_archive (production_date, holiday, unit_capacity, liner_capacity, scheduled, liner_scheduled)
AS
SELECT
    production_cap.production_date,
    production_cap.holiday,
    production_cap.unit_capacity,
    production_cap.liner_capacity,
    (SELECT SUM(qty) FROM dbo.production_detail AS p0
     WHERE p0.production_date = production_cap.production_date
       AND p0.quote_no = (SELECT MIN(quote_no) FROM dbo.production_detail AS p1
                          WHERE p1.prep_id = p0.prep_id AND p1.production_date = p0.production_date)
       AND (SELECT [Type] FROM dbo.prep WHERE prep.prep_id = p0.prep_id) <> 'LN'),
    (SELECT SUM(qty) FROM dbo.production_detail AS p0
     WHERE p0.production_date = production_cap.production_date
       AND p0.quote_no = (SELECT MIN(quote_no) FROM dbo.production_detail AS p1
                          WHERE p1.prep_id = p0.prep_id AND p1.production_date = p0.production_date)
       AND (SELECT [Type] FROM dbo.prep WHERE prep.prep_id = p0.prep_id) = 'LN')
FROM dbo.production_cap
GO

-- ============================================================
-- VIEW: stock_master_view
-- Changes: DBA. prefix removed
-- ============================================================
CREATE VIEW stock_master_view (stock_id, product_id, manf_size, object_size, shape, sqft, base_cost, advertised, weight, anchor_points, extensions, active, grid_size, cartons, no_bows, qty_on_hand, qty_on_order, poolsize, coversize, old_shape, chafe_length, carton_type, short_springs)
AS
SELECT
    stock_master.stock_id, stock_master.product_id, stock_master.manf_size,
    stock_master.object_size, stock_master.shape, stock_master.sqft,
    stock_master.base_cost, stock_master.advertised, stock_master.weight,
    stock_master.anchor_points, stock_master.extensions, stock_master.active,
    stock_master.grid_size, stock_master.cartons, stock_master.no_bows,
    stock_master.qty_on_hand, stock_master.qty_on_order, stock_master.poolsize,
    stock_master.coversize, stock_master.old_shape, stock_master.chafe_length,
    stock_master.carton_type, stock_master.short_springs
FROM dbo.stock_master
GO

-- ============================================================
-- VIEW: warranty_duplicates
-- Changes: DBA. prefix removed, ROW_NUMBER(*) -> ROW_NUMBER()
-- ============================================================
CREATE VIEW warranty_duplicates
AS
SELECT
    ROW_NUMBER() OVER (PARTITION BY warranty_header.order_no ORDER BY warranty_header.order_no ASC) AS row_num,
    warranty_header.warranty_id,
    warranty_header.order_no
FROM dbo.warranty_header
GO
