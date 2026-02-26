-- Generated from SQL Anywhere dbunload ReloadTables.sql
-- Loop-Loc migration: Schema-only (tables + PK/unique) for SQL Server 2025
-- NOTE: Grants/users removed; foreign keys deferred.
SET NOCOUNT ON;
CREATE TABLE [dbo].[pbcattbl]
(
    [pbt_tnam]              char(129) NOT NULL ,
    [pbt_tid]               int NULL ,
    [pbt_ownr]              char(129) NOT NULL ,
    [pbd_fhgt]              smallint NULL ,
    [pbd_fwgt]              smallint NULL ,
    [pbd_fitl]              char(1) NULL ,
    [pbd_funl]              char(1) NULL ,
    [pbd_fchr]              smallint NULL ,
    [pbd_fptc]              smallint NULL ,
    [pbd_ffce]              char(18) NULL ,
    [pbh_fhgt]              smallint NULL ,
    [pbh_fwgt]              smallint NULL ,
    [pbh_fitl]              char(1) NULL ,
    [pbh_funl]              char(1) NULL ,
    [pbh_fchr]              smallint NULL ,
    [pbh_fptc]              smallint NULL ,
    [pbh_ffce]              char(18) NULL ,
    [pbl_fhgt]              smallint NULL ,
    [pbl_fwgt]              smallint NULL ,
    [pbl_fitl]              char(1) NULL ,
    [pbl_funl]              char(1) NULL ,
    [pbl_fchr]              smallint NULL ,
    [pbl_fptc]              smallint NULL ,
    [pbl_ffce]              char(18) NULL ,
    [pbt_cmnt]              char(254) NULL 
)
;

GO

CREATE TABLE [dbo].[pbcatcol]
(
    [pbc_tnam]              char(129) NOT NULL ,
    [pbc_tid]               int NULL ,
    [pbc_ownr]              char(129) NOT NULL ,
    [pbc_cnam]              char(129) NOT NULL ,
    [pbc_cid]               smallint NULL ,
    [pbc_labl]              char(254) NULL ,
    [pbc_lpos]              smallint NULL ,
    [pbc_hdr]               char(254) NULL ,
    [pbc_hpos]              smallint NULL ,
    [pbc_jtfy]              smallint NULL ,
    [pbc_mask]              char(31) NULL ,
    [pbc_case]              smallint NULL ,
    [pbc_hght]              smallint NULL ,
    [pbc_wdth]              smallint NULL ,
    [pbc_ptrn]              char(31) NULL ,
    [pbc_bmap]              char(1) NULL ,
    [pbc_init]              char(254) NULL ,
    [pbc_cmnt]              char(254) NULL ,
    [pbc_edit]              char(31) NULL ,
    [pbc_tag]               char(254) NULL 
)
;

GO

CREATE TABLE [dbo].[pbcatfmt]
(
    [pbf_name]              char(30) NOT NULL ,
    [pbf_frmt]              char(254) NULL ,
    [pbf_type]              smallint NULL ,
    [pbf_cntr]              int NULL 
)
;

GO

CREATE TABLE [dbo].[pbcatvld]
(
    [pbv_name]              char(30) NOT NULL ,
    [pbv_vald]              char(254) NULL ,
    [pbv_type]              smallint NULL ,
    [pbv_cntr]              int NULL ,
    [pbv_msg]               char(254) NULL 
)
;

GO

CREATE TABLE [dbo].[pbcatedt]
(
    [pbe_name]              char(30) NOT NULL ,
    [pbe_edit]              char(254) NULL ,
    [pbe_type]              smallint NULL ,
    [pbe_cntr]              int NULL ,
    [pbe_seqn]              smallint NOT NULL ,
    [pbe_flag]              int NULL ,
    [pbe_work]              char(32) NULL 
)
;

GO

CREATE TABLE [dbo].[rules]
(
    [category]              char(10) NOT NULL ,
    [type]              char(10) NOT NULL ,
    [text]              varchar(255) NULL ,
    [active]                char(1) NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
    [search_list]           char(1) NULL ,
     PRIMARY KEY ([category], [type])
)
;

GO

CREATE TABLE [dbo].[comments]
(
    [category]              char(10) NOT NULL ,
    [type]              char(10) NOT NULL ,
    [text]              varchar(255) NULL ,
    [active]                char(1) NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
     PRIMARY KEY ([category], [type])
)
;

GO

CREATE TABLE [dbo].[fabric]
(
    [fabric_id]             int IDENTITY(1,1) NOT NULL ,
    [description]           varchar(70) NULL ,
    [color]             char(25) NULL ,
    [cost]              float NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
    [material_id]           int NULL ,
    [active]                char(1) NULL ,
    [aqua_xtreme]           char(1) NULL DEFAULT 'N' ,
     PRIMARY KEY ([fabric_id])
)
;

GO

CREATE TABLE [dbo].[ship_via]
(
    [ship_via_id]           int IDENTITY(1,1) NOT NULL ,
    [type]              char(2) NOT NULL ,
    [name]              char(35) NOT NULL ,
    [group]             char(35) NULL ,
    [promo_level]           smallint NULL ,
    [rate_table_id]         smallint NULL ,
    [cod_fee]               numeric(6,2) NULL ,
    [free_freight]          char(1) NULL ,
    [active]                char(1) NULL ,
    [loading_dock]          varchar(2) NULL ,
     PRIMARY KEY ([ship_via_id])
)
;

GO

CREATE TABLE [dbo].[terms]
(
    [term_id]               int NOT NULL ,
    [description]           varchar(255) NULL ,
    [discount_percent]          smallint NULL ,
    [discount_days]         smallint NULL ,
    [net_days]              smallint NULL ,
    [remittance_slip]           char(1) NULL ,
    [multi_payments]            char(1) NULL ,
    [cod_type]              char(1) NULL ,
    [cod_cash]              char(1) NULL ,
    [cash_type]             char(1) NULL ,
    [credit_limit_flag]         char(1) NULL ,
    [us_funds_message]          char(1) NULL ,
    [in_advance]            char(1) NULL ,
    [active]                char(1) NULL ,
    [description_spanish]       char(300) NULL ,
    [description_french]        char(300) NULL ,
    [description_italian]       char(300) NULL ,
    [description_russian]       char(300) NULL ,
     PRIMARY KEY ([term_id])
)
;

GO

CREATE TABLE [dbo].[product]
(
    [product_id]            int IDENTITY(1,1) NOT NULL ,
    [fabric_id]             int NULL ,
    [type]              char(2) NULL ,
    [class]             char(6) NOT NULL ,
    [description]           char(100) NULL ,
    [trade_name]            char(200) NULL ,
    [warranty_text]         varchar(255) NULL ,
    [non_safe_name]         char(60) NULL ,
    [stock_deposit_percent]     int NULL ,
    [custom_deposit_percent]        int NULL ,
    [deposit_minimum_percent]       int NULL ,
    [call_with_price]           char(1) NULL ,
    [object_name]           char(20) NULL ,
    [manf_name]             char(20) NULL ,
    [discontinued_date]         date NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
    [non_warranty_text]         varchar(255) NULL ,
    [special_rect_flag]         char(1) NULL ,
    [gl_sales_account]          char(10) NULL ,
    [drain_flag]            char(1) NULL ,
    [freight_charge]            char(1) NULL ,
    [price_as]              int NULL ,
    [active]                char(1) NULL ,
    [autocad_image]         char(50) NULL ,
    [wall_thickness_allowed]        char(5) NULL ,
    [bottom_thickness_allowed]      char(5) NULL ,
    [liner_wall_id]         int NULL ,
    [trade_name_foreign]        char(200) NULL ,
    [wt_flag]               char(2) NULL ,
    [racv]              int NULL ,
    [my_exclusive]          varchar(1) NULL ,
    [web_category]          varchar(1) NULL ,
    [above_ground_stock]        varchar(2) NULL ,
    [distributor_exclusive]     varchar(1) NULL ,
    [charge_all_print]          varchar(1) NULL ,
    [prmtion_pattern]           varchar(1) NULL ,
    [no_charge_all_print]       varchar(1) NULL ,
    [undercover_padding]        varchar(1) NULL ,
    [display_in_plotter]        varchar(1) NULL ,
    [delay]             char(2) NULL ,
    [delay_liner_wall]          char(5) NULL ,
    [delay_liner_bottom]        char(5) NULL ,
    [pearlessence]          char(2) NULL ,
    [liner_carousel]            smallint NULL ,
    [liner_add_sticker]         smallint NULL DEFAULT 0 ,
     PRIMARY KEY ([product_id])
)
;

GO

CREATE TABLE [dbo].[dealer]
(
    [dealer_code]           char(6) NOT NULL ,
    [name]              char(35) NULL ,
    [contact_sales]         char(100) NULL ,
    [contact_acct]          char(35) NULL ,
    [addr1]             char(35) NULL ,
    [addr2]             char(35) NULL ,
    [city]              char(50) NULL ,
    [state_code]            char(3) NOT NULL ,
    [zip]               char(10) NULL ,
    [phone]             char(20) NULL ,
    [fax]               char(20) NULL ,
    [active]                char(1) NULL ,
    [admin_hold]            char(1) NULL ,
    [alias]             char(35) NULL ,
    [category]              char(2) NULL ,
    [sales_territory]           char(2) NULL ,
    [parent_dealer_code]        char(6) NULL ,
    [term_id]               int NULL ,
    [ship_via_id]           int NULL ,
    [ship_via_mf]           int NULL ,
    [credit_limit]          float NULL ,
    [credit_app_date]           date NULL ,
    [deposit_required]          char(1) NULL ,
    [deposit_amt]           float NULL ,
    [deposit_min_pct]           float NULL ,
    [tax_code]              char(10) NULL ,
    [tax_reseller_certificate]      char(20) NULL ,
    [call_with_price]           char(1) NULL ,
    [create_date]           date NOT NULL ,
    [create_user]           char(15) NOT NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
    [discount]              varchar(25) NULL ,
    [hardware_discount]         varchar(10) NULL ,
    [mail_list]             char(1) NULL ,
    [mail_list_codes]           char(100) NULL ,
    [quote_only_names]          char(100) NULL ,
    [leads_dealer]          char(1) NULL ,
    [salestype_service]         char(1) NULL ,
    [salestype_home]            char(1) NULL ,
    [salestype_retail]          char(1) NULL ,
    [salestype_builder]         char(1) NULL ,
    [salestype_distributor]     char(1) NULL ,
    [credit_app_received]       date NULL ,
    [phone2]                char(20) NULL ,
    [call_b4_faxing]            char(1) NULL ,
    [estm_doc]              char(1) NULL ,
    [notify_doc]            char(1) NULL ,
    [ack_doc]               char(1) NULL ,
    [invc_doc]              char(1) NULL ,
    [leads_date]            date NULL ,
    [po_box_flag]           char(1) NULL ,
    [tax_cert_exp_date]         date NULL ,
    [onground_leads]            char(1) NULL ,
    [babyloc_leads]         char(1) NULL ,
    [Cell_Phone]            char(20) NULL ,
    [E_Mail_address]            char(50) NULL ,
    [Principal]             char(100) NULL ,
    [web_site]              char(1) NULL ,
    [source]                char(50) NULL ,
    [fax_leads]             char(1) NULL ,
    [ra_deposit_required]       char(1) NULL ,
    [ra_deposit_amt]            float NULL ,
    [ra_deposit_min_pct]        float NULL ,
    [company_sales]         char(2) NULL ,
    [fax_messages]          char(1) NULL ,
    [salestype_fence]           char(1) NULL ,
    [bulk_dealer]           char(1) NULL ,
    [zip_rating]            tinyint NULL ,
    [baby_loc_discount]         varchar(25) NULL ,
    [liner_discount]            varchar(25) NULL ,
    [liner_term_id]         int NULL ,
    [liner_deposit_required]        char(1) NULL ,
    [liner_deposit_amt]         float NULL ,
    [liner_deposit_min_pct]     float NULL ,
    [liner_leads]           char(1) NULL ,
    [form75_doc]            char(1) NULL ,
    [cc_on_file]            char(1) NOT NULL ,
    [admin_notes]           char(250) NULL ,
    [liner_discount_ag]         varchar(25) NULL ,
    [web_address]           char(150) NULL ,
    [liner_tax_reseller_certificate] char(20) NULL ,
    [cd_Rep]                char(30) NULL ,
    [star_82]               char(1) NULL ,
    [bulk_email]            char(1) NULL ,
    [deposit_override]          char(1) NULL ,
    [wt_discount]           varchar(25) NULL ,
    [om_discount]           varchar(25) NULL ,
    [spa_cap_discount]          varchar(25) NULL ,
    [barrier_discount]          varchar(25) NULL ,
    [sales_priority]            int NULL ,
    [production_number]         int NULL ,
    [route_to]              varchar(100) NULL ,
    [category_ln]           char(2) NULL ,
    [nspi_member]           char(2) NULL ,
    [business_listing]          char(2) NULL ,
    [verify_dealer]         char(2) NULL ,
    [abbreviation_name]         varchar(35) NULL ,
    [ra_discount]           varchar(25) NULL ,
    [proforma_doc]          char(1) NULL ,
    [no_charge_freight]         char(1) NULL ,
    [no_print_freight]          varchar(10) NULL ,
    [li_dealer]             char(1) NULL ,
    [trouble_priority]          char(1) NOT NULL DEFAULT 'N' ,
    [en_discount]           varchar(25) NULL ,
    [ag_liner_stock]            varchar(25) NULL ,
    [display_metric]            char(1) NULL DEFAULT 'N' ,
    [display_price_on_web]      varchar(1) NULL DEFAULT 'N' ,
    [display_jobs_on_web]       varchar(1) NULL DEFAULT 'Y' ,
    [salestype_online]          varchar(2) NULL ,
    [salestype_buyinggroup]     varchar(2) NULL ,
    [out_of_business]           varchar(2) NULL ,
    [li_dealer_ln]          varchar(1) NULL ,
    [li_dealer_bl]          varchar(1) NULL ,
    [credit_line_override]      varchar(1) NULL DEFAULT 'N' ,
    [no_charge_freight_ln]      char(1) NULL ,
    [country]               char(3) NOT NULL DEFAULT '' ,
    [verification_doc]          char(1) NULL ,
    [admin_notes_de]            char(250) NULL ,
    [mirage_white_label]        char(2) NULL ,
    [ba_discount]           varchar(25) NULL ,
    [omit_commision]            varchar(2) NULL ,
    [deposit_override_2]        char(1) NULL ,
    [organization_code]         int NULL DEFAULT 0 ,
     PRIMARY KEY ([dealer_code])
)
;

GO

CREATE TABLE [dbo].[dealer_bal]
(
    [dealer_code]           char(6) NOT NULL ,
    [period_end]            date NOT NULL ,
    [bal_year]              smallint NULL ,
    [gross_sales]           float NULL ,
    [net_sales]             float NULL ,
    [high_credit]           numeric(12,2) NULL ,
    [average_days]          int NULL ,
    [covers]                int NULL ,
    [bl_feet]               int NULL ,
    [bl_orders]             int NULL ,
    [bl_gross]              numeric(8,2) NULL ,
    [bl_net]                numeric(8,2) NULL ,
    [liners]                int NULL ,
     PRIMARY KEY ([dealer_code], [period_end])
)
;

GO

CREATE TABLE [dbo].[dealer_shipto]
(
    [dealer_code]           char(6) NOT NULL ,
    [shipto_code]           char(6) NOT NULL ,
    [name]              char(35) NULL ,
    [contact]               char(35) NULL ,
    [addr1]             char(35) NULL ,
    [addr2]             char(35) NULL ,
    [city]              char(20) NULL ,
    [state_code]            char(3) NULL ,
    [zip]               char(10) NULL ,
    [phone]             char(10) NULL ,
    [fax]               char(10) NULL ,
    [mail_list]             char(1) NULL ,
    [mail_list_codes]           char(100) NULL ,
    [tax_code]              char(10) NULL ,
    [country]               char(3) NULL ,
     PRIMARY KEY ([dealer_code], [shipto_code])
)
;

GO

CREATE TABLE [dbo].[log]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [task]              varchar(50) NULL ,
    [action]                varchar(50) NULL ,
    [action_date]           date NULL DEFAULT (CONVERT(date, SYSDATETIME())) ,
    [action_time]           time NULL DEFAULT current time ,
    [action_user]           char(15) NULL DEFAULT (LEFT(ORIGINAL_LOGIN(), 15)) ,
    [reference]             varchar(150) NULL ,
    [status]                int NULL 
)
;

GO

CREATE TABLE [dbo].[up_charge]
(
    [hardware_code]         char(10) NOT NULL ,
    [effective_date]            date NOT NULL ,
    [up_charge]             float NULL ,
    [grid_size]             char(1) NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
     PRIMARY KEY ([hardware_code], [effective_date])
)
;

GO

CREATE TABLE [dbo].[dealer_discount]
(
    [dealer_code]           char(6) NOT NULL ,
    [type]              char(2) NOT NULL ,
    [class]             char(6) NOT NULL ,
    [product_id]            int NOT NULL ,
    [dealer_discount]           varchar(50) NOT NULL ,
     PRIMARY KEY ([dealer_code], [type], [class], [product_id])
)
;

GO

CREATE TABLE [dbo].[terms_payments]
(
    [term_id]               int NOT NULL ,
    [payment_id]            smallint NOT NULL ,
    [net_days]              smallint NULL ,
     PRIMARY KEY ([term_id], [payment_id])
)
;

GO

CREATE TABLE [dbo].[dealer_comments]
(
    [dealer_code]           char(6) NOT NULL ,
    [category]              char(10) NOT NULL ,
    [type]              char(10) NOT NULL ,
    [text]              varchar(255) NULL ,
    [active]                char(1) NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
    [id]                int IDENTITY(1,1) NOT NULL ,
    [cv_om_wt_sc]           varchar(2) NULL ,
    [ln]                varchar(2) NULL ,
    [ms]                varchar(2) NULL ,
    [ra]                varchar(2) NULL ,
    [nc]                varchar(2) NULL ,
    [bl]                varchar(2) NULL ,
    [create_date]           date NULL ,
    [create_user]           varchar(15) NULL ,
    [id_no]             int NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[dealer_rules]
(
    [dealer_code]           char(6) NOT NULL ,
    [category]              char(10) NOT NULL ,
    [type]              char(10) NOT NULL ,
    [text]              varchar(255) NULL ,
    [active]                char(1) NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
    [section]               char(10) NOT NULL ,
    [pool_type]             char(2) NULL ,
    [additional_flag]           char(2) NULL ,
    [cv_om_wt_sc]           varchar(2) NULL ,
    [ln]                varchar(2) NULL ,
    [ms]                varchar(2) NULL ,
    [ra]                varchar(2) NULL ,
    [nc]                varchar(2) NULL ,
    [bl]                varchar(2) NULL ,
    [third_dealer_allow]        varchar(2) NULL ,
     PRIMARY KEY ([dealer_code], [category], [type], [section])
)
;

GO

CREATE TABLE [dbo].[prep_blue_dot]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [dtl_no]                smallint NOT NULL ,
    [text]              varchar(500) NULL ,
    [date_cleared]          date NULL ,
    [cleared_by]            varchar(35) NULL ,
    [last_modified_date]        date NULL ,
    [last_modified_user]        char(15) NULL ,
    [source]                char(1) NULL ,
    [answer]                varchar(255) NULL ,
    [markable]              char(5) NULL ,
    [foreign_version]           char(500) NULL ,
    [create_date]           date NULL DEFAULT (CONVERT(date, SYSDATETIME())) ,
    [create_user]           varchar(50) NULL DEFAULT (LEFT(ORIGINAL_LOGIN(), 50)) ,
     PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[bank]
(
    [bank_id]               char(10) NOT NULL ,
    [name]              varchar(50) NOT NULL ,
     PRIMARY KEY ([bank_id])
)
;

GO

CREATE TABLE [dbo].[pferrormsg]
(
    [error_num]             int NOT NULL ,
    [title_text]            char(40) NULL ,
    [body_text]             char(256) NULL ,
    [icon]              smallint NULL ,
    [buttons]               smallint NULL ,
    [short_desc]            char(40) NULL ,
    [severity]              int NULL ,
    [log_error]             char(1) NULL ,
     PRIMARY KEY ([error_num])
)
;

GO

CREATE TABLE [dbo].[pferrorlog]
(
    [error_num]             int NOT NULL ,
    [user_id]               char(30) NOT NULL ,
    [error_date]            date NOT NULL ,
    [error_log_num]         float NOT NULL ,
    [dberror_no]            int NULL ,
    [dberror_text]          char(2000) NULL ,
    [additional_text]           char(256) NULL ,
    [window_name]           char(40) NULL ,
    [error_label]           char(80) NULL ,
     PRIMARY KEY ([error_num], [user_id], [error_date], [error_log_num])
)
;

GO

CREATE TABLE [dbo].[pfuser_pref]
(
    [keyword]               varchar(256) NOT NULL ,
    [ini_section]           varchar(256) NOT NULL ,
    [userid]                char(30) NOT NULL ,
    [key_value]             varchar(256) NULL ,
    [last_modified_userid]      char(30) NOT NULL ,
    [last_modified_date]        date NOT NULL ,
     PRIMARY KEY ([keyword], [ini_section], [userid])
)
;

GO

CREATE TABLE [dbo].[prep_hardware]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [hardware_code]         char(10) NOT NULL ,
    [quantity]              int NULL ,
    [actual_quantity]           int NULL ,
    [unit]              char(10) NULL ,
    [unit_price]            float NULL ,
    [charge_flag]           char(1) NULL ,
    [last_modified_date]        date NULL ,
    [last_modified_user]        char(15) NULL ,
    [additional_flag]           char(1) NOT NULL ,
    [source]                char(1) NULL ,
    [up_charge_flag]            char(1) NULL ,
    [units]             int NULL ,
    [weight]                float NULL ,
     PRIMARY KEY ([prep_id], [quote_no], [dtl_no], [additional_flag])
)
;

GO

CREATE TABLE [dbo].[prep_treatment]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [treatment_code]            char(10) NOT NULL ,
    [quantity]              int NULL ,
    [actual_quantity]           int NULL ,
    [unit]              char(10) NULL ,
    [unit_price]            float NULL ,
    [charge_flag]           char(1) NULL ,
    [last_modified_date]        date NULL ,
    [last_modified_user]        char(15) NULL ,
    [source]                char(1) NULL ,
     PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[production_cap]
(
    [production_date]           date NOT NULL ,
    [holiday]               char(1) NULL ,
    [unit_capacity]         int NULL ,
    [units_scheduled]           int NULL ,
    [liner_capacity]            int NULL ,
     PRIMARY KEY ([production_date])
)
;

GO

CREATE TABLE [dbo].[product_hardware]
(
    [product_id]            int NOT NULL ,
    [hardware_code]         char(10) NOT NULL ,
    [chargeable]            char(1) NOT NULL ,
    [per_anchor]            char(1) NOT NULL ,
    [fixed_amount]          int NOT NULL ,
     PRIMARY KEY ([product_id], [hardware_code])
)
;

GO

CREATE TABLE [dbo].[material]
(
    [material_id]           int IDENTITY(1,1) NOT NULL ,
    [name]              char(10) NOT NULL ,
     PRIMARY KEY ([material_id])
)
;

GO

CREATE TABLE [dbo].[cv_production_dates]
(
    [production_date]           date NOT NULL ,
    [material_id]           int NOT NULL ,
    [stock_ship_date]           date NOT NULL ,
    [out_of_stock_ship_date]        date NOT NULL ,
    [custom_ship_date]          date NOT NULL ,
    [drop_date]             date NOT NULL ,
     PRIMARY KEY ([production_date], [material_id])
)
;

GO

CREATE TABLE [dbo].[grid_size]
(
    [product_id]            int NOT NULL ,
    [grid_size]             char(10) NOT NULL ,
     PRIMARY KEY ([product_id], [grid_size])
)
;

GO

CREATE TABLE [dbo].[prep_comments]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [category]              char(10) NOT NULL ,
    [type]              char(10) NOT NULL ,
    [text]              varchar(255) NULL ,
    [active]                char(1) NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
    [dealer_flag]           char(1) NULL ,
    [source]                char(1) NULL ,
    [id_no]             int NULL ,
     PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[prep_rules]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [category]              char(10) NOT NULL ,
    [type]              char(10) NOT NULL ,
    [text]              varchar(255) NULL ,
    [active]                char(1) NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
    [dealer_flag]           char(1) NULL ,
    [source]                char(1) NULL ,
    [section]               char(10) NULL ,
    [pool_type]             char(2) NULL ,
     PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[prep_special_instructions]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [code]              char(10) NOT NULL ,
    [short_description]         varchar(50) NULL ,
    [long_description]          varchar(255) NULL ,
    [active_flag]           char(1) NULL ,
    [print_warranty_flag]       char(1) NULL ,
    [source]                char(1) NULL ,
     PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[syscon]
(
    [syscon_id]             int NOT NULL ,
    [stock_ship_days]           smallint NOT NULL ,
    [stock_out_ship_days]       smallint NOT NULL ,
    [custom_ship_days]          smallint NOT NULL ,
    [custom_deposit_days]       smallint NOT NULL ,
    [promo_ship_days]           smallint NOT NULL ,
    [price_effective_date]      date NOT NULL ,
    [business_day_end]          time NOT NULL ,
    [cod_charge]            numeric(5,2) NOT NULL ,
    [default_non_mf]            int NOT NULL ,
    [default_mf]            int NOT NULL ,
    [custom_solid_ship_days]        smallint NOT NULL ,
    [custom_solid_deposit_days]     smallint NOT NULL ,
    [cpu_tax_rate]          numeric(5,3) NULL ,
    [bleep_production]          char(1) NOT NULL ,
    [extra_drop_days]           smallint NOT NULL ,
    [route_to_person]           char(25) NOT NULL ,
    [Auto_CFA]              char(1) NOT NULL ,
    [csrecipient]           char(25) NOT NULL ,
    [liner_ship_days]           smallint NOT NULL ,
    [liner_deposit_days]        smallint NOT NULL ,
    [ship_hardware_weight_tolerance] float NOT NULL ,
    [discount_28_28]            float NOT NULL ,
    [discount_28_20]            float NOT NULL ,
    [spring_return]         int NOT NULL ,
    [alteration_upcharge]       float NULL ,
    [free_freight]          char(1) NOT NULL ,
    [ra_ship_days]          smallint NOT NULL ,
    [ra_deposit_days]           smallint NOT NULL ,
    [nc_ship_days]          smallint NOT NULL ,
    [nc_deposit_days]           smallint NOT NULL ,
    [alt_ship_days]         smallint NOT NULL ,
    [alt_deposit_days]          smallint NOT NULL ,
    [om_discount]           char(25) NOT NULL ,
    [wt_ship_days]          smallint NULL ,
    [wt_deposit_days]           smallint NULL ,
    [discount_20_28]            float NULL ,
    [comp_markdown]         varchar(1) NULL ,
    [enclosure_ship_days]       smallint NULL ,
    [enclosure_deposit_days]        smallint NULL ,
    [ln_ag_shipdays]            int NULL ,
    [discount_28_28_ag]         float NULL ,
    [discount_20_28_ag]         float NULL ,
    [discount_28_20_ag]         float NULL ,
    [plates_ship]           int NULL ,
    [plates_drop]           int NULL ,
    [discount_30_30]            float NULL ,
    [discount_30_30_ag]         float NULL ,
    [custom_deposit_days_foreign]   int NULL ,
    [custom_ship_days_foreign]      int NULL ,
    [deposit_required_1]        float NULL ,
    [deposit_required_2]        float NULL ,
    [liner_extended_warranty_silver] float NULL ,
    [liner_extended_warranty_silver_min] float NULL ,
    [liner_extended_warranty_gold]  float NULL ,
    [liner_extended_warranty_gold_min] float NULL ,
    [liner_extended_warranty_commercial] float NULL ,
     PRIMARY KEY ([syscon_id])
)
;

GO

CREATE TABLE [dbo].[production_dates]
(
    [prep_type]             char(2) NOT NULL ,
    [ship_date]             date NULL ,
    [ship_days]             int NULL ,
    [deposit_date]          date NULL ,
    [deposit_days]          int NULL ,
     PRIMARY KEY ([prep_type])
)
;

GO

CREATE TABLE [dbo].[tech_hardware]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              int NOT NULL ,
    [create_date]           datetime2(0) NOT NULL ,
    [create_user]           char(10) NOT NULL ,
    [hardware_code]         char(10) NOT NULL ,
    [qty]               smallint NOT NULL ,
     PRIMARY KEY ([prep_id], [quote_no], [create_date], [hardware_code])
)
;

GO

CREATE TABLE [dbo].[tech_treatment]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              int NOT NULL ,
    [create_date]           datetime2(0) NOT NULL ,
    [create_user]           char(10) NOT NULL ,
    [treatment_code]            char(10) NOT NULL ,
    [qty]               bigint NOT NULL ,
     PRIMARY KEY ([prep_id], [quote_no], [create_date], [treatment_code])
)
;

GO

