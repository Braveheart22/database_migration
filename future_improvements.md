# Future Improvements

Things noted during migration that could be cleaned up or improved post-go-live.

---

## Foreign Keys / Cascade Deletes

### REFACTION trigger on promo
The `REFACTION` trigger deletes from `promo_dtl` when a `promo` row is deleted.
This could be replaced with a proper `FOREIGN KEY` constraint with `ON DELETE CASCADE`:
```sql
ALTER TABLE promo_dtl
ADD CONSTRAINT FK_promo_dtl_promo
    FOREIGN KEY (promo_id) REFERENCES promo(promo_id)
    ON DELETE CASCADE;
```
The trigger could then be dropped.

### tr_delete_row trigger on prep
Cascades deletes to 9 child tables. Could be replaced with FK ON DELETE CASCADE constraints
on: `log`, `prep_blue_dot`, `prep_comments`, `prep_hardware`, `prep_manf`,
`prep_manf_admin`, `prep_rules`, `prep_special_instructions`, `prep_treatment`.

### REFACTION trigger on treatment_h
The `REFACTION` trigger deletes from `treatment_price` when a `treatment_h` row is deleted.
This could be replaced with a proper `FOREIGN KEY` constraint with `ON DELETE CASCADE`:
```sql
ALTER TABLE treatment_price
ADD CONSTRAINT FK_treatment_price_treatment_h
    FOREIGN KEY (treatment_code) REFERENCES treatment_h(treatment_code)
    ON DELETE CASCADE;
```
The trigger could then be dropped.

---

## Bugs in sp_watch_activity

### Third dealer name lookup always fails
In `sp_watch_activity`, the first SELECT stores a formatted display string into `@ls_thirddealer`:
```sql
@ls_thirddealer = CASE WHEN third_dealer IS NULL THEN '' ELSE ' Third Dealer: ' + third_dealer END
```
The subsequent dealer name lookup then compares `dealer_code` against this formatted string
(e.g. `' Third Dealer: AB1234'`) instead of the raw code, so it always returns no rows and
`@ls_thirddealer_name` remains NULL. The concatenation `@ls_thirddealer + ' (' + NULL + '). '`
then makes `@ls_thirddealer` NULL, which propagates into `@ls_body`, making the entire email
body NULL whenever a third dealer is present.

Fix: store the raw dealer code in a separate variable, do the name lookup using that, then
build the display string:
```sql
@ls_thirddealer_code = COALESCE(third_dealer, '')
-- lookup: WHERE dealer_code = @ls_thirddealer_code
-- build:  @ls_thirddealer = ' Third Dealer: ' + @ls_thirddealer_code + ' (' + @ls_thirddealer_name + '). '
```

### Hard-coded email addresses and exclusion list
`sp_watch_activity` contains three places with hard-coded email addresses/usernames:

1. **Territory-to-email CASE block** — maps `sales_territory` codes (10–22) directly to
   individual email addresses. Any rep change requires a code edit and redeployment.
   Suggested fix: create a `sales_territory_email` lookup table:
   ```sql
   CREATE TABLE sales_territory_email (
       sales_territory VARCHAR(10) PRIMARY KEY,
       email_address   VARCHAR(100) NOT NULL,
       active          CHAR(1)      NOT NULL DEFAULT 'Y'
   );
   ```
   The CASE block is then replaced with a single lookup JOIN/SELECT.

2. **Hard-coded CC to `jeff@looploc.com`** — the procedure always CCs jeff unless he is
   the primary recipient. This should be driven by a config table or a flag on the
   `sales_territory_email` table (e.g. `cc_address`) rather than a hard-coded address.

3. **Hard-coded username exclusion list** (`'RICHL', 'ANDRES', 'JAYG', 'KRIS', 'MARK',
   'KEVIN', 'MATT'`) — these are sales reps already receiving email via the territory
   routing, excluded from the `dealer_rules.text` loop to avoid duplicates. This list
   should be derived from the territory table rather than maintained separately.

