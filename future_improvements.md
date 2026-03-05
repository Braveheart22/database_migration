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
