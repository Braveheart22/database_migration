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