### Body type duplicated for SELECT and UNSELECT events
In `sp_watch_activity`, the SELECT and UNSELECT action event branches concatenate
`@ls_body_type` twice in the email body (copy-paste error from the original SQLA code).
The second occurrence should be removed.

---

## Incomplete Logic

### dbf_dealer_bought_timeframe: day variables set using MONTH() instead of DAY()
`ll_day_start` and `ll_day_end` are both assigned using `MONTH(@datestart)` and
`MONTH(@dateend)` respectively, when they should use `DAY()`. This means the
within-month boundary checks (`ll_day_start <= day(artran.date)` and
`day(artran.date) <= ll_day_end`) use the month number as the day threshold instead
of the actual start/end day. Fixed in the T-SQL conversion to use `DAY()`.

### dbf_convert_to_metric: 'SQFT' unit never matches
The function truncates the unit input to 2 characters (`LEFT(UPPER(@as_unit), 2)`)
before the CASE check, so `'SQFT'` becomes `'SQ'` and can never match the `'SQFT'`
branch. Input of `'SQFT'` always falls to the ELSE and returns an empty string.
Either the truncation should be removed, or the `'SQFT'` branch should check `'SQ'`.

### dbf_can_freight_be_calculated: UPS freight rates never calculated
The UPS ship rate lookup (against the `ship_rates` table) was commented out in the
original SQLA source. All orders that qualify for UPS freight (carrier 37, CV cover,
USA, weight ≤ 150 lbs, valid ship zone, product group C) always return 0 instead of
the actual freight amount. The `ship_rates` table and lookup logic need to be
implemented before freight calculation is meaningful.

### dbf_discount_old_material: FF shape discount always returns 0
In `dbf_discount_old_material`, the `FF` shape branch computes a size-based discount
(100 for small sizes, 250 for others) but then immediately overwrites it with an
unconditional `SET @li_discount = 0`, so all FF shapes always return a discount of 0.
The commented-out `--set li_discount=250` at the bottom of the original suggests this
logic was mid-development and never completed.

Intended behavior needs clarification: should FF shapes use the same size-based
100/250 logic, always return 0, or follow different rules entirely?

### dbf_Get_Weight: CheckData query uses hardcoded prep_id
The data-availability check at the top of `dbf_Get_Weight` has a hardcoded
`prep.prep_id = 619374` and `quote_no = 1` instead of the `@al_prep_id` /
`@al_quote_no` parameters. This means the guard always tests the same hard-coded
job regardless of what is passed in — if that job exists the function proceeds, if
not it always returns -1 for every caller.

Fix: replace both hardcoded values with the input parameters:
```sql
WHERE prep.prep_id      = @al_prep_id
  AND prep_manf.quote_no = @al_quote_no
  AND prep.[type]        = 'CV';
```

### dbf_get_verification_email: check 4 uses wrong flag variable
In the fourth email-address block, the LN-type condition tests
`@verification_drawing_3_flag` instead of `@verification_drawing_4_flag`:
```sql
-- original (wrong):
OR (@verification_drawing_3_flag = 'LN' AND @ls_type = 'LN')
-- should be:
OR (@verification_drawing_4_flag = 'LN' AND @ls_type = 'LN')
```
This means a dealer whose fourth verification address is LN-only will never match
when the prep type is LN (the condition silently falls through to the fallback
`est_not_ack_form75` address instead).

### tr_set_job_difficulty trigger on user_productivity
The original trigger looked up `material_id` for each job (via `prep`/`product`/`fabric` for
jobs < 10000000, or via `stock_master`/`product`/`fabric` for jobs >= 10000000) and had
`if l_material = 2 then set l_adjust = l_adjust + 0` — adding 0 in both cases, making
it a no-op. This appears to be a placeholder for an adjustment that was never implemented.
The migrated trigger always sets `job_difficulty = 1.0` for first/only records.
If a material-based difficulty adjustment is needed, the lookup logic should be added here.

---

## Security

### Plaintext passwords in lll_users
User passwords are stored unhashed in `lll_users` and were carried forward as-is
into SQL Server logins. These should be hashed or a proper identity/auth system
should be implemented in the future.