CREATE TABLE [dbo].[tech_special_instructions]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              int NOT NULL ,
    [create_date]           datetime2(0) NOT NULL ,
    [create_user]           char(10) NOT NULL ,
    [code]              char(10) NOT NULL ,
     PRIMARY KEY ([prep_id], [quote_no], [create_date], [code])
)
;

GO

CREATE TABLE [dbo].[tech_manf]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              int NOT NULL ,
    [create_date]           datetime2(0) NOT NULL ,
    [create_user]           char(10) NOT NULL ,
    [grid_size]             char(10) NOT NULL ,
    [qty]               smallint NOT NULL ,
    [shape]             char(10) NOT NULL ,
    [object_size]           varchar(255) NOT NULL ,
    [manf_size]             varchar(255) NOT NULL ,
    [averaged_flag]         char(1) NOT NULL ,
    [safe_flag]             char(1) NOT NULL ,
    [sqft]              float NOT NULL ,
    [extensions]            smallint NULL ,
    [c_end]             char(1) NULL ,
    [rough_estimate]            char(1) NULL ,
    [liner_overide]         char(5) NULL ,
     PRIMARY KEY ([prep_id], [quote_no], [create_date])
)
;

GO

CREATE TABLE [dbo].[prep_manf]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [product_id]            int NULL ,
    [product_group]         char(1) NULL ,
    [grid_size]             char(10) NULL ,
    [qty]               smallint NULL ,
    [out_of_stock_flag]         char(1) NULL ,
    [shape]             varchar(50) NULL ,
    [object_size]           varchar(255) NULL ,
    [manf_size]             varchar(255) NULL ,
    [averaged_flag]         char(1) NULL ,
    [safe_flag]             char(1) NULL ,
    [price_table_flag]          char(1) NULL ,
    [sqft]              float NULL ,
    [base_cost]             float NULL ,
    [cover_hardware_cost]       float NULL ,
    [markdown]              float NULL ,
    [shipping_cost]         float NULL ,
    [sales_tax]             float NULL ,
    [dealer_discount]           varchar(50) NULL ,
    [ship_via_id]           int NULL ,
    [number_of_cartons]         smallint NULL ,
    [weight_of_cartons]         float NULL ,
    [create_date]           date NULL ,
    [create_user]           char(15) NULL ,
    [last_modified_date]        date NULL ,
    [last_modified_user]        char(15) NULL ,
    [extensions]            int NULL ,
    [hardware_discount]         char(50) NULL ,
    [deposit_requested]         float NULL ,
    [deposit_acceptable]        float NULL ,
    [ship_date]             date NULL ,
    [drop_date]             date NULL ,
    [ups_zone]              char(10) NULL ,
    [cover_net]             float NULL ,
    [other_list]            float NULL ,
    [other_net]             float NULL ,
    [total]             float NULL ,
    [waiting_for_price]         char(1) NULL ,
    [stock_master_id]           int NULL ,
    [status]                int NULL ,
    [treatment_cost]            float NULL ,
    [c_end]             char(1) NULL ,
    [rough_estimate]            char(1) NULL ,
    [carton_types]          char(300) NULL ,
    [carton_weights]            char(400) NULL ,
    [stock_serial_numbers]      varchar(1000) NULL ,
    [cover_list]            numeric(9,2) NULL ,
    [old_cover_list]            numeric(9,2) NULL ,
    [cod_fee]               float NULL ,
    [pool_shape]            char(50) NULL ,
    [COD_Changes]           float NULL ,
    [Liner_Wall_Thickness]      int NULL ,
    [Liner_Bottom_Thickness]        int NULL ,
    [Liner_Overide]         char(5) NULL ,
    [plate_no]              varchar(10) NULL ,
    [ln_is_estimate]            varchar(2) NULL ,
    [replace]               varchar(2) NULL ,
    [paid_in_full]          varchar(2) NULL DEFAULT 'N' ,
    [stock_master_id_ln_ag]     int NULL ,
    [freeze_shipdate]           char(1) NULL ,
    [note_ship_text]            char(2) NULL ,
    [markdown_wall]         char(2) NULL DEFAULT 'N' ,
    [markdown_bottom]           char(2) NULL DEFAULT 'N' ,
     PRIMARY KEY ([prep_id], [quote_no])
)
;

GO

CREATE TABLE [dbo].[tech_treat]
(
    [cat]               char(10) NOT NULL ,
    [p_code]                char(10) NOT NULL ,
    [p_desc]                varchar(150) NOT NULL ,
    [s_code]                char(10) NOT NULL ,
    [s_desc]                varchar(150) NOT NULL ,
    [txt_win]               varchar(150) NOT NULL ,
     PRIMARY KEY ([txt_win])
)
;

GO

