-- =============================================================
-- SQL Anywhere view source definitions
-- Source: SQL Anywhere (Smith)
--
-- THIS FILE IS FOR REFERENCE ONLY
-- These are SQL Anywhere definitions and will NOT run in SQL Server
-- Use this as the source for converting views to T-SQL
--
-- Key syntax differences:
--   STRING(a, b)              --> CONCAT(a, b) or a + b
--   DATEFORMAT(d, fmt)        --> FORMAT(d, fmt) or CONVERT()
--   TODAY()                   --> CAST(GETDATE() AS DATE)
--   NOW()                     --> GETDATE()
--   MONTHS()                  --> DATEDIFF(MONTH, ...)
--   YEARS()                   --> DATEDIFF(YEAR, ...)
--   MOD(a, b)                 --> a % b
--   Backtick/double-quote ids --> [square brackets]
-- =============================================================

-- ============================================================
-- VIEW: dealer_key_target_visted
-- ============================================================
create view DBA.dealer_key_target_visted( dealer_code,buys_covers,buys_liner,call_type,visted_year,visted_month) 
  as select distinct dealer_key_target.dealer_code,dealer_key_target.buys_covers,dealer_key_target.buys_liner,sales_call_log.call_type,year(sales_call_log."date"),month(sales_call_log."date") from(
    DBA.dealer_key_target left outer join DBA.sales_call_log on dealer_key_target.dealer_code = sales_call_log.dealer_code) where
    sales_call_log.sales_person <> 'blue'
GO

-- ============================================================
-- VIEW: dealer_unique_pricing_view
-- ============================================================
create view DBA.dealer_unique_pricing_view( dealer_code,product_id,type) as select dealer_unique_pricing.dealer_code,dealer_unique_pricing.product_id,product.type from DBA.dealer_unique_pricing,DBA.product where(dealer_unique_pricing.product_id = product.product_id) and(dealer_unique_pricing.active = 'Y')
GO

-- ============================================================
-- VIEW: listyearjob
-- ============================================================
create view DBA.listyearjob( yearjob) as select distinct year(prep.entry_date) from DBA.prep where year(prep.entry_date) >= 2010
GO

-- ============================================================
-- VIEW: ll_users
-- ============================================================
create view DBA.ll_users( user_name,security_level,department,dept_level,active) as select lll_users.user_name,lll_users.security_level,lll_users.department,lll_users.department_level,lll_users.active from DBA.lll_users
GO

-- ============================================================
-- VIEW: production_cap_scheduled
-- ============================================================
create view DBA.production_cap_scheduled( production_date,holiday,unit_capacity,liner_capacity,scheduled,outofstock_scheduled,liner_scheduled) 
  as select production_cap.production_date,
    production_cap.holiday,
    production_cap.unit_capacity,
    production_cap.liner_capacity,
    (select sum(qty) from
      dba.production_detail as p0 where
      p0.production_date = production_cap.production_date and
      p0.quote_no = 
      (select min(quote_no) from
        dba.production_detail as p1 where
        p1.prep_id = p0.prep_id and p1.production_date = p0.production_date) and
      ((select Type from dba.prep where prep.prep_id = p0.prep_id) <> 'LN') and
      ((select prep.status from dba.prep where prep.prep_id = p0.prep_id) <> 'XLD') and
      ((select count(*) from
        dba.prep,dba.prep_manf where
        prep.prep_id = p0.prep_id and
        prep.prep_id = prep_manf.prep_id and
        ((prep.selected_quote_no = prep_manf.quote_no and
        prep_manf.product_group not in( 'S','O') ) or
        (prep.selected_quote_no = 0))) > 
      0) and
      DBA.dbf_show_shipdates(p0.prep_id) = 0),
    (select sum(qty) from
      dba.production_detail as p0 where
      p0.production_date = production_cap.production_date and
      p0.quote_no = 
      (select min(quote_no) from
        dba.production_detail as p1 where
        p1.prep_id = p0.prep_id and p1.production_date = p0.production_date) and
      ((select Type from dba.prep where prep.prep_id = p0.prep_id) <> 'LN') and
      ((select prep.status from dba.prep where prep.prep_id = p0.prep_id) <> 'XLD') and
      ((select count(*) from
        dba.prep,dba.prep_manf where
        prep.prep_id = p0.prep_id and
        prep.prep_id = prep_manf.prep_id and
        ((prep.selected_quote_no = prep_manf.quote_no and
        prep_manf.product_group = 'O') or
        (prep.selected_quote_no = 0))) > 
      0) and
      DBA.dbf_show_shipdates(p0.prep_id) = 0),
    (select sum(qty) from
      dba.production_detail as p0 where
      p0.production_date = production_cap.production_date and
      p0.quote_no = 
      (select min(quote_no) from
        dba.production_detail as p1 where
        p1.prep_id = p0.prep_id and p1.production_date = p0.production_date) and
      ((select Type from dba.prep where prep.prep_id = p0.prep_id) = 'LN') and
      ((select prep.status from dba.prep where prep.prep_id = p0.prep_id) <> 'XLD') and
      DBA.dbf_show_shipdates(p0.prep_id) = 0) from
    dba.production_cap
GO

-- ============================================================
-- VIEW: production_cap_scheduled_archive
-- ============================================================
create view DBA.production_cap_scheduled_archive( production_date,holiday,unit_capacity,liner_capacity,scheduled,liner_scheduled)  /* view_column_name, ... */
  as select production_cap.production_date,
    production_cap.holiday,
    production_cap.unit_capacity,
    production_cap.liner_capacity,
    (select sum(qty) from
      dba.production_detail as p0 where
      p0.production_date = production_cap.production_date and
      p0.quote_no = 
      (select min(quote_no) from
        dba.production_detail as p1 where
        p1.prep_id = p0.prep_id and
        p1.production_date = p0.production_date) and
      (select Type from dba.prep where prep.prep_id = p0.prep_id) <> 'LN'),
    (select sum(qty) from
      dba.production_detail as p0 where
      p0.production_date = production_cap.production_date and
      p0.quote_no = 
      (select min(quote_no) from
        dba.production_detail as p1 where
        p1.prep_id = p0.prep_id and
        p1.production_date = p0.production_date) and
      (select Type from dba.prep where prep.prep_id = p0.prep_id) = 'LN') from
    DBA.production_cap
GO

-- ============================================================
-- VIEW: stock_master_view
-- ============================================================
create view DBA.stock_master_view( stock_id,product_id,manf_size,object_size,shape,sqft,base_cost,advertised,weight,anchor_points,extensions,active,grid_size,cartons,no_bows,qty_on_hand,qty_on_order,poolsize,coversize,old_shape,chafe_length,carton_type,short_springs) as select stock_master.stock_id,stock_master.product_id,stock_master.manf_size,stock_master.object_size,stock_master.shape,stock_master.sqft,stock_master.base_cost,stock_master.advertised,stock_master.weight,stock_master.anchor_points,stock_master.extensions,stock_master.active,stock_master.grid_size,stock_master.cartons,stock_master.no_bows,stock_master.qty_on_hand,stock_master.qty_on_order,stock_master.poolsize,stock_master.coversize,stock_master.old_shape,stock_master.chafe_length,stock_master.carton_type,stock_master.short_springs from dba.stock_master
GO

-- ============================================================
-- VIEW: warranty_duplicates
-- ============================================================
create view DBA.warranty_duplicates as select ROW_NUMBER(*) over(partition by warranty_header.order_no order by warranty_header.order_no asc) as row_num,warranty_header.warranty_id,warranty_header.order_no from DBA.warranty_header
GO