CREATE TABLE [dbo].[prep]
(
    [prep_id]               int IDENTITY(1,1) NOT NULL ,
    [selected_quote_no]         smallint NULL ,
    [dealer_code]           char(6) NOT NULL ,
    [billto_dealer_code]        char(6) NOT NULL ,
    [term_id]               int NOT NULL ,
    [prep_type]             char(1) NOT NULL ,
    [type]              char(2) NULL ,
    [entry_date]            date NOT NULL ,
    [order_no]              int NULL ,
    [order_date]            date NULL ,
    [po_no]             char(25) NULL ,
    [jobname]               char(50) NULL ,
    [shipto_code]           char(6) NOT NULL ,
    [shipto_name]           char(35) NULL ,
    [shipto_contact]            char(35) NULL ,
    [shipto_addr1]          char(35) NULL ,
    [shipto_addr2]          char(35) NULL ,
    [shipto_city]           char(20) NULL ,
    [shipto_state_code]         char(3) NULL ,
    [shipto_zip]            char(10) NULL ,
    [status]                char(3) NULL ,
    [replacement]           char(1) NULL ,
    [warranty]              char(1) NULL ,
    [manufactured_by]           varchar(35) NULL ,
    [original_order_no]         char(15) NULL ,
    [return_no]             char(10) NULL ,
    [old_cover_instructions]        varchar(255) NULL ,
    [credit_release_flag]       char(1) NULL ,
    [shipping_release_flag]     char(1) NULL ,
    [manf_location]         char(10) NULL ,
    [deposit_amt_received]      float NULL DEFAULT 0 ,
    [chafe_length]          smallint NULL ,
    [create_date]           date NULL ,
    [create_user]           char(15) NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
    [print_estimate]            char(1) NULL ,
    [print_notify]          char(1) NULL ,
    [print_ack]             char(1) NULL ,
    [print_invoice]         char(1) NULL ,
    [print_worksheet]           char(1) NULL ,
    [display_cover]         char(1) NULL ,
    [called_with_price]         char(1) NULL ,
    [cover_in_building]         char(1) NULL ,
    [quick_stock_order]         float NULL ,
    [pricing_description]       varchar(255) NULL ,
    [discount_type]         char(1) NULL ,
    [dealer_discount]           char(50) NULL ,
    [hardware_discount]         char(50) NULL ,
    [tech_date]             datetime2(0) NULL ,
    [ab_plot_flag]          char(1) NULL ,
    [shipout_batch_id]          datetime2(0) NULL ,
    [deposit_amt_enclosed]      numeric(9,2) NULL ,
    [previous_jobname]          char(25) NULL ,
    [route_to]              char(10) NULL ,
    [manf_hold]             char(1) NULL ,
    [checked_for_accuracy]      char(1) NULL ,
    [billto_estm_doc]           char(1) NULL ,
    [billto_notify_doc]         char(1) NULL ,
    [billto_ack_doc]            char(1) NULL ,
    [dealer_estm_doc]           char(1) NULL ,
    [dealer_notify_doc]         char(1) NULL ,
    [dealer_ack_doc]            char(1) NULL ,
    [shipto_tax_code]           char(10) NULL ,
    [number_original_springs]       smallint NULL ,
    [original_storage_bag]      char(1) NULL ,
    [ups_track]             char(25) NULL ,
    [from_web]              char(1) NULL ,
    [from_plot_prg]         char(1) NULL ,
    [dispose_date]          date NULL ,
    [age_of_cover]          int NULL ,
    [original_spring_cover_qty]     int NULL ,
    [damage_type]           char(255) NULL ,
    [discard_cover]         char(25) NULL ,
    [return_no_work]            char(1) NULL ,
    [full_hardware]         char(1) NULL ,
    [back_to_tech]          char(1) NULL ,
    [altered]               int NULL ,
    [return_cover]          char(25) NULL ,
    [ra_ordered_by]         char(25) NULL ,
    [ra_approved_by]            char(25) NULL ,
    [ra_inspected_by]           char(25) NULL ,
    [will_not_repair]           char(1) NULL ,
    [repaired_no_times]         int NULL ,
    [ra_inspection_date]        date NULL ,
    [repair_comments]           char(300) NULL ,
    [anchors_returned]          int NULL ,
    [warranty_reasons]          char(255) NULL ,
    [buckles_returned]          int NULL ,
    [Alter_Job]             char(1) NULL ,
    [Liner_reference]           int NULL ,
    [print_hardware]            char(1) NULL ,
    [billto_form75_doc]         char(1) NULL ,
    [dealer_form75_doc]         char(1) NULL ,
    [Liner_Perimeter]           int NULL ,
    [Roll_Serial_No]            int NULL ,
    [liner_bottom]          int NULL ,
    [Liner_step]            char(1) NULL ,
    [requote]               char(1) NULL ,
    [third_dealer]          char(6) NULL ,
    [billto_proforma_doc]       char(1) NULL ,
    [photo]             char(2) NULL ,
    [template]              char(2) NULL ,
    [measure_by_sales]          char(2) NULL ,
    [back_to_imageloc]          char(2) NULL ,
    [country]               char(3) NULL ,
    [cod_due]               float NULL ,
    [dealer_verification]       char(1) NULL ,
    [from_app]              char(1) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[artran]
(
    [type]              char(1) NOT NULL ,
    [id]                int NOT NULL ,
    [dealer_code]           char(6) NOT NULL ,
    [date]              date NOT NULL ,
    [total_amount]          numeric(9,2) NOT NULL ,
    [terms_id]              int NOT NULL ,
    [terms_dscnt_prcnt]         smallint NULL ,
    [terms_dscnt_days]          smallint NULL ,
    [terms_due_days]            smallint NOT NULL ,
    [terms_dscnt_date]          date NULL ,
    [terms_due_date]            date NOT NULL ,
    [status]                char(1) NULL ,
    [paid_amount]           numeric(9,2) NULL ,
    [rcpt_in_progress]          char(1) NULL ,
    [dscnt_todate]          numeric(9,2) NULL ,
    [writeoff_todate]           numeric(9,2) NULL ,
    [dscntable_amount]          numeric(9,2) NULL ,
    [credit_type]           char(2) NULL ,
    [debit_type]            char(2) NULL ,
    [prep_id]               int NULL ,
    [shipout_batch_id]          datetime2(0) NULL ,
    [ref]               char(50) NULL ,
    [text]              char(1000) NULL ,
    [paid_date]             date NULL ,
    [funds_hold]            char(1) NULL ,
    [db_cr_inv_no]          int NULL ,
    [company]               char(3) NULL ,
     PRIMARY KEY ([type], [id])
)
;

GO

CREATE TABLE [dbo].[artran_apply]
(
    [type]              char(1) NOT NULL ,
    [id]                int NOT NULL ,
    [line_id]               int NOT NULL ,
    [transaction]           char(1) NOT NULL ,
    [deposit_id]            int NULL ,
    [receipt_id]            int NULL ,
    [amount]                numeric(9,2) NOT NULL ,
    [date]              date NOT NULL ,
    [keyoff_id]             int NULL ,
     PRIMARY KEY ([line_id])
)
;

GO

CREATE TABLE [dbo].[artran_detail]
(
    [artran_type]           char(1) NOT NULL ,
    [artran_id]             int NOT NULL ,
    [line_id]               smallint NOT NULL ,
    [line_amount]           numeric(8,2) NOT NULL ,
    [gl_dbcr]               char(1) NOT NULL ,
    [reference]             varchar(250) NULL ,
    [gl_account]            char(10) NULL ,
     PRIMARY KEY ([artran_type], [artran_id], [line_id])
)
;

GO

CREATE TABLE [dbo].[deposit]
(
    [deposit_id]            int IDENTITY(1,1) NOT NULL ,
    [date]              date NOT NULL ,
    [cash_account]          char(10) NOT NULL ,
    [status]                char(10) NOT NULL ,
    [estimated_amount]          numeric(9,2) NOT NULL ,
    [actual_amount]         numeric(9,2) NOT NULL DEFAULT 0 ,
    [assigned_user]         char(15) NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
    [last_modified_date]        date NOT NULL ,
    [bank_id]               char(10) NOT NULL ,
    [depno]             int NULL ,
    [estimated_count]           int NULL ,
    [actual_count]          int NULL ,
    [company]               char(3) NULL ,
     PRIMARY KEY ([deposit_id])
)
;

GO

CREATE TABLE [dbo].[deposit_rcpt]
(
    [deposit_id]            int NOT NULL ,
    [receipt_id]            int NOT NULL ,
    [status]                char(1) NULL ,
    [dealer_id]             char(6) NOT NULL ,
    [amount]                numeric(9,2) NOT NULL ,
    [pymt_type]             char(15) NOT NULL ,
    [check_type]            char(15) NULL ,
    [check_number]          varchar(50) NULL ,
    [days_to_hold]          int NOT NULL ,
    [note]              varchar(255) NULL ,
    [last_modified_user]        char(15) NULL ,
    [last_modified_date]        date NULL ,
    [create_user]           char(15) NULL ,
    [create_date]           date NULL ,
     PRIMARY KEY ([deposit_id], [receipt_id])
)
;

GO

CREATE TABLE [dbo].[deposit_rcpt_detail]
(
    [deposit_id]            int NOT NULL ,
    [receipt_id]            int NOT NULL ,
    [line_id]               int NOT NULL ,
    [group_code]            char(5) NOT NULL ,
    [group_type]            char(15) NOT NULL ,
    [group_id]              int NULL ,
    [apply_amount]          numeric(9,2) NOT NULL ,
    [write_off_amount]          numeric(9,2) NOT NULL ,
    [discount_amount]           numeric(9,2) NOT NULL ,
    [gl_account]            char(10) NOT NULL ,
    [gl_dbcr]               char(1) NOT NULL ,
    [comment]               varchar(200) NULL ,
    [balance_amount]            numeric(9,2) NULL ,
    [total_amount]          numeric(9,2) NULL ,
    [terms_dscnt_prcnt]         smallint NULL ,
    [terms_dscnt_date]          date NULL ,
    [eligible_dscnt_amount]     numeric(9,2) NULL ,
    [order_no]              int NULL ,
     PRIMARY KEY ([deposit_id], [receipt_id], [line_id])
)
;

GO

CREATE TABLE [dbo].[keyoff]
(
    [keyoff_id]             int NOT NULL ,
    [artran_type]           char(1) NOT NULL ,
    [artran_id]             int NOT NULL ,
    [date]              date NOT NULL ,
    [create_user]           char(15) NULL ,
    [create_date]           date NULL ,
    [last_modified_user]        char(15) NULL ,
    [last_modified_date]        date NULL ,
    [status]                char(1) NULL ,
    [amount]                numeric(9,2) NULL ,
    [note]              varchar(255) NULL ,
    [company]               char(3) NULL ,
     PRIMARY KEY ([keyoff_id])
)
;

GO

CREATE TABLE [dbo].[keyoff_detail]
(
    [keyoff_id]             int NOT NULL ,
    [line_id]               int NOT NULL ,
    [group_code]            char(5) NOT NULL ,
    [group_type]            char(15) NOT NULL ,
    [group_id]              int NULL ,
    [apply_amount]          numeric(9,2) NOT NULL ,
    [write_off_amount]          numeric(9,2) NOT NULL ,
    [discount_amount]           numeric(9,2) NOT NULL ,
    [gl_account]            char(10) NOT NULL ,
    [gl_dbcr]               char(1) NOT NULL ,
    [comment]               varchar(200) NULL ,
    [balance_amount]            numeric(9,2) NULL ,
    [total_amount]          numeric(9,2) NULL ,
    [terms_dscnt_prcnt]         smallint NULL ,
    [eligible_dscnt_amount]     numeric(9,2) NULL ,
    [terms_dscnt_date]          date NULL ,
     PRIMARY KEY ([keyoff_id], [line_id])
)
;

GO

CREATE TABLE [dbo].[promo]
(
    [promo_id]              int IDENTITY(1,1) NOT NULL ,
    [dealer_code]           char(10) NOT NULL ,
    [shipto_code]           char(10) NOT NULL ,
    [ship_via_id]           int NOT NULL ,
    [status]                char(1) NULL ,
    [ship_date]             date NULL ,
    [shipto_name]           char(35) NULL ,
    [shipto_contact]            char(100) NULL ,
    [shipto_addr1]          char(35) NULL ,
    [shipto_addr2]          char(35) NULL ,
    [shipto_city]           char(20) NULL ,
    [shipto_state_code]         char(3) NULL ,
    [shipto_zip]            char(10) NULL ,
    [create_date]           date NULL ,
    [create_user]           char(15) NULL ,
    [approx_ship_date]          date NULL ,
    [label_print_time]          time NULL ,
    [last_modified_date]        date NULL ,
    [last_modified_user]        char(15) NULL ,
    [comments]              char(255) NULL ,
    [tracking_number]           varchar(20) NULL ,
    [tracking_number_mf]        varchar(20) NULL ,
     PRIMARY KEY ([promo_id])
)
;

GO

CREATE TABLE [dbo].[promo_dtl]
(
    [promo_id]              int NOT NULL ,
    [dtl_no]                smallint NOT NULL ,
    [promo_type_id]         int NOT NULL ,
    [qty]               float NULL ,
    [create_date]           date NULL DEFAULT (CONVERT(date, SYSDATETIME())) ,
    [create_user]           char(15) NULL DEFAULT (LEFT(ORIGINAL_LOGIN(), 15)) ,
    [last_modified_date]        date NULL DEFAULT (CONVERT(date, SYSDATETIME())) ,
    [last_modified_user]        char(15) NULL DEFAULT (LEFT(ORIGINAL_LOGIN(), 15)) ,
    [too_much]              char(1) NULL ,
     PRIMARY KEY ([promo_id], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[promo_type]
(
    [promo_type_id]         int IDENTITY(1,1) NOT NULL ,
    [promo_code]            char(10) NOT NULL ,
    [promo_description]         char(50) NOT NULL ,
    [level1_qty]            int NOT NULL ,
    [level2_qty]            int NOT NULL ,
    [level3_qty]            int NOT NULL ,
    [promo_group]           char(2) NULL ,
    [active_flag]           char(1) NULL ,
    [quantity_on_hand]          int NULL ,
    [inventory_id]          int NULL ,
    [amount_per_case]           int NULL ,
    [alert]             int NULL ,
    [promo_jobtype]         char(20) NULL ,
    [promo_make_priority]       char(20) NULL ,
     PRIMARY KEY ([promo_type_id])
)
;

GO

CREATE TABLE [dbo].[t_dealer]
(
    [dealer_id]             char(6) NOT NULL ,
    [name]              char(30) NOT NULL ,
    [addr1]             char(30) NOT NULL ,
    [addr2]             char(30) NOT NULL ,
    [city]              char(30) NOT NULL ,
    [state]             char(2) NOT NULL ,
    [zip]               char(11) NOT NULL 
)
;

GO

CREATE TABLE [dbo].[lll_users]
(
    [user_name]             char(25) NOT NULL ,
    [security_level]            int NOT NULL ,
    [department]            varchar(25) NOT NULL ,
    [password]              varchar(25) NULL ,
    [department_level]          smallint NULL ,
    [initials]              char(3) NULL ,
    [sales_territory]           char(2) NULL ,
    [full_name]             char(50) NULL ,
    [Liner_Department]          char(1) NULL ,
    [email_address]         varchar(100) NULL ,
    [active]                varchar(2) NULL ,
    [gmail_password]            varchar(20) NULL ,
    [manager]               varchar(2) NULL ,
     PRIMARY KEY ([user_name])
)
;

GO

CREATE TABLE [dbo].[gl_account]
(
    [account]               char(10) NOT NULL ,
    [title]             char(30) NOT NULL ,
    [type]              char(10) NOT NULL ,
    [dbcr]              char(10) NOT NULL ,
    [category]              char(10) NOT NULL ,
    [company]               char(3) NULL ,
     PRIMARY KEY ([account])
)
;

GO

CREATE TABLE [dbo].[log_status]
(
    [id]                int NOT NULL ,
    [task]              char(50) NOT NULL ,
    [action]                char(50) NOT NULL ,
    [active]                char(1) NOT NULL DEFAULT 'Y' ,
    [web_location]          char(50) NULL ,
     PRIMARY KEY ([id], [task], [action])
)
;

GO

CREATE TABLE [dbo].[interest]
(
    [type]              char(1) NOT NULL ,
    [id]                int NOT NULL ,
    [create_date]           date NOT NULL ,
    [total_amount]          numeric(8,2) NOT NULL ,
    [paid_amount]           numeric(8,2) NOT NULL ,
    [rcpt_in_progress]          char(1) NULL ,
    [writeoff_todate]           numeric(9,2) NULL ,
    [status]                char(1) NULL ,
     PRIMARY KEY ([type], [id])
)
;

GO

CREATE TABLE [dbo].[interest_detail]
(
    [type]              char(1) NOT NULL ,
    [id]                int NOT NULL ,
    [ar_period]             date NOT NULL ,
    [amount]                numeric(9,2) NOT NULL ,
    [create_date]           date NOT NULL ,
    [create_user]           char(20) NOT NULL ,
     PRIMARY KEY ([type], [id], [ar_period])
)
;

GO

CREATE TABLE [dbo].[que]
(
    [que_id]                int IDENTITY(1,1) NOT NULL ,
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [date_in]               date NOT NULL DEFAULT (CONVERT(date, SYSDATETIME())) ,
    [time_in]               time NOT NULL DEFAULT current time ,
    [document_code]         char(20) NOT NULL ,
    [date_completed]            date NULL ,
    [time_completed]            time NULL ,
    [log]               varchar(250) NULL ,
    [dealer_code]           char(6) NULL ,
    [reprint_2nd]           char(1) NULL ,
     PRIMARY KEY ([que_id])
)
;

GO

CREATE TABLE [dbo].[ship_rates]
(
    [carrier_id]            int NOT NULL ,
    [zone]              numeric(11,0) NOT NULL ,
    [weight]                numeric(11,0) NOT NULL ,
    [amt]               numeric(19,5) NULL ,
     PRIMARY KEY ([carrier_id], [zone], [weight])
)
;

GO

CREATE TABLE [dbo].[ship_zone]
(
    [carrier_id]            int NOT NULL ,
    [zipn1]             numeric(11,0) NOT NULL ,
    [zipn2]             numeric(11,0) NOT NULL ,
    [ship_zone]             numeric(11,0) NOT NULL ,
     PRIMARY KEY ([carrier_id], [zipn1])
)
;

GO

CREATE TABLE [dbo].[carton_types]
(
    [carton_name]           varchar(10) NOT NULL ,
    [length]                int NOT NULL ,
    [width]             int NOT NULL ,
    [height]                int NOT NULL ,
    [cubic_feet]            numeric(5,2) NOT NULL ,
    [ups]               char(1) NOT NULL ,
    [short_name]            char(15) NULL ,
    [active]                char(1) NULL ,
    [include_subwt]         char(1) NULL ,
    [on_skid]               char(1) NULL ,
    [weight]                float NULL ,
    [dimensional_weight]        float NULL ,
     PRIMARY KEY ([carton_name])
)
;

GO

CREATE TABLE [dbo].[production_detail]
(
    [production_date]           date NOT NULL ,
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [qty]               smallint NULL ,
     PRIMARY KEY ([production_date], [prep_id], [quote_no])
)
;

GO

CREATE TABLE [dbo].[prep_manf_admin]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [admin_discount_type]       char(1) NULL ,
    [admin_discount]            char(20) NULL ,
    [admin_no_charge_net]       char(1) NULL ,
    [admin_no_charge_freight]       char(1) NULL ,
    [admin_description]         varchar(255) NULL ,
    [deposit_required]          char(1) NULL ,
    [deposit_flat_amount]       int NULL ,
    [deposit_min_pct]           int NULL ,
    [deposit_source]            char(1) NULL ,
    [deposit_max_pct]           int NULL ,
    [admin_description_dept]        varchar(255) NULL ,
    [admin_description_reason]      varchar(255) NULL ,
    [admin_description_as_per]      varchar(30) NULL ,
    [admin_description_date]        date NULL ,
    [admin_description_person]      varchar(30) NULL ,
    [deposit_override]          char(1) NULL ,
    [dept_markdowns]            varchar(255) NULL ,
    [giftcard]              varchar(255) NULL ,
    [fixed_freight]         float NULL ,
    [tobedetermined]            varchar(2) NULL ,
    [deposit_override_2]        char(1) NULL ,
    [admin_description_dept2]       varchar(255) NULL ,
     PRIMARY KEY ([prep_id], [quote_no])
)
;

GO

CREATE TABLE [dbo].[customer_service]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [user]              char(10) NOT NULL ,
    [cs_date]               date NOT NULL ,
    [cs_time]               time NOT NULL ,
    [dealer_code]           char(6) NOT NULL ,
    [person]                char(25) NULL ,
    [child_dealer_code]         char(6) NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[customer_service_detail]
(
    [id]                int NOT NULL ,
    [action]                char(50) NOT NULL ,
    [cs_date]               date NOT NULL ,
    [cs_time]               time NOT NULL ,
    [prep_id]               int NULL ,
    [quote_no]              smallint NULL ,
    [instructions]          varchar(255) NULL ,
    [paper]             char(1) NULL ,
    [order_no]              int NULL ,
     PRIMARY KEY ([id], [cs_date], [cs_time])
)
;

GO

CREATE TABLE [dbo].[dealer_term_code]
(
    [DLRCD]             char(10) NULL ,
    [COUNTER]               numeric(11,0) NULL ,
    [TERMS]             char(50) NULL ,
    [TERMPCT]               numeric(11,0) NULL ,
    [DSCDAYS]               numeric(11,0) NULL ,
    [SUPPRESS]              char(10) NULL 
)
;

GO

CREATE TABLE [dbo].[dealer_credit_history]
(
    [dealer_code]           char(6) NOT NULL ,
    [credit_date]           date NOT NULL ,
    [credit_time]           time NOT NULL ,
    [term_id]               int NOT NULL ,
    [deposit_required]          char(1) NOT NULL ,
    [credit_limit]          float NOT NULL ,
    [discount]              char(25) NOT NULL ,
     PRIMARY KEY ([dealer_code], [credit_date], [credit_time])
)
;

GO

CREATE TABLE [dbo].[Ship_via_old]
(
    [NEW_NUMB]              numeric(3,0) NOT NULL ,
    [Descrtiption]          char(50) NOT NULL ,
    [FIELD3]                char(6) NOT NULL 
)
;

GO

CREATE TABLE [dbo].[Ship_via_prep_1]
(
    [Total_Preps]           numeric(5,0) NOT NULL ,
    [Via_desc]              char(60) NOT NULL ,
    [New_Code]              numeric(3,0) NOT NULL 
)
;

GO

CREATE TABLE [dbo].[ena_detail]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [line_no]               smallint NOT NULL ,
    [quantity]              int NULL ,
    [description]           varchar(255) NULL ,
    [unit_price]            float NULL ,
    [total]             float NULL ,
    [short_desc]            char(60) NULL ,
     PRIMARY KEY ([prep_id], [quote_no], [line_no])
)
;

GO

CREATE TABLE [dbo].[stock_pick]
(
    [pick_id]               int IDENTITY(1,1) NOT NULL ,
    [pick_date]             date NOT NULL DEFAULT (CONVERT(date, SYSDATETIME())) ,
    [location_to]           char(10) NOT NULL DEFAULT 'HPG' ,
    [status]                char(1) NOT NULL ,
     PRIMARY KEY ([pick_id])
)
;

GO

CREATE TABLE [dbo].[stock_pick_detail]
(
    [pick_id]               int NOT NULL ,
    [qty]               int NOT NULL ,
    [line_comment]          char(50) NULL ,
    [starting_stock_id]         int NOT NULL ,
    [stock_id]              int NOT NULL ,
     PRIMARY KEY ([pick_id], [stock_id])
)
;

GO

CREATE TABLE [dbo].[stock_move]
(
    [pick_id]               int NOT NULL ,
    [date_rcvd]             date NOT NULL DEFAULT (CONVERT(date, SYSDATETIME())) ,
    [location_checkin]          char(10) NOT NULL ,
    [status]                char(1) NOT NULL ,
     PRIMARY KEY ([pick_id])
)
;

GO

CREATE TABLE [dbo].[stock_move_detail]
(
    [pick_id]               int NOT NULL ,
    [stock_id]              int NOT NULL ,
     PRIMARY KEY ([pick_id], [stock_id])
)
;

GO

CREATE TABLE [dbo].[messages]
(
    [msgid]             char(40) NOT NULL ,
    [msgtitle]              char(255) NOT NULL ,
    [msgtext]               char(255) NOT NULL ,
    [msgicon]               char(12) NOT NULL ,
    [msgbutton]             char(17) NOT NULL ,
    [msgdefaultbutton]          int NOT NULL ,
    [msgseverity]           int NOT NULL ,
    [msgprint]              char(1) NOT NULL ,
    [msguserinput]          char(1) NOT NULL ,
     PRIMARY KEY ([msgid])
)
;

GO

CREATE TABLE [dbo].[Dealer_M]
(
    [dealer_code]           varchar(10) NOT NULL ,
    [prep_id]               int NOT NULL ,
    [credit_letter]         datetime2(0) NULL ,
    [thankyou_letter]           datetime2(0) NULL ,
    [invoice_date]          datetime2(0) NULL ,
    [date_entered]          date NULL ,
    [first_user]            varchar(20) NULL ,
    [credit_app_source]         char(1) NULL ,
     PRIMARY KEY ([dealer_code])
)
;

GO

CREATE TABLE [dbo].[action_ticket]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [date]              date NOT NULL ,
    [time]              time NOT NULL ,
    [prep_id]               int NOT NULL ,
    [staff]             char(15) NOT NULL ,
    [person_speaking_to]        char(25) NOT NULL ,
    [paper]             char(1) NULL check(paper in( 'Y','N') ),
    [action]                char(50) NOT NULL ,
    [instruction]           char(255) NOT NULL ,
    [deposit_id]            int NOT NULL ,
    [print_timestamp]           datetime2(0) NULL ,
    [answered_bd]           varchar(30) NULL ,
    [cancel]                varchar(2) NULL ,
    [reviewed_action_ticket]        varchar(2) NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[dealer_rules_test]
(
    [dealer_code]           char(6) NOT NULL ,
    [category]              char(10) NOT NULL ,
    [type]              char(10) NOT NULL ,
    [text]              varchar(255) NULL ,
    [active]                char(1) NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
    [section]               char(10) NULL ,
    [pool_type]             char(2) NULL ,
     PRIMARY KEY ([dealer_code], [category], [type])
)
;

GO

CREATE TABLE [dbo].[cst_errors]
(
    [counter]               int IDENTITY(1,1) NOT NULL ,
    [dealer_code]           varchar(10) NOT NULL ,
    [error_text]            varchar(254) NULL ,
    [error_date]            date NULL DEFAULT (CONVERT(date, SYSDATETIME())) ,
    [error_time]            time NULL DEFAULT current time ,
     PRIMARY KEY ([counter])
)
;

GO

CREATE TABLE [dbo].[dealer_bal_detail]
(
    [dealer_code]           char(6) NOT NULL ,
    [period_end]            date NOT NULL ,
    [product_id]            int NOT NULL ,
    [product_group]         char(2) NULL ,
    [safe]              char(2) NULL ,
    [replacement]           char(2) NULL ,
    [qty]               smallint NULL ,
    [net_amount]            numeric(9,2) NULL ,
    [total_amount]          numeric(9,2) NULL ,
    [baby_feet]             int NULL 
)
;

GO

CREATE TABLE [dbo].[ship_via_prep_2]
(
    [total_preps]           numeric(5,0) NOT NULL ,
    [via_desc]              char(60) NOT NULL ,
    [new_code]              numeric(3,0) NOT NULL ,
     PRIMARY KEY ([via_desc])
)
;

GO

CREATE TABLE [dbo].[stock_copy]
(
    [serial_no]             int NOT NULL ,
    [stock_id]              int NULL ,
    [status]                char(1) NULL ,
    [location]              char(5) NULL ,
    [pick_id]               int NULL ,
    [bleep_status]          int NULL ,
    [cutting_tag_print]         char(1) NULL ,
    [manf_date]             date NULL ,
     PRIMARY KEY ([serial_no])
)
;

GO

CREATE TABLE [dbo].[hardware_h]
(
    [hardware_code]         char(10) NOT NULL ,
    [description]           char(50) NOT NULL ,
    [discontinued_date]         date NULL ,
    [unit]              char(10) NOT NULL ,
    [weight_per_unit]           float NOT NULL ,
    [message]               varchar(255) NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
    [type_flag]             char(1) NULL ,
    [allowance_amount]          float NULL ,
    [up_charge_flag]            char(1) NULL ,
    [active]                char(1) NOT NULL ,
    [on_ground]             char(1) NULL ,
    [in_ground]             char(1) NULL ,
    [bold_flag]             smallint NULL ,
    [up_charge_type]            char(1) NULL ,
    [baby_loc]              char(1) NULL ,
    [baby_loc_length]           smallint NULL ,
    [baby_loc_logo]         smallint NULL ,
    [bl_material]           char(3) NULL ,
    [shipping_weight]           float NULL ,
    [Baby_Loc_Deluxe]           char(2) NULL ,
    [baby_loc_caps]         int NULL ,
    [jobtype_cv]            char(1) NULL ,
    [jobtype_bl]            char(1) NULL ,
    [jobtype_wt]            char(1) NULL ,
    [jobtype_sc]            char(1) NULL ,
    [jobtype_all]           char(1) NULL ,
    [web_id]                int IDENTITY(1,1) NULL ,
    [max_public_quantity]       int NULL ,
    [web_description]           char(255) NULL ,
    [web_title]             char(63) NULL ,
    [web_sale]              char(1) NULL ,
    [cover_hardware_blue_dot]       char(2) NULL ,
    [bl_height]             smallint NULL ,
    [bl_web_sale]           char(1) NULL DEFAULT 'N' ,
    [ignore_discount]           char(1) NULL ,
    [jobtype_ln]            char(1) NULL ,
    [special_discount]          varchar(10) NULL ,
    [buying_limit]          int NULL ,
    [description_spanish]       char(200) NULL ,
    [description_french]        char(200) NULL ,
    [description_italian]       char(200) NULL ,
    [description_russian]       char(200) NULL ,
    [description_metric]        char(200) NULL ,
    [is_cablekit]           char(2) NULL ,
    [is_returnable]         char(2) NULL ,
    [is_inBox]              varchar(1) NULL DEFAULT 'N' ,
    [is_babyloc_gate]           char(2) NULL ,
    [backyard_accents]          char(1) NULL DEFAULT 'N' ,
    [backyard_accents_type]     int NULL ,
    [uses_hexk]             char(2) NULL ,
    [bl_deck_sleeve]            int NULL ,
     PRIMARY KEY ([hardware_code])
)
;

GO

CREATE TABLE [dbo].[hardware_price]
(
    [hardware_code]         char(10) NOT NULL ,
    [effective_date]            date NOT NULL ,
    [unit_price]            numeric(7,2) NOT NULL ,
    [up_charge_flag]            char(1) NOT NULL ,
    [last_modified_date]        date NULL ,
    [last_modified_user]        char(15) NULL ,
    [retail_price]          numeric(7,2) NULL ,
     PRIMARY KEY ([hardware_code], [effective_date])
)
;

GO

CREATE TABLE [dbo].[hardware_upcharge]
(
    [hardware_code]         char(10) NOT NULL ,
    [effective_date]            date NOT NULL ,
    [grid_size]             char(10) NOT NULL ,
    [up_charge]             numeric(5,2) NOT NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
    [sqft_or_each]          char(1) NULL ,
    [web_id]                int IDENTITY(1,1) NULL ,
     PRIMARY KEY ([hardware_code], [effective_date], [grid_size])
)
;

GO

CREATE TABLE [dbo].[treatment_h]
(
    [treatment_code]            char(10) NOT NULL ,
    [description]           char(50) NOT NULL ,
    [discontinued_date]         date NULL ,
    [unit]              char(10) NOT NULL ,
    [weight_per_unit]           float NOT NULL ,
    [message]               varchar(255) NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
    [shape_flag]            char(1) NULL ,
    [active]                char(1) NULL ,
    [prep_type_list]            char(10) NULL ,
    [display_repair]            char(1) NULL ,
    [grid_flag]             char(1) NOT NULL ,
    [patch_panel]           char(5) NOT NULL ,
    [material_type_flag]        char(1) NULL ,
    [link]              varchar(10) NULL ,
    [visible]               char(1) NULL ,
    [alteration_upcharge]       char(1) NULL ,
    [inspection]            char(1) NULL ,
    [liner_stair_treatment]     char(1) NULL ,
    [quick_calc]            char(1) NULL ,
    [online_calculator]         varchar(1) NULL DEFAULT 'N' ,
    [discount_overide]          char(25) NULL ,
    [display_on_cs_prep]        char(1) NULL ,
    [description_spanish]       char(150) NULL ,
    [description_french]        char(150) NULL ,
    [description_italian]       char(150) NULL ,
    [description_russian]       char(150) NULL ,
    [description_metric]        char(150) NULL ,
    [measure_type]          char(2) NULL ,
    [is_raised_wall]            char(2) NULL ,
    [treatment_unavailable]     char(2) NULL ,
     PRIMARY KEY ([treatment_code])
)
;

GO

CREATE TABLE [dbo].[treatment_price]
(
    [treatment_code]            char(10) NOT NULL ,
    [effective_date]            date NOT NULL ,
    [unit_price]            numeric(7,2) NOT NULL ,
    [last_modified_date]        date NULL ,
    [last_modified_user]        char(15) NULL ,
     PRIMARY KEY ([treatment_code], [effective_date])
)
;

GO

CREATE TABLE [dbo].[price]
(
    [product_id]            int NOT NULL ,
    [grid_size]             char(10) NOT NULL ,
    [effective_date]            date NOT NULL ,
    [type]              char(1) NOT NULL ,
    [square_footage]            float NOT NULL ,
    [price]             float NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
    [active]                char(1) NULL ,
     PRIMARY KEY ([product_id], [grid_size], [effective_date], [type], [square_footage])
)
;

GO

CREATE TABLE [dbo].[special_instructions]
(
    [code]              char(10) NOT NULL ,
    [short_description]         char(100) NOT NULL ,
    [long_description]          char(305) NOT NULL ,
    [active]                char(1) NOT NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(50) NOT NULL ,
    [tech_flag]             char(1) NULL ,
    [safety_flag]           char(1) NULL ,
    [warranty_flag]         char(1) NULL ,
    [charge_for_material]       numeric(7,2) NULL ,
    [time_for_repair]           int NULL ,
    [liner]             char(1) NULL ,
    [short_description_spanish]     varchar(150) NULL ,
    [long_description_spanish]      varchar(450) NULL ,
    [short_description_french]      varchar(150) NULL ,
    [long_description_french]       varchar(450) NULL ,
    [short_description_italian]     varchar(150) NULL ,
    [long_description_italian]      varchar(450) NULL ,
    [short_description_russian]     varchar(150) NULL ,
    [long_description_russian]      varchar(450) NULL ,
     PRIMARY KEY ([code])
)
;

GO

CREATE TABLE [dbo].[stock]
(
    [serial_no]             int NOT NULL ,
    [stock_id]              int NULL ,
    [status]                char(1) NULL ,
    [location]              char(5) NULL ,
    [pick_id]               int NULL ,
    [bleep_status]          int NULL ,
    [cutting_tag_print]         char(1) NULL ,
    [manf_date]             [datetime] NULL ,
    [prep_id]               int NULL ,
    [old_stock]             char(1) NULL ,
     PRIMARY KEY ([serial_no])
)
;

GO

CREATE TABLE [dbo].[stock_hardware]
(
    [stock_id]              int NOT NULL ,
    [hardware_code]         char(10) NOT NULL ,
    [chargeable]            char(1) NOT NULL ,
    [per_anchor]            char(1) NOT NULL ,
    [fixed_amount]          int NOT NULL ,
     PRIMARY KEY ([stock_id], [hardware_code])
)
;

GO

CREATE TABLE [dbo].[stock_hardware_option]
(
    [stock_id]              int NOT NULL ,
    [stock_option]          smallint NOT NULL ,
    [hardware_code]         char(10) NOT NULL ,
    [chargeable]            char(1) NOT NULL ,
    [per_anchor]            char(1) NOT NULL ,
    [fixed_amount]          int NOT NULL ,
    [option_text]           char(50) NOT NULL ,
     PRIMARY KEY ([stock_id], [stock_option], [hardware_code])
)
;

GO

CREATE TABLE [dbo].[stock_history]
(
    [serial_no]             int NOT NULL ,
    [date_time]             datetime2(0) NOT NULL ,
    [user]              varchar(15) NOT NULL ,
    [action]                varchar(100) NOT NULL ,
    [action_no]             smallint NOT NULL ,
    [prep_id]               int NULL 
)
;

GO

CREATE TABLE [dbo].[stock_master]
(
    [stock_id]              int NOT NULL ,
    [product_id]            int NOT NULL ,
    [manf_size]             varchar(255) NOT NULL ,
    [object_size]           varchar(255) NOT NULL ,
    [shape]             varchar(50) NOT NULL ,
    [sqft]              float NOT NULL ,
    [base_cost]             float NOT NULL ,
    [advertised]            char(1) NOT NULL ,
    [weight]                float NOT NULL ,
    [anchor_points]         smallint NOT NULL ,
    [extensions]            smallint NULL ,
    [active]                char(1) NULL ,
    [grid_size]             char(10) NULL ,
    [cartons]               int NULL ,
    [no_bows]               int NULL ,
    [bl]                numeric(7,2) NULL ,
    [cw]                numeric(7,2) NULL ,
    [cl]                numeric(7,2) NULL ,
    [s_cw]              numeric(7,2) NULL ,
    [s_cl]              numeric(7,2) NULL ,
    [s_off]             numeric(7,2) NULL ,
    [max_cw]                numeric(7,2) NULL ,
    [max_cl]                numeric(7,2) NULL ,
    [min_cw]                numeric(7,2) NULL ,
    [min_cl]                numeric(7,2) NULL ,
    [max_sw]                numeric(7,2) NULL ,
    [max_sl]                numeric(7,2) NULL ,
    [min_sw]                numeric(7,2) NULL ,
    [min_sl]                numeric(7,2) NULL ,
    [max_ol_out]            numeric(7,2) NULL ,
    [max_ol_in]             numeric(7,2) NULL ,
    [l_or_r]                char(2) NULL ,
    [wall_a]                numeric(7,2) NULL ,
    [wall_c]                numeric(7,2) NULL ,
    [min_bow]               numeric(7,2) NULL ,
    [max_bow]               numeric(7,2) NULL ,
    [tag]               char(50) NULL ,
    [std_ol]                numeric(5,2) NULL ,
    [picture]               char(20) NULL ,
    [qty_on_hand]           int NULL ,
    [qty_on_order]          int NULL ,
    [poolsize]              char(255) NULL ,
    [coversize]             char(255) NULL ,
    [old_shape]             char(50) NULL ,
    [chafe_length]          int NULL ,
    [carton_type]           char(10) NULL ,
    [base_cost_new]         numeric(7,2) NULL ,
    [short_springs]         smallint NULL ,
    [web_category]          char(10) NULL ,
    [fence_skew_no]         int NULL ,
    [pool_wall_a]           numeric(7,2) NULL ,
    [pool_wall_b]           numeric(7,2) NULL ,
    [pool_wall_c]           numeric(7,2) NULL ,
    [web_text]              char(100) NULL ,
    [create_date]           date NULL ,
    [web_title]             char(100) NULL ,
    [charge_freight]            smallint NULL DEFAULT -1 ,
    [undr_cvr_pad]          int NULL ,
    [perimeter]             int NULL ,
    [link_to_green]         int NULL ,
    [label_image]           varchar(25) NULL ,
    [custom_pricing]            varchar(2) NULL ,
    [administrator_note]        varchar(200) NULL ,
     PRIMARY KEY ([stock_id])
)
;

GO

CREATE TABLE [dbo].[state]
(
    [state_code]            char(3) NOT NULL ,
    [country]               char(3) NOT NULL ,
    [name]              char(35) NULL ,
    [phone_format]          char(10) NULL ,
    [zipcode_format]            char(10) NULL ,
    [ptfe_thread]           char(1) NULL DEFAULT 'N' ,
    [code_phone]            char(3) NULL ,
    [active]                char(1) NULL DEFAULT 'Y' ,
    [country_name]          char(35) NULL ,
    [use_metric]            char(2) NULL ,
     PRIMARY KEY ([state_code], [country])
)
;

GO

CREATE TABLE [dbo].[state_tax]
(
    [state_code]            char(3) NOT NULL ,
    [taxcd]             char(10) NOT NULL ,
    [desc]              char(50) NULL ,
    [pct]               numeric(4,3) NULL ,
    [active]                char(1) NOT NULL ,
     PRIMARY KEY ([state_code], [taxcd])
)
;

GO

CREATE TABLE [dbo].[blue_dot_questions]
(
    [blue_dot_id]           int IDENTITY(1,1) NOT NULL ,
    [category]              char(50) NOT NULL ,
    [question]              char(500) NOT NULL ,
    [last_modified_user]        char(50) NULL DEFAULT (LEFT(ORIGINAL_LOGIN(), 50)) ,
    [last_modified_date]        datetime2(0) NULL DEFAULT current datetime2(0) ,
    [spanish_questions]         char(500) NULL ,
    [active]                char(1) NULL ,
    [bd_type]               char(50) NULL ,
    [french_questions]          char(500) NULL ,
    [italian_questions]         char(500) NULL ,
    [russian_questions]         char(500) NULL ,
    [markable]              char(5) NULL ,
     PRIMARY KEY ([blue_dot_id])
)
;

GO

CREATE TABLE [dbo].[user_productivity]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [user_name]             char(25) NOT NULL ,
    [job]               int NOT NULL ,
    [start_time]            datetime2(0) NOT NULL ,
    [end_time]              datetime2(0) NULL ,
    [bleep_status]          smallint NOT NULL ,
    [job_difficulty]            numeric(4,2) NULL DEFAULT 1.0 ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[rtn]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [date_received]         date NOT NULL ,
    [rtn]               char(10) NULL ,
    [dealer_code]           char(6) NOT NULL ,
    [rtn_type]              char(2) NOT NULL ,
    [fabric_id]             int NOT NULL ,
    [storage_bag_returned]      int NOT NULL ,
    [number_of_springs]         int NOT NULL ,
    [note]              varchar(1000) NULL ,
    [status]                char(1) NOT NULL ,
    [jobname]               char(50) NULL ,
    [staff]             char(10) NULL ,
    [ll_cover]              char(2) NULL ,
    [ll_coments]            varchar(255) NULL ,
    [manufacture_year]          int NULL ,
    [location]              int NULL DEFAULT 17 ,
    [call_tag]              varchar(20) NULL ,
    [sent_via]              int NULL ,
    [quotes_wanted]         char(10) NULL ,
    [original_order_number]     varchar(100) NULL ,
    [cpu_flag]              varchar(10) NULL ,
    [rtn_prep]              int NULL ,
    [prepped]               char(2) NULL ,
    [dropped_off_by]            varchar(20) NULL ,
    [paperwork_included]        char(2) NULL ,
    [stock_id]              int NULL ,
    [serial_no]             int NULL ,
    [scanned_tracking_number]       varchar(30) NULL ,
    [spring_return_type]        char(5) NULL ,
    [potential_blue]            varchar(50) NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[prep_return]
(
    [line_id]               int IDENTITY(1,1) NOT NULL ,
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [qty]               smallint NOT NULL ,
    [item_code]             char(2) NOT NULL ,
    [item_desc]             char(50) NULL ,
    [net_return]            numeric(8,2) NOT NULL ,
    [total_return]          numeric(8,2) NOT NULL ,
    [date_return]           date NOT NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        varchar(20) NOT NULL ,
    [qty_bl_a]              int NULL ,
    [qty_bl_f]              int NULL ,
    [bl_deluxe]             char(1) NULL ,
    [liner_return_text]         varchar(100) NULL ,
     PRIMARY KEY ([line_id])
)
;

GO

CREATE TABLE [dbo].[dbcr_master]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [dbcr_type]             char(1) NOT NULL ,
    [description]           char(50) NOT NULL ,
    [gl_account]            char(10) NOT NULL ,
    [company]               char(3) NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[fax_que]
(
    [loop_fax_id]           int IDENTITY(1,1) NOT NULL ,
    [fax_man_id]            int NULL ,
    [document_name]         char(2500) NOT NULL ,
    [phone_no]              char(50) NOT NULL ,
    [status]                char(10) NULL ,
    [loc_code]              char(5) NULL ,
    [loc_key]               char(1000) NULL ,
    [document_desc]         char(400) NULL ,
    [modified_time]         time NULL ,
    [modified_date]         date NULL ,
    [dealer_code]           char(10) NULL ,
    [datawindow]            char(50) NULL ,
    [inserted_location]         int NULL ,
     PRIMARY KEY ([loop_fax_id])
)
;

GO

CREATE TABLE [dbo].[dbhc]
(
    [dealer_code]           char(6) NOT NULL ,
    [period_end]            date NOT NULL ,
    [bal_year]              smallint NULL ,
    [gross_sales]           float NULL ,
    [net_sales]             float NULL ,
    [high_credit]           float NULL ,
    [average_days]          int NULL ,
    [covers]                int NULL ,
     PRIMARY KEY ([dealer_code], [period_end])
)
;

GO

CREATE TABLE [dbo].[discount]
(
    [id]                smallint IDENTITY(1,1) NOT NULL ,
    [discount]              char(25) NOT NULL ,
    [min_orders]            int NOT NULL ,
    [square_feet]           int NOT NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[rebate]
(
    [rebate_year]           date NOT NULL ,
    [dealer_code]           char(10) NOT NULL ,
    [cover_net]             numeric(10,2) NOT NULL ,
    [rebate_net]            numeric(10,2) NOT NULL ,
    [qty]               smallint NOT NULL ,
     PRIMARY KEY ([rebate_year], [dealer_code])
)
;

GO

CREATE TABLE [dbo].[ab_base]
(
    [prep_id]               int NOT NULL ,
    [base_line]             float NOT NULL ,
    [plot_in_rev]           int NULL ,
    [plot_id]               int NOT NULL ,
    [Last_modified_user]        char(25) NULL ,
    [last_modified_date]        date NULL ,
    [create_date]           date NULL ,
    [verify_plot]           char(1) NULL DEFAULT 'N' ,
    [check_orientation]         char(1) NULL DEFAULT 'N' ,
    [verify_plot_user]          varchar(20) NULL ,
    [comment_user]          varchar(200) NULL ,
     PRIMARY KEY ([prep_id], [plot_id])
)
;

GO

CREATE TABLE [dbo].[ab_cross]
(
    [prep_id]               int NOT NULL ,
    [cross_no]              int NOT NULL ,
    [pt_start]              int NOT NULL ,
    [pt_end]                int NOT NULL ,
    [given_dist]            numeric(30,6) NOT NULL ,
    [plot_id]               int NOT NULL ,
     PRIMARY KEY ([prep_id], [cross_no], [plot_id])
)
;

GO

CREATE TABLE [dbo].[ab_points]
(
    [prep_id]               int NOT NULL ,
    [pt_no]             int NOT NULL ,
    [a_dim]             float NOT NULL ,
    [b_dim]             float NOT NULL ,
    [plot_id]               int NOT NULL ,
    [rw]                char(1) NULL ,
    [ob]                char(1) NULL ,
    [skip_point]            char(1) NULL ,
     PRIMARY KEY ([prep_id], [pt_no], [plot_id])
)
;

GO

CREATE TABLE [dbo].[standards]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [company]               char(50) NOT NULL ,
    [shape]             char(25) NOT NULL ,
    [length]                int NOT NULL ,
    [width]             int NOT NULL ,
    [plate_no]              varchar(25) NOT NULL ,
    [picture]               varchar(50) NULL ,
    [network_path]          varchar(100) NULL ,
    [company_size]          char(100) NOT NULL ,
    [description]           char(50) NOT NULL ,
    [ll_description]            char(50) NULL ,
    [overlap]               int NOT NULL ,
    [a]                 int NOT NULL ,
    [b]                 int NOT NULL ,
    [c]                 int NOT NULL ,
    [radius]                int NOT NULL ,
    [material_type]         char(1) NULL ,
    [object_size]           varchar(255) NULL ,
    [manf_size]             varchar(255) NULL ,
    [sq_ft]             float NULL ,
    [anch_spring]           int NULL ,
    [grid_type]             char(10) NULL ,
    [is_mesh]               char(2) NULL ,
    [is_ul]             char(2) NULL ,
    [is_ul_no_drains]           char(2) NULL ,
    [anch_spring_solid]         int NULL ,
    [average_size]          char(2) NULL ,
    [extensions]            int NULL ,
    [shape_type]            varchar(50) NULL ,
    [manf_pool_size]            varchar(255) NULL ,
    [perimeter]             int NULL ,
    [manf_shape]            varchar(50) NULL ,
    [is_og_mesh]            char(2) NULL ,
    [is_og_ul]              char(2) NULL ,
    [is_og_ul_no_drains]        char(2) NULL ,
    [is_short_spring_solid]     int NULL ,
    [is_short_spring]           int NULL ,
    [stock_id]              int NULL ,
    [standards_shape_id_no]     int NULL ,
    [pool_step_size_shape]      varchar(50) NULL ,
    [anch_spring_plus_minus]        varchar(5) NULL ,
    [comments]              varchar(50) NULL ,
    [stock_id_mesh]         int NULL ,
    [stock_id_ul_no_drains]     int NULL ,
    [stock_id_ul_drains]        int NULL ,
    [number_pumps]          int NULL ,
    [special_rectangle]         char(1) NULL ,
    [active]                char(1) NULL ,
    [is_mesh_color]         char(2) NULL ,
    [is_ul_color]           char(2) NULL ,
    [is_ul_no_drains_color]     char(2) NULL ,
    [is_aqua_green]         char(2) NULL ,
    [is_aqua_color]         char(2) NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[draft_productivity]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [user_name]             char(25) NOT NULL ,
    [job_number]            int NOT NULL ,
    [start_time]            datetime2(0) NULL ,
    [elapsed_time]          numeric(20,3) NULL ,
    [last_update_time]          datetime2(0) NOT NULL ,
    [last_update_user]          char(25) NOT NULL ,
    [bleep_time]            datetime2(0) NULL ,
    [checker]               char(1) NULL ,
    [display]               char(1) NULL ,
    [prep_id]               int NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[menu_user]
(
    [user_name]             char(40) NOT NULL ,
    [menu_id]               int NOT NULL ,
    [security_mode]         char(10) NULL ,
     PRIMARY KEY ([user_name], [menu_id])
)
;

GO

CREATE TABLE [dbo].[menu_data]
(
    [menu_id]               int IDENTITY(1,1) NOT NULL ,
    [menu_label]            char(50) NOT NULL ,
    [menu_description]          char(100) NOT NULL ,
    [department]            char(15) NOT NULL ,
    [menu_level]            int NOT NULL ,
    [click_counter]         int NULL ,
     PRIMARY KEY ([menu_id])
)
;

GO

CREATE TABLE [dbo].[error_master]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [type]              char(35) NOT NULL ,
    [error]             char(75) NOT NULL ,
    [active]                char(1) NOT NULL ,
    [department]            char(3) NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[tech_bleep]
(
    [prep_id]               int NOT NULL ,
    [drafter]               char(25) NOT NULL ,
    [bleep_time]            datetime2(0) NOT NULL ,
     PRIMARY KEY ([prep_id], [drafter], [bleep_time])
)
;

GO

CREATE TABLE [dbo].[tech_error]
(
    [prep_id]               int NOT NULL ,
    [error_id]              int NOT NULL ,
    [checker]               char(25) NOT NULL ,
    [drafter]               char(25) NOT NULL ,
    [error_date]            date NOT NULL ,
    [department]            char(1) NULL ,
    [error_count]           int NULL ,
     PRIMARY KEY ([prep_id], [error_id], [drafter])
)
;

GO

CREATE TABLE [dbo].[repeat_jobs]
(
    [id]                int NOT NULL ,
    [parameter]             char(25) NOT NULL ,
    [number_data]           int NULL ,
    [string_data]           char(100) NULL ,
     PRIMARY KEY ([id], [parameter])
)
;

GO

CREATE TABLE [dbo].[deposit_description]
(
    [drop_type]             char(20) NOT NULL ,
    [description]           char(20) NOT NULL ,
     PRIMARY KEY ([drop_type], [description])
)
;

GO

CREATE TABLE [dbo].[de_productivity]
(
    [prep_id]               int NOT NULL ,
    [plot_id]               int NOT NULL ,
    [user_name]             char(25) NOT NULL ,
    [insert_date]           date NOT NULL ,
    [action]                char(30) NOT NULL 
)
;

GO

CREATE TABLE [dbo].[warranty_header]
(
    [warranty_id]           int IDENTITY(1,1) NOT NULL ,
    [order_no]              int NOT NULL ,
    [ho_last_name]          char(50) NULL ,
    [ho_middle_int]         char(50) NULL ,
    [ho_first_name]         char(50) NULL ,
    [ho_title]              char(10) NULL ,
    [ho_address]            char(60) NULL ,
    [ho_city]               char(50) NULL ,
    [ho_state]              char(30) NULL ,
    [ho_zip]                char(30) NULL ,
    [installed_by]          char(50) NULL ,
    [installed_date]            date NULL ,
    [comments]              char(250) NULL ,
    [active]                char(1) NULL ,
    [type]              char(1) NULL DEFAULT 'L' ,
    [response_date]         date NULL ,
    [online]                char(1) NULL ,
    [email]             varchar(50) NULL ,
    [liner_extended_warranty]       varchar(2) NULL ,
    [prep_id]               int NULL ,
    [liner_extended_warranty_type]  varchar(10) NULL ,
    [cancel_warranty]           varchar(1) NULL ,
    [created_by]            varchar(25) NULL ,
    [modified_by]           varchar(25) NULL ,
    [date_created]          date NULL ,
    [date_modified]         date NULL ,
    [lew_amount]            float NULL ,
    [sent_consumer_letter]      char(2) NULL ,
     PRIMARY KEY ([warranty_id])
)
;

GO

CREATE TABLE [dbo].[co_op_usage]
(
    [co_op_id]              int IDENTITY(1,1) NOT NULL ,
    [dealer_code]           char(6) NOT NULL ,
    [date_used]             date NOT NULL ,
    [amount]                numeric(8,2) NOT NULL ,
    [check_number]          int NULL ,
    [reason]                char(150) NOT NULL ,
    [check_date]            date NULL ,
     PRIMARY KEY ([co_op_id])
)
;

GO

CREATE TABLE [dbo].[call_log_header]
(
    [item_no]               int IDENTITY(1,1) NOT NULL ,
    [dealer_code]           char(10) NOT NULL ,
    [expected_payment_date]     date NULL ,
    [notes]             varchar(3500) NULL ,
    [next_call_date]            date NULL ,
    [open]              char(2) NOT NULL ,
    [close_date]            date NULL ,
    [create_user]           char(20) NOT NULL ,
    [create_date]           date NULL ,
     PRIMARY KEY ([item_no])
)
;

GO

CREATE TABLE [dbo].[call_log_calls]
(
    [item_no]               int NOT NULL ,
    [called_date]           datetime2(0) NOT NULL ,
    [message]               char(500) NULL ,
    [person_called]         char(20) NULL ,
    [ll_user]               char(20) NULL ,
     PRIMARY KEY ([item_no], [called_date])
)
;

GO

CREATE TABLE [dbo].[call_log_invoices]
(
    [item_no]               int NOT NULL ,
    [invoice_id]            int NOT NULL ,
     PRIMARY KEY ([item_no], [invoice_id])
)
;

GO

CREATE TABLE [dbo].[bill_of_lading_detail]
(
    [ll_bill_no]            int NOT NULL ,
    [prep_id]               int NOT NULL ,
     PRIMARY KEY ([ll_bill_no], [prep_id])
)
;

GO

CREATE TABLE [dbo].[bill_of_lading_header]
(
    [ll_bill_no]            int IDENTITY(1,1) NOT NULL ,
    [bill_no]               int NULL ,
    [shipto_code]           char(10) NOT NULL ,
    [bl_name]               char(35) NOT NULL ,
    [bl_addr1]              char(35) NULL ,
    [bl_addr2]              char(35) NULL ,
    [dealer_code]           char(6) NOT NULL ,
    [city]              char(35) NOT NULL ,
    [state_code]            char(3) NOT NULL ,
    [zip]               char(10) NOT NULL ,
    [phone]             char(20) NOT NULL ,
    [hours]             char(35) NOT NULL ,
    [date]              date NOT NULL ,
    [freight]               char(2) NOT NULL ,
    [printed_flag]          char(1) NOT NULL ,
    [ship_via_id]           int NOT NULL ,
    [time_printed]          datetime2(0) NULL ,
    [notes]             char(300) NULL ,
    [cod]               char(2) NULL ,
    [term_id]               int NOT NULL ,
    [bill_back_freight]         char(1) NULL ,
    [account_credit]            char(1) NULL ,
    [loop_loc_error]            char(1) NULL ,
    [bbf_notes]             char(20) NULL ,
    [acr_notes]             char(20) NULL ,
    [Hold_Bill]             char(1) NOT NULL ,
     PRIMARY KEY ([ll_bill_no])
)
;

GO

CREATE TABLE [dbo].[sub]
(
    [subdivisions]          int NOT NULL ,
    [weight_less_than]          int NOT NULL ,
    [weight_greater_than]       int NOT NULL ,
    [ltl_rate]              numeric(5,2) NOT NULL ,
    [tl_rate]               int NOT NULL ,
    [mw_rate]               varchar(10) NOT NULL ,
     PRIMARY KEY ([subdivisions], [ltl_rate])
)
;

GO

CREATE TABLE [dbo].[leads_consumers]
(
    [consumer_no]           int IDENTITY(1,1) NOT NULL ,
    [last_name]             char(30) NOT NULL ,
    [first_name]            char(15) NULL ,
    [sir_name]              char(10) NULL ,
    [address1]              char(50) NULL ,
    [address2]              char(50) NULL ,
    [city]              char(25) NOT NULL ,
    [state]             char(3) NULL ,
    [zip]               char(10) NOT NULL ,
    [country]               char(3) NOT NULL ,
    [phone]             char(25) NULL ,
    [source_code]           char(15) NOT NULL ,
    [create_user]           char(15) NULL ,
    [create_date]           datetime2(0) NULL ,
    [last_user]             char(15) NULL ,
    [last_date]             datetime2(0) NULL ,
    [above_ground]          char(2) NULL ,
    [babby_loc]             char(2) NULL ,
    [in_ground]             char(2) NULL ,
    [current_dealer]            char(10) NULL ,
    [sales_dealer]          char(10) NULL ,
    [letter_notes]          char(100) NULL ,
    [active]                smallint NULL ,
    [liner]             char(2) NULL ,
    [email_homeowner]           char(1) NULL ,
    [email]             varchar(50) NULL ,
    [ll_notes]              varchar(100) NULL ,
    [province]              varchar(50) NULL ,
     PRIMARY KEY ([consumer_no])
)
;

GO

CREATE TABLE [dbo].[leads_dealer_leads]
(
    [consumer_no]           int NOT NULL ,
    [dealer_code]           char(10) NOT NULL ,
    [leads_order]           smallint NOT NULL ,
    [lead_date]             date NOT NULL ,
     PRIMARY KEY ([consumer_no], [dealer_code])
)
;

GO

CREATE TABLE [dbo].[leads_dealer_zips]
(
    [dealer_code]           char(10) NOT NULL ,
    [leads_zip]             char(11) NOT NULL ,
     PRIMARY KEY ([dealer_code], [leads_zip])
)
;

GO

CREATE TABLE [dbo].[leads_letter_master]
(
    [new_id]                char(7) NOT NULL ,
    [old_id]                char(10) NOT NULL ,
    [letter_title]          char(80) NOT NULL ,
    [active]                char(1) NULL ,
    [display_order]         smallint NULL ,
    [datawindow_name]           char(30) NULL ,
    [letter_type]           char(1) NULL ,
    [dealer_loc]            char(1) NULL ,
     PRIMARY KEY ([new_id])
)
;

GO

CREATE TABLE [dbo].[leads_print]
(
    [consumer_no]           int NOT NULL ,
    [letter_id]             char(7) NOT NULL ,
    [dateprinted]           datetime2(0) NOT NULL ,
    [person_printed]            varchar(15) NOT NULL ,
     PRIMARY KEY ([consumer_no], [letter_id])
)
;

GO

CREATE TABLE [dbo].[leads_questions_master]
(
    [question_id]           char(10) NOT NULL ,
    [q_desciption]          char(50) NOT NULL ,
    [old_question_id]           char(50) NULL ,
     PRIMARY KEY ([question_id])
)
;

GO

CREATE TABLE [dbo].[leads_source]
(
    [source_code]           varchar(15) NOT NULL ,
    [source_description]        varchar(50) NOT NULL ,
    [source_year]           int NOT NULL ,
    [active]                char(1) NOT NULL ,
     PRIMARY KEY ([source_code])
)
;

GO

CREATE TABLE [dbo].[leads_survey]
(
    [consumer_no]           int NOT NULL ,
    [question_id]           char(10) NOT NULL ,
    [answer]                char(30) NOT NULL ,
    [date_answered]         date NOT NULL ,
    [survey_user]           char(20) NOT NULL ,
     PRIMARY KEY ([consumer_no], [question_id])
)
;

GO

CREATE TABLE [dbo].[leads_swaf]
(
    [consumer_no]           int NOT NULL ,
    [swaf_first_name]           char(30) NULL ,
    [swaf_last_name]            char(30) NULL ,
    [swaf_sir_name]         char(10) NULL ,
    [swaf_addr1]            char(30) NULL ,
    [swaf_addr2]            char(30) NULL ,
    [swaf_city]             char(15) NULL ,
    [swaf_state]            char(2) NULL ,
    [swaf_zip]              char(10) NULL ,
    [swaf_phone]            char(10) NULL ,
     PRIMARY KEY ([consumer_no])
)
;

GO

CREATE TABLE [dbo].[leads_countries]
(
    [country_code]          char(10) NOT NULL ,
    [country_name]          char(30) NOT NULL ,
     PRIMARY KEY ([country_code])
)
;

GO

CREATE TABLE [dbo].[leads_print_que]
(
    [que_id]                int IDENTITY(1,1) NOT NULL ,
    [consumer_no]           int NOT NULL ,
    [letter_id]             char(10) NOT NULL ,
    [date_in_que]           date NOT NULL ,
    [date_time_printed]         datetime2(0) NULL ,
    [batch_id]              int NULL ,
    [que_type]              char(1) NULL ,
     PRIMARY KEY ([que_id])
)
;

GO

CREATE TABLE [dbo].[fax_docs]
(
    [document_id]           int IDENTITY(1,1) NOT NULL ,
    [name]              char(50) NOT NULL ,
    [file]              char(70) NULL ,
    [abbreviation]          char(10) NULL ,
    [active]                smallint NOT NULL ,
    [file_pdf]              char(70) NULL ,
    [fax_type]              char(2) NULL ,
     PRIMARY KEY ([document_id])
)
;

GO

CREATE TABLE [dbo].[plot_serial]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [year]              int NOT NULL ,
    [serial_no]             varchar(14) NOT NULL ,
    [dealer_code]           char(10) NULL ,
    [create_date]           date NULL ,
    [version]               char(10) NULL ,
    [sent_date]             date NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[cv_production_date_history]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [original_date]         date NOT NULL ,
    [new_date]              date NOT NULL ,
    [production_date]           date NOT NULL ,
    [cover_type]            char(1) NOT NULL ,
    [user_modified]         char(25) NOT NULL ,
    [date_changed]          date NOT NULL ,
    [time_changed]          time NOT NULL ,
    [material_id]           int NOT NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[material_code]
(
    [ll_id]             smallint NOT NULL ,
    [width]             int NOT NULL ,
    [style]             char(50) NOT NULL ,
    [style_id]              char(50) NOT NULL ,
    [centerline]            smallint NOT NULL ,
    [weight]                numeric(9,5) NULL ,
    [unit]              char(10) NULL ,
    [value]             numeric(9,5) NULL ,
    [po_req]                char(1) NULL ,
    [current_inv]           int NULL ,
    [trackable]             char(1) NULL ,
    [sub_component]         char(1) NULL ,
    [looploc_code]          char(15) NULL ,
    [finished_good]         char(1) NULL ,
    [stock_no_track]            char(1) NULL ,
    [company]               char(3) NULL ,
    [alert]             int NULL ,
    [active]                char(1) NULL ,
    [location]              varchar(100) NULL ,
    [description]           varchar(100) NULL ,
    [fabric_type]           varchar(20) NULL ,
    [thickness]             int NULL ,
    [while_supplies_last]       varchar(2) NULL DEFAULT 'N' ,
    [custom_material]           varchar(2) NULL ,
    [vendor]                varchar(50) NULL ,
     PRIMARY KEY ([ll_id])
)
;

GO

CREATE TABLE [dbo].[fabric_inventory]
(
    [roll_id]               int NOT NULL ,
    [ll_id]             smallint NOT NULL ,
    [usable_yards]          int NOT NULL ,
    [gross_yards]           int NULL ,
    [date_in]               date NOT NULL ,
    [date_out]              date NULL ,
    [user_in]               char(25) NOT NULL ,
    [user_out]              char(25) NULL ,
    [po_no]             char(10) NOT NULL ,
    [skid]              int NOT NULL ,
    [active]                char(1) NULL DEFAULT 'Y' ,
     PRIMARY KEY ([roll_id])
)
;

GO

CREATE TABLE [dbo].[Purchase_Order]
(
    [po_number]             char(10) NOT NULL ,
    [quantity]              int NOT NULL ,
    [item_id]               int NOT NULL ,
    [date_cut]              date NOT NULL ,
    [open]              char(1) NOT NULL ,
    [vendor_po_number]          int NULL ,
    [dtl_no]                int NULL ,
     PRIMARY KEY ([po_number], [item_id])
)
;

GO

CREATE TABLE [dbo].[newcard]
(
    [id]                int NOT NULL ,
    [mrmrs]             varchar(50) NULL ,
    [firstname]             varchar(50) NULL ,
    [middle]                varchar(50) NULL ,
    [lastname]              varchar(50) NULL ,
    [order]             varchar(6) NULL ,
    [address]               varchar(50) NULL ,
    [city]              varchar(50) NULL ,
    [state]             varchar(2) NULL ,
    [zip]               varchar(5) NULL ,
    [installed]             varchar(50) NULL ,
    [date]              datetime2(0) NULL ,
    [commenta]              varchar(50) NULL ,
    [comment_b]             varchar(50) NULL ,
    [one]               varchar(1) NULL ,
    [two]               varchar(1) NULL ,
    [twob]              varchar(50) NULL ,
    [twod]              varchar(50) NULL ,
    [threea]                varchar(1) NULL ,
    [threeb]                varchar(1) NULL ,
    [threec]                varchar(1) NULL ,
    [four]              varchar(50) NULL ,
    [five]              varchar(1) NULL ,
    [six]               varchar(1) NULL ,
    [sixa]              float NULL ,
    [sixb]              float NULL ,
    [sixc]              float NULL ,
    [sixd]              float NULL ,
    [seven]             varchar(1) NULL ,
    [sevenb]                varchar(50) NULL ,
    [eight]             varchar(1) NULL ,
    [nine]              varchar(1) NULL ,
    [nineb]             varchar(50) NULL ,
    [ten]               varchar(2) NULL ,
    [eleven]                varchar(2) NULL ,
    [twelve]                varchar(1) NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[warr1]
(
    [namea]             varchar(4) NULL ,
    [first]             varchar(10) NULL ,
    [last]              varchar(15) NULL ,
    [orderno]               float NULL ,
    [address]               varchar(25) NULL ,
    [city]              varchar(15) NULL ,
    [state]             varchar(6) NULL ,
    [zip]               varchar(10) NULL ,
    [installed]             varchar(30) NULL ,
    [date]              datetime2(0) NULL ,
    [comments]              varchar(50) NULL ,
    [comments2]             varchar(50) NULL ,
    [onea]              varchar(1) NULL ,
    [oneae]             varchar(10) NULL ,
    [oneb]              varchar(1) NULL ,
    [onebl]             varchar(10) NULL ,
    [twoa]              varchar(1) NULL ,
    [twob]              varchar(1) NULL ,
    [twoc]              varchar(1) NULL ,
    [twod]              varchar(1) NULL ,
    [twoe]              varchar(1) NULL ,
    [three]             varchar(1) NULL ,
    [threeb]                varchar(1) NULL ,
    [threec]                varchar(1) NULL ,
    [foura]             varchar(1) NULL ,
    [fourb]             varchar(1) NULL ,
    [fourb1]                varchar(10) NULL ,
    [fourc]             varchar(1) NULL ,
    [fourc1]                varchar(10) NULL ,
    [five]              varchar(40) NULL ,
    [six]               varchar(1) NULL ,
    [seven]             varchar(1) NULL ,
    [seveny1]               varchar(2) NULL ,
    [seveny2]               varchar(2) NULL ,
    [seveny3]               varchar(2) NULL ,
    [seveny4]               varchar(2) NULL ,
    [sevena]                varchar(1) NULL ,
    [sevenay]               varchar(15) NULL ,
    [eight]             varchar(1) NULL ,
    [eighte]                varchar(15) NULL ,
    [nine]              varchar(1) NULL ,
    [ten]               varchar(1) NULL ,
    [eleven]                varchar(1) NULL ,
    [twelve]                varchar(1) NULL ,
    [twelven]               varchar(35) NULL ,
    [thirteen]              varchar(1) NULL ,
    [label]             float NULL 
)
;

GO

CREATE TABLE [dbo].[warranty_question_master]
(
    [question_id]           char(10) NOT NULL ,
    [question_text]         char(255) NOT NULL ,
    [active_year]           int NOT NULL ,
     PRIMARY KEY ([question_id])
)
;

GO

CREATE TABLE [dbo].[warranty_detail]
(
    [warranty_id]           int NOT NULL ,
    [question_id]           char(10) NOT NULL ,
    [answer]                char(255) NOT NULL ,
    [modified_user]         char(255) NOT NULL ,
    [modified_date]         date NOT NULL ,
     PRIMARY KEY ([warranty_id], [question_id])
)
;

GO

CREATE TABLE [dbo].[warranty_answer_master]
(
    [question_id]           char(10) NOT NULL ,
    [answer]                char(255) NOT NULL ,
    [active_year]           int NOT NULL ,
     PRIMARY KEY ([question_id], [answer])
)
;

GO

CREATE TABLE [dbo].[pfc_history]
(
    [collection_id]         int IDENTITY(1,1) NOT NULL ,
    [dealer_code]           char(6) NOT NULL ,
    [date_opened]           date NOT NULL ,
    [date_closed]           date NULL ,
    [amount_owed]           numeric(8,2) NULL ,
    [amount_payed]          numeric(8,2) NULL ,
    [litigation_fee]            numeric(7,2) NULL ,
    [collect_agency]            char(20) NULL ,
    [comments]              char(255) NULL ,
     PRIMARY KEY ([collection_id])
)
;

GO

CREATE TABLE [dbo].[inventory_history]
(
    [inv_id]                int IDENTITY(1,1) NOT NULL ,
    [inv_date]              date NOT NULL ,
    [product_id]            char(20) NOT NULL ,
    [item_id]               char(30) NULL ,
    [qty]               int NULL ,
     PRIMARY KEY ([inv_id])
)
;

GO

CREATE TABLE [dbo].[inventory_hardware]
(
    [inv_id]                int IDENTITY(1,1) NOT NULL ,
    [material_id]           int NOT NULL ,
    [qty]               int NOT NULL ,
    [date_in]               date NOT NULL ,
    [user_in]               char(25) NOT NULL ,
    [date_out]              date NULL ,
    [user_out]              char(25) NULL ,
    [po_no]             char(10) NULL ,
    [lot_no]                char(25) NULL ,
    [location]              varchar(100) NULL ,
     PRIMARY KEY ([inv_id])
)
;

GO

CREATE TABLE [dbo].[material_components]
(
    [line_id]               int IDENTITY(1,1) NOT NULL ,
    [ll_id]             smallint NOT NULL ,
    [component_id]          smallint NOT NULL ,
    [qty]               numeric(9,5) NOT NULL ,
     PRIMARY KEY ([line_id])
)
;

GO

CREATE TABLE [dbo].[inventory_child_codes]
(
    [material_parent_code]      int NOT NULL ,
    [material_child_code]       int NOT NULL ,
    [qty]               smallint NULL ,
     PRIMARY KEY ([material_parent_code], [material_child_code])
)
;

GO

CREATE TABLE [dbo].[inventory_out_history]
(
    [line_id]               int IDENTITY(1,1) NOT NULL ,
    [material_id]           smallint NOT NULL ,
    [qty]               int NOT NULL ,
    [date_used]             date NOT NULL ,
    [user]              char(20) NOT NULL ,
    [inv_id]                int NULL ,
    [comments]              char(150) NULL ,
    [inventoryinshop]           int NULL ,
     PRIMARY KEY ([line_id])
)
;

GO

CREATE TABLE [dbo].[inventory_code_usage]
(
    [material_code]         int NOT NULL ,
    [product_id]            int NOT NULL ,
    [ratio]             numeric(5,4) NULL ,
    [grid_size]             varchar(10) NOT NULL ,
    [min_sqft]              int NOT NULL ,
    [max_sqft]              int NOT NULL ,
     PRIMARY KEY ([material_code], [product_id], [grid_size], [min_sqft], [max_sqft])
)
;

GO

CREATE TABLE [dbo].[Damage_Type]
(
    [damage_id]             int NOT NULL ,
    [damage]                char(52) NOT NULL ,
    [print_on_forms]            int NULL ,
    [active]                int NULL ,
    [damage_prep_type]          varchar(2) NULL ,
     PRIMARY KEY ([damage_id])
)
;

GO

CREATE TABLE [dbo].[web]
(
    [stock_id]              float NULL ,
    [product_id]            float NULL ,
    [description]           char(50) NULL ,
    [manf_size]             char(255) NULL ,
    [web_text]              char(100) NULL ,
    [shape]             char(50) NULL ,
    [sqft]              float NULL ,
    [base_cost]             float NULL ,
    [anchor_points]         float NULL ,
    [extensions]            float NULL ,
    [no_bows]               float NULL ,
    [bl]                numeric(16,2) NULL ,
    [s_cw]              numeric(16,2) NULL ,
    [s_cl]              numeric(16,2) NULL ,
    [s_off]             numeric(16,2) NULL ,
    [l_or_r]                char(2) NULL ,
    [wall_a]                numeric(16,2) NULL ,
    [wall_c]                numeric(16,2) NULL ,
    [web_category]          char(10) NULL ,
    [fence_skew_no]         float NULL ,
    [pool_wall_a]           numeric(16,2) NULL ,
    [pool_wall_b]           numeric(16,2) NULL ,
    [pool_wall_c]           numeric(16,2) NULL ,
    [cw]                numeric(16,2) NULL ,
    [cl]                numeric(16,2) NULL 
)
;

GO

CREATE TABLE [dbo].[Sales_call_log]
(
    [dealer_code]           char(6) NOT NULL ,
    [date]              date NOT NULL ,
    [sales_person]          varchar(50) NOT NULL ,
    [log_entry]             varchar(3000) NOT NULL ,
    [uploaded]              char(1) NOT NULL DEFAULT 'N' ,
    [call_id]               bigint NOT NULL ,
    [territory]             char(2) NULL ,
    [call_type]             char(2) NULL ,
    [additional_comments]       varchar(3000) NULL ,
    [additional_comments_users]     varchar(100) NULL ,
    [job_visit_problem]         varchar(2) NULL DEFAULT 'N' ,
    [review_call_made]          varchar(2) NULL DEFAULT 'N' ,
    [review_Call_made_text]     varchar(3000) NULL ,
    [problem]               varchar(2) NULL DEFAULT 'N' ,
    [resolved]              varchar(2) NULL DEFAULT 'N' ,
    [respond_to_id]         bigint NULL ,
    [respond_to_person]         varchar(50) NULL ,
     PRIMARY KEY ([sales_person], [call_id])
)
;

GO

CREATE TABLE [dbo].[RATimer]
(
    [prep_id]               int NOT NULL ,
    [date]              date NOT NULL ,
    [start_time]            time NOT NULL ,
    [finish_time]           time NULL ,
    [user]              char(50) NOT NULL ,
     PRIMARY KEY ([date], [start_time], [user])
)
;

GO

CREATE TABLE [dbo].[Warranty_Reasons]
(
    [warranty_id]           int NOT NULL ,
    [warranty_reason]           char(100) NOT NULL ,
    [print_on_forms]            int NOT NULL ,
    [active]                int NOT NULL ,
     PRIMARY KEY ([warranty_id])
)
;

GO

CREATE TABLE [dbo].[Inventory_Returns]
(
    [return_id]             int IDENTITY(1,1) NOT NULL ,
    [material_code_id]          int NOT NULL ,
    [quantity]              int NOT NULL ,
    [date_returned]         date NOT NULL ,
    [returned_by]           char(50) NOT NULL ,
    [comments]              char(250) NULL ,
    [po_number]             char(10) NOT NULL ,
    [date_returned_to_inventory]    date NULL ,
     PRIMARY KEY ([return_id])
)
;

GO

CREATE TABLE [dbo].[stock_special]
(
    [prep_id]               int NOT NULL ,
    [used_date]             date NULL ,
    [return_date]           date NULL ,
    [used_reason]           varchar(80) NULL ,
    [return_reason]         varchar(80) NULL ,
    [year]              int NOT NULL ,
    [type]              char(1) NOT NULL ,
    [stock_number]          int IDENTITY(1,1) NOT NULL ,
    [comments]              varchar(80) NULL ,
    [comments2]             varchar(80) NULL ,
    [used_stock]            char(1) NULL DEFAULT 'N' ,
     PRIMARY KEY ([year], [type], [stock_number])
)
;

GO

CREATE TABLE [dbo].[liner_wall]
(
    [wall_id]               int NOT NULL ,
    [wall_description]          char(100) NOT NULL ,
    [active]                char(1) NOT NULL ,
     PRIMARY KEY ([wall_id])
)
;

GO

CREATE TABLE [dbo].[email_que]
(
    [loop_email_id]         int IDENTITY(1,1) NOT NULL ,
    [document_name]         char(2500) NULL ,
    [email_address]         char(100) NULL ,
    [status]                char(10) NULL ,
    [loc_code]              char(5) NULL ,
    [loc_key]               char(1000) NULL ,
    [document_description]      char(400) NULL ,
    [modified_time]         time NULL ,
    [modified_date]         date NULL ,
    [dealer_code]           char(10) NULL ,
    [subject]               char(50) NULL ,
    [body]              char(5000) NULL ,
    [zip_ref]               int NULL DEFAULT 0 ,
    [datawindow]            char(2500) NULL ,
     PRIMARY KEY ([loop_email_id])
)
;

GO

CREATE TABLE [dbo].[material_usage]
(
    [prep_id]               int NOT NULL DEFAULT 0 ,
    [roll_id]               int NOT NULL ,
    [serial_no]             int NOT NULL DEFAULT 0 ,
     PRIMARY KEY ([prep_id], [roll_id], [serial_no])
)
;

GO

CREATE TABLE [dbo].[prep_ra_hardware]
(
    [prep_id]               int NOT NULL ,
    [hexkey_return]         char(1) NULL ,
    [instal_tool_return]        char(1) NULL ,
    [tamp_return]           char(1) NULL ,
    [pump_return]           char(1) NULL ,
    [pipe]              int NULL ,
    [mac]               int NULL ,
    [undercover_padding]        int NULL ,
    [nrod]              char(1) NULL ,
    [alumadj]               int NULL ,
    [replace_alt]           char(1) NULL ,
    [warranty_type]         char(10) NULL ,
    [warranty_claim_printed]        char(1) NULL ,
    [warranty_claim_printed_date]   date NULL ,
    [warranty_claim_paid_date]      date NULL ,
    [warranty_claim_submit_date]    varchar(100) NULL ,
    [min_repair_quote]          int NULL DEFAULT 0 ,
    [retail_replacement_quote]      int NULL ,
    [hold_reason]           varchar(200) NULL ,
    [hold_person]           varchar(200) NULL ,
    [hold_new_bluesheet]        int NULL ,
    [cable_return]          int NULL ,
    [caanc_return]          int NULL ,
    [spring_return_type]        char(5) NULL ,
    [pipe_with_anchors]         int NULL ,
    [location_comment]          varchar(20) NULL ,
    [ssprg_return]          int NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[email_sub_body]
(
    [ll_code]               char(50) NOT NULL ,
    [description]           char(100) NOT NULL ,
    [subject]               char(100) NOT NULL ,
    [body]              char(500) NOT NULL ,
    [active]                char(1) NOT NULL ,
     PRIMARY KEY ([ll_code])
)
;

GO

CREATE TABLE [ralph].[pbcattbl]
(
    [pbt_tnam]              char(129) NOT NULL ,
    [pbt_tid]               int NULL ,
    [pbt_ownr]              char(129) NOT NULL ,
    [pbd_fhgt]              smallint NULL ,
    [pbd_fwgt]              smallint NULL ,
    [pbd_fitl]              char(1) NULL ,
    [pbd_funl]              char(1) NULL ,
    [pbd_fchr]              smallint NULL ,
    [pbd_fptc]              smallint NULL ,
    [pbd_ffce]              char(18) NULL ,
    [pbh_fhgt]              smallint NULL ,
    [pbh_fwgt]              smallint NULL ,
    [pbh_fitl]              char(1) NULL ,
    [pbh_funl]              char(1) NULL ,
    [pbh_fchr]              smallint NULL ,
    [pbh_fptc]              smallint NULL ,
    [pbh_ffce]              char(18) NULL ,
    [pbl_fhgt]              smallint NULL ,
    [pbl_fwgt]              smallint NULL ,
    [pbl_fitl]              char(1) NULL ,
    [pbl_funl]              char(1) NULL ,
    [pbl_fchr]              smallint NULL ,
    [pbl_fptc]              smallint NULL ,
    [pbl_ffce]              char(18) NULL ,
    [pbt_cmnt]              char(254) NULL 
)
;

GO

CREATE TABLE [ralph].[pbcatcol]
(
    [pbc_tnam]              char(129) NOT NULL ,
    [pbc_tid]               int NULL ,
    [pbc_ownr]              char(129) NOT NULL ,
    [pbc_cnam]              char(129) NOT NULL ,
    [pbc_cid]               smallint NULL ,
    [pbc_labl]              char(254) NULL ,
    [pbc_lpos]              smallint NULL ,
    [pbc_hdr]               char(254) NULL ,
    [pbc_hpos]              smallint NULL ,
    [pbc_jtfy]              smallint NULL ,
    [pbc_mask]              char(31) NULL ,
    [pbc_case]              smallint NULL ,
    [pbc_hght]              smallint NULL ,
    [pbc_wdth]              smallint NULL ,
    [pbc_ptrn]              char(31) NULL ,
    [pbc_bmap]              char(1) NULL ,
    [pbc_init]              char(254) NULL ,
    [pbc_cmnt]              char(254) NULL ,
    [pbc_edit]              char(31) NULL ,
    [pbc_tag]               char(254) NULL 
)
;

GO

CREATE TABLE [ralph].[pbcatfmt]
(
    [pbf_name]              char(30) NOT NULL ,
    [pbf_frmt]              char(254) NULL ,
    [pbf_type]              smallint NULL ,
    [pbf_cntr]              int NULL 
)
;

GO

CREATE TABLE [ralph].[pbcatvld]
(
    [pbv_name]              char(30) NOT NULL ,
    [pbv_vald]              char(254) NULL ,
    [pbv_type]              smallint NULL ,
    [pbv_cntr]              int NULL ,
    [pbv_msg]               char(254) NULL 
)
;

GO

CREATE TABLE [ralph].[pbcatedt]
(
    [pbe_name]              char(30) NOT NULL ,
    [pbe_edit]              char(254) NULL ,
    [pbe_type]              smallint NULL ,
    [pbe_cntr]              int NULL ,
    [pbe_seqn]              smallint NOT NULL ,
    [pbe_flag]              int NULL ,
    [pbe_work]              char(32) NULL 
)
;

GO

CREATE TABLE [dbo].[prep_alter]
(
    [prep_id]               int NOT NULL ,
    [object_size]           varchar(255) NULL ,
    [manf_size]             varchar(255) NULL ,
    [original_order_no]         int NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[rtn_bluesheet]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [order_no]              int NULL ,
    [dealer_code]           char(6) NOT NULL ,
    [date_created]          date NOT NULL ,
    [entered_by]            varchar(100) NOT NULL ,
    [person_spoketo]            varchar(100) NOT NULL ,
    [backup_paperwork]          char(1) NOT NULL ,
    [rtn_number]            int NULL ,
    [return_type]           char(30) NOT NULL ,
    [discard_old_cover]         char(1) NULL ,
    [new_cover_ordered]         char(1) NULL ,
    [new_order_no]          int NULL ,
    [orig_hardcopy_pulled]      char(1) NULL ,
    [return_reason]         varchar(100) NULL ,
    [additional_comment]        varchar(300) NULL ,
    [error_type]            char(10) NULL DEFAULT 'N' ,
    [call_tag]              char(1) NULL ,
    [pickup_cover_now]          char(1) NULL ,
    [cust_type]             char(20) NULL ,
    [hours_operation]           varchar(100) NULL ,
    [customer_name]         varchar(150) NULL ,
    [address1]              varchar(100) NULL ,
    [address2]              varchar(100) NULL ,
    [city]              varchar(100) NULL ,
    [state]             varchar(20) NULL ,
    [zip_code]              char(20) NULL ,
    [jobname]               varchar(255) NULL ,
    [no_hardcopy_present]       varchar(1) NULL ,
    [phone]             varchar(20) NULL ,
    [check_for_warr]            varchar(1) NULL ,
    [cancel]                char(1) NULL ,
    [dealer_address_type]       varchar(1) NULL ,
    [call_tag_type]         varchar(10) NULL ,
    [looploc_error]         varchar(2) NULL ,
    [spring_alteration]         varchar(2) NULL ,
    [rtn_type]              varchar(2) NULL ,
    [mgr_initials]          varchar(10) NULL ,
    [admin_initials]            varchar(10) NULL ,
    [credit_type]           varchar(10) NULL ,
    [dealer_requests_water_allowance] varchar(10) NULL ,
    [credit_applied]            varchar(10) NULL ,
    [water_credit_applied]      varchar(10) NULL ,
    [water_credit]          float NULL ,
    [call_tag_sent]         varchar(2) NULL ,
    [call_tag_code]         varchar(50) NULL ,
    [third_dealer]          varchar(6) NULL ,
    [close_bluesheet]           varchar(1) NULL ,
    [alt_open_in_house]         varchar(2) NULL ,
    [ct_bill_back_freight]      varchar(2) NULL ,
    [ct_ll_error]           varchar(2) NULL ,
    [ct_tbd]                varchar(2) NULL ,
    [rtn_bluesheet]         int NULL ,
    [new_prep_no]           int NULL ,
    [artran_id]             varchar(20) NULL ,
    [needs_sample_returned]     char(2) NULL ,
    [alteration_marked_down]        char(2) NULL ,
    [liner_2_marked_down]       char(2) NULL ,
    [wall_lot_number]           char(50) NULL ,
    [material_rtn_vendor]       char(10) NULL ,
    [call_tag_code_vendor]      varchar(50) NULL ,
    [rtn_hold]              char(2) NULL ,
    [bottom_lot_number]         varchar(50) NULL ,
    [quality_issue]         char(2) NULL ,
    [repair]                char(2) NULL ,
    [liner_1_marked_down]       char(2) NULL ,
    [recommended_water_allowance]   float NULL ,
    [warranty_issue]            char(2) NULL ,
    [mfg_date]              date NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[open_estimates]
(
    [dealer_code]           char(6) NOT NULL ,
    [dealer_name]           char(35) NOT NULL ,
    [prep_id]               int NOT NULL ,
    [quote_no]              int NOT NULL ,
    [jobnmae]               char(25) NOT NULL ,
    [order_date]            date NOT NULL ,
    [sales_territory]           char(2) NULL ,
    [product_group]         char(2) NOT NULL ,
    [type]              char(2) NOT NULL ,
    [status]                int NOT NULL ,
    [prep_type]             char(2) NOT NULL ,
    [sqft]              float NULL ,
    [price]             float NULL ,
    [measured_by]           char(5) NULL ,
     PRIMARY KEY ([prep_id], [quote_no])
)
;

GO

CREATE TABLE [dbo].[rtn_bluesheet_retail_address]
(
    [id]                int NOT NULL ,
    [name_dealer]           varchar(255) NULL ,
    [addr1]             varchar(255) NULL ,
    [addr2]             varchar(255) NULL ,
    [city]              varchar(255) NULL ,
    [state]             char(10) NULL ,
    [zip]               char(20) NULL ,
    [phone]             char(30) NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[departments]
(
    [department_short]          char(20) NOT NULL ,
    [department_long]           char(50) NULL ,
    [department_type]           char(5) NULL ,
    [prime]             char(1) NULL ,
    [markdown]              char(1) NULL ,
     PRIMARY KEY ([department_short])
)
;

GO

CREATE TABLE [dbo].[prep_flags]
(
    [prep_id]               float NOT NULL ,
    [quote_no]              float NOT NULL ,
    [old_safety_print]          char(2) NULL ,
    [cwp_safety]            char(1) NULL ,
    [safety_first]          char(1) NULL ,
    [steps_finished]            char(1) NULL ,
     PRIMARY KEY ([prep_id], [quote_no])
)
;

GO

CREATE TABLE [dbo].[worksheet_que]
(
    [id]                float NOT NULL DEFAULT autoincrement ,
    [prep_id]               float NULL ,
    [entry_date]            date NULL ,
    [entry_time]            time NULL ,
    [print_date]            date NULL ,
    [print_time]            time NULL ,
    [print_log]             char(20) NULL ,
    [printed]               char(1) NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[liner_error_report]
(
    [error_id]              int IDENTITY(1,1) NOT NULL ,
    [dealer_code]           char(10) NOT NULL ,
    [original_job_number]       int NOT NULL ,
    [fault]             char(150) NOT NULL ,
    [action_taken]          char(150) NOT NULL ,
    [create_user]           char(50) NOT NULL ,
    [create_date]           date NOT NULL ,
    [last_modified_user]        char(50) NOT NULL ,
    [last_modified_date]        date NOT NULL ,
    [prep_id]               int NULL ,
    [product_id]            int NULL ,
    [pool_shape]            char(10) NULL ,
    [pool_size]             char(255) NULL ,
    [explanation]           char(750) NULL ,
    [jobname]               char(50) NULL ,
    [amount]                numeric(9,2) NULL ,
    [credit_amt]            float NULL ,
    [credit_applied]            char(1) NULL ,
    [credit_applied_user]       varchar(20) NULL ,
    [credit_applied_date]       date NULL ,
    [liner_wall]            int NULL ,
    [liner_bottom]          int NULL ,
    [order_no_new]          int NULL ,
    [call_tag]              char(1) NULL ,
    [cust_type]             char(20) NULL ,
    [call_tag_type]         varchar(10) NULL ,
    [pickup_cover_now]          char(1) NULL ,
    [hours_operation]           varchar(100) NULL ,
    [customer_name]         varchar(100) NULL ,
    [address1]              varchar(100) NULL ,
    [address2]              varchar(100) NULL ,
    [city]              varchar(100) NULL ,
    [state]             varchar(100) NULL ,
    [zipcode]               varchar(20) NULL ,
    [phone]             varchar(50) NULL ,
    [person_spoke_to]           varchar(100) NULL ,
    [awaiting_material]         varchar(2) NULL ,
     PRIMARY KEY ([error_id])
)
;

GO

CREATE TABLE [dbo].[money_recieved]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [dealer_code]           char(10) NOT NULL ,
    [active]                char(1) NULL DEFAULT 'Y' ,
    [decline]               char(1) NULL DEFAULT 'N' ,
    [from_web]              char(2) NULL ,
    [printed]               char(2) NULL ,
    [date_stamped]          date NULL ,
    [time_stamped]          time NULL ,
    [deposit_id]            int NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[money_recieved_detail]
(
    [id]                int NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [payment_type]          char(10) NOT NULL ,
    [payment_amount]            float NOT NULL ,
    [ar_type]               char(20) NOT NULL ,
    [description_prep_id]       int NULL ,
    [description_general]       char(500) NULL ,
    [description_artran]        int NULL ,
    [create_user]           char(100) NOT NULL ,
    [create_date]           date NOT NULL ,
    [description_ar_type]       varchar(20) NULL ,
    [cc_holder]             varchar(20) NULL ,
    [paid_in_full]          varchar(2) NULL ,
     PRIMARY KEY ([id], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[liner_error_report_explanation_history]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [dtl_no]                int NULL ,
    [error_id]              int NULL ,
    [description]           varchar(1000) NULL ,
    [entry_user]            varchar(20) NULL ,
    [entry_date]            date NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[liner_error_report_action_history]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [dtl_no]                int NULL ,
    [error_id]              int NULL ,
    [action]                varchar(100) NULL ,
    [entry_user]            varchar(20) NULL ,
    [entry_date]            date NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[liner_error_report_action_master]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [display]               varchar(100) NOT NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[dealer_email_address]
(
    [dealer_code]           char(6) NOT NULL ,
    [est_not_ack_form75]        char(50) NULL ,
    [invoice]               char(50) NULL ,
    [ups_tracking]          char(50) NULL ,
    [est_not_ack_form75_2]      char(50) NULL ,
    [date_last_modified]        date NULL DEFAULT (CONVERT(date, SYSDATETIME())) ,
    [principle_email_address]       char(50) NULL ,
    [advertising_email_address]     varchar(50) NULL ,
    [leads_email_address]       char(50) NULL ,
    [invoice_2]             char(50) NULL ,
    [verification_drawing]      char(50) NULL ,
    [est_not_ack_form75_3]      char(50) NULL ,
    [est_not_ack_form75_4]      char(50) NULL ,
    [est_not_ack_form75_flag]       char(2) NULL ,
    [est_not_ack_form75_2_flag]     char(2) NULL ,
    [est_not_ack_form75_3_flag]     char(2) NULL ,
    [est_not_ack_form75_4_flag]     char(2) NULL ,
    [verification_drawing_2]        char(50) NULL ,
    [verification_drawing_3]        char(50) NULL ,
    [verification_drawing_4]        char(50) NULL ,
    [leads_email_address_flag]      char(2) NULL ,
    [verification_drawing_flag]     char(2) NULL ,
    [verification_drawing_2_flag]   char(2) NULL ,
    [verification_drawing_3_flag]   char(2) NULL ,
    [verification_drawing_4_flag]   char(2) NULL ,
    [on_mailing_list]           char(1) NULL ,
     PRIMARY KEY ([dealer_code])
)
;

GO

CREATE TABLE [dbo].[liner_error_report_fault_master]
(
    [id]                float NOT NULL ,
    [display]               char(100) NOT NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[stock_history_copy]
(
    [serial_no]             int NOT NULL ,
    [date_time]             datetime2(0) NOT NULL ,
    [user]              varchar(15) NOT NULL ,
    [action]                varchar(100) NOT NULL ,
    [action_no]             smallint NOT NULL ,
    [prep_id]               int NULL 
)
;

GO

CREATE TABLE [dbo].[liner_cover_estimate]
(
    [prep_id]               int NOT NULL ,
    [overlap]               float NULL ,
    [cover_string]          varchar(100) NULL ,
    [sqft]              float NULL ,
    [num_4x8]               int NULL DEFAULT 0 ,
    [lazyl]             char(1) NULL DEFAULT 'N' ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[ra_nc_production_date]
(
    [production_date]           date NOT NULL ,
    [ra_ship_date]          date NOT NULL ,
    [ra_drop_date]          date NOT NULL ,
    [nc_ship_date]          date NOT NULL ,
    [nc_drop_date]          date NOT NULL ,
    [alt_ship_date]         date NOT NULL ,
    [alt_drop_date]         date NOT NULL ,
    [wt_ship_date]          date NULL ,
    [wt_drop_date]          date NULL ,
     PRIMARY KEY ([production_date])
)
;

GO

CREATE TABLE [dbo].[consumer_rebate]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [first_name]            varchar(100) NULL ,
    [last_name]             varchar(100) NOT NULL ,
    [address]               varchar(100) NOT NULL ,
    [city]              varchar(100) NULL ,
    [state]             varchar(100) NULL ,
    [zip]               varchar(100) NOT NULL ,
    [order_no_cover]            int NULL ,
    [rebate_paid_cover]         char(11) NULL ,
    [order_no_liner]            int NULL ,
    [rebate_paid_liner]         char(1) NULL ,
    [entry_date]            date NULL ,
    [rebate_paid_date_cover]        date NULL ,
    [rebate_paid_date_liner]        date NULL ,
     PRIMARY KEY ([id], [last_name], [address], [zip])
)
;

GO

CREATE TABLE [dbo].[linked_jobs]
(
    [prep_id_1]             int NOT NULL ,
    [prep_id_2]             int NOT NULL ,
    [paid]              char(1) NOT NULL DEFAULT 'N' ,
     PRIMARY KEY ([prep_id_1], [prep_id_2])
)
;

GO

CREATE TABLE [john2].[pbcattbl]
(
    [pbt_tnam]              char(129) NOT NULL ,
    [pbt_tid]               int NULL ,
    [pbt_ownr]              char(129) NOT NULL ,
    [pbd_fhgt]              smallint NULL ,
    [pbd_fwgt]              smallint NULL ,
    [pbd_fitl]              char(1) NULL ,
    [pbd_funl]              char(1) NULL ,
    [pbd_fchr]              smallint NULL ,
    [pbd_fptc]              smallint NULL ,
    [pbd_ffce]              char(18) NULL ,
    [pbh_fhgt]              smallint NULL ,
    [pbh_fwgt]              smallint NULL ,
    [pbh_fitl]              char(1) NULL ,
    [pbh_funl]              char(1) NULL ,
    [pbh_fchr]              smallint NULL ,
    [pbh_fptc]              smallint NULL ,
    [pbh_ffce]              char(18) NULL ,
    [pbl_fhgt]              smallint NULL ,
    [pbl_fwgt]              smallint NULL ,
    [pbl_fitl]              char(1) NULL ,
    [pbl_funl]              char(1) NULL ,
    [pbl_fchr]              smallint NULL ,
    [pbl_fptc]              smallint NULL ,
    [pbl_ffce]              char(18) NULL ,
    [pbt_cmnt]              char(254) NULL 
)
;

GO

CREATE TABLE [john2].[pbcatcol]
(
    [pbc_tnam]              char(129) NOT NULL ,
    [pbc_tid]               int NULL ,
    [pbc_ownr]              char(129) NOT NULL ,
    [pbc_cnam]              char(129) NOT NULL ,
    [pbc_cid]               smallint NULL ,
    [pbc_labl]              char(254) NULL ,
    [pbc_lpos]              smallint NULL ,
    [pbc_hdr]               char(254) NULL ,
    [pbc_hpos]              smallint NULL ,
    [pbc_jtfy]              smallint NULL ,
    [pbc_mask]              char(31) NULL ,
    [pbc_case]              smallint NULL ,
    [pbc_hght]              smallint NULL ,
    [pbc_wdth]              smallint NULL ,
    [pbc_ptrn]              char(31) NULL ,
    [pbc_bmap]              char(1) NULL ,
    [pbc_init]              char(254) NULL ,
    [pbc_cmnt]              char(254) NULL ,
    [pbc_edit]              char(31) NULL ,
    [pbc_tag]               char(254) NULL 
)
;

GO

CREATE TABLE [john2].[pbcatfmt]
(
    [pbf_name]              char(30) NOT NULL ,
    [pbf_frmt]              char(254) NULL ,
    [pbf_type]              smallint NULL ,
    [pbf_cntr]              int NULL 
)
;

GO

CREATE TABLE [john2].[pbcatvld]
(
    [pbv_name]              char(30) NOT NULL ,
    [pbv_vald]              char(254) NULL ,
    [pbv_type]              smallint NULL ,
    [pbv_cntr]              int NULL ,
    [pbv_msg]               char(254) NULL 
)
;

GO

CREATE TABLE [john2].[pbcatedt]
(
    [pbe_name]              char(30) NOT NULL ,
    [pbe_edit]              char(254) NULL ,
    [pbe_type]              smallint NULL ,
    [pbe_cntr]              int NULL ,
    [pbe_seqn]              smallint NOT NULL ,
    [pbe_flag]              int NULL ,
    [pbe_work]              char(32) NULL 
)
;

GO

CREATE TABLE [dbo].[rtn_retail_address]
(
    [id]                int NOT NULL ,
    [name_retail]           varchar(30) NULL ,
    [addr1]             varchar(100) NULL ,
    [addr2]             varchar(100) NULL ,
    [city]              varchar(100) NULL ,
    [state]             varchar(10) NULL ,
    [zip]               varchar(20) NULL ,
    [phone]             varchar(20) NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[prep_retail]
(
    [prep_id]               int NOT NULL ,
    [fax_no]                char(50) NULL ,
    [email]             char(100) NULL ,
    [name_retail]           char(100) NULL ,
    [company]               char(100) NULL ,
    [addr1]             char(100) NULL ,
    [addr2]             char(100) NULL ,
    [city]              char(100) NULL ,
    [state]             char(5) NULL ,
    [zip]               char(20) NULL ,
    [phone]             char(20) NULL ,
    [country]               char(50) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[prep_ms]
(
    [prep_id]               int NOT NULL ,
    [measure_type]          char(4) NULL ,
    [shape]             varchar(10) NULL ,
    [advise_dealer_cost]        varchar(2) NULL ,
    [locked_gate]           varchar(2) NULL ,
    [pets]              varchar(2) NULL ,
    [call_before_measure_homeowner] varchar(2) NULL ,
    [phone_homeowner]           varchar(20) NULL ,
    [call_before_measure_dealer]    varchar(2) NULL ,
    [phone_dealer]          varchar(20) NULL ,
    [num_pools_measured]        int NULL ,
    [order_by]              varchar(50) NULL ,
    [comments]              varchar(200) NULL ,
    [est_in_system]         varchar(2) NULL ,
    [est_no]                int NULL ,
    [phone_homeowner_2]         varchar(20) NULL ,
    [phone_dealer_2]            varchar(20) NULL ,
    [est_or_order]          varchar(2) NULL ,
    [est_no_ln]             int NULL ,
    [prepped_cover]         varchar(2) NULL ,
    [prepped_liner]         varchar(2) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[prep_ms_cv]
(
    [prep_id]               int NOT NULL ,
    [cv_product]            int NULL DEFAULT 0 ,
    [pool_deck_instaled_complete]   varchar(2) NULL ,
    [instal_comments]           varchar(200) NULL ,
    [nonremovable_obstruction]      varchar(2) NULL ,
    [spa_present]           varchar(2) NULL ,
    [spa_raised_above_pool]     varchar(2) NULL ,
    [planters_present]          varchar(2) NULL ,
    [pipes_wanted]          varchar(2) NULL ,
    [raised_wall_present]       varchar(2) NULL ,
    [waterfall_rock_formation_present] varchar(2) NULL ,
    [varying_deck_levels_present]   varchar(2) NULL ,
    [unusual_treatments_present]    varchar(2) NULL ,
    [negative_edge_present]     varchar(2) NULL ,
    [bridge_present]            varchar(2) NULL ,
    [obstruction_unusual_present]   varchar(2) NULL ,
    [other_unusual_present]     varchar(200) NULL ,
    [nonremovable_obstruction_detail] varchar(200) NULL ,
    [spa_present_details]       varchar(200) NULL ,
    [mesh_poduct]           varchar(2) NULL ,
    [ul_no_drains]          varchar(2) NULL ,
    [ul_drains]             varchar(2) NULL ,
    [mesh_color]            varchar(2) NULL ,
    [ul_no_drains_color]        varchar(2) NULL ,
    [ul_drains_color]           varchar(2) NULL ,
    [aqua_extreme]          varchar(2) NULL ,
    [aqua_extreme_color]        varchar(2) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[prep_ms_ln]
(
    [prep_id]               int NOT NULL ,
    [pattern_wanted]            int NULL ,
    [wall_thickness]            int NULL ,
    [floor_thickness]           int NULL ,
    [advised_dealer]            varchar(2) NULL ,
    [vinyl_covered_steps_benches]   varchar(2) NULL ,
    [qty_steps_benches]         int NULL ,
    [safety_ledge]          varchar(2) NULL ,
    [pool_deck_instaled_complete]   varchar(2) NULL ,
    [special_design]            varchar(2) NULL ,
    [special_design_comments]       varchar(200) NULL ,
    [advised_dealer_cut_liner]      varchar(2) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[Dealer_Terms_Discount]
(
    [dealer_code]           char(10) NOT NULL ,
     PRIMARY KEY ([dealer_code])
)
;

GO

CREATE TABLE [dbo].[email_subject_body_foreign]
(
    [state_code]            char(3) NOT NULL ,
    [subject]               varchar(1000) NOT NULL ,
    [body]              varchar(1000) NOT NULL ,
     PRIMARY KEY ([state_code])
)
;

GO

CREATE TABLE [dbo].[liners_mfg]
(
    [id]                float NOT NULL ,
    [company_name]          char(50) NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[vendor]
(
    [vendor_code]           char(10) NOT NULL ,
    [vendor_name]           varchar(100) NULL ,
    [contact_sales]         varchar(100) NULL ,
    [attention]             varchar(100) NULL ,
    [addr1]             varchar(100) NULL ,
    [addr2]             varchar(100) NULL ,
    [city]              varchar(100) NULL ,
    [state]             varchar(10) NULL ,
    [zipcode]               varchar(20) NULL ,
    [phone]             varchar(50) NULL ,
    [fax]               varchar(50) NULL ,
    [email]             varchar(50) NULL ,
    [term_id]               int NULL ,
    [ship_via_id]           int NULL ,
    [fob]               int NULL ,
    [active]                char(1) NULL ,
    [create_date]           date NULL ,
    [create_user]           varchar(100) NULL ,
    [phone2]                varchar(50) NULL ,
    [taxcd]             varchar(50) NULL ,
    [doc]               varchar(10) NULL ,
    [shop_inventory]            varchar(1) NULL ,
    [additional_comments]       varchar(3000) NULL ,
    [fob_text]              varchar(100) NULL ,
     PRIMARY KEY ([vendor_code])
)
;

GO

CREATE TABLE [dbo].[vendor_po_materials]
(
    [vendor_code]           char(10) NOT NULL ,
    [po_materials_id]           int NOT NULL ,
    [active]                char(1) NULL ,
     PRIMARY KEY ([vendor_code], [po_materials_id])
)
;

GO

CREATE TABLE [dbo].[vendor_purchases_orders]
(
    [po_number]             int NOT NULL ,
    [vendor_code]           char(10) NOT NULL ,
    [req_by]                char(50) NULL ,
    [fob]               char(100) NULL ,
    [purchasing_agent]          char(100) NULL ,
    [create_date]           date NULL ,
    [create_user]           char(100) NULL ,
    [ship_via_id]           int NULL ,
    [term_id]               int NULL ,
    [subtotal]              float NULL ,
    [tax]               float NULL ,
    [bal_due]               float NULL ,
    [active]                char(1) NULL ,
    [freight]               float NULL ,
    [taxcd]             varchar(50) NULL ,
    [doc]               varchar(10) NULL ,
    [rev]               varchar(1) NULL ,
    [additional_information]        varchar(1000) NULL ,
    [autocreate_po]         varchar(1) NULL ,
    [price_overide]         varchar(1) NULL ,
    [term_description]          varchar(100) NULL ,
    [attention_to]          varchar(100) NULL ,
    [cancel]                varchar(2) NULL ,
     PRIMARY KEY ([po_number])
)
;

GO

CREATE TABLE [dbo].[vendor_purchases_orders_details]
(
    [po_number]             int NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [id]                int NULL ,
    [description]           varchar(50) NULL ,
    [unit_price]            float NULL ,
    [qty]               int NULL ,
    [unit]              varchar(10) NULL ,
    [asap]              varchar(1) NULL ,
    [delivery_days]         int NULL ,
    [price_overide_price]       decimal(20,6) NULL ,
    [will_advise]           char(1) NULL ,
    [additional_information]        varchar(1000) NULL ,
    [is_promo]              varchar(2) NULL ,
     PRIMARY KEY ([po_number], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[po_materials]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [po_description]            char(50) NULL ,
    [ll_id]             float NULL ,
    [active]                char(1) NULL ,
    [additional_information]        varchar(1000) NULL ,
    [not_linked]            char(1) NULL ,
    [promo_type_id]         int NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[vendor_purchases_orders_delivery]
(
    [po_number]             int NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [date1]             date NULL ,
    [qty1]              int NULL ,
    [date2]             date NULL ,
    [qty2]              int NULL ,
    [date3]             date NULL ,
    [qty3]              int NULL ,
    [date4]             date NULL ,
    [qty4]              int NULL ,
    [date5]             date NULL ,
    [qty5]              int NULL ,
    [date6]             date NULL ,
    [qty6]              int NULL ,
    [date7]             date NULL ,
    [qty7]              int NULL ,
    [date8]             date NULL ,
    [qty8]              int NULL ,
    [date9]             date NULL ,
    [qty9]              int NULL ,
    [date10]                date NULL ,
    [qty10]             int NULL ,
    [date11]                date NULL ,
    [qty11]             int NULL ,
    [date12]                date NULL ,
    [qty12]             int NULL ,
     PRIMARY KEY ([po_number], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[proforma]
(
    [proforma_id]           int IDENTITY(1,1) NOT NULL ,
    [printed]               char(1) NULL ,
    [form_type]             char(1) NULL ,
    [add_comments]          varchar(750) NULL ,
    [create_date]           date NULL ,
    [freight]               float NULL ,
     PRIMARY KEY ([proforma_id])
)
;

GO

CREATE TABLE [dbo].[proforma_detail]
(
    [proforma_id]           int NOT NULL ,
    [prep_id]               int NOT NULL ,
     PRIMARY KEY ([proforma_id], [prep_id])
)
;

GO

CREATE TABLE [dbo].[vendor_purchase_orders_delivery2]
(
    [po_number]             int NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [date]              date NOT NULL ,
    [qty]               int NOT NULL ,
    [asap]              varchar(1) NULL ,
     PRIMARY KEY ([po_number], [dtl_no], [date])
)
;

GO

CREATE TABLE [dbo].[prep_file_location]
(
    [prep_id]               int NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [file]              varchar(512) NOT NULL ,
    [date_stored]           date NULL ,
    [user_name]             varchar(512) NULL ,
    [destination_directory]     varchar(512) NULL ,
    [time_stored]           time NULL ,
    [comments]              char(512) NULL ,
    [is_photo]              char(2) NULL ,
    [void_file]             char(2) NULL ,
    [to_be_reviewed]            char(2) NULL ,
     PRIMARY KEY ([prep_id], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[dealer_m_ln]
(
    [dealer_code]           varchar(10) NOT NULL ,
    [prep_id]               int NOT NULL ,
    [credit_letter]         datetime2(0) NULL ,
    [thankyou_letter]           datetime2(0) NULL ,
    [invoice_date]          datetime2(0) NULL ,
    [date_entered]          date NULL ,
    [first_user]            varchar(20) NULL ,
    [credit_app_source]         char(1) NULL ,
     PRIMARY KEY ([dealer_code])
)
;

GO

CREATE TABLE [dbo].[dealer_references]
(
    [dealer_code]           char(6) NOT NULL ,
    [company]               varchar(200) NOT NULL ,
    [phone]             varchar(30) NULL ,
    [spoke_to]              varchar(100) NULL ,
    [comments]              varchar(300) NULL ,
    [pk_counter]            int IDENTITY(1,1) NOT NULL ,
     PRIMARY KEY ([dealer_code], [pk_counter])
)
;

GO

CREATE TABLE [dbo].[dealer_verification_form]
(
    [dealer_code]           char(6) NOT NULL ,
    [person_spoken_to]          varchar(100) NOT NULL ,
    [send_dealer_case]          char(2) NOT NULL ,
    [send_dealer_package]       char(2) NOT NULL ,
    [additional_comments]       char(200) NULL ,
    [send_dealer_package_ln]        char(2) NULL ,
    [send_dealer_package_bl]        char(2) NULL ,
    [approved_declined_by]      char(2) NULL ,
     PRIMARY KEY ([dealer_code])
)
;

GO

CREATE TABLE [dbo].[prep_Ra_temp]
(
    [prep_id]               float NULL ,
    [return_no]             char(10) NULL ,
    [age_of_cover]          float NULL ,
    [original_order_no]         char(15) NULL ,
    [ra_approved_by]            char(25) NULL ,
    [ra_inspected_by]           char(25) NULL ,
    [repaired_no_times]         float NULL ,
    [ra_ordered_by]         char(25) NULL ,
    [discard_cover]         char(25) NULL ,
    [return_cover]          char(25) NULL ,
    [warranty]              char(1) NULL ,
    [damage_type]           char(255) NULL ,
    [manufactured_by]           char(35) NULL ,
    [repair_comments]           char(300) NULL ,
    [old_cover_instructions]        char(255) NULL ,
    [number_original_springs]       float NULL ,
    [original_spring_cover_qty]     float NULL ,
    [anchors_returned]          float NULL 
)
;

GO

CREATE TABLE [dbo].[dealer_change_form]
(
    [dealer_code]           char(6) NOT NULL ,
    [dealer_name]           char(35) NULL ,
    [addr1]             char(35) NULL ,
    [addr2]             char(35) NULL ,
    [city]              char(50) NULL ,
    [state]             char(3) NULL ,
    [zip]               char(10) NULL ,
    [phone]             char(50) NULL ,
    [fax_number]            char(50) NULL ,
    [id_number]             int IDENTITY(1,1) NOT NULL ,
    [additional_information]        varchar(500) NULL ,
    [date_taken]            date NULL ,
    [taken_by]              varchar(20) NULL ,
    [spoke_to]              varchar(20) NULL ,
    [processed]             varchar(2) NULL ,
    [cell_phone]            char(20) NULL ,
     PRIMARY KEY ([dealer_code], [id_number])
)
;

GO

CREATE TABLE [dbo].[standards_treatment]
(
    [plate_no]              varchar(25) NOT NULL ,
    [treatment_code]            char(10) NOT NULL ,
    [quantity]              int NOT NULL ,
     PRIMARY KEY ([plate_no], [treatment_code])
)
;

GO

CREATE TABLE [dbo].[prep_calc_freight]
(
    [prep_id]               int NOT NULL ,
    [calculated_freight]        float NOT NULL ,
    [ship_hold_cal]         varchar(2) NOT NULL DEFAULT 'Y' ,
    [actual_freight]            float NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[rtn_bluesheet_copy]
(
    [id]                float NULL ,
    [rtn_number]            float NULL 
)
;

GO

CREATE TABLE [dbo].[replacement_cover_request]
(
    [id_number]             int IDENTITY(1,1) NOT NULL ,
    [entered_by]            varchar(20) NOT NULL ,
    [date_entered]          date NOT NULL ,
    [person_calling]            varchar(20) NULL ,
    [job_type]              varchar(2) NULL ,
    [original_order]            int NULL ,
    [dealer_code]           varchar(10) NULL ,
    [jobname_new]           varchar(50) NULL ,
    [process]               varchar(2) NULL ,
    [prep_id]               int NULL ,
    [quote_mesh]            varchar(2) NULL ,
    [quote_ul_drains]           varchar(2) NULL ,
    [quote_ul_no_drains]        varchar(2) NULL ,
    [quote_tan]             varchar(2) NULL ,
    [quote_black]           varchar(2) NULL ,
    [quote_grey]            varchar(2) NULL ,
    [quote_blue]            varchar(2) NULL ,
    [file_location]         varchar(500) NULL ,
    [original_order_no_given]       varchar(2) NULL ,
    [verification_fax]          varchar(2) NULL ,
    [additional_notes]          varchar(300) NULL ,
    [original_order_no_not_prep]    int NULL ,
    [quote_color]           varchar(10) NULL ,
    [quote_ul_color]            varchar(2) NULL ,
    [quote_ul_blue]         varchar(2) NULL ,
    [quote_ul_tan]          varchar(2) NULL ,
    [quote_ul_drains_color]     varchar(2) NULL ,
    [quote_ul_drains_blue]      varchar(2) NULL ,
    [quote_ul_drains_tan]       varchar(2) NULL ,
    [prep_type]             varchar(5) NULL ,
    [liner_pattern]         int NULL ,
    [wall]              int NULL ,
    [bottom]                int NULL ,
    [aqua_extreme]          varchar(2) NULL ,
    [aqua_extreme_color]        varchar(2) NULL ,
    [quote_ul_gray]         char(2) NULL ,
    [quote_ul_drains_gray]      char(2) NULL ,
    [actual_dealer]         varchar(10) NULL ,
    [hardware_allowance_anchors]    varchar(2) NULL ,
    [aqua_extreme_brown]        varchar(2) NULL ,
    [aqua_extreme_gray]         varchar(2) NULL ,
    [om_vinyl]              varchar(2) NULL ,
    [stock_id]              int NULL ,
    [serial_no]             int NULL ,
     PRIMARY KEY ([id_number])
)
;

GO

CREATE TABLE [dbo].[stock_its]
(
    [its]               char(10) NOT NULL ,
    [stock_id]              int NOT NULL ,
     PRIMARY KEY ([its])
)
;

GO

CREATE TABLE [dbo].[treatment_zone_code]
(
    [zone]              int NOT NULL ,
    [treatment_code]            varchar(10) NOT NULL ,
    [treatment_type]            varchar(2) NOT NULL ,
    [treatment_ms]          varchar(10) NULL ,
    [id_num]                int IDENTITY(1,1) NULL ,
     PRIMARY KEY ([zone], [treatment_code], [treatment_type])
)
;

GO

CREATE TABLE [dbo].[treatment_zone_zip]
(
    [zone]              int NOT NULL ,
    [zipcodes]              varchar(15) NOT NULL ,
     PRIMARY KEY ([zone], [zipcodes])
)
;

GO

CREATE TABLE [dbo].[prep_ms_cs_input]
(
    [taken_date]            date NULL ,
    [taken_user]            char(20) NULL ,
    [scheduled]             char(2) NULL ,
    [prepped]               char(2) NULL ,
    [shipto_name]           char(35) NULL ,
    [shipto_addr1]          char(35) NULL ,
    [shipto_addr2]          char(35) NULL ,
    [shipto_city]           char(35) NULL ,
    [shipto_state_code]         char(3) NULL ,
    [shipto_zip]            char(6) NULL ,
    [dealer_code]           char(6) NULL ,
    [prep_id]               int NOT NULL ,
    [treatment_cost]            varchar(10) NULL ,
    [dealer_third]          varchar(6) NULL ,
    [billto_dealer_code]        varchar(6) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[prep_quickdraw]
(
    [prep_id]               int NOT NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[standards_shape]
(
    [id_no]             int IDENTITY(1,1) NOT NULL ,
    [company_shape_name]        varchar(512) NOT NULL ,
    [jpg_field]             varchar(512) NULL ,
    [active]                varchar(2) NULL ,
     PRIMARY KEY ([id_no])
)
;

GO

CREATE TABLE [dbo].[stock_linked_id]
(
    [id_no]             int IDENTITY(1,1) NOT NULL ,
    [stock_id_mesh]         int NULL ,
    [stock_id_ul_no_drains]     int NULL ,
    [stock_id_ul_drains]        int NULL ,
    [stock_id_mesh_color]       int NULL ,
    [stock_id_ul_drains_color]      int NULL ,
    [stock_id_ul_no_drains_color]   int NULL ,
    [solid_drains]          int NULL ,
    [solid_pump]            int NULL ,
    [stock_id_mesh_color_tan]       int NULL ,
    [stock_id_mesh_color_black]     int NULL ,
    [stock_id_mesh_color_gray]      int NULL ,
    [stock_id_ul_drains_color_tan]  int NULL ,
    [stock_id_ul_drains_color_gray] int NULL ,
    [stock_id_ul_no_drains_color_tan] int NULL ,
    [stock_id_ul_no_drains_color_gray] int NULL ,
    [stock_id_aquaxtreme]       int NULL ,
    [stock_id_aquaxtreme_navy]      int NULL ,
    [stock_id_aquaxtreme_brown]     int NULL ,
    [stock_id_aquaxtreme_steel_gray] int NULL ,
     PRIMARY KEY ([id_no])
)
;

GO

CREATE TABLE [dbo].[aw_addresses]
(
    [dealer_code]           char(6) NOT NULL ,
    [shipto_name]           char(35) NOT NULL ,
    [shipto_addr1]          char(35) NOT NULL ,
    [shipto_addr2]          char(35) NOT NULL ,
    [shipto_city]           char(20) NOT NULL ,
    [shipto_state]          char(3) NOT NULL ,
    [shipto_zip]            char(10) NOT NULL ,
    [billto_name]           char(35) NOT NULL ,
    [billto_addr1]          char(35) NOT NULL ,
    [billto_addr2]          char(35) NOT NULL ,
    [billto_city]           char(20) NOT NULL ,
    [billto_state]          char(3) NOT NULL ,
    [billto_zip]            char(10) NOT NULL ,
    [web_id]                int NOT NULL ,
     PRIMARY KEY ([web_id])
)
;

GO

CREATE TABLE [dbo].[aw_li_zips]
(
    [start_zip]             int NOT NULL ,
    [end_zip]               int NOT NULL 
)
;

GO

CREATE TABLE [dbo].[inventory_results]
(
    [id_number]             int IDENTITY(1,1) NOT NULL ,
    [datestamp]             date NOT NULL ,
    [time_stamp]            time NOT NULL ,
    [scanned_number]            int NULL ,
    [status]                varchar(20) NULL ,
     PRIMARY KEY ([id_number], [datestamp], [time_stamp])
)
;

GO

CREATE TABLE [dbo].[aw_order]
(
    [transaction_id]            bigint NOT NULL ,
    [subtotal]              float NOT NULL ,
    [shipping_cost]         float NOT NULL ,
    [sales_tax]             float NOT NULL ,
    [approval_code]         varchar(64) NULL ,
    [dealer_code]           char(6) NULL ,
    [shipto_first_name]         char(35) NULL ,
    [shipto_middle_initial]     char(10) NULL ,
    [shipto_last_name]          char(50) NULL ,
    [shipto_comapny]            char(60) NULL ,
    [shipto_addr1]          char(60) NULL ,
    [shipto_addr2]          char(60) NULL ,
    [shipto_city]           char(40) NULL ,
    [shipto_state]          char(3) NULL ,
    [shipto_zip]            char(10) NULL ,
    [shipto_country]            varchar(10) NULL ,
    [billto_first_name]         char(35) NOT NULL ,
    [billto_middle_initial]     char(10) NULL ,
    [billto_last_name]          char(50) NOT NULL ,
    [billto_company]            char(60) NULL ,
    [billto_addr1]          char(60) NOT NULL ,
    [billto_addr2]          char(60) NULL ,
    [billto_city]           char(40) NOT NULL ,
    [billto_state]          char(3) NOT NULL ,
    [billto_zip]            char(10) NOT NULL ,
    [billto_country]            varchar(10) NULL ,
    [phone]             char(25) NULL ,
    [email]             char(60) NULL ,
    [cc_type]               char(25) NULL ,
     PRIMARY KEY ([transaction_id])
)
;

GO

CREATE TABLE [dbo].[aw_order_detail]
(
    [transaction_id]            bigint NOT NULL ,
    [hardware_code]         char(10) NULL ,
    [stock_id]              int NULL ,
    [prep_id]               int NULL ,
    [quantity]              int NULL ,
    [processed_prep_id]         int NULL ,
    [jobname]               char(50) NULL ,
    [po_no]             char(25) NULL 
)
;

GO

CREATE TABLE [dbo].[aw_process]
(
    [transaction_id]            bigint NOT NULL ,
    [completed]             char(1) NOT NULL DEFAULT 'N' ,
     PRIMARY KEY ([transaction_id])
)
;

GO

CREATE TABLE [dbo].[rtn_bluesheet_explanation_history]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [rtn_bluesheet]         int NOT NULL ,
    [description]           varchar(300) NOT NULL ,
    [entry_user]            varchar(20) NOT NULL ,
    [entry_date]            date NOT NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[aw_upcharge_conversion]
(
    [web_id]                int IDENTITY(1,1) NOT NULL ,
    [hardware_code]         varchar(15) NOT NULL ,
    [grid_size]             varchar(5) NOT NULL ,
    [area]              int NOT NULL ,
    [per_unit_cost]         numeric(30,6) NOT NULL ,
     PRIMARY KEY ([web_id])
)
;

GO

CREATE TABLE [dbo].[web_deposit]
(
    [id_number]             int IDENTITY(1,1) NOT NULL ,
    [amount]                float NOT NULL ,
    [transaction_id]            bigint NOT NULL ,
    [approval_code]         varchar(100) NOT NULL ,
    [prep_id]               int NULL ,
     PRIMARY KEY ([id_number])
)
;

GO

CREATE TABLE [dbo].[fax_print_dealer]
(
    [id_number]             int IDENTITY(1,1) NOT NULL ,
    [document]              varchar(100) NOT NULL ,
    [dealer_code]           varchar(10) NOT NULL ,
    [printed]               char(2) NULL DEFAULT 'N' ,
    [date_start]            date NULL ,
    [date_end]              date NULL ,
    [prep_type]             char(5) NULL ,
    [dealer_code_prep]          char(10) NULL ,
     PRIMARY KEY ([id_number])
)
;

GO

CREATE TABLE [dbo].[cvln_to_lncv]
(
    [id_number]             int IDENTITY(1,1) NOT NULL ,
    [prep_type]             varchar(2) NOT NULL ,
    [cs_user]               varchar(20) NOT NULL ,
    [entry_date]            date NOT NULL ,
    [person_calling]            varchar(20) NOT NULL ,
    [dealer_code]           varchar(10) NOT NULL ,
    [jobname]               varchar(200) NULL ,
    [prep_id]               int NULL ,
    [order_no]              int NULL ,
    [obstructions]          char(2) NULL ,
    [obstructions_description]      varchar(1000) NULL ,
    [step]              varchar(2) NULL ,
    [step_description]          varchar(1000) NULL ,
    [type_deck]             varchar(1000) NULL ,
    [job_linked]            varchar(2) NULL ,
    [job_linked_to_prep]        int NULL ,
    [form_what]             varchar(2) NULL ,
    [mesh]              int NULL ,
    [mesh_color]            int NULL ,
    [ul_drains]             int NULL ,
    [ul_no_drains]          int NULL ,
    [ul_drains_color]           int NULL ,
    [ul_no_drains_color]        int NULL ,
    [liner_pattern]         int NULL ,
    [liner_wall]            int NULL ,
    [liner_bottom]          int NULL ,
    [additional_information]        varchar(500) NULL ,
    [prep_id_new]           int NULL ,
    [inground_mesh_aqua]        int NULL ,
    [inground_mesh_aqua_color]      int NULL ,
     PRIMARY KEY ([id_number])
)
;

GO

CREATE TABLE [dbo].[ln_above_grounds]
(
    [liner_id]              int IDENTITY(1,1) NOT NULL ,
    [product_id]            int NOT NULL ,
    [manf_size]             varchar(255) NOT NULL ,
    [object_size]           varchar(255) NOT NULL ,
    [shape]             varchar(50) NOT NULL ,
    [base_cost]             float NOT NULL ,
    [weight]                float NOT NULL DEFAULT 0 ,
    [active]                char(1) NOT NULL ,
    [create_date]           date NOT NULL DEFAULT (CONVERT(date, SYSDATETIME())) ,
    [create_user]           varchar(50) NOT NULL DEFAULT (LEFT(ORIGINAL_LOGIN(), 50)) ,
    [bead_id]               int NOT NULL ,
    [description]           varchar(255) NOT NULL ,
    [plate_no]              varchar(100) NOT NULL ,
    [picture]               varchar(100) NULL ,
    [modified_date]         date NULL ,
    [modified_user]         varchar(50) NULL ,
    [base_cost_new]         float NULL ,
    [flag_nde]              char(1) NULL ,
    [flag_h]                char(1) NULL ,
     PRIMARY KEY ([liner_id])
)
;

GO

ALTER TABLE [dbo].[ln_above_grounds] ADD  UNIQUE
(
    [plate_no]
)
;

GO

CREATE TABLE [dbo].[ln_bead_types]
(
    [bead_id]               int IDENTITY(1,1) NOT NULL ,
    [description]           varchar(50) NOT NULL ,
     PRIMARY KEY ([bead_id])
)
;

GO

CREATE TABLE [dbo].[liner_ag_production]
(
    [serial_number]         varchar(100) NOT NULL ,
    [plate_no]              varchar(100) NOT NULL ,
    [prep_number]           int NULL ,
    [bleep_status]          int NULL ,
    [status]                varchar(5) NULL ,
    [year]              int NULL ,
     PRIMARY KEY ([serial_number], [plate_no])
)
;

GO

CREATE TABLE [dbo].[omit_worksheet_Special_instructions]
(
    [treatment_code]            varchar(10) NOT NULL ,
     PRIMARY KEY ([treatment_code])
)
;

GO

CREATE TABLE [dbo].[prep_web_orders]
(
    [prep_id]               int NOT NULL ,
    [order_type]            varchar(3) NOT NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[dealer_promotion]
(
    [dealer_code]           char(6) NOT NULL ,
    [brick_mortar_promotion_2013]   char(1) NOT NULL ,
     PRIMARY KEY ([dealer_code])
)
;

GO

CREATE TABLE [dbo].[dealer_file_location]
(
    [dealer_code]           varchar(10) NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [file]              varchar(500) NOT NULL ,
    [date_stored]           date NOT NULL ,
    [user_name]             varchar(100) NOT NULL ,
    [destination_directory]     varchar(200) NOT NULL ,
    [time_stored]           time NOT NULL ,
    [comments]              varchar(100) NULL ,
     PRIMARY KEY ([dealer_code], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[material_product]
(
    [id_num]                int IDENTITY(1,1) NOT NULL ,
    [ll_id]             int NOT NULL ,
    [product_id]            int NOT NULL ,
     PRIMARY KEY ([id_num])
)
;

GO

CREATE TABLE [dbo].[country]
(
    [name]              varchar(100) NOT NULL ,
    [code]              varchar(5) NOT NULL ,
    [phone_code]            varchar(25) NOT NULL ,
     PRIMARY KEY ([code])
)
;

GO

CREATE TABLE [dbo].[sales_call_log_responses]
(
    [response_id]           bigint IDENTITY(1,1) NOT NULL ,
    [respond_to_id]         bigint NOT NULL ,
    [respond_to_person]         varchar(50) NOT NULL ,
    [entry_user]            varchar(50) NOT NULL ,
    [entry_date]            date NOT NULL ,
    [response_entry]            varchar(2000) NULL ,
    [sales_person]          varchar(50) NULL ,
    [call_id]               bigint NULL ,
     PRIMARY KEY ([response_id])
)
;

GO

CREATE TABLE [dbo].[sales_territory_location]
(
    [sales_territory]           varchar(10) NOT NULL ,
    [state]             varchar(10) NOT NULL ,
    [zip]               varchar(10) NOT NULL ,
    [zip2]              varchar(10) NULL ,
    [exclusion_territory]       varchar(10) NULL ,
     PRIMARY KEY ([sales_territory], [state], [zip])
)
;

GO

CREATE TABLE [dbo].[markdowns_subdepartment]
(
    [code]              varchar(100) NOT NULL ,
    [description]           varchar(500) NULL ,
    [department]            varchar(500) NULL ,
    [reason]                varchar(500) NULL ,
    [as_per]                varchar(500) NULL ,
    [active]                varchar(2) NULL ,
    [create_date]           date NULL ,
    [create_user]           varchar(20) NULL ,
     PRIMARY KEY ([code])
)
;

GO

CREATE TABLE [dbo].[liner_tracking]
(
    [prep_id]               int NOT NULL ,
    [status]                int NOT NULL ,
    [skid]              int NULL ,
    [year_bleep]            int NULL ,
    [date_bleep]            date NULL ,
    [time_bleep]            time NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[dealer_log]
(
    [dealer_code]           char(6) NOT NULL ,
    [modified_date]         date NOT NULL DEFAULT (CONVERT(date, SYSDATETIME())) ,
    [modified_user]         varchar(25) NOT NULL ,
    [note]              varchar(150) NOT NULL ,
     PRIMARY KEY ([dealer_code])
)
;

GO

CREATE TABLE [dbo].[prep_image_loc]
(
    [prep_id]               int NOT NULL ,
    [prep_id_image_loc]         int NOT NULL ,
    [credit_memo_print]         varchar(2) NULL ,
    [credit_memo_date_entered]      date NULL ,
    [credit_memo_date_printed]      date NULL ,
    [credit_memo_amount]        float NULL ,
    [credit_memo_created]       varchar(2) NULL ,
    [credit_memo_date_created]      date NULL ,
    [credit_memo_artran]        int NULL ,
    [cost_added_to_main_job]        char(2) NULL ,
    [artran_canceled]           char(2) NULL ,
    [cfa]               char(2) NULL DEFAULT 'N' ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[universal_sales_territory]
(
    [sales_territory]           varchar(10) NOT NULL ,
    [active]                varchar(2) NOT NULL ,
     PRIMARY KEY ([sales_territory])
)
;

GO

CREATE TABLE [dbo].[cpu_pickup]
(
    [id_number]             int IDENTITY(1,1) NOT NULL ,
    [pick_up_by]            varchar(100) NULL ,
    [pulled_by]             varchar(100) NULL ,
    [date_pickup]           date NULL ,
    [status]                varchar(5) NULL ,
    [time_pickup]           time NULL ,
    [dealer_code]           varchar(10) NULL ,
     PRIMARY KEY ([id_number])
)
;

GO

CREATE TABLE [dbo].[cpu_pickup_error]
(
    [id_number]             int NOT NULL ,
    [error_scan]            varchar(100) NOT NULL ,
    [reason_scan]           varchar(100) NOT NULL ,
    [dtl_no]                int NOT NULL ,
     PRIMARY KEY ([id_number], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[cpu_pickup_prep_id]
(
    [id_number]             int NOT NULL ,
    [prep_id]               int NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [selected_item]         char(10) NULL ,
     PRIMARY KEY ([id_number], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[language_translation]
(
    [english]               varchar(300) NOT NULL ,
    [french]                varchar(300) NULL ,
    [italian]               varchar(300) NULL ,
    [spanish]               varchar(300) NULL ,
    [id_number]             int IDENTITY(1,1) NOT NULL ,
    [date_created]          date NULL ,
     PRIMARY KEY ([english])
)
;

GO

CREATE TABLE [dbo].[calc_prep]
(
    [prep_id]               int IDENTITY(1,1) NOT NULL ,
    [selected_quote_no]         smallint NULL ,
    [dealer_code]           char(6) NOT NULL ,
    [billto_dealer_code]        char(6) NOT NULL ,
    [term_id]               int NOT NULL ,
    [prep_type]             char(1) NOT NULL ,
    [type]              char(2) NULL ,
    [entry_date]            date NOT NULL ,
    [order_no]              int NULL ,
    [order_date]            date NULL ,
    [po_no]             char(25) NULL ,
    [jobname]               char(50) NULL ,
    [shipto_code]           char(6) NOT NULL ,
    [shipto_name]           char(35) NULL ,
    [shipto_contact]            char(35) NULL ,
    [shipto_addr1]          char(35) NULL ,
    [shipto_addr2]          char(35) NULL ,
    [shipto_city]           char(20) NULL ,
    [shipto_state_code]         char(3) NULL ,
    [shipto_zip]            char(10) NULL ,
    [status]                char(3) NULL ,
    [replacement]           char(1) NULL ,
    [warranty]              char(1) NULL ,
    [manufactured_by]           varchar(35) NULL ,
    [original_order_no]         char(15) NULL ,
    [return_no]             char(10) NULL ,
    [old_cover_instructions]        varchar(255) NULL ,
    [credit_release_flag]       char(1) NULL ,
    [shipping_release_flag]     char(1) NULL ,
    [manf_location]         char(10) NULL ,
    [deposit_amt_received]      float NULL DEFAULT 0 ,
    [chafe_length]          smallint NULL ,
    [create_date]           date NULL ,
    [create_user]           char(15) NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
    [print_estimate]            char(1) NULL ,
    [print_notify]          char(1) NULL ,
    [print_ack]             char(1) NULL ,
    [print_invoice]         char(1) NULL ,
    [print_worksheet]           char(1) NULL ,
    [display_cover]         char(1) NULL ,
    [called_with_price]         char(1) NULL ,
    [cover_in_building]         char(1) NULL ,
    [quick_stock_order]         float NULL ,
    [pricing_description]       varchar(255) NULL ,
    [discount_type]         char(1) NULL ,
    [dealer_discount]           char(50) NULL ,
    [hardware_discount]         char(50) NULL ,
    [tech_date]             datetime2(0) NULL ,
    [ab_plot_flag]          char(1) NULL ,
    [shipout_batch_id]          datetime2(0) NULL ,
    [deposit_amt_enclosed]      numeric(9,2) NULL ,
    [previous_jobname]          char(25) NULL ,
    [route_to]              char(10) NULL ,
    [manf_hold]             char(1) NULL ,
    [checked_for_accuracy]      char(1) NULL ,
    [billto_estm_doc]           char(1) NULL ,
    [billto_notify_doc]         char(1) NULL ,
    [billto_ack_doc]            char(1) NULL ,
    [dealer_estm_doc]           char(1) NULL ,
    [dealer_notify_doc]         char(1) NULL ,
    [dealer_ack_doc]            char(1) NULL ,
    [shipto_tax_code]           char(10) NULL ,
    [number_original_springs]       smallint NULL ,
    [original_storage_bag]      char(1) NULL ,
    [ups_track]             char(25) NULL ,
    [from_web]              char(1) NULL ,
    [from_plot_prg]         char(1) NULL ,
    [dispose_date]          date NULL ,
    [age_of_cover]          int NULL ,
    [original_spring_cover_qty]     int NULL ,
    [damage_type]           char(255) NULL ,
    [discard_cover]         char(25) NULL ,
    [return_no_work]            char(1) NULL ,
    [full_hardware]         char(1) NULL ,
    [back_to_tech]          char(1) NULL ,
    [altered]               int NULL ,
    [return_cover]          char(25) NULL ,
    [ra_ordered_by]         char(25) NULL ,
    [ra_approved_by]            char(25) NULL ,
    [ra_inspected_by]           char(25) NULL ,
    [will_not_repair]           char(1) NULL ,
    [repaired_no_times]         int NULL ,
    [ra_inspection_date]        date NULL ,
    [repair_comments]           char(300) NULL ,
    [anchors_returned]          int NULL ,
    [warranty_reasons]          char(255) NULL ,
    [buckles_returned]          int NULL ,
    [Alter_Job]             char(1) NULL ,
    [Liner_reference]           int NULL ,
    [print_hardware]            char(1) NULL ,
    [billto_form75_doc]         char(1) NULL ,
    [dealer_form75_doc]         char(1) NULL ,
    [Liner_Perimeter]           int NULL ,
    [Roll_Serial_No]            int NULL ,
    [liner_bottom]          int NULL ,
    [Liner_step]            char(1) NULL ,
    [requote]               char(1) NULL ,
    [third_dealer]          char(6) NULL ,
    [billto_proforma_doc]       char(1) NULL ,
    [photo]             char(2) NULL ,
    [template]              char(2) NULL ,
    [measure_by_sales]          char(2) NULL ,
    [back_to_imageloc]          char(2) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[calc_prep_manf]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [product_id]            int NULL ,
    [product_group]         char(1) NULL ,
    [grid_size]             char(10) NULL ,
    [qty]               smallint NULL ,
    [out_of_stock_flag]         char(1) NULL ,
    [shape]             varchar(50) NULL ,
    [object_size]           varchar(255) NULL ,
    [manf_size]             varchar(255) NULL ,
    [averaged_flag]         char(1) NULL ,
    [safe_flag]             char(1) NULL ,
    [price_table_flag]          char(1) NULL ,
    [sqft]              float NULL ,
    [base_cost]             float NULL ,
    [cover_hardware_cost]       float NULL ,
    [markdown]              float NULL ,
    [shipping_cost]         float NULL ,
    [sales_tax]             float NULL ,
    [dealer_discount]           varchar(50) NULL ,
    [ship_via_id]           int NULL ,
    [number_of_cartons]         smallint NULL ,
    [weight_of_cartons]         float NULL ,
    [create_date]           date NULL ,
    [create_user]           char(15) NULL ,
    [last_modified_date]        date NULL ,
    [last_modified_user]        char(15) NULL ,
    [extensions]            int NULL ,
    [hardware_discount]         char(50) NULL ,
    [deposit_requested]         float NULL ,
    [deposit_acceptable]        float NULL ,
    [ship_date]             date NULL ,
    [drop_date]             date NULL ,
    [ups_zone]              char(10) NULL ,
    [cover_net]             float NULL ,
    [other_list]            float NULL ,
    [other_net]             float NULL ,
    [total]             float NULL ,
    [waiting_for_price]         char(1) NULL ,
    [stock_master_id]           int NULL ,
    [status]                int NULL ,
    [treatment_cost]            float NULL ,
    [c_end]             char(1) NULL ,
    [rough_estimate]            char(1) NULL ,
    [carton_types]          char(300) NULL ,
    [carton_weights]            char(400) NULL ,
    [stock_serial_numbers]      varchar(1000) NULL ,
    [cover_list]            numeric(9,2) NULL ,
    [old_cover_list]            numeric(9,2) NULL ,
    [cod_fee]               float NULL ,
    [pool_shape]            char(50) NULL ,
    [COD_Changes]           float NULL ,
    [Liner_Wall_Thickness]      int NULL ,
    [Liner_Bottom_Thickness]        int NULL ,
    [Liner_Overide]         char(5) NULL ,
    [plate_no]              varchar(10) NULL ,
    [ln_is_estimate]            varchar(2) NULL ,
    [replace]               varchar(2) NULL ,
    [paid_in_full]          varchar(2) NULL DEFAULT 'N' ,
    [stock_master_id_ln_ag]     int NULL ,
     PRIMARY KEY ([prep_id], [quote_no])
)
;

GO

CREATE TABLE [dbo].[calc_prep_manf_admin]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [admin_discount_type]       char(1) NULL ,
    [admin_discount]            char(20) NULL ,
    [admin_no_charge_net]       char(1) NULL ,
    [admin_no_charge_freight]       char(1) NULL ,
    [admin_description]         varchar(255) NULL ,
    [deposit_required]          char(1) NULL ,
    [deposit_flat_amount]       int NULL ,
    [deposit_min_pct]           int NULL ,
    [deposit_source]            char(1) NULL ,
    [deposit_max_pct]           int NULL ,
    [admin_description_dept]        varchar(255) NULL ,
    [admin_description_reason]      varchar(255) NULL ,
    [admin_description_as_per]      varchar(30) NULL ,
    [admin_description_date]        date NULL ,
    [admin_description_person]      varchar(30) NULL ,
    [deposit_override]          char(1) NULL ,
    [dept_markdowns]            varchar(255) NULL ,
    [giftcard]              varchar(255) NULL ,
    [fixed_freight]         float NULL ,
     PRIMARY KEY ([prep_id], [quote_no])
)
;

GO

CREATE TABLE [dbo].[calc_prep_hardware]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [hardware_code]         char(10) NOT NULL ,
    [quantity]              int NULL ,
    [actual_quantity]           int NULL ,
    [unit]              char(10) NULL ,
    [unit_price]            float NULL ,
    [charge_flag]           char(1) NULL ,
    [last_modified_date]        date NULL ,
    [last_modified_user]        char(15) NULL ,
    [additional_flag]           char(1) NOT NULL ,
    [source]                char(1) NULL ,
    [up_charge_flag]            char(1) NULL ,
    [units]             int NULL ,
    [weight]                float NULL ,
     PRIMARY KEY ([prep_id], [quote_no], [dtl_no], [additional_flag])
)
;

GO

CREATE TABLE [dbo].[calc_prep_treatment]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [treatment_code]            char(10) NOT NULL ,
    [quantity]              int NULL ,
    [actual_quantity]           int NULL ,
    [unit]              char(10) NULL ,
    [unit_price]            float NULL ,
    [charge_flag]           char(1) NULL ,
    [last_modified_date]        date NULL ,
    [last_modified_user]        char(15) NULL ,
    [source]                char(1) NULL ,
     PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[calc_prep_special_instructions]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [code]              char(10) NOT NULL ,
    [short_description]         varchar(50) NULL ,
    [long_description]          varchar(255) NULL ,
    [active_flag]           char(1) NULL ,
    [print_warranty_flag]       char(1) NULL ,
    [source]                char(1) NULL ,
     PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[calc_prep_blue_dot]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [dtl_no]                smallint NOT NULL ,
    [text]              varchar(255) NULL ,
    [date_cleared]          date NULL ,
    [cleared_by]            varchar(35) NULL ,
    [last_modified_date]        date NULL ,
    [last_modified_user]        char(15) NULL ,
    [source]                char(1) NULL ,
    [answer]                varchar(255) NULL ,
    [markable]              char(5) NULL ,
    [foreign_version]           char(255) NULL ,
     PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[calc_prep_comments]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [category]              char(10) NOT NULL ,
    [type]              char(10) NOT NULL ,
    [text]              varchar(255) NULL ,
    [active]                char(1) NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
    [dealer_flag]           char(1) NULL ,
    [source]                char(1) NULL ,
     PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[calc_prep_rules]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [category]              char(10) NOT NULL ,
    [type]              char(10) NOT NULL ,
    [text]              varchar(255) NULL ,
    [active]                char(1) NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
    [dealer_flag]           char(1) NULL ,
    [source]                char(1) NULL ,
    [section]               char(10) NULL ,
    [pool_type]             char(2) NULL ,
     PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[calc_log]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              smallint NOT NULL ,
    [task]              varchar(50) NULL ,
    [action]                varchar(50) NULL ,
    [action_date]           date NULL DEFAULT (CONVERT(date, SYSDATETIME())) ,
    [action_time]           time NULL DEFAULT current time ,
    [action_user]           char(15) NULL DEFAULT (LEFT(ORIGINAL_LOGIN(), 15)) ,
    [reference]             varchar(50) NULL ,
    [status]                int NULL 
)
;

GO

CREATE TABLE [dbo].[fax_que_problems]
(
    [fax_id]                int IDENTITY(1,1) NOT NULL ,
    [document_name]         char(2500) NULL ,
    [phone_no]              char(50) NULL ,
    [loc_code]              char(5) NULL ,
    [loc_key]               char(1000) NULL ,
    [document_desc]         char(400) NULL ,
    [modified_date]         date NULL ,
    [modified_time]         time NULL ,
    [dealer_code]           char(10) NULL ,
     PRIMARY KEY ([fax_id])
)
;

GO

CREATE TABLE [dbo].[wt_description]
(
    [wt_id]             int NOT NULL ,
    [description]           varchar(100) NOT NULL ,
     PRIMARY KEY ([wt_id], [description])
)
;

GO

CREATE TABLE [dbo].[product_wt_type]
(
    [product_id]            int NOT NULL ,
    [wt_id]             int NOT NULL ,
     PRIMARY KEY ([product_id])
)
;

GO

CREATE TABLE [dbo].[warranty_claims_type]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [warranty_type_code]        varchar(30) NOT NULL ,
    [warranty_type_description]     varchar(100) NOT NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[warranty_claims_address]
(
    [id_no]             int IDENTITY(1,1) NOT NULL ,
    [company_name]          varchar(50) NULL ,
    [address]               varchar(100) NULL ,
    [city]              varchar(100) NULL ,
    [state]             varchar(2) NULL ,
    [zip_code]              varchar(15) NULL ,
    [attention]             varchar(50) NULL ,
    [warranty_type_id]          int NULL ,
    [created_user]          varchar(20) NULL ,
    [created_date]          date NULL ,
    [all_fabric]            char(2) NULL ,
    [mesh_green]            int NULL ,
    [solid_green]           int NULL ,
    [mesh_color]            int NULL ,
    [solid_color]           int NULL ,
    [vinyl]             int NULL ,
     PRIMARY KEY ([id_no])
)
;

GO

CREATE TABLE [dbo].[rtn_bluesheet_rtn_reason]
(
    [id_number]             int IDENTITY(1,1) NOT NULL ,
    [description]           varchar(300) NOT NULL ,
    [created_by]            char(100) NULL ,
    [created_date]          date NULL ,
    [modified_by]           char(100) NULL ,
    [modified_date]         date NULL ,
    [active]                char(2) NULL ,
    [jobtype]               char(2) NULL ,
    [category_id]           int NULL ,
     PRIMARY KEY ([id_number])
)
;

GO

CREATE TABLE [dbo].[tbl_products_cover_hardware]
(
    [web_id]                int NOT NULL ,
    [hardware_code]         varchar(10) NOT NULL ,
    [web_title]             varchar(63) NOT NULL ,
    [description]           varchar(255) NOT NULL ,
    [unit_price]            decimal(12,6) NOT NULL ,
    [weight_per_unit]           float NOT NULL ,
    [sqft]              int NOT NULL ,
    [grid_size]             varchar(5) NOT NULL ,
     PRIMARY KEY ([web_id])
)
;

GO

CREATE TABLE [dbo].[special_discount]
(
    [identifier]            int IDENTITY(1,1) NOT NULL ,
    [description]           varchar(100) NULL ,
    [discount_type]         varchar(10) NOT NULL ,
    [increment]             int NOT NULL ,
    [discount]              varchar(500) NOT NULL ,
    [create_user]           varchar(500) NOT NULL ,
    [active]                varchar(2) NOT NULL ,
    [create_date]           date NULL ,
    [dealer_code]           varchar(10) NULL ,
     PRIMARY KEY ([identifier])
)
;

GO

CREATE TABLE [dbo].[special_discount_detail]
(
    [identifier]            int NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [prep_id]               int NULL ,
    [amount]                float NULL DEFAULT 0 ,
     PRIMARY KEY ([identifier], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[co_op_certificate]
(
    [dealer_code]           char(6) NOT NULL ,
    [amount]                float NOT NULL ,
    [year_certificate]          int NOT NULL ,
    [identifier]            int IDENTITY(1,1) NOT NULL ,
    [children_modifier]         float NULL DEFAULT 0 ,
    [is_child]              varchar(2) NULL ,
    [print_certificate]         varchar(2) NULL ,
    [document_code]         varchar(20) NULL ,
     PRIMARY KEY ([dealer_code], [year_certificate])
)
;

GO

CREATE TABLE [dbo].[material_hardware]
(
    [id_num]                int IDENTITY(1,1) NOT NULL ,
    [ll_id]             int NOT NULL ,
    [hardware_code]         char(10) NOT NULL ,
     PRIMARY KEY ([id_num])
)
;

GO

CREATE TABLE [dbo].[material_code_special_alerts]
(
    [ll_id]             smallint NOT NULL ,
    [month_alert]           int NOT NULL ,
    [alert]             int NOT NULL ,
     PRIMARY KEY ([ll_id], [month_alert])
)
;

GO

CREATE TABLE [dbo].[prepCAD]
(
    [prep_id]               int IDENTITY(1,1) NOT NULL ,
    [selected_quote_no]         smallint NULL ,
    [dealer_code]           char(6) NOT NULL ,
    [billto_dealer_code]        char(6) NOT NULL ,
    [term_id]               int NOT NULL ,
    [prep_type]             char(1) NOT NULL ,
    [type]              char(2) NULL ,
    [entry_date]            date NOT NULL ,
    [order_no]              int NULL ,
    [order_date]            date NULL ,
    [po_no]             char(25) NULL ,
    [jobname]               char(50) NULL ,
    [shipto_code]           char(6) NOT NULL ,
    [shipto_name]           char(35) NULL ,
    [shipto_contact]            char(35) NULL ,
    [shipto_addr1]          char(35) NULL ,
    [shipto_addr2]          char(35) NULL ,
    [shipto_city]           char(20) NULL ,
    [shipto_state_code]         char(3) NULL ,
    [shipto_zip]            char(10) NULL ,
    [status]                char(3) NULL ,
    [replacement]           char(1) NULL ,
    [warranty]              char(1) NULL ,
    [manufactured_by]           varchar(35) NULL ,
    [original_order_no]         char(15) NULL ,
    [return_no]             char(10) NULL ,
    [old_cover_instructions]        varchar(255) NULL ,
    [credit_release_flag]       char(1) NULL ,
    [shipping_release_flag]     char(1) NULL ,
    [manf_location]         char(10) NULL ,
    [deposit_amt_received]      float NULL DEFAULT 0 ,
    [chafe_length]          smallint NULL ,
    [create_date]           date NULL ,
    [create_user]           char(15) NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        char(15) NOT NULL ,
    [print_estimate]            char(1) NULL ,
    [print_notify]          char(1) NULL ,
    [print_ack]             char(1) NULL ,
    [print_invoice]         char(1) NULL ,
    [print_worksheet]           char(1) NULL ,
    [display_cover]         char(1) NULL ,
    [called_with_price]         char(1) NULL ,
    [cover_in_building]         char(1) NULL ,
    [quick_stock_order]         float NULL ,
    [pricing_description]       varchar(255) NULL ,
    [discount_type]         char(1) NULL ,
    [dealer_discount]           char(50) NULL ,
    [hardware_discount]         char(50) NULL ,
    [tech_date]             datetime2(0) NULL ,
    [ab_plot_flag]          char(1) NULL ,
    [shipout_batch_id]          datetime2(0) NULL ,
    [deposit_amt_enclosed]      numeric(9,2) NULL ,
    [previous_jobname]          char(25) NULL ,
    [route_to]              char(10) NULL ,
    [manf_hold]             char(1) NULL ,
    [checked_for_accuracy]      char(1) NULL ,
    [billto_estm_doc]           char(1) NULL ,
    [billto_notify_doc]         char(1) NULL ,
    [billto_ack_doc]            char(1) NULL ,
    [dealer_estm_doc]           char(1) NULL ,
    [dealer_notify_doc]         char(1) NULL ,
    [dealer_ack_doc]            char(1) NULL ,
    [shipto_tax_code]           char(10) NULL ,
    [number_original_springs]       smallint NULL ,
    [original_storage_bag]      char(1) NULL ,
    [ups_track]             char(25) NULL ,
    [from_web]              char(1) NULL ,
    [from_plot_prg]         char(1) NULL ,
    [dispose_date]          date NULL ,
    [age_of_cover]          int NULL ,
    [original_spring_cover_qty]     int NULL ,
    [damage_type]           char(255) NULL ,
    [discard_cover]         char(25) NULL ,
    [return_no_work]            char(1) NULL ,
    [full_hardware]         char(1) NULL ,
    [back_to_tech]          char(1) NULL ,
    [altered]               int NULL ,
    [return_cover]          char(25) NULL ,
    [ra_ordered_by]         char(25) NULL ,
    [ra_approved_by]            char(25) NULL ,
    [ra_inspected_by]           char(25) NULL ,
    [will_not_repair]           char(1) NULL ,
    [repaired_no_times]         int NULL ,
    [ra_inspection_date]        date NULL ,
    [repair_comments]           char(300) NULL ,
    [anchors_returned]          int NULL ,
    [warranty_reasons]          char(255) NULL ,
    [buckles_returned]          int NULL ,
    [alter_job]             char(1) NULL ,
    [liner_reference]           int NULL ,
    [print_hardware]            char(1) NULL ,
    [billto_form75_doc]         char(1) NULL ,
    [dealer_form75_doc]         char(1) NULL ,
    [liner_perimeter]           int NULL ,
    [roll_serial_no]            int NULL ,
    [liner_bottom]          int NULL ,
    [liner_step]            char(1) NULL ,
    [requote]               char(1) NULL ,
    [third_dealer]          char(6) NULL ,
    [billto_proforma_doc]       char(1) NULL ,
    [photo]             char(2) NULL ,
    [template]              char(2) NULL ,
    [measure_by_sales]          char(2) NULL ,
    [back_to_imageloc]          char(2) NULL ,
    [country]               char(3) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[product_treatment]
(
    [product_id]            int NOT NULL ,
    [treatment_code]            char(20) NOT NULL ,
    [active]                char(2) NULL ,
    [quantity]              int NULL ,
    [texture_treatment]         char(2) NULL ,
     PRIMARY KEY ([product_id], [treatment_code])
)
;

GO

CREATE TABLE [dbo].[product_treatment_liner_thickness]
(
    [product_id]            int NOT NULL ,
    [treatment_code]            varchar(50) NOT NULL ,
    [wall_thickness]            varchar(10) NOT NULL ,
    [bottom_thickness]          varchar(10) NOT NULL ,
     PRIMARY KEY ([product_id], [treatment_code], [wall_thickness], [bottom_thickness])
)
;

GO

CREATE TABLE [dbo].[discount_list]
(
    [discount_type]         varchar(10) NOT NULL ,
    [description]           varchar(20) NULL ,
     PRIMARY KEY ([discount_type])
)
;

GO

CREATE TABLE [dbo].[discount_change_history]
(
    [dealer_code]           char(6) NOT NULL ,
    [discount_type]         varchar(10) NOT NULL ,
    [date_change]           date NOT NULL ,
    [time_change]           time NOT NULL ,
    [old_discount]          varchar(25) NOT NULL ,
    [new_discount]          varchar(25) NOT NULL ,
    [user_change]           varchar(50) NOT NULL ,
     PRIMARY KEY ([dealer_code], [discount_type], [date_change], [time_change])
)
;

GO

CREATE TABLE [dbo].[ab_questions_original]
(
    [prep_id]               int NOT NULL ,
    [plot_id]               int NOT NULL ,
    [dealer_code]           varchar(16) NOT NULL ,
    [question_1]            varchar(128) NOT NULL ,
    [question_2]            varchar(128) NOT NULL ,
    [question_3]            varchar(128) NOT NULL ,
    [question_4]            varchar(128) NOT NULL ,
    [question_5]            varchar(128) NOT NULL ,
    [question_6]            varchar(128) NOT NULL ,
    [question_7]            varchar(128) NOT NULL ,
    [question_8]            varchar(128) NOT NULL ,
    [question_9]            varchar(128) NOT NULL ,
    [question_10]           varchar(128) NOT NULL ,
    [question_11]           varchar(128) NOT NULL ,
    [question_12]           varchar(128) NOT NULL ,
    [question_13]           varchar(128) NOT NULL ,
    [question_14]           varchar(128) NOT NULL ,
    [question_15]           varchar(128) NOT NULL ,
    [question_16]           varchar(128) NOT NULL ,
    [question_17]           varchar(128) NOT NULL ,
    [question_18]           varchar(128) NOT NULL ,
    [question_19]           varchar(128) NOT NULL ,
    [question_20]           varchar(128) NOT NULL ,
    [question_21]           varchar(128) NOT NULL ,
    [question_22]           varchar(128) NOT NULL ,
    [question_23]           varchar(128) NOT NULL ,
    [question_24]           varchar(128) NOT NULL ,
    [question_25]           varchar(128) NOT NULL ,
    [question_26]           varchar(128) NOT NULL ,
    [question_27]           varchar(128) NOT NULL ,
    [question_28]           varchar(128) NOT NULL ,
    [question_29]           varchar(128) NOT NULL ,
    [question_30]           varchar(128) NOT NULL ,
    [question_31]           varchar(128) NOT NULL ,
    [question_32]           varchar(128) NOT NULL ,
    [question_33]           varchar(128) NOT NULL ,
    [question_34]           varchar(128) NOT NULL ,
    [question_35]           varchar(128) NOT NULL ,
    [question_36]           varchar(128) NOT NULL ,
    [question_37]           varchar(128) NOT NULL ,
    [question_38]           varchar(128) NOT NULL ,
    [question_39]           varchar(128) NOT NULL ,
    [question_40]           varchar(128) NOT NULL ,
    [question_41]           varchar(128) NOT NULL ,
    [question_42]           varchar(128) NOT NULL ,
    [question_43]           varchar(128) NOT NULL ,
    [question_44]           varchar(128) NOT NULL ,
    [question_45]           varchar(128) NOT NULL ,
    [question_46]           varchar(128) NOT NULL ,
    [question_47]           varchar(128) NOT NULL ,
    [question_48]           varchar(128) NOT NULL ,
    [question_49]           varchar(128) NOT NULL ,
    [question_50]           varchar(128) NOT NULL ,
    [question_51]           varchar(128) NOT NULL ,
    [question_52]           varchar(128) NOT NULL ,
    [question_53]           varchar(128) NOT NULL ,
    [question_54]           varchar(128) NOT NULL ,
    [question_55]           varchar(128) NOT NULL ,
    [question_56]           varchar(128) NOT NULL ,
    [question_57]           varchar(128) NOT NULL ,
    [question_58]           varchar(128) NOT NULL ,
    [question_59]           varchar(128) NOT NULL ,
    [question_60]           varchar(128) NOT NULL ,
    [question_61]           varchar(128) NOT NULL ,
    [question_62]           varchar(128) NOT NULL ,
    [question_63]           varchar(128) NOT NULL ,
    [question_64]           varchar(128) NOT NULL ,
    [question_65]           varchar(128) NOT NULL ,
    [question_66]           varchar(128) NOT NULL ,
    [question_67]           varchar(128) NOT NULL ,
    [question_68]           varchar(128) NOT NULL ,
    [question_69]           varchar(128) NOT NULL ,
    [liner_corners]         varchar(50) NULL ,
    [liner_bead_style]          varchar(50) NULL ,
    [liner_folding_method]      varchar(50) NULL ,
    [liner_steps_benches]       varchar(50) NULL ,
    [liner_fit_options]         varchar(50) NULL ,
    [liner_notes]           varchar(255) NULL ,
    [product_id]            varchar(11) NOT NULL ,
    [liner_wall_thickness]      varchar(11) NOT NULL ,
    [liner_bottom_thickness]        varchar(11) NOT NULL ,
     PRIMARY KEY ([prep_id], [plot_id])
)
;

GO

CREATE TABLE [dbo].[ab_pool_details]
(
    [prep_id]               int NOT NULL ,
    [plot_id]               int NOT NULL ,
    [pool_type]             varchar(30) NULL ,
    [deck_width]            int NULL ,
    [coping_type]           varchar(50) NULL ,
    [coping_width]          int NULL ,
    [rough_coping]          char(1) NULL ,
    [under_cover_padding]       char(1) NULL ,
    [additional_info]           char(1) NULL ,
    [units]             varchar(20) NULL ,
    [date_entered]          date NULL DEFAULT (CONVERT(date, SYSDATETIME())) ,
    [last_modified_date]        date NULL DEFAULT (CONVERT(date, SYSDATETIME())) ,
     PRIMARY KEY ([prep_id], [plot_id])
)
;

GO

CREATE TABLE [dbo].[ab_liner_data]
(
    [prep_id]               int NOT NULL ,
    [plot_id]               int NOT NULL ,
    [a_dim]             int NOT NULL ,
    [b_dim]             int NOT NULL ,
    [c_dim]             int NOT NULL ,
    [d_dim]             int NOT NULL ,
    [e_dim]             int NOT NULL ,
    [f_dim]             int NOT NULL ,
    [g_dim]             int NOT NULL ,
    [h_dim]             int NOT NULL ,
    [i_dim]             int NOT NULL ,
    [j_dim]             int NOT NULL ,
    [k_dim]             int NOT NULL ,
    [l_dim]             int NOT NULL ,
    [m_dim]             int NOT NULL ,
    [n_dim]             int NOT NULL ,
    [point_c]               int NOT NULL ,
    [point_d]               int NOT NULL ,
    [point_e]               int NOT NULL ,
    [point_f]               int NOT NULL ,
    [point_g]               int NOT NULL ,
    [point_h]               int NOT NULL ,
    [c_d_length]            float NULL ,
    [e_f_length]            float NULL ,
    [g_h_length]            float NULL ,
     PRIMARY KEY ([prep_id], [plot_id])
)
;

GO

CREATE TABLE [dbo].[ab_questions]
(
    [id]                float NOT NULL DEFAULT autoincrement ,
    [job_id]                int NOT NULL ,
    [dealer_code]           varchar(16) NOT NULL ,
    [question_1]            varchar(255) NOT NULL ,
    [question_2]            varchar(255) NOT NULL ,
    [question_3]            varchar(255) NOT NULL ,
    [question_4]            varchar(255) NOT NULL ,
    [question_5]            varchar(255) NOT NULL ,
    [question_6]            varchar(255) NOT NULL ,
    [question_7]            varchar(255) NOT NULL ,
    [question_8]            varchar(255) NOT NULL ,
    [question_9]            varchar(255) NOT NULL ,
    [question_10]           varchar(255) NOT NULL ,
    [question_11]           varchar(255) NOT NULL ,
    [question_12]           varchar(255) NOT NULL ,
    [question_13]           varchar(255) NOT NULL ,
    [question_14]           varchar(255) NOT NULL ,
    [question_15]           varchar(255) NOT NULL ,
    [question_16]           varchar(255) NOT NULL ,
    [question_17]           varchar(255) NOT NULL ,
    [question_18]           varchar(255) NOT NULL ,
    [question_19]           varchar(255) NOT NULL ,
    [question_20]           varchar(255) NOT NULL ,
    [question_21]           varchar(255) NOT NULL ,
    [question_22]           varchar(255) NOT NULL ,
    [question_23]           varchar(255) NOT NULL ,
    [question_24]           varchar(255) NOT NULL ,
    [question_25]           varchar(255) NOT NULL ,
    [question_26]           varchar(255) NOT NULL ,
    [question_27]           varchar(255) NOT NULL ,
    [question_28]           varchar(255) NOT NULL ,
    [question_29]           varchar(255) NOT NULL ,
    [question_30]           varchar(255) NOT NULL ,
    [question_31]           varchar(255) NOT NULL ,
    [question_32]           varchar(255) NOT NULL ,
    [question_33]           varchar(255) NOT NULL ,
    [question_34]           varchar(255) NOT NULL ,
    [question_35]           varchar(255) NOT NULL ,
    [question_36]           varchar(255) NOT NULL ,
    [question_37]           varchar(255) NOT NULL ,
    [question_38]           varchar(255) NOT NULL ,
    [question_39]           varchar(255) NOT NULL ,
    [question_40]           varchar(255) NOT NULL ,
    [question_41]           varchar(255) NOT NULL ,
    [question_42]           varchar(255) NOT NULL ,
    [question_43]           varchar(255) NOT NULL ,
    [question_44]           varchar(255) NOT NULL ,
    [question_45]           varchar(255) NOT NULL ,
    [question_46]           varchar(255) NOT NULL ,
    [question_47]           varchar(255) NOT NULL ,
    [question_48]           varchar(255) NOT NULL ,
    [question_49]           varchar(255) NOT NULL ,
    [question_50]           varchar(255) NOT NULL ,
    [question_51]           varchar(255) NOT NULL ,
    [question_52]           varchar(255) NOT NULL ,
    [question_53]           varchar(255) NOT NULL ,
    [question_54]           varchar(255) NOT NULL ,
    [question_55]           varchar(255) NOT NULL ,
    [question_56]           varchar(255) NOT NULL ,
    [question_57]           varchar(255) NOT NULL ,
    [question_58]           varchar(255) NOT NULL ,
    [question_59]           varchar(255) NOT NULL ,
    [question_60]           varchar(255) NOT NULL ,
    [question_61]           varchar(255) NOT NULL ,
    [question_62]           varchar(255) NOT NULL ,
    [question_63]           varchar(255) NOT NULL ,
    [question_64]           varchar(255) NOT NULL ,
    [question_65]           varchar(255) NOT NULL ,
    [question_66]           varchar(255) NOT NULL ,
    [question_67]           varchar(511) NOT NULL ,
    [question_68]           varchar(255) NOT NULL ,
    [question_69]           varchar(255) NOT NULL ,
    [liner_corners]         varchar(50) NULL ,
    [liner_bead_style]          varchar(50) NULL ,
    [liner_folding_method]      varchar(50) NULL ,
    [liner_steps_benches]       varchar(50) NULL ,
    [liner_fit_options]         varchar(50) NULL ,
    [liner_notes]           varchar(255) NULL ,
    [product_id]            varchar(11) NULL ,
    [liner_wall_thickness]      varchar(11) NULL ,
    [liner_bottom_thickness]        varchar(11) NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[calc_tracking]
(
    [prep_id]               bigint NOT NULL ,
    [entry_date]            date NOT NULL DEFAULT (CONVERT(date, SYSDATETIME())) ,
    [ab_plot]               varchar(1) NOT NULL DEFAULT 'N' ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[dealer_logos]
(
    [dealer_code]           varchar(6) NOT NULL ,
    [logo_file]             varchar(50) NOT NULL ,
    [active]                varchar(1) NOT NULL DEFAULT 'Y' ,
    [show_cv]               varchar(2) NOT NULL DEFAULT 'N' ,
    [show_ln]               varchar(2) NOT NULL DEFAULT 'N' ,
    [show_all_else]         varchar(2) NULL ,
     PRIMARY KEY ([dealer_code], [show_cv], [show_ln])
)
;

GO

CREATE TABLE [dbo].[prep_weights]
(
    [prep_id]               int NOT NULL ,
    [hardware_weight]           float NOT NULL DEFAULT 0 ,
    [cover_weight]          float NOT NULL DEFAULT 0 ,
    [hardware_return_weight]        float NOT NULL DEFAULT 0 ,
    [pump_weight]           float NOT NULL DEFAULT 0 ,
    [dimensional_weight]        float NULL ,
    [total_weight]          float NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[treatment_h_product]
(
    [treatment_code]            char(10) NOT NULL ,
    [product_id]            int NOT NULL ,
    [active]                char(1) NOT NULL ,
     PRIMARY KEY ([treatment_code], [product_id])
)
;

GO

CREATE TABLE [Bleep1100].[pbcattbl]
(
    [pbt_tnam]              char(129) NOT NULL ,
    [pbt_tid]               int NULL ,
    [pbt_ownr]              char(129) NOT NULL ,
    [pbd_fhgt]              smallint NULL ,
    [pbd_fwgt]              smallint NULL ,
    [pbd_fitl]              char(1) NULL ,
    [pbd_funl]              char(1) NULL ,
    [pbd_fchr]              smallint NULL ,
    [pbd_fptc]              smallint NULL ,
    [pbd_ffce]              char(18) NULL ,
    [pbh_fhgt]              smallint NULL ,
    [pbh_fwgt]              smallint NULL ,
    [pbh_fitl]              char(1) NULL ,
    [pbh_funl]              char(1) NULL ,
    [pbh_fchr]              smallint NULL ,
    [pbh_fptc]              smallint NULL ,
    [pbh_ffce]              char(18) NULL ,
    [pbl_fhgt]              smallint NULL ,
    [pbl_fwgt]              smallint NULL ,
    [pbl_fitl]              char(1) NULL ,
    [pbl_funl]              char(1) NULL ,
    [pbl_fchr]              smallint NULL ,
    [pbl_fptc]              smallint NULL ,
    [pbl_ffce]              char(18) NULL ,
    [pbt_cmnt]              char(254) NULL 
)
;

GO

CREATE TABLE [Bleep1100].[pbcatcol]
(
    [pbc_tnam]              char(129) NOT NULL ,
    [pbc_tid]               int NULL ,
    [pbc_ownr]              char(129) NOT NULL ,
    [pbc_cnam]              char(129) NOT NULL ,
    [pbc_cid]               smallint NULL ,
    [pbc_labl]              char(254) NULL ,
    [pbc_lpos]              smallint NULL ,
    [pbc_hdr]               char(254) NULL ,
    [pbc_hpos]              smallint NULL ,
    [pbc_jtfy]              smallint NULL ,
    [pbc_mask]              char(31) NULL ,
    [pbc_case]              smallint NULL ,
    [pbc_hght]              smallint NULL ,
    [pbc_wdth]              smallint NULL ,
    [pbc_ptrn]              char(31) NULL ,
    [pbc_bmap]              char(1) NULL ,
    [pbc_init]              char(254) NULL ,
    [pbc_cmnt]              char(254) NULL ,
    [pbc_edit]              char(31) NULL ,
    [pbc_tag]               char(254) NULL 
)
;

GO

CREATE TABLE [Bleep1100].[pbcatfmt]
(
    [pbf_name]              char(30) NOT NULL ,
    [pbf_frmt]              char(254) NULL ,
    [pbf_type]              smallint NULL ,
    [pbf_cntr]              int NULL 
)
;

GO

CREATE TABLE [Bleep1100].[pbcatvld]
(
    [pbv_name]              char(30) NOT NULL ,
    [pbv_vald]              char(254) NULL ,
    [pbv_type]              smallint NULL ,
    [pbv_cntr]              int NULL ,
    [pbv_msg]               char(254) NULL 
)
;

GO

CREATE TABLE [Bleep1100].[pbcatedt]
(
    [pbe_name]              char(30) NOT NULL ,
    [pbe_edit]              char(254) NULL ,
    [pbe_type]              smallint NULL ,
    [pbe_cntr]              int NULL ,
    [pbe_seqn]              smallint NOT NULL ,
    [pbe_flag]              int NULL ,
    [pbe_work]              char(32) NULL 
)
;

GO

CREATE TABLE [dbo].[state_sales_territory]
(
    [state_code]            varchar(10) NOT NULL ,
    [zip_code1]             varchar(10) NOT NULL ,
    [zip_code2]             varchar(10) NULL ,
    [sales_territory]           varchar(10) NOT NULL ,
    [active]                varchar(2) NULL ,
     PRIMARY KEY ([state_code], [zip_code1])
)
;

GO

CREATE TABLE [dbo].[prep_generational]
(
    [prep_id]               int NOT NULL ,
    [prep_id_original]          int NOT NULL ,
    [generation_number]         int NOT NULL ,
    [create_date]           date NULL ,
    [create_user]           varchar(50) NULL ,
    [modified_date]         date NULL ,
    [modified_user]         varchar(50) NULL ,
    [not_looploc_error]         varchar(2) NULL ,
    [give_quick_shipdate]       varchar(2) NULL ,
    [looploc_error]         varchar(2) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[zip_Code_zone]
(
    [id_number]             int NOT NULL ,
    [zone_name]             varchar(200) NOT NULL ,
     PRIMARY KEY ([id_number])
)
;

GO

CREATE TABLE [dbo].[rtn_location_areas]
(
    [location_id]           bigint IDENTITY(1,1) NOT NULL ,
    [description]           varchar(50) NOT NULL ,
    [active]                varchar(1) NOT NULL DEFAULT 'Y' ,
     PRIMARY KEY ([location_id])
)
;

GO

CREATE TABLE [dbo].[rtn_location_tracker]
(
    [return_no]             bigint NOT NULL ,
    [location_id]           bigint NOT NULL ,
    [last_modified_date]        date NOT NULL DEFAULT (CONVERT(date, SYSDATETIME())) ,
    [purge_rtn]             char(2) NULL ,
     PRIMARY KEY ([return_no])
)
;

GO

CREATE TABLE [dbo].[measure_history]
(
    [date_job]              date NOT NULL ,
    [item_id]               int NOT NULL ,
    [prep_id]               int NULL ,
    [measure_type]          char(5) NULL ,
    [city]              char(50) NULL ,
    [state]             char(2) NULL ,
    [measure_team]          char(100) NULL ,
    [dealer_code]           char(6) NULL ,
    [status]                char(2) NULL ,
    [jobname]               char(50) NULL ,
    [dealer_called]         char(2) NULL ,
    [dealer_called_date]        date NULL ,
    [dealer_called_text]        varchar(200) NULL ,
    [homeowner_called]          char(2) NULL ,
    [homeowner_called_date]     date NULL ,
    [homeowner_called_text]     varchar(200) NULL ,
     PRIMARY KEY ([date_job], [item_id])
)
;

GO

CREATE TABLE [dbo].[rtn_bluesheet_promo]
(
    [rtn_bluesheet_id]          int NOT NULL ,
    [promo_promo_id]            int NOT NULL ,
     PRIMARY KEY ([rtn_bluesheet_id], [promo_promo_id])
)
;

GO

CREATE TABLE [dbo].[rtn_bluesheet_file]
(
    [rtn_bluesheet_id]          int NOT NULL ,
    [dtl_no]                int NOT NULL ,
    [file]              varchar(512) NOT NULL ,
    [destination_directory]     varchar(512) NOT NULL ,
    [date_stored]           date NOT NULL ,
    [userid]                varchar(50) NOT NULL ,
     PRIMARY KEY ([rtn_bluesheet_id], [dtl_no])
)
;

GO

CREATE TABLE [dbo].[prep_liner]
(
    [prep_id]               int NOT NULL ,
    [step_length]           int NOT NULL ,
    [step_wall_length]          int NOT NULL DEFAULT 0 ,
    [bottom_length]         int NULL DEFAULT 0 ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[prep_custom_stock]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              int NOT NULL ,
    [stock_id]              int NOT NULL ,
    [serial_no]             varchar(20) NOT NULL ,
    [date_custom_stock]         date NOT NULL ,
     PRIMARY KEY ([prep_id], [quote_no])
)
;

GO

CREATE TABLE [dbo].[prep_auto_converted]
(
    [prep_id]               int NOT NULL ,
    [userid]                char(20) NOT NULL ,
    [date_converted]            date NOT NULL ,
    [time_converted]            time NOT NULL ,
    [reviewed]              char(2) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[tan_promo]
(
    [id]                int IDENTITY(1,1) NOT NULL ,
    [dealer_code]           varchar(10) NOT NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[prep_error]
(
    [prep_id]               int NOT NULL ,
    [error_id]              int NOT NULL ,
    [checker]               varchar(25) NOT NULL ,
    [prepper]               varchar(25) NOT NULL ,
    [error_date]            date NOT NULL DEFAULT (CONVERT(date, SYSDATETIME())) ,
    [department]            varchar(1) NOT NULL ,
    [error_count]           int NOT NULL ,
     PRIMARY KEY ([prep_id], [error_id], [prepper])
)
;

GO

CREATE TABLE [dbo].[price_notes]
(
    [product_id]            int NOT NULL ,
    [grid_size]             char(10) NOT NULL ,
    [effective_date]            date NOT NULL ,
    [type]              char(1) NOT NULL ,
    [pricenote]             varchar(500) NULL ,
    [datecreated]           date NULL ,
    [usercreated]           varchar(20) NULL ,
    [datemodified]          date NULL ,
    [usermodified]          varchar(20) NULL ,
     PRIMARY KEY ([product_id], [grid_size], [effective_date], [type])
)
;

GO

CREATE TABLE [dbo].[error_image_loc]
(
    [prep_id]               int NOT NULL ,
    [error_id]              int NOT NULL ,
    [checker]               varchar(25) NOT NULL ,
    [drafter]               varchar(25) NOT NULL ,
    [error_date]            date NOT NULL DEFAULT (CONVERT(date, SYSDATETIME())) ,
    [department]            varchar(1) NOT NULL ,
    [error_count]           int NOT NULL ,
     PRIMARY KEY ([prep_id], [error_id], [drafter])
)
;

GO

CREATE TABLE [dbo].[prep_return_no_workdone]
(
    [prep_id]               int NOT NULL ,
    [return_no]             char(10) NOT NULL ,
    [will_not_repair]           char(1) NOT NULL ,
    [date_done]             date NULL ,
    [ra_inspected_by]           char(25) NULL ,
    [repaired_no_times]         int NULL ,
    [damage_type]           char(255) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[prep_return_no_workdown_detail]
(
    [prep_id]               int NOT NULL ,
    [prep_id_detail]            int NOT NULL ,
    [job_was_open]          char(2) NULL ,
    [paper_pulled]          char(2) NULL ,
     PRIMARY KEY ([prep_id], [prep_id_detail])
)
;

GO

CREATE TABLE [dbo].[rtn_bluesheet_sales_measure_error]
(
    [rtn_bluesheet_id]          int NOT NULL ,
    [credit_measure_charge_back]    char(2) NULL ,
    [measure_order]         int NULL ,
    [amount_back]           float NULL ,
     PRIMARY KEY ([rtn_bluesheet_id])
)
;

GO

CREATE TABLE [dbo].[stock_backup]
(
    [serial_no]             bigint NOT NULL ,
    [stock_id]              float NULL ,
    [status]                char(1) NULL ,
    [location]              char(5) NULL ,
    [pick_id]               float NULL ,
    [bleep_status]          float NULL ,
    [cutting_tag_print]         char(1) NULL ,
    [manf_date]             [datetime] NULL ,
    [prep_id]               float NULL ,
    [old_stock]             char(1) NULL ,
     PRIMARY KEY ([serial_no])
)
;

GO

CREATE TABLE [dbo].[ptfe_exceptions]
(
    [dealer_code]           varchar(6) NOT NULL ,
    [active]                varchar(1) NULL DEFAULT 'Y' ,
     PRIMARY KEY ([dealer_code])
)
;

GO

CREATE TABLE [dbo].[dealer_bought_child_third]
(
    [dealer_code]           varchar(10) NOT NULL ,
    [bought_third_cover]        varchar(2) NULL ,
    [bought_third_liner]        varchar(2) NULL ,
    [bought_child_cover]        varchar(2) NULL ,
    [bought_child_liner]        varchar(2) NULL ,
    [bought_third_cover_year]       int NULL ,
    [bought_third_liner_year]       int NULL ,
    [bought_child_cover_year]       int NULL ,
    [bought_child_liner_year]       int NULL ,
     PRIMARY KEY ([dealer_code])
)
;

GO

CREATE TABLE [dbo].[prep_cpu_signature]
(
    [order_no]              bigint NOT NULL ,
    [signature]             varchar(max) NOT NULL ,
    [datetime2(0)]             datetime2(0) NOT NULL DEFAULT current datetime2(0) ,
    [id]                bigint IDENTITY(1,1) NOT NULL ,
     CONSTRAINT [ID]  PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[dealer_bal_third]
(
    [dealer_code]           char(6) NOT NULL ,
    [bal_year]              int NOT NULL ,
    [net_cover]             float NULL DEFAULT 0 ,
    [number_cover]          int NULL DEFAULT 0 ,
    [net_liner]             float NULL DEFAULT 0 ,
    [number_liner]          int NULL DEFAULT 0 ,
     PRIMARY KEY ([dealer_code], [bal_year])
)
;

GO

CREATE TABLE [dbo].[state_tax_code_master]
(
    [zipcode]               varchar(10) NOT NULL ,
    [city]              varchar(50) NULL ,
    [county]                varchar(50) NULL ,
    [zipcode_type]          varchar(10) NOT NULL ,
    [tax_code]              varchar(10) NULL ,
     PRIMARY KEY ([zipcode], [zipcode_type])
)
;

GO

CREATE TABLE [dbo].[prep_free_imageloc]
(
    [dealer_code]           varchar(10) NOT NULL ,
    [year_job]              int NOT NULL ,
    [prep_id]               int NOT NULL ,
    [job_counter]           int NOT NULL ,
     PRIMARY KEY ([dealer_code], [year_job], [prep_id])
)
;

GO

CREATE TABLE [dbo].[material_code_speciality_group]
(
    [speciality_code]           varchar(20) NOT NULL ,
    [description]           varchar(100) NULL ,
    [active]                varchar(2) NULL ,
    [create_user]           varchar(20) NULL ,
    [create_date]           date NULL ,
     PRIMARY KEY ([speciality_code])
)
;

GO

CREATE TABLE [dbo].[material_code_speciality_group_detail]
(
    [speciality_code]           varchar(20) NOT NULL ,
    [ll_id]             smallint NOT NULL ,
     PRIMARY KEY ([speciality_code], [ll_id])
)
;

GO

CREATE TABLE [dbo].[prep_claimed_jobs]
(
    [prep_id]               int NOT NULL ,
    [username]              varchar(20) NULL ,
    [username_cfa]          varchar(20) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[prep_cfa_pricechange_log]
(
    [prep_id]               int NOT NULL ,
    [quote_no]              int NOT NULL ,
    [list_price]            float NOT NULL ,
    [net_price]             float NOT NULL ,
    [cfa_date]              date NOT NULL ,
    [cfa_time]              time NOT NULL ,
    [price_type]            char(2) NULL ,
     PRIMARY KEY ([prep_id], [quote_no], [cfa_date], [cfa_time])
)
;

GO

CREATE TABLE [dbo].[prep_multi_bleeped]
(
    [id_number]             int IDENTITY(1,1) NOT NULL ,
    [prep_id]               int NOT NULL ,
    [date_multi]            date NOT NULL ,
    [bleeped_job]           char(1) NOT NULL ,
    [time_multi]            time NULL ,
     PRIMARY KEY ([id_number], [prep_id], [date_multi])
)
;

GO

CREATE TABLE [dbo].[prep_claimed_jobs_cs]
(
    [prep_id]               int NOT NULL ,
    [username]              varchar(20) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[prep_claimed_plot]
(
    [prep_id]               int NOT NULL ,
    [username]              varchar(20) NOT NULL ,
    [username_checker]          varchar(20) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[prep_print_rtn_que]
(
    [prep_id]               int NOT NULL ,
    [print_jobs]            char(2) NOT NULL ,
    [date_entered]          date NOT NULL ,
    [date_printed]          date NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[worksheet_que_custom]
(
    [prep_id]               int NOT NULL ,
    [print_date]            date NULL ,
    [print_time]            time NULL ,
    [printed]               char(2) NULL ,
    [print_user]            varchar(20) NULL ,
    [reviewed_job]          varchar(2) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[prep_claimed_imageloc]
(
    [prep_id]               int NOT NULL ,
    [username]              char(20) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[prep_easyjob]
(
    [prep_id]               int NOT NULL ,
    [easyjob]               char(2) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[price_extra_large]
(
    [product_id]            int NOT NULL ,
    [grid_size]             char(10) NOT NULL ,
    [type]              char(1) NOT NULL ,
    [square_footage]            float NOT NULL ,
    [price]             float NULL ,
    [last_modified_date]        date NULL ,
    [last_modified_user]        varchar(20) NULL ,
     PRIMARY KEY ([product_id], [grid_size], [type], [square_footage])
)
;

GO

CREATE TABLE [dbo].[dealer_Magento]
(
    [dealer_code]           varchar(6) NOT NULL ,
    [address]               varchar(200) NULL ,
    [city]              varchar(50) NULL ,
    [id]                int IDENTITY(1,1) NOT NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[backyard_list]
(
    [id_no]             int IDENTITY(1,1) NOT NULL ,
    [backyard_accent_name]      varchar(100) NOT NULL ,
     PRIMARY KEY ([id_no])
)
;

GO

CREATE TABLE [dbo].[stock_master_upc]
(
    [stock_id]              int NOT NULL ,
    [dealer_code]           varchar(10) NOT NULL ,
    [upc_code]              varchar(50) NOT NULL ,
     PRIMARY KEY ([stock_id], [dealer_code])
)
;

GO

CREATE TABLE [dbo].[counter_table]
(
    [id_counter]            int IDENTITY(1,1) NOT NULL ,
    [test]              int NULL ,
     PRIMARY KEY ([id_counter])
)
;

GO

CREATE TABLE [dbo].[hardware_bya]
(
    [upc_code]              varchar(15) NOT NULL ,
    [id_no]             int IDENTITY(1,1) NOT NULL ,
    [hardware_code]         char(10) NOT NULL ,
    [liner_wall_id]         int NULL ,
     PRIMARY KEY ([upc_code])
)
;

GO

CREATE TABLE [dbo].[inventory_in_shop]
(
    [line_id]               int IDENTITY(1,1) NOT NULL ,
    [inv_id]                int NOT NULL ,
    [quantity_in]           int NOT NULL ,
    [date_out]              date NOT NULL ,
    [quantity_out]          int NULL ,
     PRIMARY KEY ([line_id])
)
;

GO

CREATE TABLE [dbo].[prep_nonups_tracking]
(
    [prep_id]               int NOT NULL ,
    [tracking_number]           varchar(30) NOT NULL ,
    [ship_via_id]           int NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[warranty_header_preinvoiced]
(
    [prep_id]               int NOT NULL ,
    [ho_last_name]          char(50) NULL ,
    [ho_middle_int]         char(50) NULL ,
    [ho_first_name]         char(50) NULL ,
    [ho_title]              char(10) NULL ,
    [ho_address]            char(60) NULL ,
    [ho_city]               char(50) NULL ,
    [ho_state]              char(30) NULL ,
    [ho_zip]                char(30) NULL ,
    [type]              char(1) NULL ,
    [active]                char(1) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[ln_above_grounds_Old_pricing]
(
    [liner_id]              int IDENTITY(1,1) NOT NULL ,
    [base_cost]             float NULL ,
     PRIMARY KEY ([liner_id])
)
;

GO

CREATE TABLE [dbo].[rtn_bluesheet_cm]
(
    [rtn_bluesheet_id]          int NOT NULL ,
    [artran_id]             int NOT NULL ,
    [cm_type]               int NOT NULL ,
     PRIMARY KEY ([rtn_bluesheet_id], [artran_id])
)
;

GO

CREATE TABLE [dbo].[rtn_bluesheet_cm_type]
(
    [id_no]             int IDENTITY(1,1) NOT NULL ,
    [description]           varchar(100) NOT NULL ,
    [active]                char(2) NULL ,
    [description_creditmemo]        varchar(200) NULL ,
     PRIMARY KEY ([id_no])
)
;

GO

CREATE TABLE [dbo].[rtn_bluesheet_type_return]
(
    [id_number]             int IDENTITY(1,1) NOT NULL ,
    [description]           varchar(100) NOT NULL ,
    [created_by]            varchar(20) NULL ,
    [created_date]          date NULL ,
    [modified_by]           varchar(20) NULL ,
    [modified_date]         date NULL ,
    [active]                char(2) NULL ,
    [jobtype]               char(2) NULL ,
     PRIMARY KEY ([id_number])
)
;

GO

CREATE TABLE [dbo].[prep_finalize_tbc]
(
    [prep_id]               int NOT NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[promo_master_liner_sample_cases]
(
    [limit_min]             int NOT NULL ,
    [limit_max]             int NOT NULL ,
    [num_liner_brochures]       int NOT NULL ,
    [num_measure_forms]         int NOT NULL ,
    [liner_sample_cases]        int NOT NULL ,
    [limit_default]         int NULL ,
     PRIMARY KEY ([limit_min], [limit_max])
)
;

GO

CREATE TABLE [dbo].[dealer_promo_liner]
(
    [dealer_code]           char(10) NOT NULL ,
    [year]              int NOT NULL ,
    [promo_h459]            int NULL ,
    [promo_h459_sent]           char(2) NULL ,
    [promo_l004]            int NULL ,
    [promo_l004_sent]           char(2) NULL ,
    [promo_l162]            int NULL ,
    [promo_l162_sent]           char(2) NULL ,
    [promo_chromerep]           int NULL ,
    [promo_chromerep_sent]      char(2) NULL ,
    [promo_spiralrep]           int NULL ,
    [promo_spiralrep_sent]      char(2) NULL ,
    [promo_pop]             int NULL ,
    [promo_pop_sent]            char(2) NULL ,
    [promo_l220]            int NULL ,
    [promo_l220_sent]           char(2) NULL ,
     PRIMARY KEY ([dealer_code], [year])
)
;

GO

CREATE TABLE [dbo].[promo_type_to_make_year]
(
    [promo_type_id]         int NOT NULL ,
    [to_make_year]          int NOT NULL ,
    [to_make_qty]           int NOT NULL ,
     PRIMARY KEY ([promo_type_id], [to_make_year])
)
;

GO

CREATE TABLE [dbo].[product_out_of_stock]
(
    [product_id]            int NOT NULL ,
    [wall]              char(5) NOT NULL ,
    [bottomc]               char(5) NOT NULL ,
     PRIMARY KEY ([product_id])
)
;

GO

CREATE TABLE [dbo].[cs_claim_report]
(
    [user_name]             char(25) NOT NULL ,
     PRIMARY KEY ([user_name])
)
;

GO

CREATE TABLE [dbo].[slugs]
(
    [id]                bigint IDENTITY(1,1) NOT NULL ,
    [slug]              varchar(256) NOT NULL ,
    [sitemap]               int NOT NULL DEFAULT 0 ,
    [status]                int NOT NULL DEFAULT 0 ,
    [entity_id]             int NOT NULL ,
    [entity_type]           varchar(191) NOT NULL ,
    [created_at]            datetime2(0) NULL ,
    [updated_at]            datetime2(0) NULL ,
     PRIMARY KEY ([id])
)
;

GO

CREATE TABLE [dbo].[prep_ms_additional_jobs]
(
    [prep_id]               int NOT NULL ,
    [prep_id_job]           int NOT NULL ,
     PRIMARY KEY ([prep_id], [prep_id_job])
)
;

GO

CREATE TABLE [dbo].[stock_liner]
(
    [stock_liner_id]            int NOT NULL ,
    [active]                char(2) NULL ,
     PRIMARY KEY ([stock_liner_id])
)
;

GO

CREATE TABLE [dbo].[prep_cfa_second]
(
    [prep_id]               int NOT NULL ,
    [cfa_second]            char(2) NOT NULL ,
    [double_cfa_required]       char(2) NULL ,
    [pre_draft_cfa]         char(2) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[hardware_bulk_price]
(
    [hardware_code]         varchar(10) NOT NULL ,
    [effective_date]            date NOT NULL ,
    [last_modified_date]        date NOT NULL ,
    [last_modified_user]        varchar(50) NOT NULL ,
    [bulk_price]            decimal(7,2) NOT NULL ,
     PRIMARY KEY ([hardware_code], [effective_date])
)
;

GO

CREATE TABLE [dbo].[rtn_no_workdone]
(
    [prep_id]               int NOT NULL ,
    [printed]               char(2) NOT NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[job_safety_information_h]
(
    [code]              char(10) NOT NULL ,
    [short_description]         varchar(100) NOT NULL ,
    [long_description]          varchar(305) NOT NULL ,
    [active]                char(2) NOT NULL ,
    [create_date]           date NOT NULL ,
    [create_user]           varchar(50) NOT NULL ,
    [last_modified_date]        date NULL ,
    [last_modified_user]        varchar(50) NULL ,
    [jobtype]               char(10) NOT NULL ,
     PRIMARY KEY ([code])
)
;

GO

CREATE TABLE [dbo].[comments_h]
(
    [id_no]             int IDENTITY(1,1) NOT NULL ,
    [category]              char(10) NOT NULL ,
    [type]              char(10) NOT NULL ,
    [text]              varchar(255) NULL ,
    [active]                char(1) NOT NULL ,
    [create_date]           date NOT NULL ,
    [create_user]           varchar(20) NOT NULL ,
    [modified_date]         date NULL ,
    [modified_user]         varchar(20) NULL ,
    [job_type]              varchar(2) NULL ,
    [print_type]            varchar(5) NULL ,
     PRIMARY KEY ([id_no])
)
;

GO

CREATE TABLE [dbo].[rtn_bluesheet_rtn_reason_category]
(
    [id_no]             int IDENTITY(1,1) NOT NULL ,
    [description]           varchar(25) NOT NULL ,
     PRIMARY KEY ([id_no])
)
;

GO

CREATE TABLE [dbo].[prep_production]
(
    [prep_id]               int NOT NULL ,
    [production_date]           date NOT NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[prep_po]
(
    [prep_id]               int NOT NULL ,
    [po_no]             char(25) NOT NULL ,
    [amount]                float NOT NULL DEFAULT 0 ,
     PRIMARY KEY ([prep_id], [po_no])
)
;

GO

CREATE TABLE [dbo].[dealer_organization]
(
    [organization_id]           int IDENTITY(1,1) NOT NULL ,
    [description]           varchar(100) NOT NULL ,
    [created_by]            varchar(20) NULL ,
    [created_date]          date NULL ,
    [modified_by]           varchar(20) NULL ,
    [modified_date]         date NULL ,
     PRIMARY KEY ([organization_id])
)
;

GO

CREATE TABLE [dbo].[dealer_key_target]
(
    [dealer_code]           char(6) NOT NULL ,
    [buys_covers]           char(1) NOT NULL DEFAULT 'N' ,
    [buys_liner]            char(1) NOT NULL DEFAULT 'N' ,
    [target_dealer]         char(1) NULL DEFAULT 'N' ,
     PRIMARY KEY ([dealer_code])
)
;

GO

CREATE TABLE [dbo].[dealer_admin_contact]
(
    [dealer_code]           char(6) NOT NULL ,
    [main_contact_name]         varchar(100) NULL ,
    [main_contact_email]        varchar(100) NULL ,
    [main_contact_phone]        varchar(20) NULL ,
    [second_contact_name]       varchar(100) NULL ,
    [second_contact_email]      varchar(100) NULL ,
    [second_contact_phone]      varchar(20) NULL ,
    [cfo_main]              varchar(100) NULL ,
    [cfo_email]             varchar(100) NULL ,
    [cfo_phone]             varchar(20) NULL ,
    [main_contact_title]        varchar(30) NULL ,
    [second_contact_title]      varchar(30) NULL ,
    [cfo_title]             varchar(30) NULL ,
     PRIMARY KEY ([dealer_code])
)
;

GO

CREATE TABLE [dbo].[prep_cancel_fee]
(
    [prep_id]               int NOT NULL ,
    [cancel_charge_id]          int NOT NULL ,
    [percentage_cancel_charge]      float NOT NULL ,
    [additional_comment]        varchar(400) NULL ,
    [amount_reduced]            float NULL DEFAULT 0 ,
    [username]              varchar(200) NULL ,
     PRIMARY KEY ([prep_id])
)
;

GO

CREATE TABLE [dbo].[cancel_charge]
(
    [id_number]             int IDENTITY(1,1) NOT NULL ,
    [job_type]              char(2) NOT NULL ,
    [description]           varchar(100) NOT NULL ,
    [percentage_modification]       float NOT NULL ,
     PRIMARY KEY ([id_number])
)
;

GO

CREATE TABLE [dbo].[color_upcharge]
(
    [fabric_id]             int NOT NULL ,
    [sqft]              bigint NOT NULL ,
    [effective_date]            date NOT NULL ,
    [upcharge_amount]           numeric(12,4) NOT NULL ,
    [create_date]           date NOT NULL ,
    [create_user]           varchar(50) NOT NULL ,
    [modified_date]         date NULL ,
    [modified_user]         varchar(50) NULL ,
     PRIMARY KEY ([fabric_id], [sqft], [effective_date])
)
;

GO
