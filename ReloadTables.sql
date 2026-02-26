
--
-- This command file reloads a database that was unloaded using "dbunload".
--
-- ( Version :  9.0.2.3951)
--
-------------------------------------------------
--   Create tables
-------------------------------------------------

CREATE TABLE "DBA"."pbcattbl"
(
	"pbt_tnam"      		char(129) NOT NULL ,
	"pbt_tid"       		integer NULL ,
	"pbt_ownr"      		char(129) NOT NULL ,
	"pbd_fhgt"      		smallint NULL ,
	"pbd_fwgt"      		smallint NULL ,
	"pbd_fitl"      		char(1) NULL ,
	"pbd_funl"      		char(1) NULL ,
	"pbd_fchr"      		smallint NULL ,
	"pbd_fptc"      		smallint NULL ,
	"pbd_ffce"      		char(18) NULL ,
	"pbh_fhgt"      		smallint NULL ,
	"pbh_fwgt"      		smallint NULL ,
	"pbh_fitl"      		char(1) NULL ,
	"pbh_funl"      		char(1) NULL ,
	"pbh_fchr"      		smallint NULL ,
	"pbh_fptc"      		smallint NULL ,
	"pbh_ffce"      		char(18) NULL ,
	"pbl_fhgt"      		smallint NULL ,
	"pbl_fwgt"      		smallint NULL ,
	"pbl_fitl"      		char(1) NULL ,
	"pbl_funl"      		char(1) NULL ,
	"pbl_fchr"      		smallint NULL ,
	"pbl_fptc"      		smallint NULL ,
	"pbl_ffce"      		char(18) NULL ,
	"pbt_cmnt"      		char(254) NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pbcattbl" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pbcattbl" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."pbcattbl" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."pbcattbl" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pbcattbl" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."pbcattbl" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."pbcatcol"
(
	"pbc_tnam"      		char(129) NOT NULL ,
	"pbc_tid"       		integer NULL ,
	"pbc_ownr"      		char(129) NOT NULL ,
	"pbc_cnam"      		char(129) NOT NULL ,
	"pbc_cid"       		smallint NULL ,
	"pbc_labl"      		char(254) NULL ,
	"pbc_lpos"      		smallint NULL ,
	"pbc_hdr"       		char(254) NULL ,
	"pbc_hpos"      		smallint NULL ,
	"pbc_jtfy"      		smallint NULL ,
	"pbc_mask"      		char(31) NULL ,
	"pbc_case"      		smallint NULL ,
	"pbc_hght"      		smallint NULL ,
	"pbc_wdth"      		smallint NULL ,
	"pbc_ptrn"      		char(31) NULL ,
	"pbc_bmap"      		char(1) NULL ,
	"pbc_init"      		char(254) NULL ,
	"pbc_cmnt"      		char(254) NULL ,
	"pbc_edit"      		char(31) NULL ,
	"pbc_tag"       		char(254) NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pbcatcol" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pbcatcol" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."pbcatcol" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."pbcatcol" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pbcatcol" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."pbcatcol" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."pbcatfmt"
(
	"pbf_name"      		char(30) NOT NULL ,
	"pbf_frmt"      		char(254) NULL ,
	"pbf_type"      		smallint NULL ,
	"pbf_cntr"      		integer NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pbcatfmt" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pbcatfmt" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."pbcatfmt" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."pbcatfmt" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pbcatfmt" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."pbcatfmt" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."pbcatvld"
(
	"pbv_name"      		char(30) NOT NULL ,
	"pbv_vald"      		char(254) NULL ,
	"pbv_type"      		smallint NULL ,
	"pbv_cntr"      		integer NULL ,
	"pbv_msg"       		char(254) NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pbcatvld" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pbcatvld" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."pbcatvld" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."pbcatvld" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pbcatvld" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."pbcatvld" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."pbcatedt"
(
	"pbe_name"      		char(30) NOT NULL ,
	"pbe_edit"      		char(254) NULL ,
	"pbe_type"      		smallint NULL ,
	"pbe_cntr"      		integer NULL ,
	"pbe_seqn"      		smallint NOT NULL ,
	"pbe_flag"      		integer NULL ,
	"pbe_work"      		char(32) NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pbcatedt" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pbcatedt" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."pbcatedt" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."pbcatedt" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pbcatedt" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."pbcatedt" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."rules"
(
	"category"      		char(10) NOT NULL ,
	"type"  			char(10) NOT NULL ,
	"text"  			varchar(255) NULL ,
	"active"        		char(1) NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL ,
	"search_list"   		char(1) NULL , 
	 PRIMARY KEY ("category", "type"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."rules" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."rules" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."rules" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."rules" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."rules" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."comments"
(
	"category"      		char(10) NOT NULL ,
	"type"  			char(10) NOT NULL ,
	"text"  			varchar(255) NULL ,
	"active"        		char(1) NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL , 
	 PRIMARY KEY ("category", "type"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."comments" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, ALTER, REFERENCES ON "DBA"."comments" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."comments" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."comments" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."comments" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."fabric"
(
	"fabric_id"     		integer NOT NULL DEFAULT autoincrement ,
	"description"   		varchar(70) NULL ,
	"color" 			char(25) NULL ,
	"cost"  			double NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL ,
	"material_id"   		integer NULL ,
	"active"        		char(1) NULL ,
	"aqua_xtreme"   		char(1) NULL DEFAULT 'N' , 
	 PRIMARY KEY ("fabric_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."fabric" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."fabric" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."fabric" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."fabric" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."fabric" TO "Bleep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."fabric" TO "Bleep70"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."fabric" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."fabric" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."fabric" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."ship_via"
(
	"ship_via_id"   		integer NOT NULL DEFAULT autoincrement ,
	"type"  			char(2) NOT NULL ,
	"name"  			char(35) NOT NULL ,
	"group" 			char(35) NULL ,
	"promo_level"   		smallint NULL ,
	"rate_table_id" 		smallint NULL ,
	"cod_fee"       		numeric(6,2) NULL ,
	"free_freight"  		char(1) NULL ,
	"active"        		char(1) NULL ,
	"loading_dock"  		varchar(2) NULL , 
	 PRIMARY KEY ("ship_via_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ship_via" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."ship_via" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."ship_via" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ship_via" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."ship_via" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."terms"
(
	"term_id"       		integer NOT NULL ,
	"description"   		varchar(255) NULL ,
	"discount_percent"      	smallint NULL ,
	"discount_days" 		smallint NULL ,
	"net_days"      		smallint NULL ,
	"remittance_slip"       	char(1) NULL ,
	"multi_payments"        	char(1) NULL ,
	"cod_type"      		char(1) NULL ,
	"cod_cash"      		char(1) NULL ,
	"cash_type"     		char(1) NULL ,
	"credit_limit_flag"     	char(1) NULL ,
	"us_funds_message"      	char(1) NULL ,
	"in_advance"    		char(1) NULL ,
	"active"        		char(1) NULL ,
	"description_spanish"   	char(300) NULL ,
	"description_french"    	char(300) NULL ,
	"description_italian"   	char(300) NULL ,
	"description_russian"   	char(300) NULL , 
	 PRIMARY KEY ("term_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."terms" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."terms" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."terms" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."terms" TO "john2" WITH GRANT OPTION
go
GRANT SELECT ON "DBA"."terms" TO "Action_ticket"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."terms" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."product"
(
	"product_id"    		integer NOT NULL DEFAULT autoincrement ,
	"fabric_id"     		integer NULL ,
	"type"  			char(2) NULL ,
	"class" 			char(6) NOT NULL ,
	"description"   		char(100) NULL ,
	"trade_name"    		char(200) NULL ,
	"warranty_text" 		varchar(255) NULL ,
	"non_safe_name" 		char(60) NULL ,
	"stock_deposit_percent" 	integer NULL ,
	"custom_deposit_percent"        integer NULL ,
	"deposit_minimum_percent"       integer NULL ,
	"call_with_price"       	char(1) NULL ,
	"object_name"   		char(20) NULL ,
	"manf_name"     		char(20) NULL ,
	"discontinued_date"     	date NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL ,
	"non_warranty_text"     	varchar(255) NULL ,
	"special_rect_flag"     	char(1) NULL ,
	"gl_sales_account"      	char(10) NULL ,
	"drain_flag"    		char(1) NULL ,
	"freight_charge"        	char(1) NULL ,
	"price_as"      		integer NULL ,
	"active"        		char(1) NULL ,
	"autocad_image" 		char(50) NULL ,
	"wall_thickness_allowed"        char(5) NULL ,
	"bottom_thickness_allowed"      char(5) NULL ,
	"liner_wall_id" 		integer NULL ,
	"trade_name_foreign"    	char(200) NULL ,
	"wt_flag"       		char(2) NULL ,
	"racv"  			integer NULL ,
	"my_exclusive"  		varchar(1) NULL ,
	"web_category"  		varchar(1) NULL ,
	"above_ground_stock"    	varchar(2) NULL ,
	"distributor_exclusive" 	varchar(1) NULL ,
	"charge_all_print"      	varchar(1) NULL ,
	"prmtion_pattern"       	varchar(1) NULL ,
	"no_charge_all_print"   	varchar(1) NULL ,
	"undercover_padding"    	varchar(1) NULL ,
	"display_in_plotter"    	varchar(1) NULL ,
	"delay" 			char(2) NULL ,
	"delay_liner_wall"      	char(5) NULL ,
	"delay_liner_bottom"    	char(5) NULL ,
	"pearlessence"  		char(2) NULL ,
	"liner_carousel"        	smallint NULL ,
	"liner_add_sticker"     	smallint NULL DEFAULT 0 , 
	 PRIMARY KEY ("product_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."product" TO "DBA"  FROM "DBA"
go
GRANT SELECT ON "DBA"."product" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."product" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."product" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."product" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."product" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."product" TO "Bleep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."product" TO "Bleep70"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."product" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."product" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."product" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."dealer"
(
	"dealer_code"   		char(6) NOT NULL ,
	"name"  			char(35) NULL ,
	"contact_sales" 		char(100) NULL ,
	"contact_acct"  		char(35) NULL ,
	"addr1" 			char(35) NULL ,
	"addr2" 			char(35) NULL ,
	"city"  			char(50) NULL ,
	"state_code"    		char(3) NOT NULL ,
	"zip"   			char(10) NULL ,
	"phone" 			char(20) NULL ,
	"fax"   			char(20) NULL ,
	"active"        		char(1) NULL ,
	"admin_hold"    		char(1) NULL ,
	"alias" 			char(35) NULL ,
	"category"      		char(2) NULL ,
	"sales_territory"       	char(2) NULL ,
	"parent_dealer_code"    	char(6) NULL ,
	"term_id"       		integer NULL ,
	"ship_via_id"   		integer NULL ,
	"ship_via_mf"   		integer NULL ,
	"credit_limit"  		double NULL ,
	"credit_app_date"       	date NULL ,
	"deposit_required"      	char(1) NULL ,
	"deposit_amt"   		double NULL ,
	"deposit_min_pct"       	double NULL ,
	"tax_code"      		char(10) NULL ,
	"tax_reseller_certificate"      char(20) NULL ,
	"call_with_price"       	char(1) NULL ,
	"create_date"   		date NOT NULL ,
	"create_user"   		char(15) NOT NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL ,
	"discount"      		varchar(25) NULL ,
	"hardware_discount"     	varchar(10) NULL ,
	"mail_list"     		char(1) NULL ,
	"mail_list_codes"       	char(100) NULL ,
	"quote_only_names"      	char(100) NULL ,
	"leads_dealer"  		char(1) NULL ,
	"salestype_service"     	char(1) NULL ,
	"salestype_home"        	char(1) NULL ,
	"salestype_retail"      	char(1) NULL ,
	"salestype_builder"     	char(1) NULL ,
	"salestype_distributor" 	char(1) NULL ,
	"credit_app_received"   	date NULL ,
	"phone2"        		char(20) NULL ,
	"call_b4_faxing"        	char(1) NULL ,
	"estm_doc"      		char(1) NULL ,
	"notify_doc"    		char(1) NULL ,
	"ack_doc"       		char(1) NULL ,
	"invc_doc"      		char(1) NULL ,
	"leads_date"    		date NULL ,
	"po_box_flag"   		char(1) NULL ,
	"tax_cert_exp_date"     	date NULL ,
	"onground_leads"        	char(1) NULL ,
	"babyloc_leads" 		char(1) NULL ,
	"Cell_Phone"    		char(20) NULL ,
	"E_Mail_address"        	char(50) NULL ,
	"Principal"     		char(100) NULL ,
	"web_site"      		char(1) NULL ,
	"source"        		char(50) NULL ,
	"fax_leads"     		char(1) NULL ,
	"ra_deposit_required"   	char(1) NULL ,
	"ra_deposit_amt"        	double NULL ,
	"ra_deposit_min_pct"    	double NULL ,
	"company_sales" 		char(2) NULL ,
	"fax_messages"  		char(1) NULL ,
	"salestype_fence"       	char(1) NULL ,
	"bulk_dealer"   		char(1) NULL ,
	"zip_rating"    		tinyint NULL ,
	"baby_loc_discount"     	varchar(25) NULL ,
	"liner_discount"        	varchar(25) NULL ,
	"liner_term_id" 		integer NULL ,
	"liner_deposit_required"        char(1) NULL ,
	"liner_deposit_amt"     	double NULL ,
	"liner_deposit_min_pct" 	double NULL ,
	"liner_leads"   		char(1) NULL ,
	"form75_doc"    		char(1) NULL ,
	"cc_on_file"    		char(1) NOT NULL ,
	"admin_notes"   		char(250) NULL ,
	"liner_discount_ag"     	varchar(25) NULL ,
	"web_address"   		char(150) NULL ,
	"liner_tax_reseller_certificate" char(20) NULL ,
	"cd_Rep"        		char(30) NULL ,
	"star_82"       		char(1) NULL ,
	"bulk_email"    		char(1) NULL ,
	"deposit_override"      	char(1) NULL ,
	"wt_discount"   		varchar(25) NULL ,
	"om_discount"   		varchar(25) NULL ,
	"spa_cap_discount"      	varchar(25) NULL ,
	"barrier_discount"      	varchar(25) NULL ,
	"sales_priority"        	integer NULL ,
	"production_number"     	integer NULL ,
	"route_to"      		varchar(100) NULL ,
	"category_ln"   		char(2) NULL ,
	"nspi_member"   		char(2) NULL ,
	"business_listing"      	char(2) NULL ,
	"verify_dealer" 		char(2) NULL ,
	"abbreviation_name"     	varchar(35) NULL ,
	"ra_discount"   		varchar(25) NULL ,
	"proforma_doc"  		char(1) NULL ,
	"no_charge_freight"     	char(1) NULL ,
	"no_print_freight"      	varchar(10) NULL ,
	"li_dealer"     		char(1) NULL ,
	"trouble_priority"      	char(1) NOT NULL DEFAULT 'N' ,
	"en_discount"   		varchar(25) NULL ,
	"ag_liner_stock"        	varchar(25) NULL ,
	"display_metric"        	char(1) NULL DEFAULT 'N' ,
	"display_price_on_web"  	varchar(1) NULL DEFAULT 'N' ,
	"display_jobs_on_web"   	varchar(1) NULL DEFAULT 'Y' ,
	"salestype_online"      	varchar(2) NULL ,
	"salestype_buyinggroup" 	varchar(2) NULL ,
	"out_of_business"       	varchar(2) NULL ,
	"li_dealer_ln"  		varchar(1) NULL ,
	"li_dealer_bl"  		varchar(1) NULL ,
	"credit_line_override"  	varchar(1) NULL DEFAULT 'N' ,
	"no_charge_freight_ln"  	char(1) NULL ,
	"country"       		char(3) NOT NULL DEFAULT '' ,
	"verification_doc"      	char(1) NULL ,
	"admin_notes_de"        	char(250) NULL ,
	"mirage_white_label"    	char(2) NULL ,
	"ba_discount"   		varchar(25) NULL ,
	"omit_commision"        	varchar(2) NULL ,
	"deposit_override_2"    	char(1) NULL ,
	"organization_code"     	integer NULL DEFAULT 0 , 
	 PRIMARY KEY ("dealer_code"),
	
)
go
COMMENT ON COLUMN "DBA"."dealer"."trouble_priority" IS
	'Highlight Dealer as green on the trouble report'
go
COMMENT ON COLUMN "DBA"."dealer"."display_metric" IS
	'Display pool/cover size in meters as well as english measurements.'
go
COMMENT ON COLUMN "DBA"."dealer"."display_price_on_web" IS
	'Should the net price for child dealers be displayed on the web site?'
go
COMMENT ON COLUMN "DBA"."dealer"."display_jobs_on_web" IS
	'Should the jobs of child dealers be displayed for the child login?'
go
COMMENT ON COLUMN "DBA"."dealer"."credit_line_override" IS
	'Flag to allow jobs to be credit released even if the dealer is over his credit limit'
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."dealer" TO "DBA"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, ALTER, REFERENCES ON "DBA"."dealer" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."dealer" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer" TO "john2" WITH GRANT OPTION
go
GRANT SELECT ON "DBA"."dealer" TO "Action_ticket"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."dealer" TO "Bleep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."dealer" TO "prep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer" TO "ralph" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer" TO "FAXMAN"  FROM "DBA"
go
GRANT UPDATE("cd_Rep", "liner_discount_ag", "liner_tax_reseller_certificate", "star_82", "web_address") ON "DBA"."dealer" TO "ralph" FROM "DBA"
go
GRANT UPDATE("abbreviation_name", "ack_doc", "active", "addr1", "addr2", "admin_hold", "admin_notes", "admin_notes_de", "ag_liner_stock", "alias", "ba_discount", "baby_loc_discount", "babyloc_leads", "barrier_discount", "bulk_dealer", "bulk_email", "business_listing", "call_b4_faxing", "call_with_price", "category", "category_ln", "cc_on_file", "cd_Rep", "Cell_Phone", "city", "company_sales", "contact_acct", "contact_sales", "country", "create_date", "create_user", "credit_app_date", "credit_app_received", "credit_limit", "credit_line_override", "dealer_code", "deposit_amt", "deposit_min_pct", "deposit_override", "deposit_override_2", "deposit_required", "discount", "display_jobs_on_web", "display_metric", "display_price_on_web", "E_Mail_address", "en_discount", "estm_doc", "fax", "fax_leads", "fax_messages", "form75_doc", "hardware_discount", "invc_doc", "last_modified_date", "last_modified_user", "leads_date", "leads_dealer", "li_dealer", "li_dealer_bl", "li_dealer_ln", "liner_deposit_amt", "liner_deposit_min_pct", "liner_deposit_required", "liner_discount", "liner_discount_ag", "liner_leads", "liner_tax_reseller_certificate", "liner_term_id", "mail_list", "mail_list_codes", "mirage_white_label", "name", "no_charge_freight", "no_charge_freight_ln", "no_print_freight", "notify_doc", "nspi_member", "om_discount", "omit_commision", "onground_leads", "organization_code", "out_of_business", "parent_dealer_code", "phone", "phone2", "po_box_flag", "Principal", "production_number", "proforma_doc", "quote_only_names", "ra_deposit_amt", "ra_deposit_min_pct", "ra_deposit_required", "ra_discount", "route_to", "sales_priority", "sales_territory", "salestype_builder", "salestype_buyinggroup", "salestype_distributor", "salestype_fence", "salestype_home", "salestype_online", "salestype_retail", "salestype_service", "ship_via_id", "ship_via_mf", "source", "spa_cap_discount", "star_82", "state_code", "tax_cert_exp_date", "tax_code", "tax_reseller_certificate", "term_id", "trouble_priority", "verification_doc", "verify_dealer", "web_address", "web_site", "wt_discount", "zip", "zip_rating") ON "DBA"."dealer" TO "PUBLIC" FROM "DBA"
go
GRANT UPDATE("ack_doc", "active", "addr1", "addr2", "admin_hold", "admin_notes", "alias", "baby_loc_discount", "babyloc_leads", "bulk_dealer", "call_b4_faxing", "call_with_price", "category", "cc_on_file", "cd_Rep", "Cell_Phone", "city", "company_sales", "contact_acct", "contact_sales", "create_date", "create_user", "credit_app_date", "credit_app_received", "credit_limit", "dealer_code", "deposit_amt", "deposit_min_pct", "deposit_required", "discount", "E_Mail_address", "estm_doc", "fax", "fax_leads", "fax_messages", "form75_doc", "hardware_discount", "invc_doc", "last_modified_date", "last_modified_user", "leads_date", "leads_dealer", "liner_deposit_amt", "liner_deposit_min_pct", "liner_deposit_required", "liner_discount", "liner_discount_ag", "liner_leads", "liner_tax_reseller_certificate", "liner_term_id", "mail_list", "mail_list_codes", "name", "notify_doc", "onground_leads", "parent_dealer_code", "phone", "phone2", "po_box_flag", "Principal", "quote_only_names", "ra_deposit_amt", "ra_deposit_min_pct", "ra_deposit_required", "sales_territory", "salestype_builder", "salestype_distributor", "salestype_fence", "salestype_home", "salestype_retail", "salestype_service", "ship_via_id", "ship_via_mf", "source", "star_82", "state_code", "tax_cert_exp_date", "tax_code", "tax_reseller_certificate", "term_id", "web_address", "web_site", "zip", "zip_rating") ON "DBA"."dealer" TO "prep" FROM "DBA"
go
GRANT UPDATE("ack_doc", "active", "addr1", "addr2", "admin_hold", "admin_notes", "alias", "baby_loc_discount", "babyloc_leads", "bulk_dealer", "call_b4_faxing", "call_with_price", "category", "cc_on_file", "Cell_Phone", "city", "company_sales", "contact_acct", "contact_sales", "create_date", "create_user", "credit_app_date", "credit_app_received", "credit_limit", "dealer_code", "deposit_amt", "deposit_min_pct", "deposit_required", "discount", "E_Mail_address", "estm_doc", "fax", "fax_leads", "fax_messages", "form75_doc", "hardware_discount", "invc_doc", "last_modified_date", "last_modified_user", "leads_date", "leads_dealer", "liner_deposit_amt", "liner_deposit_min_pct", "liner_deposit_required", "liner_discount", "liner_leads", "liner_term_id", "mail_list", "mail_list_codes", "name", "notify_doc", "onground_leads", "parent_dealer_code", "phone", "phone2", "po_box_flag", "Principal", "quote_only_names", "ra_deposit_amt", "ra_deposit_min_pct", "ra_deposit_required", "sales_territory", "salestype_builder", "salestype_distributor", "salestype_fence", "salestype_home", "salestype_retail", "salestype_service", "ship_via_id", "ship_via_mf", "source", "state_code", "tax_cert_exp_date", "tax_code", "tax_reseller_certificate", "term_id", "web_site", "zip", "zip_rating") ON "DBA"."dealer" TO "DBA" FROM "DBA"
go
CREATE TABLE "DBA"."dealer_bal"
(
	"dealer_code"   		char(6) NOT NULL ,
	"period_end"    		date NOT NULL ,
	"bal_year"      		smallint NULL ,
	"gross_sales"   		double NULL ,
	"net_sales"     		double NULL ,
	"high_credit"   		numeric(12,2) NULL ,
	"average_days"  		integer NULL ,
	"covers"        		integer NULL ,
	"bl_feet"       		integer NULL ,
	"bl_orders"     		integer NULL ,
	"bl_gross"      		numeric(8,2) NULL ,
	"bl_net"        		numeric(8,2) NULL ,
	"liners"        		integer NULL , 
	 PRIMARY KEY ("dealer_code", "period_end"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_bal" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."dealer_bal" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."dealer_bal" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_bal" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."dealer_bal" TO "Bleep"  FROM "DBA"
go
GRANT UPDATE("average_days", "bal_year", "bl_feet", "bl_gross", "bl_net", "bl_orders", "covers", "dealer_code", "gross_sales", "high_credit", "liners", "net_sales", "period_end") ON "DBA"."dealer_bal" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."dealer_shipto"
(
	"dealer_code"   		char(6) NOT NULL ,
	"shipto_code"   		char(6) NOT NULL ,
	"name"  			char(35) NULL ,
	"contact"       		char(35) NULL ,
	"addr1" 			char(35) NULL ,
	"addr2" 			char(35) NULL ,
	"city"  			char(20) NULL ,
	"state_code"    		char(3) NULL ,
	"zip"   			char(10) NULL ,
	"phone" 			char(10) NULL ,
	"fax"   			char(10) NULL ,
	"mail_list"     		char(1) NULL ,
	"mail_list_codes"       	char(100) NULL ,
	"tax_code"      		char(10) NULL ,
	"country"       		char(3) NULL , 
	 PRIMARY KEY ("dealer_code", "shipto_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_shipto" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, ALTER, REFERENCES ON "DBA"."dealer_shipto" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."dealer_shipto" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_shipto" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."dealer_shipto" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."log"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"task"  			varchar(50) NULL ,
	"action"        		varchar(50) NULL ,
	"action_date"   		date NULL DEFAULT current date ,
	"action_time"   		time NULL DEFAULT current time ,
	"action_user"   		char(15) NULL DEFAULT current user ,
	"reference"     		varchar(150) NULL ,
	"status"        		integer NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."log" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."log" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."log" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."log" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."log" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."up_charge"
(
	"hardware_code" 		char(10) NOT NULL ,
	"effective_date"        	date NOT NULL ,
	"up_charge"     		double NULL ,
	"grid_size"     		char(1) NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL , 
	 PRIMARY KEY ("hardware_code", "effective_date"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."up_charge" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."up_charge" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."up_charge" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."up_charge" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."up_charge" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."dealer_discount"
(
	"dealer_code"   		char(6) NOT NULL ,
	"type"  			char(2) NOT NULL ,
	"class" 			char(6) NOT NULL ,
	"product_id"    		integer NOT NULL ,
	"dealer_discount"       	varchar(50) NOT NULL , 
	 PRIMARY KEY ("dealer_code", "type", "class", "product_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_discount" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, ALTER, REFERENCES ON "DBA"."dealer_discount" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."dealer_discount" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_discount" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."dealer_discount" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."terms_payments"
(
	"term_id"       		integer NOT NULL ,
	"payment_id"    		smallint NOT NULL ,
	"net_days"      		smallint NULL , 
	 PRIMARY KEY ("term_id", "payment_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."terms_payments" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."terms_payments" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."terms_payments" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."terms_payments" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."terms_payments" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."dealer_comments"
(
	"dealer_code"   		char(6) NOT NULL ,
	"category"      		char(10) NOT NULL ,
	"type"  			char(10) NOT NULL ,
	"text"  			varchar(255) NULL ,
	"active"        		char(1) NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL ,
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"cv_om_wt_sc"   		varchar(2) NULL ,
	"ln"    			varchar(2) NULL ,
	"ms"    			varchar(2) NULL ,
	"ra"    			varchar(2) NULL ,
	"nc"    			varchar(2) NULL ,
	"bl"    			varchar(2) NULL ,
	"create_date"   		date NULL ,
	"create_user"   		varchar(15) NULL ,
	"id_no" 			integer NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_comments" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, ALTER, REFERENCES ON "DBA"."dealer_comments" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."dealer_comments" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_comments" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."dealer_comments" TO "Bleep"  FROM "DBA"
go
GRANT SELECT ON "DBA"."dealer_comments" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "bl", "category", "create_date", "create_user", "cv_om_wt_sc", "dealer_code", "id", "id_no", "last_modified_date", "last_modified_user", "ln", "ms", "nc", "ra", "text", "type") ON "DBA"."dealer_comments" TO "PUBLIC" FROM "DBA"
go
GRANT UPDATE("active", "bl", "category", "create_date", "create_user", "cv_om_wt_sc", "dealer_code", "id", "id_no", "last_modified_date", "last_modified_user", "ln", "ms", "nc", "ra", "text", "type") ON "DBA"."dealer_comments" TO "admin" FROM "DBA"
go
CREATE TABLE "DBA"."dealer_rules"
(
	"dealer_code"   		char(6) NOT NULL ,
	"category"      		char(10) NOT NULL ,
	"type"  			char(10) NOT NULL ,
	"text"  			varchar(255) NULL ,
	"active"        		char(1) NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL ,
	"section"       		char(10) NOT NULL ,
	"pool_type"     		char(2) NULL ,
	"additional_flag"       	char(2) NULL ,
	"cv_om_wt_sc"   		varchar(2) NULL ,
	"ln"    			varchar(2) NULL ,
	"ms"    			varchar(2) NULL ,
	"ra"    			varchar(2) NULL ,
	"nc"    			varchar(2) NULL ,
	"bl"    			varchar(2) NULL ,
	"third_dealer_allow"    	varchar(2) NULL , 
	 PRIMARY KEY ("dealer_code", "category", "type", "section"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_rules" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, ALTER, REFERENCES ON "DBA"."dealer_rules" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."dealer_rules" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_rules" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."dealer_rules" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."prep_blue_dot"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"dtl_no"        		smallint NOT NULL ,
	"text"  			varchar(500) NULL ,
	"date_cleared"  		date NULL ,
	"cleared_by"    		varchar(35) NULL ,
	"last_modified_date"    	date NULL ,
	"last_modified_user"    	char(15) NULL ,
	"source"        		char(1) NULL ,
	"answer"        		varchar(255) NULL ,
	"markable"      		char(5) NULL ,
	"foreign_version"       	char(500) NULL ,
	"create_date"   		date NULL DEFAULT current date ,
	"create_user"   		varchar(50) NULL DEFAULT current user , 
	 PRIMARY KEY ("prep_id", "quote_no", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_blue_dot" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."prep_blue_dot" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep_blue_dot" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_blue_dot" TO "john2" WITH GRANT OPTION
go
GRANT SELECT ON "DBA"."prep_blue_dot" TO "Action_ticket"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep_blue_dot" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."bank"
(
	"bank_id"       		char(10) NOT NULL ,
	"name"  			varchar(50) NOT NULL , 
	 PRIMARY KEY ("bank_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."bank" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."bank" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."bank" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."bank" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."bank" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."pferrormsg"
(
	"error_num"     		integer NOT NULL ,
	"title_text"    		char(40) NULL ,
	"body_text"     		char(256) NULL ,
	"icon"  			smallint NULL ,
	"buttons"       		smallint NULL ,
	"short_desc"    		char(40) NULL ,
	"severity"      		integer NULL ,
	"log_error"     		char(1) NULL , 
	 PRIMARY KEY ("error_num"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pferrormsg" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."pferrormsg" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."pferrormsg" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pferrormsg" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."pferrormsg" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."pferrorlog"
(
	"error_num"     		integer NOT NULL ,
	"user_id"       		char(30) NOT NULL ,
	"error_date"    		date NOT NULL ,
	"error_log_num" 		float NOT NULL ,
	"dberror_no"    		integer NULL ,
	"dberror_text"  		char(2000) NULL ,
	"additional_text"       	char(256) NULL ,
	"window_name"   		char(40) NULL ,
	"error_label"   		char(80) NULL , 
	 PRIMARY KEY ("error_num", "user_id", "error_date", "error_log_num"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pferrorlog" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."pferrorlog" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."pferrorlog" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pferrorlog" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."pferrorlog" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."pfuser_pref"
(
	"keyword"       		varchar(256) NOT NULL ,
	"ini_section"   		varchar(256) NOT NULL ,
	"userid"        		char(30) NOT NULL ,
	"key_value"     		varchar(256) NULL ,
	"last_modified_userid"  	char(30) NOT NULL ,
	"last_modified_date"    	date NOT NULL , 
	 PRIMARY KEY ("keyword", "ini_section", "userid"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pfuser_pref" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."pfuser_pref" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."pfuser_pref" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pfuser_pref" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."pfuser_pref" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."prep_hardware"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"dtl_no"        		integer NOT NULL ,
	"hardware_code" 		char(10) NOT NULL ,
	"quantity"      		integer NULL ,
	"actual_quantity"       	integer NULL ,
	"unit"  			char(10) NULL ,
	"unit_price"    		double NULL ,
	"charge_flag"   		char(1) NULL ,
	"last_modified_date"    	date NULL ,
	"last_modified_user"    	char(15) NULL ,
	"additional_flag"       	char(1) NOT NULL ,
	"source"        		char(1) NULL ,
	"up_charge_flag"        	char(1) NULL ,
	"units" 			integer NULL ,
	"weight"        		double NULL , 
	 PRIMARY KEY ("prep_id", "quote_no", "dtl_no", "additional_flag"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_hardware" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."prep_hardware" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep_hardware" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_hardware" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep_hardware" TO "Bleep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_hardware" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_hardware" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_hardware" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."prep_treatment"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"dtl_no"        		integer NOT NULL ,
	"treatment_code"        	char(10) NOT NULL ,
	"quantity"      		integer NULL ,
	"actual_quantity"       	integer NULL ,
	"unit"  			char(10) NULL ,
	"unit_price"    		double NULL ,
	"charge_flag"   		char(1) NULL ,
	"last_modified_date"    	date NULL ,
	"last_modified_user"    	char(15) NULL ,
	"source"        		char(1) NULL , 
	 PRIMARY KEY ("prep_id", "quote_no", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_treatment" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."prep_treatment" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep_treatment" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_treatment" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep_treatment" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."production_cap"
(
	"production_date"       	date NOT NULL ,
	"holiday"       		char(1) NULL ,
	"unit_capacity" 		integer NULL ,
	"units_scheduled"       	integer NULL ,
	"liner_capacity"        	integer NULL , 
	 PRIMARY KEY ("production_date"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."production_cap" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."production_cap" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."production_cap" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."production_cap" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."production_cap" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."product_hardware"
(
	"product_id"    		integer NOT NULL ,
	"hardware_code" 		char(10) NOT NULL ,
	"chargeable"    		char(1) NOT NULL ,
	"per_anchor"    		char(1) NOT NULL ,
	"fixed_amount"  		integer NOT NULL , 
	 PRIMARY KEY ("product_id", "hardware_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."product_hardware" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."product_hardware" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."product_hardware" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."product_hardware" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."product_hardware" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."material"
(
	"material_id"   		integer NOT NULL DEFAULT autoincrement ,
	"name"  			char(10) NOT NULL , 
	 PRIMARY KEY ("material_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."material" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."material" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."material" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."material" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."material" TO "Bleep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."material" TO "Bleep70"  FROM "DBA"
go
CREATE TABLE "DBA"."cv_production_dates"
(
	"production_date"       	date NOT NULL ,
	"material_id"   		integer NOT NULL ,
	"stock_ship_date"       	date NOT NULL ,
	"out_of_stock_ship_date"        date NOT NULL ,
	"custom_ship_date"      	date NOT NULL ,
	"drop_date"     		date NOT NULL , 
	 PRIMARY KEY ("production_date", "material_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."cv_production_dates" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, ALTER, REFERENCES ON "DBA"."cv_production_dates" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."cv_production_dates" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."cv_production_dates" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."cv_production_dates" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."grid_size"
(
	"product_id"    		integer NOT NULL ,
	"grid_size"     		char(10) NOT NULL , 
	 PRIMARY KEY ("product_id", "grid_size"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."grid_size" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."grid_size" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."grid_size" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."grid_size" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."grid_size" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."prep_comments"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"dtl_no"        		integer NOT NULL ,
	"category"      		char(10) NOT NULL ,
	"type"  			char(10) NOT NULL ,
	"text"  			varchar(255) NULL ,
	"active"        		char(1) NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL ,
	"dealer_flag"   		char(1) NULL ,
	"source"        		char(1) NULL ,
	"id_no" 			integer NULL , 
	 PRIMARY KEY ("prep_id", "quote_no", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_comments" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."prep_comments" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep_comments" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_comments" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep_comments" TO "Bleep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_comments" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "category", "dealer_flag", "dtl_no", "id_no", "last_modified_date", "last_modified_user", "prep_id", "quote_no", "source", "text", "type") ON "DBA"."prep_comments" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_rules"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"dtl_no"        		integer NOT NULL ,
	"category"      		char(10) NOT NULL ,
	"type"  			char(10) NOT NULL ,
	"text"  			varchar(255) NULL ,
	"active"        		char(1) NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL ,
	"dealer_flag"   		char(1) NULL ,
	"source"        		char(1) NULL ,
	"section"       		char(10) NULL ,
	"pool_type"     		char(2) NULL , 
	 PRIMARY KEY ("prep_id", "quote_no", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_rules" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."prep_rules" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep_rules" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_rules" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep_rules" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."prep_special_instructions"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"dtl_no"        		integer NOT NULL ,
	"code"  			char(10) NOT NULL ,
	"short_description"     	varchar(50) NULL ,
	"long_description"      	varchar(255) NULL ,
	"active_flag"   		char(1) NULL ,
	"print_warranty_flag"   	char(1) NULL ,
	"source"        		char(1) NULL , 
	 PRIMARY KEY ("prep_id", "quote_no", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_special_instructions" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."prep_special_instructions" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep_special_instructions" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_special_instructions" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep_special_instructions" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."syscon"
(
	"syscon_id"     		integer NOT NULL ,
	"stock_ship_days"       	smallint NOT NULL ,
	"stock_out_ship_days"   	smallint NOT NULL ,
	"custom_ship_days"      	smallint NOT NULL ,
	"custom_deposit_days"   	smallint NOT NULL ,
	"promo_ship_days"       	smallint NOT NULL ,
	"price_effective_date"  	date NOT NULL ,
	"business_day_end"      	time NOT NULL ,
	"cod_charge"    		numeric(5,2) NOT NULL ,
	"default_non_mf"        	integer NOT NULL ,
	"default_mf"    		integer NOT NULL ,
	"custom_solid_ship_days"        smallint NOT NULL ,
	"custom_solid_deposit_days"     smallint NOT NULL ,
	"cpu_tax_rate"  		numeric(5,3) NULL ,
	"bleep_production"      	char(1) NOT NULL ,
	"extra_drop_days"       	smallint NOT NULL ,
	"route_to_person"       	char(25) NOT NULL ,
	"Auto_CFA"      		char(1) NOT NULL ,
	"csrecipient"   		char(25) NOT NULL ,
	"liner_ship_days"       	smallint NOT NULL ,
	"liner_deposit_days"    	smallint NOT NULL ,
	"ship_hardware_weight_tolerance" double NOT NULL ,
	"discount_28_28"        	double NOT NULL ,
	"discount_28_20"        	double NOT NULL ,
	"spring_return" 		integer NOT NULL ,
	"alteration_upcharge"   	double NULL ,
	"free_freight"  		char(1) NOT NULL ,
	"ra_ship_days"  		smallint NOT NULL ,
	"ra_deposit_days"       	smallint NOT NULL ,
	"nc_ship_days"  		smallint NOT NULL ,
	"nc_deposit_days"       	smallint NOT NULL ,
	"alt_ship_days" 		smallint NOT NULL ,
	"alt_deposit_days"      	smallint NOT NULL ,
	"om_discount"   		char(25) NOT NULL ,
	"wt_ship_days"  		smallint NULL ,
	"wt_deposit_days"       	smallint NULL ,
	"discount_20_28"        	double NULL ,
	"comp_markdown" 		varchar(1) NULL ,
	"enclosure_ship_days"   	smallint NULL ,
	"enclosure_deposit_days"        smallint NULL ,
	"ln_ag_shipdays"        	integer NULL ,
	"discount_28_28_ag"     	double NULL ,
	"discount_20_28_ag"     	double NULL ,
	"discount_28_20_ag"     	double NULL ,
	"plates_ship"   		integer NULL ,
	"plates_drop"   		integer NULL ,
	"discount_30_30"        	double NULL ,
	"discount_30_30_ag"     	double NULL ,
	"custom_deposit_days_foreign"   integer NULL ,
	"custom_ship_days_foreign"      integer NULL ,
	"deposit_required_1"    	double NULL ,
	"deposit_required_2"    	double NULL ,
	"liner_extended_warranty_silver" double NULL ,
	"liner_extended_warranty_silver_min" double NULL ,
	"liner_extended_warranty_gold"  double NULL ,
	"liner_extended_warranty_gold_min" double NULL ,
	"liner_extended_warranty_commercial" double NULL , 
	 PRIMARY KEY ("syscon_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."syscon" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."syscon" TO "ralph" WITH GRANT OPTION
go
GRANT UPDATE("alt_deposit_days", "alt_ship_days", "alteration_upcharge", "Auto_CFA", "bleep_production", "business_day_end", "cod_charge", "comp_markdown", "cpu_tax_rate", "csrecipient", "custom_deposit_days", "custom_deposit_days_foreign", "custom_ship_days", "custom_ship_days_foreign", "custom_solid_deposit_days", "custom_solid_ship_days", "default_mf", "default_non_mf", "deposit_required_1", "deposit_required_2", "discount_20_28", "discount_20_28_ag", "discount_28_20", "discount_28_20_ag", "discount_28_28", "discount_28_28_ag", "discount_30_30", "discount_30_30_ag", "enclosure_deposit_days", "enclosure_ship_days", "extra_drop_days", "free_freight", "liner_deposit_days", "liner_ship_days", "ln_ag_shipdays", "nc_deposit_days", "nc_ship_days", "om_discount", "plates_drop", "plates_ship", "price_effective_date", "promo_ship_days", "ra_deposit_days", "ra_ship_days", "route_to_person", "ship_hardware_weight_tolerance", "spring_return", "stock_out_ship_days", "stock_ship_days", "syscon_id", "wt_deposit_days", "wt_ship_days") ON "DBA"."syscon" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."production_dates"
(
	"prep_type"     		char(2) NOT NULL ,
	"ship_date"     		date NULL ,
	"ship_days"     		integer NULL ,
	"deposit_date"  		date NULL ,
	"deposit_days"  		integer NULL , 
	 PRIMARY KEY ("prep_type"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."production_dates" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."production_dates" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."production_dates" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."production_dates" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."production_dates" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."tech_hardware"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		integer NOT NULL ,
	"create_date"   		timestamp NOT NULL ,
	"create_user"   		char(10) NOT NULL ,
	"hardware_code" 		char(10) NOT NULL ,
	"qty"   			smallint NOT NULL , 
	 PRIMARY KEY ("prep_id", "quote_no", "create_date", "hardware_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."tech_hardware" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."tech_hardware" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."tech_hardware" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."tech_hardware" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."tech_hardware" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."tech_treatment"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		integer NOT NULL ,
	"create_date"   		timestamp NOT NULL ,
	"create_user"   		char(10) NOT NULL ,
	"treatment_code"        	char(10) NOT NULL ,
	"qty"   			unsigned int NOT NULL , 
	 PRIMARY KEY ("prep_id", "quote_no", "create_date", "treatment_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."tech_treatment" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."tech_treatment" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."tech_treatment" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."tech_treatment" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."tech_treatment" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."tech_special_instructions"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		integer NOT NULL ,
	"create_date"   		timestamp NOT NULL ,
	"create_user"   		char(10) NOT NULL ,
	"code"  			char(10) NOT NULL , 
	 PRIMARY KEY ("prep_id", "quote_no", "create_date", "code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."tech_special_instructions" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."tech_special_instructions" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."tech_special_instructions" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."tech_special_instructions" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."tech_special_instructions" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."tech_manf"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		integer NOT NULL ,
	"create_date"   		timestamp NOT NULL ,
	"create_user"   		char(10) NOT NULL ,
	"grid_size"     		char(10) NOT NULL ,
	"qty"   			smallint NOT NULL ,
	"shape" 			char(10) NOT NULL ,
	"object_size"   		varchar(255) NOT NULL ,
	"manf_size"     		varchar(255) NOT NULL ,
	"averaged_flag" 		char(1) NOT NULL ,
	"safe_flag"     		char(1) NOT NULL ,
	"sqft"  			double NOT NULL ,
	"extensions"    		smallint NULL ,
	"c_end" 			char(1) NULL ,
	"rough_estimate"        	char(1) NULL ,
	"liner_overide" 		char(5) NULL , 
	 PRIMARY KEY ("prep_id", "quote_no", "create_date"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."tech_manf" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."tech_manf" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."tech_manf" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."tech_manf" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."tech_manf" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."prep_manf"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"product_id"    		integer NULL ,
	"product_group" 		char(1) NULL ,
	"grid_size"     		char(10) NULL ,
	"qty"   			smallint NULL ,
	"out_of_stock_flag"     	char(1) NULL ,
	"shape" 			varchar(50) NULL ,
	"object_size"   		varchar(255) NULL ,
	"manf_size"     		varchar(255) NULL ,
	"averaged_flag" 		char(1) NULL ,
	"safe_flag"     		char(1) NULL ,
	"price_table_flag"      	char(1) NULL ,
	"sqft"  			double NULL ,
	"base_cost"     		double NULL ,
	"cover_hardware_cost"   	double NULL ,
	"markdown"      		double NULL ,
	"shipping_cost" 		double NULL ,
	"sales_tax"     		double NULL ,
	"dealer_discount"       	varchar(50) NULL ,
	"ship_via_id"   		integer NULL ,
	"number_of_cartons"     	smallint NULL ,
	"weight_of_cartons"     	double NULL ,
	"create_date"   		date NULL ,
	"create_user"   		char(15) NULL ,
	"last_modified_date"    	date NULL ,
	"last_modified_user"    	char(15) NULL ,
	"extensions"    		integer NULL ,
	"hardware_discount"     	char(50) NULL ,
	"deposit_requested"     	double NULL ,
	"deposit_acceptable"    	double NULL ,
	"ship_date"     		date NULL ,
	"drop_date"     		date NULL ,
	"ups_zone"      		char(10) NULL ,
	"cover_net"     		double NULL ,
	"other_list"    		double NULL ,
	"other_net"     		double NULL ,
	"total" 			double NULL ,
	"waiting_for_price"     	char(1) NULL ,
	"stock_master_id"       	integer NULL ,
	"status"        		integer NULL ,
	"treatment_cost"        	double NULL ,
	"c_end" 			char(1) NULL ,
	"rough_estimate"        	char(1) NULL ,
	"carton_types"  		char(300) NULL ,
	"carton_weights"        	char(400) NULL ,
	"stock_serial_numbers"  	varchar(1000) NULL ,
	"cover_list"    		numeric(9,2) NULL ,
	"old_cover_list"        	numeric(9,2) NULL ,
	"cod_fee"       		double NULL ,
	"pool_shape"    		char(50) NULL ,
	"COD_Changes"   		double NULL ,
	"Liner_Wall_Thickness"  	integer NULL ,
	"Liner_Bottom_Thickness"        integer NULL ,
	"Liner_Overide" 		char(5) NULL ,
	"plate_no"      		varchar(10) NULL ,
	"ln_is_estimate"        	varchar(2) NULL ,
	"replace"       		varchar(2) NULL ,
	"paid_in_full"  		varchar(2) NULL DEFAULT 'N' ,
	"stock_master_id_ln_ag" 	integer NULL ,
	"freeze_shipdate"       	char(1) NULL ,
	"note_ship_text"        	char(2) NULL ,
	"markdown_wall" 		char(2) NULL DEFAULT 'N' ,
	"markdown_bottom"       	char(2) NULL DEFAULT 'N' , 
	 PRIMARY KEY ("prep_id", "quote_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_manf" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."prep_manf" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_manf" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_manf" TO "john2" WITH GRANT OPTION
go
GRANT SELECT ON "DBA"."prep_manf" TO "Action_ticket"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep_manf" TO "Bleep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_manf" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, REFERENCES ON "DBA"."prep_manf" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_manf" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_manf" TO "lizard"  FROM "DBA"
go
GRANT UPDATE("averaged_flag", "base_cost", "c_end", "carton_types", "carton_weights", "COD_Changes", "cod_fee", "cover_hardware_cost", "cover_list", "cover_net", "create_date", "create_user", "dealer_discount", "deposit_acceptable", "deposit_requested", "drop_date", "extensions", "grid_size", "hardware_discount", "last_modified_date", "last_modified_user", "Liner_Bottom_Thickness", "Liner_Overide", "Liner_Wall_Thickness", "ln_is_estimate", "manf_size", "markdown", "number_of_cartons", "object_size", "old_cover_list", "other_list", "other_net", "out_of_stock_flag", "paid_in_full", "plate_no", "pool_shape", "prep_id", "price_table_flag", "product_group", "product_id", "qty", "quote_no", "replace", "rough_estimate", "safe_flag", "sales_tax", "shape", "ship_date", "ship_via_id", "shipping_cost", "sqft", "status", "stock_master_id", "stock_master_id_ln_ag", "stock_serial_numbers", "total", "treatment_cost", "ups_zone", "waiting_for_price", "weight_of_cartons") ON "DBA"."prep_manf" TO "RCorona" FROM "DBA"
go
GRANT UPDATE("averaged_flag", "base_cost", "c_end", "carton_types", "carton_weights", "COD_Changes", "cod_fee", "cover_hardware_cost", "cover_list", "cover_net", "create_date", "create_user", "dealer_discount", "deposit_acceptable", "deposit_requested", "drop_date", "extensions", "freeze_shipdate", "grid_size", "hardware_discount", "last_modified_date", "last_modified_user", "Liner_Bottom_Thickness", "Liner_Overide", "Liner_Wall_Thickness", "ln_is_estimate", "manf_size", "markdown", "markdown_bottom", "markdown_wall", "note_ship_text", "number_of_cartons", "object_size", "old_cover_list", "other_list", "other_net", "out_of_stock_flag", "paid_in_full", "plate_no", "pool_shape", "prep_id", "price_table_flag", "product_group", "product_id", "qty", "quote_no", "replace", "rough_estimate", "safe_flag", "sales_tax", "shape", "ship_date", "ship_via_id", "shipping_cost", "sqft", "status", "stock_master_id", "stock_master_id_ln_ag", "stock_serial_numbers", "total", "treatment_cost", "ups_zone", "waiting_for_price", "weight_of_cartons") ON "DBA"."prep_manf" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."tech_treat"
(
	"cat"   			char(10) NOT NULL ,
	"p_code"        		char(10) NOT NULL ,
	"p_desc"        		varchar(150) NOT NULL ,
	"s_code"        		char(10) NOT NULL ,
	"s_desc"        		varchar(150) NOT NULL ,
	"txt_win"       		varchar(150) NOT NULL , 
	 PRIMARY KEY ("txt_win"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."tech_treat" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."tech_treat" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."tech_treat" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."tech_treat" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."tech_treat" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."prep"
(
	"prep_id"       		integer NOT NULL DEFAULT autoincrement ,
	"selected_quote_no"     	smallint NULL ,
	"dealer_code"   		char(6) NOT NULL ,
	"billto_dealer_code"    	char(6) NOT NULL ,
	"term_id"       		integer NOT NULL ,
	"prep_type"     		char(1) NOT NULL ,
	"type"  			char(2) NULL ,
	"entry_date"    		date NOT NULL ,
	"order_no"      		integer NULL ,
	"order_date"    		date NULL ,
	"po_no" 			char(25) NULL ,
	"jobname"       		char(50) NULL ,
	"shipto_code"   		char(6) NOT NULL ,
	"shipto_name"   		char(35) NULL ,
	"shipto_contact"        	char(35) NULL ,
	"shipto_addr1"  		char(35) NULL ,
	"shipto_addr2"  		char(35) NULL ,
	"shipto_city"   		char(20) NULL ,
	"shipto_state_code"     	char(3) NULL ,
	"shipto_zip"    		char(10) NULL ,
	"status"        		char(3) NULL ,
	"replacement"   		char(1) NULL ,
	"warranty"      		char(1) NULL ,
	"manufactured_by"       	varchar(35) NULL ,
	"original_order_no"     	char(15) NULL ,
	"return_no"     		char(10) NULL ,
	"old_cover_instructions"        varchar(255) NULL ,
	"credit_release_flag"   	char(1) NULL ,
	"shipping_release_flag" 	char(1) NULL ,
	"manf_location" 		char(10) NULL ,
	"deposit_amt_received"  	double NULL DEFAULT 0 ,
	"chafe_length"  		smallint NULL ,
	"create_date"   		date NULL ,
	"create_user"   		char(15) NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL ,
	"print_estimate"        	char(1) NULL ,
	"print_notify"  		char(1) NULL ,
	"print_ack"     		char(1) NULL ,
	"print_invoice" 		char(1) NULL ,
	"print_worksheet"       	char(1) NULL ,
	"display_cover" 		char(1) NULL ,
	"called_with_price"     	char(1) NULL ,
	"cover_in_building"     	char(1) NULL ,
	"quick_stock_order"     	double NULL ,
	"pricing_description"   	varchar(255) NULL ,
	"discount_type" 		char(1) NULL ,
	"dealer_discount"       	char(50) NULL ,
	"hardware_discount"     	char(50) NULL ,
	"tech_date"     		timestamp NULL ,
	"ab_plot_flag"  		char(1) NULL ,
	"shipout_batch_id"      	timestamp NULL ,
	"deposit_amt_enclosed"  	numeric(9,2) NULL ,
	"previous_jobname"      	char(25) NULL ,
	"route_to"      		char(10) NULL ,
	"manf_hold"     		char(1) NULL ,
	"checked_for_accuracy"  	char(1) NULL ,
	"billto_estm_doc"       	char(1) NULL ,
	"billto_notify_doc"     	char(1) NULL ,
	"billto_ack_doc"        	char(1) NULL ,
	"dealer_estm_doc"       	char(1) NULL ,
	"dealer_notify_doc"     	char(1) NULL ,
	"dealer_ack_doc"        	char(1) NULL ,
	"shipto_tax_code"       	char(10) NULL ,
	"number_original_springs"       smallint NULL ,
	"original_storage_bag"  	char(1) NULL ,
	"ups_track"     		char(25) NULL ,
	"from_web"      		char(1) NULL ,
	"from_plot_prg" 		char(1) NULL ,
	"dispose_date"  		date NULL ,
	"age_of_cover"  		integer NULL ,
	"original_spring_cover_qty"     integer NULL ,
	"damage_type"   		char(255) NULL ,
	"discard_cover" 		char(25) NULL ,
	"return_no_work"        	char(1) NULL ,
	"full_hardware" 		char(1) NULL ,
	"back_to_tech"  		char(1) NULL ,
	"altered"       		integer NULL ,
	"return_cover"  		char(25) NULL ,
	"ra_ordered_by" 		char(25) NULL ,
	"ra_approved_by"        	char(25) NULL ,
	"ra_inspected_by"       	char(25) NULL ,
	"will_not_repair"       	char(1) NULL ,
	"repaired_no_times"     	integer NULL ,
	"ra_inspection_date"    	date NULL ,
	"repair_comments"       	char(300) NULL ,
	"anchors_returned"      	integer NULL ,
	"warranty_reasons"      	char(255) NULL ,
	"buckles_returned"      	integer NULL ,
	"Alter_Job"     		char(1) NULL ,
	"Liner_reference"       	integer NULL ,
	"print_hardware"        	char(1) NULL ,
	"billto_form75_doc"     	char(1) NULL ,
	"dealer_form75_doc"     	char(1) NULL ,
	"Liner_Perimeter"       	integer NULL ,
	"Roll_Serial_No"        	integer NULL ,
	"liner_bottom"  		integer NULL ,
	"Liner_step"    		char(1) NULL ,
	"requote"       		char(1) NULL ,
	"third_dealer"  		char(6) NULL ,
	"billto_proforma_doc"   	char(1) NULL ,
	"photo" 			char(2) NULL ,
	"template"      		char(2) NULL ,
	"measure_by_sales"      	char(2) NULL ,
	"back_to_imageloc"      	char(2) NULL ,
	"country"       		char(3) NULL ,
	"cod_due"       		double NULL ,
	"dealer_verification"   	char(1) NULL ,
	"from_app"      		char(1) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."prep" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep" TO "john2" WITH GRANT OPTION
go
GRANT SELECT ON "DBA"."prep" TO "Action_ticket"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep" TO "Bleep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep" TO "ralph" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep" TO "lizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep" TO "Bleep1100"  FROM "DBA"
go
GRANT UPDATE("ab_plot_flag", "age_of_cover", "Alter_Job", "altered", "anchors_returned", "back_to_tech", "billto_ack_doc", "billto_dealer_code", "billto_estm_doc", "billto_form75_doc", "billto_notify_doc", "buckles_returned", "called_with_price", "chafe_length", "checked_for_accuracy", "cover_in_building", "create_date", "create_user", "credit_release_flag", "damage_type", "dealer_ack_doc", "dealer_code", "dealer_discount", "dealer_estm_doc", "dealer_form75_doc", "dealer_notify_doc", "deposit_amt_enclosed", "deposit_amt_received", "discard_cover", "discount_type", "display_cover", "dispose_date", "entry_date", "from_plot_prg", "from_web", "full_hardware", "hardware_discount", "jobname", "last_modified_date", "last_modified_user", "liner_bottom", "Liner_Perimeter", "Liner_reference", "manf_hold", "manf_location", "manufactured_by", "number_original_springs", "old_cover_instructions", "order_date", "order_no", "original_order_no", "original_spring_cover_qty", "original_storage_bag", "po_no", "prep_id", "prep_type", "previous_jobname", "pricing_description", "print_ack", "print_estimate", "print_hardware", "print_invoice", "print_notify", "print_worksheet", "quick_stock_order", "ra_approved_by", "ra_inspected_by", "ra_inspection_date", "ra_ordered_by", "repair_comments", "repaired_no_times", "replacement", "return_cover", "return_no", "return_no_work", "Roll_Serial_No", "route_to", "selected_quote_no", "shipout_batch_id", "shipping_release_flag", "shipto_addr1", "shipto_addr2", "shipto_city", "shipto_code", "shipto_contact", "shipto_name", "shipto_state_code", "shipto_tax_code", "shipto_zip", "status", "tech_date", "term_id", "type", "ups_track", "warranty", "warranty_reasons", "will_not_repair") ON "DBA"."prep" TO "barb" FROM "DBA"
go
CREATE TABLE "DBA"."artran"
(
	"type"  			char(1) NOT NULL ,
	"id"    			integer NOT NULL ,
	"dealer_code"   		char(6) NOT NULL ,
	"date"  			date NOT NULL ,
	"total_amount"  		numeric(9,2) NOT NULL ,
	"terms_id"      		integer NOT NULL ,
	"terms_dscnt_prcnt"     	smallint NULL ,
	"terms_dscnt_days"      	smallint NULL ,
	"terms_due_days"        	smallint NOT NULL ,
	"terms_dscnt_date"      	date NULL ,
	"terms_due_date"        	date NOT NULL ,
	"status"        		char(1) NULL ,
	"paid_amount"   		numeric(9,2) NULL ,
	"rcpt_in_progress"      	char(1) NULL ,
	"dscnt_todate"  		numeric(9,2) NULL ,
	"writeoff_todate"       	numeric(9,2) NULL ,
	"dscntable_amount"      	numeric(9,2) NULL ,
	"credit_type"   		char(2) NULL ,
	"debit_type"    		char(2) NULL ,
	"prep_id"       		integer NULL ,
	"shipout_batch_id"      	timestamp NULL ,
	"ref"   			char(50) NULL ,
	"text"  			char(1000) NULL ,
	"paid_date"     		date NULL ,
	"funds_hold"    		char(1) NULL ,
	"db_cr_inv_no"  		integer NULL ,
	"company"       		char(3) NULL , 
	 PRIMARY KEY ("type", "id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."artran" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."artran" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."artran" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."artran" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."artran" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."artran_apply"
(
	"type"  			char(1) NOT NULL ,
	"id"    			integer NOT NULL ,
	"line_id"       		integer NOT NULL ,
	"transaction"   		char(1) NOT NULL ,
	"deposit_id"    		integer NULL ,
	"receipt_id"    		integer NULL ,
	"amount"        		numeric(9,2) NOT NULL ,
	"date"  			date NOT NULL ,
	"keyoff_id"     		integer NULL , 
	 PRIMARY KEY ("line_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."artran_apply" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."artran_apply" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."artran_apply" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."artran_apply" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."artran_apply" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."artran_detail"
(
	"artran_type"   		char(1) NOT NULL ,
	"artran_id"     		integer NOT NULL ,
	"line_id"       		smallint NOT NULL ,
	"line_amount"   		numeric(8,2) NOT NULL ,
	"gl_dbcr"       		char(1) NOT NULL ,
	"reference"     		varchar(250) NULL ,
	"gl_account"    		char(10) NULL , 
	 PRIMARY KEY ("artran_type", "artran_id", "line_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."artran_detail" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."artran_detail" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."artran_detail" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."artran_detail" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."artran_detail" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."deposit"
(
	"deposit_id"    		integer NOT NULL DEFAULT autoincrement ,
	"date"  			date NOT NULL ,
	"cash_account"  		char(10) NOT NULL ,
	"status"        		char(10) NOT NULL ,
	"estimated_amount"      	numeric(9,2) NOT NULL ,
	"actual_amount" 		numeric(9,2) NOT NULL DEFAULT 0 ,
	"assigned_user" 		char(15) NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL ,
	"last_modified_date"    	date NOT NULL ,
	"bank_id"       		char(10) NOT NULL ,
	"depno" 			integer NULL ,
	"estimated_count"       	integer NULL ,
	"actual_count"  		integer NULL ,
	"company"       		char(3) NULL , 
	 PRIMARY KEY ("deposit_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."deposit" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."deposit" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."deposit" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."deposit" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."deposit" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."deposit_rcpt"
(
	"deposit_id"    		integer NOT NULL ,
	"receipt_id"    		integer NOT NULL ,
	"status"        		char(1) NULL ,
	"dealer_id"     		char(6) NOT NULL ,
	"amount"        		numeric(9,2) NOT NULL ,
	"pymt_type"     		char(15) NOT NULL ,
	"check_type"    		char(15) NULL ,
	"check_number"  		varchar(50) NULL ,
	"days_to_hold"  		integer NOT NULL ,
	"note"  			varchar(255) NULL ,
	"last_modified_user"    	char(15) NULL ,
	"last_modified_date"    	date NULL ,
	"create_user"   		char(15) NULL ,
	"create_date"   		date NULL , 
	 PRIMARY KEY ("deposit_id", "receipt_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."deposit_rcpt" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."deposit_rcpt" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."deposit_rcpt" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."deposit_rcpt" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."deposit_rcpt" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."deposit_rcpt_detail"
(
	"deposit_id"    		integer NOT NULL ,
	"receipt_id"    		integer NOT NULL ,
	"line_id"       		integer NOT NULL ,
	"group_code"    		char(5) NOT NULL ,
	"group_type"    		char(15) NOT NULL ,
	"group_id"      		integer NULL ,
	"apply_amount"  		numeric(9,2) NOT NULL ,
	"write_off_amount"      	numeric(9,2) NOT NULL ,
	"discount_amount"       	numeric(9,2) NOT NULL ,
	"gl_account"    		char(10) NOT NULL ,
	"gl_dbcr"       		char(1) NOT NULL ,
	"comment"       		varchar(200) NULL ,
	"balance_amount"        	numeric(9,2) NULL ,
	"total_amount"  		numeric(9,2) NULL ,
	"terms_dscnt_prcnt"     	smallint NULL ,
	"terms_dscnt_date"      	date NULL ,
	"eligible_dscnt_amount" 	numeric(9,2) NULL ,
	"order_no"      		integer NULL , 
	 PRIMARY KEY ("deposit_id", "receipt_id", "line_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."deposit_rcpt_detail" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."deposit_rcpt_detail" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."deposit_rcpt_detail" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."deposit_rcpt_detail" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."deposit_rcpt_detail" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."keyoff"
(
	"keyoff_id"     		integer NOT NULL ,
	"artran_type"   		char(1) NOT NULL ,
	"artran_id"     		integer NOT NULL ,
	"date"  			date NOT NULL ,
	"create_user"   		char(15) NULL ,
	"create_date"   		date NULL ,
	"last_modified_user"    	char(15) NULL ,
	"last_modified_date"    	date NULL ,
	"status"        		char(1) NULL ,
	"amount"        		numeric(9,2) NULL ,
	"note"  			varchar(255) NULL ,
	"company"       		char(3) NULL , 
	 PRIMARY KEY ("keyoff_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."keyoff" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."keyoff" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."keyoff" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."keyoff" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."keyoff" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."keyoff_detail"
(
	"keyoff_id"     		integer NOT NULL ,
	"line_id"       		integer NOT NULL ,
	"group_code"    		char(5) NOT NULL ,
	"group_type"    		char(15) NOT NULL ,
	"group_id"      		integer NULL ,
	"apply_amount"  		numeric(9,2) NOT NULL ,
	"write_off_amount"      	numeric(9,2) NOT NULL ,
	"discount_amount"       	numeric(9,2) NOT NULL ,
	"gl_account"    		char(10) NOT NULL ,
	"gl_dbcr"       		char(1) NOT NULL ,
	"comment"       		varchar(200) NULL ,
	"balance_amount"        	numeric(9,2) NULL ,
	"total_amount"  		numeric(9,2) NULL ,
	"terms_dscnt_prcnt"     	smallint NULL ,
	"eligible_dscnt_amount" 	numeric(9,2) NULL ,
	"terms_dscnt_date"      	date NULL , 
	 PRIMARY KEY ("keyoff_id", "line_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."keyoff_detail" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."keyoff_detail" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."keyoff_detail" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."keyoff_detail" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."keyoff_detail" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."promo"
(
	"promo_id"      		integer NOT NULL DEFAULT autoincrement ,
	"dealer_code"   		char(10) NOT NULL ,
	"shipto_code"   		char(10) NOT NULL ,
	"ship_via_id"   		integer NOT NULL ,
	"status"        		char(1) NULL ,
	"ship_date"     		date NULL ,
	"shipto_name"   		char(35) NULL ,
	"shipto_contact"        	char(100) NULL ,
	"shipto_addr1"  		char(35) NULL ,
	"shipto_addr2"  		char(35) NULL ,
	"shipto_city"   		char(20) NULL ,
	"shipto_state_code"     	char(3) NULL ,
	"shipto_zip"    		char(10) NULL ,
	"create_date"   		date NULL ,
	"create_user"   		char(15) NULL ,
	"approx_ship_date"      	date NULL ,
	"label_print_time"      	time NULL ,
	"last_modified_date"    	date NULL ,
	"last_modified_user"    	char(15) NULL ,
	"comments"      		char(255) NULL ,
	"tracking_number"       	varchar(20) NULL ,
	"tracking_number_mf"    	varchar(20) NULL , 
	 PRIMARY KEY ("promo_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."promo" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."promo" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."promo" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."promo" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."promo" TO "Bleep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE ON "DBA"."promo" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."promo" TO "MikeP"  FROM "DBA"
go
GRANT UPDATE("approx_ship_date", "comments", "create_date", "create_user", "dealer_code", "label_print_time", "last_modified_date", "last_modified_user", "promo_id", "ship_date", "ship_via_id", "shipto_addr1", "shipto_addr2", "shipto_city", "shipto_code", "shipto_contact", "shipto_name", "shipto_state_code", "shipto_zip", "status", "tracking_number", "tracking_number_mf") ON "DBA"."promo" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."promo_dtl"
(
	"promo_id"      		integer NOT NULL ,
	"dtl_no"        		smallint NOT NULL ,
	"promo_type_id" 		integer NOT NULL ,
	"qty"   			double NULL ,
	"create_date"   		date NULL DEFAULT current date ,
	"create_user"   		char(15) NULL DEFAULT current user ,
	"last_modified_date"    	date NULL DEFAULT current date ,
	"last_modified_user"    	char(15) NULL DEFAULT current user ,
	"too_much"      		char(1) NULL , 
	 PRIMARY KEY ("promo_id", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."promo_dtl" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."promo_dtl" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."promo_dtl" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."promo_dtl" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."promo_dtl" TO "Bleep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."promo_dtl" TO "MikeP"  FROM "DBA"
go
CREATE TABLE "DBA"."promo_type"
(
	"promo_type_id" 		integer NOT NULL DEFAULT autoincrement ,
	"promo_code"    		char(10) NOT NULL ,
	"promo_description"     	char(50) NOT NULL ,
	"level1_qty"    		integer NOT NULL ,
	"level2_qty"    		integer NOT NULL ,
	"level3_qty"    		integer NOT NULL ,
	"promo_group"   		char(2) NULL ,
	"active_flag"   		char(1) NULL ,
	"quantity_on_hand"      	integer NULL ,
	"inventory_id"  		integer NULL ,
	"amount_per_case"       	integer NULL ,
	"alert" 			integer NULL ,
	"promo_jobtype" 		char(20) NULL ,
	"promo_make_priority"   	char(20) NULL , 
	 PRIMARY KEY ("promo_type_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."promo_type" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."promo_type" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."promo_type" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."promo_type" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."promo_type" TO "Bleep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."promo_type" TO "MikeP"  FROM "DBA"
go
CREATE TABLE "DBA"."t_dealer"
(
	"dealer_id"     		char(6) NOT NULL ,
	"name"  			char(30) NOT NULL ,
	"addr1" 			char(30) NOT NULL ,
	"addr2" 			char(30) NOT NULL ,
	"city"  			char(30) NOT NULL ,
	"state" 			char(2) NOT NULL ,
	"zip"   			char(11) NOT NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."t_dealer" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."t_dealer" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."lll_users"
(
	"user_name"     		char(25) NOT NULL ,
	"security_level"        	integer NOT NULL ,
	"department"    		varchar(25) NOT NULL ,
	"password"      		varchar(25) NULL ,
	"department_level"      	smallint NULL ,
	"initials"      		char(3) NULL ,
	"sales_territory"       	char(2) NULL ,
	"full_name"     		char(50) NULL ,
	"Liner_Department"      	char(1) NULL ,
	"email_address" 		varchar(100) NULL ,
	"active"        		varchar(2) NULL ,
	"gmail_password"        	varchar(20) NULL ,
	"manager"       		varchar(2) NULL , 
	 PRIMARY KEY ("user_name"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."lll_users" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."lll_users" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."lll_users" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."lll_users" TO "john2" WITH GRANT OPTION
go
GRANT SELECT ON "DBA"."lll_users" TO "Action_ticket"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."lll_users" TO "Bleep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."lll_users" TO "Make_user"  FROM "DBA"
go
GRANT SELECT ON "DBA"."lll_users" TO "acad_user"  FROM "DBA"
go
CREATE TABLE "DBA"."gl_account"
(
	"account"       		char(10) NOT NULL ,
	"title" 			char(30) NOT NULL ,
	"type"  			char(10) NOT NULL ,
	"dbcr"  			char(10) NOT NULL ,
	"category"      		char(10) NOT NULL ,
	"company"       		char(3) NULL , 
	 PRIMARY KEY ("account"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."gl_account" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."gl_account" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."gl_account" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."gl_account" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."gl_account" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."log_status"
(
	"id"    			integer NOT NULL ,
	"task"  			char(50) NOT NULL ,
	"action"        		char(50) NOT NULL ,
	"active"        		char(1) NOT NULL DEFAULT 'Y' ,
	"web_location"  		char(50) NULL , 
	 PRIMARY KEY ("id", "task", "action"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."log_status" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."log_status" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."log_status" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."log_status" TO "john2" WITH GRANT OPTION
go
GRANT SELECT ON "DBA"."log_status" TO "Action_ticket"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."log_status" TO "Bleep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."log_status" TO "Bleep1100"  FROM "DBA"
go
GRANT UPDATE("action", "active", "id", "task", "web_location") ON "DBA"."log_status" TO "Bleep1100" FROM "DBA"
go
CREATE TABLE "DBA"."interest"
(
	"type"  			char(1) NOT NULL ,
	"id"    			integer NOT NULL ,
	"create_date"   		date NOT NULL ,
	"total_amount"  		numeric(8,2) NOT NULL ,
	"paid_amount"   		numeric(8,2) NOT NULL ,
	"rcpt_in_progress"      	char(1) NULL ,
	"writeoff_todate"       	numeric(9,2) NULL ,
	"status"        		char(1) NULL , 
	 PRIMARY KEY ("type", "id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."interest" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."interest" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."interest" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."interest" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."interest" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."interest_detail"
(
	"type"  			char(1) NOT NULL ,
	"id"    			integer NOT NULL ,
	"ar_period"     		date NOT NULL ,
	"amount"        		numeric(9,2) NOT NULL ,
	"create_date"   		date NOT NULL ,
	"create_user"   		char(20) NOT NULL , 
	 PRIMARY KEY ("type", "id", "ar_period"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."interest_detail" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."interest_detail" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."interest_detail" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."interest_detail" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."interest_detail" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."que"
(
	"que_id"        		integer NOT NULL DEFAULT autoincrement ,
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"date_in"       		date NOT NULL DEFAULT current date ,
	"time_in"       		time NOT NULL DEFAULT current time ,
	"document_code" 		char(20) NOT NULL ,
	"date_completed"        	date NULL ,
	"time_completed"        	time NULL ,
	"log"   			varchar(250) NULL ,
	"dealer_code"   		char(6) NULL ,
	"reprint_2nd"   		char(1) NULL , 
	 PRIMARY KEY ("que_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."que" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."que" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."que" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."que" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."que" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."que" TO "Bleep"  FROM "DBA"
go
GRANT UPDATE("date_completed", "date_in", "dealer_code", "document_code", "log", "prep_id", "que_id", "quote_no", "reprint_2nd", "time_completed", "time_in") ON "DBA"."que" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."ship_rates"
(
	"carrier_id"    		integer NOT NULL ,
	"zone"  			numeric(11,0) NOT NULL ,
	"weight"        		numeric(11,0) NOT NULL ,
	"amt"   			numeric(19,5) NULL , 
	 PRIMARY KEY ("carrier_id", "zone", "weight"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ship_rates" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."ship_rates" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."ship_rates" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ship_rates" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."ship_rates" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."ship_zone"
(
	"carrier_id"    		integer NOT NULL ,
	"zipn1" 			numeric(11,0) NOT NULL ,
	"zipn2" 			numeric(11,0) NOT NULL ,
	"ship_zone"     		numeric(11,0) NOT NULL , 
	 PRIMARY KEY ("carrier_id", "zipn1"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ship_zone" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."ship_zone" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."ship_zone" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ship_zone" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."ship_zone" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."carton_types"
(
	"carton_name"   		varchar(10) NOT NULL ,
	"length"        		integer NOT NULL ,
	"width" 			integer NOT NULL ,
	"height"        		integer NOT NULL ,
	"cubic_feet"    		numeric(5,2) NOT NULL ,
	"ups"   			char(1) NOT NULL ,
	"short_name"    		char(15) NULL ,
	"active"        		char(1) NULL ,
	"include_subwt" 		char(1) NULL ,
	"on_skid"       		char(1) NULL ,
	"weight"        		double NULL ,
	"dimensional_weight"    	double NULL , 
	 PRIMARY KEY ("carton_name"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."carton_types" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."carton_types" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."carton_types" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."carton_types" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."carton_types" TO "Bleep"  FROM "DBA"
go
GRANT UPDATE("active", "carton_name", "cubic_feet", "dimensional_weight", "height", "include_subwt", "length", "on_skid", "short_name", "ups", "weight", "width") ON "DBA"."carton_types" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."production_detail"
(
	"production_date"       	date NOT NULL ,
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"qty"   			smallint NULL , 
	 PRIMARY KEY ("production_date", "prep_id", "quote_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."production_detail" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."production_detail" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."production_detail" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."production_detail" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."production_detail" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."prep_manf_admin"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"admin_discount_type"   	char(1) NULL ,
	"admin_discount"        	char(20) NULL ,
	"admin_no_charge_net"   	char(1) NULL ,
	"admin_no_charge_freight"       char(1) NULL ,
	"admin_description"     	varchar(255) NULL ,
	"deposit_required"      	char(1) NULL ,
	"deposit_flat_amount"   	integer NULL ,
	"deposit_min_pct"       	integer NULL ,
	"deposit_source"        	char(1) NULL ,
	"deposit_max_pct"       	integer NULL ,
	"admin_description_dept"        varchar(255) NULL ,
	"admin_description_reason"      varchar(255) NULL ,
	"admin_description_as_per"      varchar(30) NULL ,
	"admin_description_date"        date NULL ,
	"admin_description_person"      varchar(30) NULL ,
	"deposit_override"      	char(1) NULL ,
	"dept_markdowns"        	varchar(255) NULL ,
	"giftcard"      		varchar(255) NULL ,
	"fixed_freight" 		double NULL ,
	"tobedetermined"        	varchar(2) NULL ,
	"deposit_override_2"    	char(1) NULL ,
	"admin_description_dept2"       varchar(255) NULL , 
	 PRIMARY KEY ("prep_id", "quote_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_manf_admin" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."prep_manf_admin" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep_manf_admin" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_manf_admin" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep_manf_admin" TO "Bleep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_manf_admin" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("admin_description", "admin_description_as_per", "admin_description_date", "admin_description_dept", "admin_description_dept2", "admin_description_person", "admin_description_reason", "admin_discount", "admin_discount_type", "admin_no_charge_freight", "admin_no_charge_net", "deposit_flat_amount", "deposit_max_pct", "deposit_min_pct", "deposit_override", "deposit_override_2", "deposit_required", "deposit_source", "dept_markdowns", "fixed_freight", "giftcard", "prep_id", "quote_no", "tobedetermined") ON "DBA"."prep_manf_admin" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."customer_service"
(
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"user"  			char(10) NOT NULL ,
	"cs_date"       		date NOT NULL ,
	"cs_time"       		time NOT NULL ,
	"dealer_code"   		char(6) NOT NULL ,
	"person"        		char(25) NULL ,
	"child_dealer_code"     	char(6) NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."customer_service" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."customer_service" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."customer_service" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."customer_service" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."customer_service" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."customer_service_detail"
(
	"id"    			integer NOT NULL ,
	"action"        		char(50) NOT NULL ,
	"cs_date"       		date NOT NULL ,
	"cs_time"       		time NOT NULL ,
	"prep_id"       		integer NULL ,
	"quote_no"      		smallint NULL ,
	"instructions"  		varchar(255) NULL ,
	"paper" 			char(1) NULL ,
	"order_no"      		integer NULL , 
	 PRIMARY KEY ("id", "cs_date", "cs_time"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."customer_service_detail" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT ON "DBA"."customer_service_detail" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."customer_service_detail" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."customer_service_detail" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."customer_service_detail" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."dealer_term_code"
(
	"DLRCD" 			char(10) NULL ,
	"COUNTER"       		numeric(11,0) NULL ,
	"TERMS" 			char(50) NULL ,
	"TERMPCT"       		numeric(11,0) NULL ,
	"DSCDAYS"       		numeric(11,0) NULL ,
	"SUPPRESS"      		char(10) NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_term_code" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, ALTER, REFERENCES ON "DBA"."dealer_term_code" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."dealer_term_code" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_term_code" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."dealer_term_code" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."dealer_credit_history"
(
	"dealer_code"   		char(6) NOT NULL ,
	"credit_date"   		date NOT NULL ,
	"credit_time"   		time NOT NULL ,
	"term_id"       		integer NOT NULL ,
	"deposit_required"      	char(1) NOT NULL ,
	"credit_limit"  		double NOT NULL ,
	"discount"      		char(25) NOT NULL , 
	 PRIMARY KEY ("dealer_code", "credit_date", "credit_time"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_credit_history" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."dealer_credit_history" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_credit_history" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."dealer_credit_history" TO "Bleep"  FROM "DBA"
go
GRANT ALTER, REFERENCES ON "DBA"."dealer_credit_history" TO "ralph"  FROM "DBA"
go
GRANT UPDATE("credit_date", "credit_limit", "credit_time", "dealer_code", "deposit_required", "discount", "term_id") ON "DBA"."dealer_credit_history" TO "ralph" FROM "DBA"
go
CREATE TABLE "DBA"."Ship_via_old"
(
	"NEW_NUMB"      		numeric(3,0) NOT NULL ,
	"Descrtiption"  		char(50) NOT NULL ,
	"FIELD3"        		char(6) NOT NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Ship_via_old" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Ship_via_old" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."Ship_via_prep_1"
(
	"Total_Preps"   		numeric(5,0) NOT NULL ,
	"Via_desc"      		char(60) NOT NULL ,
	"New_Code"      		numeric(3,0) NOT NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Ship_via_prep_1" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Ship_via_prep_1" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."Ship_via_prep_1" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."ena_detail"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"line_no"       		smallint NOT NULL ,
	"quantity"      		integer NULL ,
	"description"   		varchar(255) NULL ,
	"unit_price"    		double NULL ,
	"total" 			double NULL ,
	"short_desc"    		char(60) NULL , 
	 PRIMARY KEY ("prep_id", "quote_no", "line_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ena_detail" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ena_detail" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."ena_detail" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."stock_pick"
(
	"pick_id"       		integer NOT NULL DEFAULT autoincrement ,
	"pick_date"     		date NOT NULL DEFAULT current date ,
	"location_to"   		char(10) NOT NULL DEFAULT 'HPG' ,
	"status"        		char(1) NOT NULL , 
	 PRIMARY KEY ("pick_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_pick" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."stock_pick" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_pick" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."stock_pick" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."stock_pick_detail"
(
	"pick_id"       		integer NOT NULL ,
	"qty"   			integer NOT NULL ,
	"line_comment"  		char(50) NULL ,
	"starting_stock_id"     	integer NOT NULL ,
	"stock_id"      		integer NOT NULL , 
	 PRIMARY KEY ("pick_id", "stock_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_pick_detail" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."stock_pick_detail" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_pick_detail" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."stock_pick_detail" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."stock_move"
(
	"pick_id"       		integer NOT NULL ,
	"date_rcvd"     		date NOT NULL DEFAULT current date ,
	"location_checkin"      	char(10) NOT NULL ,
	"status"        		char(1) NOT NULL , 
	 PRIMARY KEY ("pick_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_move" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."stock_move" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_move" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."stock_move" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."stock_move_detail"
(
	"pick_id"       		integer NOT NULL ,
	"stock_id"      		integer NOT NULL , 
	 PRIMARY KEY ("pick_id", "stock_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_move_detail" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."stock_move_detail" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_move_detail" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."stock_move_detail" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."messages"
(
	"msgid" 			char(40) NOT NULL ,
	"msgtitle"      		char(255) NOT NULL ,
	"msgtext"       		char(255) NOT NULL ,
	"msgicon"       		char(12) NOT NULL ,
	"msgbutton"     		char(17) NOT NULL ,
	"msgdefaultbutton"      	integer NOT NULL ,
	"msgseverity"   		integer NOT NULL ,
	"msgprint"      		char(1) NOT NULL ,
	"msguserinput"  		char(1) NOT NULL , 
	 PRIMARY KEY ("msgid"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."messages" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."messages" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."messages" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."Dealer_M"
(
	"dealer_code"   		varchar(10) NOT NULL ,
	"prep_id"       		integer NOT NULL ,
	"credit_letter" 		timestamp NULL ,
	"thankyou_letter"       	timestamp NULL ,
	"invoice_date"  		timestamp NULL ,
	"date_entered"  		date NULL ,
	"first_user"    		varchar(20) NULL ,
	"credit_app_source"     	char(1) NULL , 
	 PRIMARY KEY ("dealer_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Dealer_M" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."Dealer_M" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Dealer_M" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."Dealer_M" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."action_ticket"
(
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"date"  			date NOT NULL ,
	"time"  			time NOT NULL ,
	"prep_id"       		integer NOT NULL ,
	"staff" 			char(15) NOT NULL ,
	"person_speaking_to"    	char(25) NOT NULL ,
	"paper" 			char(1) NULL check(paper in( 'Y','N') ),
	"action"        		char(50) NOT NULL ,
	"instruction"   		char(255) NOT NULL ,
	"deposit_id"    		integer NOT NULL ,
	"print_timestamp"       	timestamp NULL ,
	"answered_bd"   		varchar(30) NULL ,
	"cancel"        		varchar(2) NULL ,
	"reviewed_action_ticket"        varchar(2) NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."action_ticket" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, UPDATE ON "DBA"."action_ticket" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, UPDATE ON "DBA"."action_ticket" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."action_ticket" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, UPDATE ON "DBA"."action_ticket" TO "Action_ticket"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."action_ticket" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."dealer_rules_test"
(
	"dealer_code"   		char(6) NOT NULL ,
	"category"      		char(10) NOT NULL ,
	"type"  			char(10) NOT NULL ,
	"text"  			varchar(255) NULL ,
	"active"        		char(1) NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL ,
	"section"       		char(10) NULL ,
	"pool_type"     		char(2) NULL , 
	 PRIMARY KEY ("dealer_code", "category", "type"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_rules_test" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_rules_test" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."cst_errors"
(
	"counter"       		integer NOT NULL DEFAULT autoincrement ,
	"dealer_code"   		varchar(10) NOT NULL ,
	"error_text"    		varchar(254) NULL ,
	"error_date"    		date NULL DEFAULT current date ,
	"error_time"    		time NULL DEFAULT current time , 
	 PRIMARY KEY ("counter"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."cst_errors" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."cst_errors" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."cst_errors" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."dealer_bal_detail"
(
	"dealer_code"   		char(6) NOT NULL ,
	"period_end"    		date NOT NULL ,
	"product_id"    		integer NOT NULL ,
	"product_group" 		char(2) NULL ,
	"safe"  			char(2) NULL ,
	"replacement"   		char(2) NULL ,
	"qty"   			smallint NULL ,
	"net_amount"    		numeric(9,2) NULL ,
	"total_amount"  		numeric(9,2) NULL ,
	"baby_feet"     		integer NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_bal_detail" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."dealer_bal_detail" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_bal_detail" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."dealer_bal_detail" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."ship_via_prep_2"
(
	"total_preps"   		numeric(5,0) NOT NULL ,
	"via_desc"      		char(60) NOT NULL ,
	"new_code"      		numeric(3,0) NOT NULL , 
	 PRIMARY KEY ("via_desc"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ship_via_prep_2" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ship_via_prep_2" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."ship_via_prep_2" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."stock_copy"
(
	"serial_no"     		integer NOT NULL ,
	"stock_id"      		integer NULL ,
	"status"        		char(1) NULL ,
	"location"      		char(5) NULL ,
	"pick_id"       		integer NULL ,
	"bleep_status"  		integer NULL ,
	"cutting_tag_print"     	char(1) NULL ,
	"manf_date"     		date NULL , 
	 PRIMARY KEY ("serial_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_copy" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_copy" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."stock_copy" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."hardware_h"
(
	"hardware_code" 		char(10) NOT NULL ,
	"description"   		char(50) NOT NULL ,
	"discontinued_date"     	date NULL ,
	"unit"  			char(10) NOT NULL ,
	"weight_per_unit"       	double NOT NULL ,
	"message"       		varchar(255) NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL ,
	"type_flag"     		char(1) NULL ,
	"allowance_amount"      	double NULL ,
	"up_charge_flag"        	char(1) NULL ,
	"active"        		char(1) NOT NULL ,
	"on_ground"     		char(1) NULL ,
	"in_ground"     		char(1) NULL ,
	"bold_flag"     		smallint NULL ,
	"up_charge_type"        	char(1) NULL ,
	"baby_loc"      		char(1) NULL ,
	"baby_loc_length"       	smallint NULL ,
	"baby_loc_logo" 		smallint NULL ,
	"bl_material"   		char(3) NULL ,
	"shipping_weight"       	double NULL ,
	"Baby_Loc_Deluxe"       	char(2) NULL ,
	"baby_loc_caps" 		integer NULL ,
	"jobtype_cv"    		char(1) NULL ,
	"jobtype_bl"    		char(1) NULL ,
	"jobtype_wt"    		char(1) NULL ,
	"jobtype_sc"    		char(1) NULL ,
	"jobtype_all"   		char(1) NULL ,
	"web_id"        		integer NULL DEFAULT autoincrement ,
	"max_public_quantity"   	integer NULL ,
	"web_description"       	char(255) NULL ,
	"web_title"     		char(63) NULL ,
	"web_sale"      		char(1) NULL ,
	"cover_hardware_blue_dot"       char(2) NULL ,
	"bl_height"     		smallint NULL ,
	"bl_web_sale"   		char(1) NULL DEFAULT 'N' ,
	"ignore_discount"       	char(1) NULL ,
	"jobtype_ln"    		char(1) NULL ,
	"special_discount"      	varchar(10) NULL ,
	"buying_limit"  		integer NULL ,
	"description_spanish"   	char(200) NULL ,
	"description_french"    	char(200) NULL ,
	"description_italian"   	char(200) NULL ,
	"description_russian"   	char(200) NULL ,
	"description_metric"    	char(200) NULL ,
	"is_cablekit"   		char(2) NULL ,
	"is_returnable" 		char(2) NULL ,
	"is_inBox"      		varchar(1) NULL DEFAULT 'N' ,
	"is_babyloc_gate"       	char(2) NULL ,
	"backyard_accents"      	char(1) NULL DEFAULT 'N' ,
	"backyard_accents_type" 	integer NULL ,
	"uses_hexk"     		char(2) NULL ,
	"bl_deck_sleeve"        	integer NULL , 
	 PRIMARY KEY ("hardware_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."hardware_h" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."hardware_h" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."hardware_h" TO "john2" WITH GRANT OPTION
go
GRANT SELECT ON "DBA"."hardware_h" TO "Bleep60"  FROM "DBA"
go
GRANT SELECT, UPDATE ON "DBA"."hardware_h" TO "Bleep40"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."hardware_h" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."hardware_h" TO "ralph" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."hardware_h" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."hardware_h" TO "lizard"  FROM "DBA"
go
GRANT SELECT, INSERT, UPDATE ON "DBA"."hardware_h" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."hardware_price"
(
	"hardware_code" 		char(10) NOT NULL ,
	"effective_date"        	date NOT NULL ,
	"unit_price"    		numeric(7,2) NOT NULL ,
	"up_charge_flag"        	char(1) NOT NULL ,
	"last_modified_date"    	date NULL ,
	"last_modified_user"    	char(15) NULL ,
	"retail_price"  		numeric(7,2) NULL , 
	 PRIMARY KEY ("hardware_code", "effective_date"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."hardware_price" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."hardware_price" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."hardware_price" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."hardware_price" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."hardware_price" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."hardware_price" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."hardware_upcharge"
(
	"hardware_code" 		char(10) NOT NULL ,
	"effective_date"        	date NOT NULL ,
	"grid_size"     		char(10) NOT NULL ,
	"up_charge"     		numeric(5,2) NOT NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL ,
	"sqft_or_each"  		char(1) NULL ,
	"web_id"        		integer NULL DEFAULT autoincrement , 
	 PRIMARY KEY ("hardware_code", "effective_date", "grid_size"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."hardware_upcharge" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."hardware_upcharge" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."hardware_upcharge" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."treatment_h"
(
	"treatment_code"        	char(10) NOT NULL ,
	"description"   		char(50) NOT NULL ,
	"discontinued_date"     	date NULL ,
	"unit"  			char(10) NOT NULL ,
	"weight_per_unit"       	double NOT NULL ,
	"message"       		varchar(255) NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL ,
	"shape_flag"    		char(1) NULL ,
	"active"        		char(1) NULL ,
	"prep_type_list"        	char(10) NULL ,
	"display_repair"        	char(1) NULL ,
	"grid_flag"     		char(1) NOT NULL ,
	"patch_panel"   		char(5) NOT NULL ,
	"material_type_flag"    	char(1) NULL ,
	"link"  			varchar(10) NULL ,
	"visible"       		char(1) NULL ,
	"alteration_upcharge"   	char(1) NULL ,
	"inspection"    		char(1) NULL ,
	"liner_stair_treatment" 	char(1) NULL ,
	"quick_calc"    		char(1) NULL ,
	"online_calculator"     	varchar(1) NULL DEFAULT 'N' ,
	"discount_overide"      	char(25) NULL ,
	"display_on_cs_prep"    	char(1) NULL ,
	"description_spanish"   	char(150) NULL ,
	"description_french"    	char(150) NULL ,
	"description_italian"   	char(150) NULL ,
	"description_russian"   	char(150) NULL ,
	"description_metric"    	char(150) NULL ,
	"measure_type"  		char(2) NULL ,
	"is_raised_wall"        	char(2) NULL ,
	"treatment_unavailable" 	char(2) NULL , 
	 PRIMARY KEY ("treatment_code"),
	
)
go
COMMENT ON COLUMN "DBA"."treatment_h"."grid_flag" IS
	'Flag for filtering in RA application.  Can be 2, 3, 4, 5, or A (for any)'
go
COMMENT ON COLUMN "DBA"."treatment_h"."patch_panel" IS
	'Column filtering RA application.  Values: Patch, Panel, Any, None'
go
COMMENT ON COLUMN "DBA"."treatment_h"."material_type_flag" IS
	'Flag for filtering in RA application.  Values: M(esh), S(olid), U(ltra-Loc), A(ny)'
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."treatment_h" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."treatment_h" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."treatment_h" TO "john2" WITH GRANT OPTION
go
GRANT ALTER ON "DBA"."treatment_h" TO "ralph"  FROM "DBA"
go
CREATE TABLE "DBA"."treatment_price"
(
	"treatment_code"        	char(10) NOT NULL ,
	"effective_date"        	date NOT NULL ,
	"unit_price"    		numeric(7,2) NOT NULL ,
	"last_modified_date"    	date NULL ,
	"last_modified_user"    	char(15) NULL , 
	 PRIMARY KEY ("treatment_code", "effective_date"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."treatment_price" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."treatment_price" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."treatment_price" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."price"
(
	"product_id"    		integer NOT NULL ,
	"grid_size"     		char(10) NOT NULL ,
	"effective_date"        	date NOT NULL ,
	"type"  			char(1) NOT NULL ,
	"square_footage"        	double NOT NULL ,
	"price" 			double NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL ,
	"active"        		char(1) NULL , 
	 PRIMARY KEY ("product_id", "grid_size", "effective_date", "type", "square_footage"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."price" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."price" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."price" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."special_instructions"
(
	"code"  			char(10) NOT NULL ,
	"short_description"     	char(100) NOT NULL ,
	"long_description"      	char(305) NOT NULL ,
	"active"        		char(1) NOT NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(50) NOT NULL ,
	"tech_flag"     		char(1) NULL ,
	"safety_flag"   		char(1) NULL ,
	"warranty_flag" 		char(1) NULL ,
	"charge_for_material"   	numeric(7,2) NULL ,
	"time_for_repair"       	integer NULL ,
	"liner" 			char(1) NULL ,
	"short_description_spanish"     varchar(150) NULL ,
	"long_description_spanish"      varchar(450) NULL ,
	"short_description_french"      varchar(150) NULL ,
	"long_description_french"       varchar(450) NULL ,
	"short_description_italian"     varchar(150) NULL ,
	"long_description_italian"      varchar(450) NULL ,
	"short_description_russian"     varchar(150) NULL ,
	"long_description_russian"      varchar(450) NULL , 
	 PRIMARY KEY ("code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."special_instructions" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."special_instructions" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."special_instructions" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."stock"
(
	"serial_no"     		integer NOT NULL ,
	"stock_id"      		integer NULL ,
	"status"        		char(1) NULL ,
	"location"      		char(5) NULL ,
	"pick_id"       		integer NULL ,
	"bleep_status"  		integer NULL ,
	"cutting_tag_print"     	char(1) NULL ,
	"manf_date"     		"datetime" NULL ,
	"prep_id"       		integer NULL ,
	"old_stock"     		char(1) NULL , 
	 PRIMARY KEY ("serial_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."stock" TO "Bleep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock" TO "Bleep70"  FROM "DBA"
go
CREATE TABLE "DBA"."stock_hardware"
(
	"stock_id"      		integer NOT NULL ,
	"hardware_code" 		char(10) NOT NULL ,
	"chargeable"    		char(1) NOT NULL ,
	"per_anchor"    		char(1) NOT NULL ,
	"fixed_amount"  		integer NOT NULL , 
	 PRIMARY KEY ("stock_id", "hardware_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_hardware" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."stock_hardware" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_hardware" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."stock_hardware" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."stock_hardware_option"
(
	"stock_id"      		integer NOT NULL ,
	"stock_option"  		smallint NOT NULL ,
	"hardware_code" 		char(10) NOT NULL ,
	"chargeable"    		char(1) NOT NULL ,
	"per_anchor"    		char(1) NOT NULL ,
	"fixed_amount"  		integer NOT NULL ,
	"option_text"   		char(50) NOT NULL , 
	 PRIMARY KEY ("stock_id", "stock_option", "hardware_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_hardware_option" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."stock_hardware_option" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_hardware_option" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."stock_hardware_option" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."stock_history"
(
	"serial_no"     		integer NOT NULL ,
	"date_time"     		timestamp NOT NULL ,
	"user"  			varchar(15) NOT NULL ,
	"action"        		varchar(100) NOT NULL ,
	"action_no"     		smallint NOT NULL ,
	"prep_id"       		integer NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_history" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."stock_history" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_history" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."stock_history" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."stock_master"
(
	"stock_id"      		integer NOT NULL ,
	"product_id"    		integer NOT NULL ,
	"manf_size"     		varchar(255) NOT NULL ,
	"object_size"   		varchar(255) NOT NULL ,
	"shape" 			varchar(50) NOT NULL ,
	"sqft"  			double NOT NULL ,
	"base_cost"     		double NOT NULL ,
	"advertised"    		char(1) NOT NULL ,
	"weight"        		double NOT NULL ,
	"anchor_points" 		smallint NOT NULL ,
	"extensions"    		smallint NULL ,
	"active"        		char(1) NULL ,
	"grid_size"     		char(10) NULL ,
	"cartons"       		integer NULL ,
	"no_bows"       		integer NULL ,
	"bl"    			numeric(7,2) NULL ,
	"cw"    			numeric(7,2) NULL ,
	"cl"    			numeric(7,2) NULL ,
	"s_cw"  			numeric(7,2) NULL ,
	"s_cl"  			numeric(7,2) NULL ,
	"s_off" 			numeric(7,2) NULL ,
	"max_cw"        		numeric(7,2) NULL ,
	"max_cl"        		numeric(7,2) NULL ,
	"min_cw"        		numeric(7,2) NULL ,
	"min_cl"        		numeric(7,2) NULL ,
	"max_sw"        		numeric(7,2) NULL ,
	"max_sl"        		numeric(7,2) NULL ,
	"min_sw"        		numeric(7,2) NULL ,
	"min_sl"        		numeric(7,2) NULL ,
	"max_ol_out"    		numeric(7,2) NULL ,
	"max_ol_in"     		numeric(7,2) NULL ,
	"l_or_r"        		char(2) NULL ,
	"wall_a"        		numeric(7,2) NULL ,
	"wall_c"        		numeric(7,2) NULL ,
	"min_bow"       		numeric(7,2) NULL ,
	"max_bow"       		numeric(7,2) NULL ,
	"tag"   			char(50) NULL ,
	"std_ol"        		numeric(5,2) NULL ,
	"picture"       		char(20) NULL ,
	"qty_on_hand"   		integer NULL ,
	"qty_on_order"  		integer NULL ,
	"poolsize"      		char(255) NULL ,
	"coversize"     		char(255) NULL ,
	"old_shape"     		char(50) NULL ,
	"chafe_length"  		integer NULL ,
	"carton_type"   		char(10) NULL ,
	"base_cost_new" 		numeric(7,2) NULL ,
	"short_springs" 		smallint NULL ,
	"web_category"  		char(10) NULL ,
	"fence_skew_no" 		integer NULL ,
	"pool_wall_a"   		numeric(7,2) NULL ,
	"pool_wall_b"   		numeric(7,2) NULL ,
	"pool_wall_c"   		numeric(7,2) NULL ,
	"web_text"      		char(100) NULL ,
	"create_date"   		date NULL ,
	"web_title"     		char(100) NULL ,
	"charge_freight"        	smallint NULL DEFAULT -1 ,
	"undr_cvr_pad"  		integer NULL ,
	"perimeter"     		integer NULL ,
	"link_to_green" 		integer NULL ,
	"label_image"   		varchar(25) NULL ,
	"custom_pricing"        	varchar(2) NULL ,
	"administrator_note"    	varchar(200) NULL , 
	 PRIMARY KEY ("stock_id"),
	
)
go
COMMENT ON COLUMN "DBA"."stock_master"."charge_freight" IS
	'Flag to mark whether or not to charge freight for shipping the cover.(0 free freight, -1 regular charges)'
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_master" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."stock_master" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_master" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."stock_master" TO "Bleep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_master" TO "Bleep70"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE ON "DBA"."stock_master" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "administrator_note", "advertised", "anchor_points", "base_cost", "base_cost_new", "bl", "carton_type", "cartons", "chafe_length", "charge_freight", "cl", "coversize", "create_date", "custom_pricing", "cw", "extensions", "fence_skew_no", "grid_size", "l_or_r", "label_image", "link_to_green", "manf_size", "max_bow", "max_cl", "max_cw", "max_ol_in", "max_ol_out", "max_sl", "max_sw", "min_bow", "min_cl", "min_cw", "min_sl", "min_sw", "no_bows", "object_size", "old_shape", "perimeter", "picture", "pool_wall_a", "pool_wall_b", "pool_wall_c", "poolsize", "product_id", "qty_on_hand", "qty_on_order", "s_cl", "s_cw", "s_off", "shape", "short_springs", "sqft", "std_ol", "stock_id", "tag", "undr_cvr_pad", "wall_a", "wall_c", "web_category", "web_text", "web_title", "weight") ON "DBA"."stock_master" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."state"
(
	"state_code"    		char(3) NOT NULL ,
	"country"       		char(3) NOT NULL ,
	"name"  			char(35) NULL ,
	"phone_format"  		char(10) NULL ,
	"zipcode_format"        	char(10) NULL ,
	"ptfe_thread"   		char(1) NULL DEFAULT 'N' ,
	"code_phone"    		char(3) NULL ,
	"active"        		char(1) NULL DEFAULT 'Y' ,
	"country_name"  		char(35) NULL ,
	"use_metric"    		char(2) NULL , 
	 PRIMARY KEY ("state_code", "country"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."state" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."state" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."state" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."state" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."state" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."state_tax"
(
	"state_code"    		char(3) NOT NULL ,
	"taxcd" 			char(10) NOT NULL ,
	"desc"  			char(50) NULL ,
	"pct"   			numeric(4,3) NULL ,
	"active"        		char(1) NOT NULL , 
	 PRIMARY KEY ("state_code", "taxcd"),
	
)
go
GRANT SELECT ON "DBA"."state_tax" TO "Bleep30"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."state_tax" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."state_tax" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."state_tax" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."blue_dot_questions"
(
	"blue_dot_id"   		integer NOT NULL DEFAULT autoincrement ,
	"category"      		char(50) NOT NULL ,
	"question"      		char(500) NOT NULL ,
	"last_modified_user"    	char(50) NULL DEFAULT current user ,
	"last_modified_date"    	timestamp NULL DEFAULT current timestamp ,
	"spanish_questions"     	char(500) NULL ,
	"active"        		char(1) NULL ,
	"bd_type"       		char(50) NULL ,
	"french_questions"      	char(500) NULL ,
	"italian_questions"     	char(500) NULL ,
	"russian_questions"     	char(500) NULL ,
	"markable"      		char(5) NULL , 
	 PRIMARY KEY ("blue_dot_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."blue_dot_questions" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."blue_dot_questions" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."blue_dot_questions" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."blue_dot_questions" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."user_productivity"
(
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"user_name"     		char(25) NOT NULL ,
	"job"   			integer NOT NULL ,
	"start_time"    		timestamp NOT NULL ,
	"end_time"      		timestamp NULL ,
	"bleep_status"  		smallint NOT NULL ,
	"job_difficulty"        	numeric(4,2) NULL DEFAULT 1.0 , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."user_productivity" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."user_productivity" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."user_productivity" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, REFERENCES ON "DBA"."user_productivity" TO "Bleep"  FROM "DBA"
go
CREATE TABLE "DBA"."rtn"
(
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"date_received" 		date NOT NULL ,
	"rtn"   			char(10) NULL ,
	"dealer_code"   		char(6) NOT NULL ,
	"rtn_type"      		char(2) NOT NULL ,
	"fabric_id"     		integer NOT NULL ,
	"storage_bag_returned"  	integer NOT NULL ,
	"number_of_springs"     	integer NOT NULL ,
	"note"  			varchar(1000) NULL ,
	"status"        		char(1) NOT NULL ,
	"jobname"       		char(50) NULL ,
	"staff" 			char(10) NULL ,
	"ll_cover"      		char(2) NULL ,
	"ll_coments"    		varchar(255) NULL ,
	"manufacture_year"      	integer NULL ,
	"location"      		integer NULL DEFAULT 17 ,
	"call_tag"      		varchar(20) NULL ,
	"sent_via"      		integer NULL ,
	"quotes_wanted" 		char(10) NULL ,
	"original_order_number" 	varchar(100) NULL ,
	"cpu_flag"      		varchar(10) NULL ,
	"rtn_prep"      		integer NULL ,
	"prepped"       		char(2) NULL ,
	"dropped_off_by"        	varchar(20) NULL ,
	"paperwork_included"    	char(2) NULL ,
	"stock_id"      		integer NULL ,
	"serial_no"     		integer NULL ,
	"scanned_tracking_number"       varchar(30) NULL ,
	"spring_return_type"    	char(5) NULL ,
	"potential_blue"        	varchar(50) NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."rtn" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."rtn" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."rtn" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."rtn" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE ON "DBA"."rtn" TO "Bleep"  FROM "DBA"
go
GRANT UPDATE("call_tag", "cpu_flag", "date_received", "dealer_code", "dropped_off_by", "fabric_id", "id", "jobname", "ll_coments", "ll_cover", "location", "manufacture_year", "note", "number_of_springs", "original_order_number", "paperwork_included", "potential_blue", "prepped", "quotes_wanted", "rtn", "rtn_prep", "rtn_type", "scanned_tracking_number", "sent_via", "serial_no", "spring_return_type", "staff", "status", "stock_id", "storage_bag_returned") ON "DBA"."rtn" TO "PUBLIC" FROM "DBA"
go
GRANT UPDATE("date_received", "dealer_code", "fabric_id", "id", "jobname", "ll_coments", "ll_cover", "location", "manufacture_year", "note", "number_of_springs", "rtn", "rtn_type", "staff", "status", "storage_bag_returned") ON "DBA"."rtn" TO "Bleep" FROM "DBA"
go
CREATE TABLE "DBA"."prep_return"
(
	"line_id"       		integer NOT NULL DEFAULT autoincrement ,
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"qty"   			smallint NOT NULL ,
	"item_code"     		char(2) NOT NULL ,
	"item_desc"     		char(50) NULL ,
	"net_return"    		numeric(8,2) NOT NULL ,
	"total_return"  		numeric(8,2) NOT NULL ,
	"date_return"   		date NOT NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	varchar(20) NOT NULL ,
	"qty_bl_a"      		integer NULL ,
	"qty_bl_f"      		integer NULL ,
	"bl_deluxe"     		char(1) NULL ,
	"liner_return_text"     	varchar(100) NULL , 
	 PRIMARY KEY ("line_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_return" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep_return" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_return" TO "john2" WITH GRANT OPTION
go
GRANT ALTER, REFERENCES ON "DBA"."prep_return" TO "ralph"  FROM "DBA"
go
CREATE TABLE "DBA"."dbcr_master"
(
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"dbcr_type"     		char(1) NOT NULL ,
	"description"   		char(50) NOT NULL ,
	"gl_account"    		char(10) NOT NULL ,
	"company"       		char(3) NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dbcr_master" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."dbcr_master" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dbcr_master" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."fax_que"
(
	"loop_fax_id"   		integer NOT NULL DEFAULT autoincrement ,
	"fax_man_id"    		integer NULL ,
	"document_name" 		char(2500) NOT NULL ,
	"phone_no"      		char(50) NOT NULL ,
	"status"        		char(10) NULL ,
	"loc_code"      		char(5) NULL ,
	"loc_key"       		char(1000) NULL ,
	"document_desc" 		char(400) NULL ,
	"modified_time" 		time NULL ,
	"modified_date" 		date NULL ,
	"dealer_code"   		char(10) NULL ,
	"datawindow"    		char(50) NULL ,
	"inserted_location"     	integer NULL , 
	 PRIMARY KEY ("loop_fax_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."fax_que" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."fax_que" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."fax_que" TO "john2" WITH GRANT OPTION
go
CREATE GLOBAL TEMPORARY TABLE "DBA"."tmp_route_text"
(
	"route_text"    		char(100) NULL ,
	"id"    			integer NULL ,
	
) ON COMMIT DELETE ROWS
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."tmp_route_text" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."dbhc"
(
	"dealer_code"   		char(6) NOT NULL ,
	"period_end"    		date NOT NULL ,
	"bal_year"      		smallint NULL ,
	"gross_sales"   		double NULL ,
	"net_sales"     		double NULL ,
	"high_credit"   		double NULL ,
	"average_days"  		integer NULL ,
	"covers"        		integer NULL , 
	 PRIMARY KEY ("dealer_code", "period_end"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dbhc" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dbhc" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."discount"
(
	"id"    			smallint NOT NULL DEFAULT autoincrement ,
	"discount"      		char(25) NOT NULL ,
	"min_orders"    		integer NOT NULL ,
	"square_feet"   		integer NOT NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."discount" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."discount" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."discount" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."rebate"
(
	"rebate_year"   		date NOT NULL ,
	"dealer_code"   		char(10) NOT NULL ,
	"cover_net"     		numeric(10,2) NOT NULL ,
	"rebate_net"    		numeric(10,2) NOT NULL ,
	"qty"   			smallint NOT NULL , 
	 PRIMARY KEY ("rebate_year", "dealer_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."rebate" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."rebate" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."rebate" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."ab_base"
(
	"prep_id"       		integer NOT NULL ,
	"base_line"     		double NOT NULL ,
	"plot_in_rev"   		integer NULL ,
	"plot_id"       		integer NOT NULL ,
	"Last_modified_user"    	char(25) NULL ,
	"last_modified_date"    	date NULL ,
	"create_date"   		date NULL ,
	"verify_plot"   		char(1) NULL DEFAULT 'N' ,
	"check_orientation"     	char(1) NULL DEFAULT 'N' ,
	"verify_plot_user"      	varchar(20) NULL ,
	"comment_user"  		varchar(200) NULL , 
	 PRIMARY KEY ("prep_id", "plot_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_base" TO "john" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."ab_base" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_base" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE ON "DBA"."ab_base" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_base" TO "LoopLizard"  FROM "DBA"
go
GRANT UPDATE("base_line", "check_orientation", "comment_user", "create_date", "last_modified_date", "Last_modified_user", "plot_id", "plot_in_rev", "prep_id", "verify_plot", "verify_plot_user") ON "DBA"."ab_base" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."ab_cross"
(
	"prep_id"       		integer NOT NULL ,
	"cross_no"      		integer NOT NULL ,
	"pt_start"      		integer NOT NULL ,
	"pt_end"        		integer NOT NULL ,
	"given_dist"    		numeric(30,6) NOT NULL ,
	"plot_id"       		integer NOT NULL , 
	 PRIMARY KEY ("prep_id", "cross_no", "plot_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_cross" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."ab_cross" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_cross" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_cross" TO "LoopLizard"  FROM "DBA"
go
CREATE TABLE "DBA"."ab_points"
(
	"prep_id"       		integer NOT NULL ,
	"pt_no" 			integer NOT NULL ,
	"a_dim" 			double NOT NULL ,
	"b_dim" 			double NOT NULL ,
	"plot_id"       		integer NOT NULL ,
	"rw"    			char(1) NULL ,
	"ob"    			char(1) NULL ,
	"skip_point"    		char(1) NULL , 
	 PRIMARY KEY ("prep_id", "pt_no", "plot_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_points" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."ab_points" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_points" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_points" TO "LoopLizard"  FROM "DBA"
go
CREATE TABLE "DBA"."standards"
(
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"company"       		char(50) NOT NULL ,
	"shape" 			char(25) NOT NULL ,
	"length"        		integer NOT NULL ,
	"width" 			integer NOT NULL ,
	"plate_no"      		varchar(25) NOT NULL ,
	"picture"       		varchar(50) NULL ,
	"network_path"  		varchar(100) NULL ,
	"company_size"  		char(100) NOT NULL ,
	"description"   		char(50) NOT NULL ,
	"ll_description"        	char(50) NULL ,
	"overlap"       		integer NOT NULL ,
	"a"     			integer NOT NULL ,
	"b"     			integer NOT NULL ,
	"c"     			integer NOT NULL ,
	"radius"        		integer NOT NULL ,
	"material_type" 		char(1) NULL ,
	"object_size"   		varchar(255) NULL ,
	"manf_size"     		varchar(255) NULL ,
	"sq_ft" 			double NULL ,
	"anch_spring"   		integer NULL ,
	"grid_type"     		char(10) NULL ,
	"is_mesh"       		char(2) NULL ,
	"is_ul" 			char(2) NULL ,
	"is_ul_no_drains"       	char(2) NULL ,
	"anch_spring_solid"     	integer NULL ,
	"average_size"  		char(2) NULL ,
	"extensions"    		integer NULL ,
	"shape_type"    		varchar(50) NULL ,
	"manf_pool_size"        	varchar(255) NULL ,
	"perimeter"     		integer NULL ,
	"manf_shape"    		varchar(50) NULL ,
	"is_og_mesh"    		char(2) NULL ,
	"is_og_ul"      		char(2) NULL ,
	"is_og_ul_no_drains"    	char(2) NULL ,
	"is_short_spring_solid" 	integer NULL ,
	"is_short_spring"       	integer NULL ,
	"stock_id"      		integer NULL ,
	"standards_shape_id_no" 	integer NULL ,
	"pool_step_size_shape"  	varchar(50) NULL ,
	"anch_spring_plus_minus"        varchar(5) NULL ,
	"comments"      		varchar(50) NULL ,
	"stock_id_mesh" 		integer NULL ,
	"stock_id_ul_no_drains" 	integer NULL ,
	"stock_id_ul_drains"    	integer NULL ,
	"number_pumps"  		integer NULL ,
	"special_rectangle"     	char(1) NULL ,
	"active"        		char(1) NULL ,
	"is_mesh_color" 		char(2) NULL ,
	"is_ul_color"   		char(2) NULL ,
	"is_ul_no_drains_color" 	char(2) NULL ,
	"is_aqua_green" 		char(2) NULL ,
	"is_aqua_color" 		char(2) NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."standards" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."standards" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."standards" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."standards" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."draft_productivity"
(
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"user_name"     		char(25) NOT NULL ,
	"job_number"    		integer NOT NULL ,
	"start_time"    		timestamp NULL ,
	"elapsed_time"  		numeric(20,3) NULL ,
	"last_update_time"      	timestamp NOT NULL ,
	"last_update_user"      	char(25) NOT NULL ,
	"bleep_time"    		timestamp NULL ,
	"checker"       		char(1) NULL ,
	"display"       		char(1) NULL ,
	"prep_id"       		integer NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."draft_productivity" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."draft_productivity" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."draft_productivity" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."menu_user"
(
	"user_name"     		char(40) NOT NULL ,
	"menu_id"       		integer NOT NULL ,
	"security_mode" 		char(10) NULL , 
	 PRIMARY KEY ("user_name", "menu_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."menu_user" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."menu_user" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."menu_user" TO "john2" WITH GRANT OPTION
go
GRANT SELECT ON "DBA"."menu_user" TO "acad_user"  FROM "DBA"
go
CREATE TABLE "DBA"."menu_data"
(
	"menu_id"       		integer NOT NULL DEFAULT autoincrement ,
	"menu_label"    		char(50) NOT NULL ,
	"menu_description"      	char(100) NOT NULL ,
	"department"    		char(15) NOT NULL ,
	"menu_level"    		integer NOT NULL ,
	"click_counter" 		integer NULL , 
	 PRIMARY KEY ("menu_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."menu_data" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."menu_data" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."menu_data" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE ON "DBA"."menu_data" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("click_counter", "department", "menu_description", "menu_id", "menu_label", "menu_level") ON "DBA"."menu_data" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."error_master"
(
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"type"  			char(35) NOT NULL ,
	"error" 			char(75) NOT NULL ,
	"active"        		char(1) NOT NULL ,
	"department"    		char(3) NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."error_master" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."error_master" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."error_master" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."tech_bleep"
(
	"prep_id"       		integer NOT NULL ,
	"drafter"       		char(25) NOT NULL ,
	"bleep_time"    		timestamp NOT NULL , 
	 PRIMARY KEY ("prep_id", "drafter", "bleep_time"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."tech_bleep" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."tech_bleep" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."tech_bleep" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."tech_error"
(
	"prep_id"       		integer NOT NULL ,
	"error_id"      		integer NOT NULL ,
	"checker"       		char(25) NOT NULL ,
	"drafter"       		char(25) NOT NULL ,
	"error_date"    		date NOT NULL ,
	"department"    		char(1) NULL ,
	"error_count"   		integer NULL , 
	 PRIMARY KEY ("prep_id", "error_id", "drafter"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."tech_error" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."tech_error" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."tech_error" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE ON "DBA"."tech_error" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("checker", "department", "drafter", "error_count", "error_date", "error_id", "prep_id") ON "DBA"."tech_error" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."repeat_jobs"
(
	"id"    			integer NOT NULL ,
	"parameter"     		char(25) NOT NULL ,
	"number_data"   		integer NULL ,
	"string_data"   		char(100) NULL , 
	 PRIMARY KEY ("id", "parameter"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."repeat_jobs" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."repeat_jobs" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."repeat_jobs" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."deposit_description"
(
	"drop_type"     		char(20) NOT NULL ,
	"description"   		char(20) NOT NULL , 
	 PRIMARY KEY ("drop_type", "description"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."deposit_description" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, UPDATE ON "DBA"."deposit_description" TO "tech"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."deposit_description" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."deposit_description" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."de_productivity"
(
	"prep_id"       		integer NOT NULL ,
	"plot_id"       		integer NOT NULL ,
	"user_name"     		char(25) NOT NULL ,
	"insert_date"   		date NOT NULL ,
	"action"        		char(30) NOT NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."de_productivity" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."de_productivity" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."de_productivity" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."warranty_header"
(
	"warranty_id"   		integer NOT NULL DEFAULT autoincrement ,
	"order_no"      		integer NOT NULL ,
	"ho_last_name"  		char(50) NULL ,
	"ho_middle_int" 		char(50) NULL ,
	"ho_first_name" 		char(50) NULL ,
	"ho_title"      		char(10) NULL ,
	"ho_address"    		char(60) NULL ,
	"ho_city"       		char(50) NULL ,
	"ho_state"      		char(30) NULL ,
	"ho_zip"        		char(30) NULL ,
	"installed_by"  		char(50) NULL ,
	"installed_date"        	date NULL ,
	"comments"      		char(250) NULL ,
	"active"        		char(1) NULL ,
	"type"  			char(1) NULL DEFAULT 'L' ,
	"response_date" 		date NULL ,
	"online"        		char(1) NULL ,
	"email" 			varchar(50) NULL ,
	"liner_extended_warranty"       varchar(2) NULL ,
	"prep_id"       		integer NULL ,
	"liner_extended_warranty_type"  varchar(10) NULL ,
	"cancel_warranty"       	varchar(1) NULL ,
	"created_by"    		varchar(25) NULL ,
	"modified_by"   		varchar(25) NULL ,
	"date_created"  		date NULL ,
	"date_modified" 		date NULL ,
	"lew_amount"    		double NULL ,
	"sent_consumer_letter"  	char(2) NULL , 
	 PRIMARY KEY ("warranty_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_header" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_header" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_header" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_header" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_header" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_header" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_header" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."co_op_usage"
(
	"co_op_id"      		integer NOT NULL DEFAULT autoincrement ,
	"dealer_code"   		char(6) NOT NULL ,
	"date_used"     		date NOT NULL ,
	"amount"        		numeric(8,2) NOT NULL ,
	"check_number"  		integer NULL ,
	"reason"        		char(150) NOT NULL ,
	"check_date"    		date NULL , 
	 PRIMARY KEY ("co_op_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."co_op_usage" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."co_op_usage" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."co_op_usage" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."call_log_header"
(
	"item_no"       		integer NOT NULL DEFAULT autoincrement ,
	"dealer_code"   		char(10) NOT NULL ,
	"expected_payment_date" 	date NULL ,
	"notes" 			varchar(3500) NULL ,
	"next_call_date"        	date NULL ,
	"open"  			char(2) NOT NULL ,
	"close_date"    		date NULL ,
	"create_user"   		char(20) NOT NULL ,
	"create_date"   		date NULL , 
	 PRIMARY KEY ("item_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."call_log_header" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."call_log_header" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."call_log_header" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."call_log_calls"
(
	"item_no"       		integer NOT NULL ,
	"called_date"   		timestamp NOT NULL ,
	"message"       		char(500) NULL ,
	"person_called" 		char(20) NULL ,
	"ll_user"       		char(20) NULL , 
	 PRIMARY KEY ("item_no", "called_date"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."call_log_calls" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."call_log_calls" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."call_log_calls" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."call_log_invoices"
(
	"item_no"       		integer NOT NULL ,
	"invoice_id"    		integer NOT NULL , 
	 PRIMARY KEY ("item_no", "invoice_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."call_log_invoices" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."call_log_invoices" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."call_log_invoices" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."bill_of_lading_detail"
(
	"ll_bill_no"    		integer NOT NULL ,
	"prep_id"       		integer NOT NULL , 
	 PRIMARY KEY ("ll_bill_no", "prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."bill_of_lading_detail" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."bill_of_lading_detail" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."bill_of_lading_detail" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."bill_of_lading_header"
(
	"ll_bill_no"    		integer NOT NULL DEFAULT autoincrement ,
	"bill_no"       		integer NULL ,
	"shipto_code"   		char(10) NOT NULL ,
	"bl_name"       		char(35) NOT NULL ,
	"bl_addr1"      		char(35) NULL ,
	"bl_addr2"      		char(35) NULL ,
	"dealer_code"   		char(6) NOT NULL ,
	"city"  			char(35) NOT NULL ,
	"state_code"    		char(3) NOT NULL ,
	"zip"   			char(10) NOT NULL ,
	"phone" 			char(20) NOT NULL ,
	"hours" 			char(35) NOT NULL ,
	"date"  			date NOT NULL ,
	"freight"       		char(2) NOT NULL ,
	"printed_flag"  		char(1) NOT NULL ,
	"ship_via_id"   		integer NOT NULL ,
	"time_printed"  		timestamp NULL ,
	"notes" 			char(300) NULL ,
	"cod"   			char(2) NULL ,
	"term_id"       		integer NOT NULL ,
	"bill_back_freight"     	char(1) NULL ,
	"account_credit"        	char(1) NULL ,
	"loop_loc_error"        	char(1) NULL ,
	"bbf_notes"     		char(20) NULL ,
	"acr_notes"     		char(20) NULL ,
	"Hold_Bill"     		char(1) NOT NULL , 
	 PRIMARY KEY ("ll_bill_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."bill_of_lading_header" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."bill_of_lading_header" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."bill_of_lading_header" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."sub"
(
	"subdivisions"  		integer NOT NULL ,
	"weight_less_than"      	integer NOT NULL ,
	"weight_greater_than"   	integer NOT NULL ,
	"ltl_rate"      		numeric(5,2) NOT NULL ,
	"tl_rate"       		integer NOT NULL ,
	"mw_rate"       		varchar(10) NOT NULL , 
	 PRIMARY KEY ("subdivisions", "ltl_rate"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."sub" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."sub" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."sub" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."leads_consumers"
(
	"consumer_no"   		integer NOT NULL DEFAULT autoincrement ,
	"last_name"     		char(30) NOT NULL ,
	"first_name"    		char(15) NULL ,
	"sir_name"      		char(10) NULL ,
	"address1"      		char(50) NULL ,
	"address2"      		char(50) NULL ,
	"city"  			char(25) NOT NULL ,
	"state" 			char(3) NULL ,
	"zip"   			char(10) NOT NULL ,
	"country"       		char(3) NOT NULL ,
	"phone" 			char(25) NULL ,
	"source_code"   		char(15) NOT NULL ,
	"create_user"   		char(15) NULL ,
	"create_date"   		timestamp NULL ,
	"last_user"     		char(15) NULL ,
	"last_date"     		timestamp NULL ,
	"above_ground"  		char(2) NULL ,
	"babby_loc"     		char(2) NULL ,
	"in_ground"     		char(2) NULL ,
	"current_dealer"        	char(10) NULL ,
	"sales_dealer"  		char(10) NULL ,
	"letter_notes"  		char(100) NULL ,
	"active"        		smallint NULL ,
	"liner" 			char(2) NULL ,
	"email_homeowner"       	char(1) NULL ,
	"email" 			varchar(50) NULL ,
	"ll_notes"      		varchar(100) NULL ,
	"province"      		varchar(50) NULL , 
	 PRIMARY KEY ("consumer_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_consumers" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."leads_consumers" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_consumers" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."leads_dealer_leads"
(
	"consumer_no"   		integer NOT NULL ,
	"dealer_code"   		char(10) NOT NULL ,
	"leads_order"   		smallint NOT NULL ,
	"lead_date"     		date NOT NULL , 
	 PRIMARY KEY ("consumer_no", "dealer_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_dealer_leads" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."leads_dealer_leads" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_dealer_leads" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."leads_dealer_zips"
(
	"dealer_code"   		char(10) NOT NULL ,
	"leads_zip"     		char(11) NOT NULL , 
	 PRIMARY KEY ("dealer_code", "leads_zip"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_dealer_zips" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."leads_dealer_zips" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_dealer_zips" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."leads_letter_master"
(
	"new_id"        		char(7) NOT NULL ,
	"old_id"        		char(10) NOT NULL ,
	"letter_title"  		char(80) NOT NULL ,
	"active"        		char(1) NULL ,
	"display_order" 		smallint NULL ,
	"datawindow_name"       	char(30) NULL ,
	"letter_type"   		char(1) NULL ,
	"dealer_loc"    		char(1) NULL , 
	 PRIMARY KEY ("new_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_letter_master" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."leads_letter_master" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_letter_master" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."leads_print"
(
	"consumer_no"   		integer NOT NULL ,
	"letter_id"     		char(7) NOT NULL ,
	"dateprinted"   		timestamp NOT NULL ,
	"person_printed"        	varchar(15) NOT NULL , 
	 PRIMARY KEY ("consumer_no", "letter_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_print" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."leads_print" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_print" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."leads_questions_master"
(
	"question_id"   		char(10) NOT NULL ,
	"q_desciption"  		char(50) NOT NULL ,
	"old_question_id"       	char(50) NULL , 
	 PRIMARY KEY ("question_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_questions_master" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."leads_questions_master" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_questions_master" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."leads_source"
(
	"source_code"   		varchar(15) NOT NULL ,
	"source_description"    	varchar(50) NOT NULL ,
	"source_year"   		integer NOT NULL ,
	"active"        		char(1) NOT NULL , 
	 PRIMARY KEY ("source_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_source" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."leads_source" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_source" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."leads_survey"
(
	"consumer_no"   		integer NOT NULL ,
	"question_id"   		char(10) NOT NULL ,
	"answer"        		char(30) NOT NULL ,
	"date_answered" 		date NOT NULL ,
	"survey_user"   		char(20) NOT NULL , 
	 PRIMARY KEY ("consumer_no", "question_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_survey" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."leads_survey" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_survey" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."leads_swaf"
(
	"consumer_no"   		integer NOT NULL ,
	"swaf_first_name"       	char(30) NULL ,
	"swaf_last_name"        	char(30) NULL ,
	"swaf_sir_name" 		char(10) NULL ,
	"swaf_addr1"    		char(30) NULL ,
	"swaf_addr2"    		char(30) NULL ,
	"swaf_city"     		char(15) NULL ,
	"swaf_state"    		char(2) NULL ,
	"swaf_zip"      		char(10) NULL ,
	"swaf_phone"    		char(10) NULL , 
	 PRIMARY KEY ("consumer_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_swaf" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."leads_swaf" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_swaf" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."leads_countries"
(
	"country_code"  		char(10) NOT NULL ,
	"country_name"  		char(30) NOT NULL , 
	 PRIMARY KEY ("country_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_countries" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."leads_countries" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_countries" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."leads_print_que"
(
	"que_id"        		integer NOT NULL DEFAULT autoincrement ,
	"consumer_no"   		integer NOT NULL ,
	"letter_id"     		char(10) NOT NULL ,
	"date_in_que"   		date NOT NULL ,
	"date_time_printed"     	timestamp NULL ,
	"batch_id"      		integer NULL ,
	"que_type"      		char(1) NULL , 
	 PRIMARY KEY ("que_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_print_que" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."leads_print_que" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."leads_print_que" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."fax_docs"
(
	"document_id"   		integer NOT NULL DEFAULT autoincrement ,
	"name"  			char(50) NOT NULL ,
	"file"  			char(70) NULL ,
	"abbreviation"  		char(10) NULL ,
	"active"        		smallint NOT NULL ,
	"file_pdf"      		char(70) NULL ,
	"fax_type"      		char(2) NULL , 
	 PRIMARY KEY ("document_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."fax_docs" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."fax_docs" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."fax_docs" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."plot_serial"
(
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"year"  			integer NOT NULL ,
	"serial_no"     		varchar(14) NOT NULL ,
	"dealer_code"   		char(10) NULL ,
	"create_date"   		date NULL ,
	"version"       		char(10) NULL ,
	"sent_date"     		date NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."plot_serial" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."plot_serial" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."plot_serial" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."cv_production_date_history"
(
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"original_date" 		date NOT NULL ,
	"new_date"      		date NOT NULL ,
	"production_date"       	date NOT NULL ,
	"cover_type"    		char(1) NOT NULL ,
	"user_modified" 		char(25) NOT NULL ,
	"date_changed"  		date NOT NULL ,
	"time_changed"  		time NOT NULL ,
	"material_id"   		integer NOT NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."cv_production_date_history" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."cv_production_date_history" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."cv_production_date_history" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."material_code"
(
	"ll_id" 			smallint NOT NULL ,
	"width" 			integer NOT NULL ,
	"style" 			char(50) NOT NULL ,
	"style_id"      		char(50) NOT NULL ,
	"centerline"    		smallint NOT NULL ,
	"weight"        		numeric(9,5) NULL ,
	"unit"  			char(10) NULL ,
	"value" 			numeric(9,5) NULL ,
	"po_req"        		char(1) NULL ,
	"current_inv"   		integer NULL ,
	"trackable"     		char(1) NULL ,
	"sub_component" 		char(1) NULL ,
	"looploc_code"  		char(15) NULL ,
	"finished_good" 		char(1) NULL ,
	"stock_no_track"        	char(1) NULL ,
	"company"       		char(3) NULL ,
	"alert" 			integer NULL ,
	"active"        		char(1) NULL ,
	"location"      		varchar(100) NULL ,
	"description"   		varchar(100) NULL ,
	"fabric_type"   		varchar(20) NULL ,
	"thickness"     		integer NULL ,
	"while_supplies_last"   	varchar(2) NULL DEFAULT 'N' ,
	"custom_material"       	varchar(2) NULL ,
	"vendor"        		varchar(50) NULL , 
	 PRIMARY KEY ("ll_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."material_code" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."material_code" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."material_code" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."material_code" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "alert", "centerline", "company", "current_inv", "description", "fabric_type", "finished_good", "ll_id", "location", "looploc_code", "po_req", "stock_no_track", "style", "style_id", "sub_component", "trackable", "unit", "value", "weight", "width") ON "DBA"."material_code" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."fabric_inventory"
(
	"roll_id"       		integer NOT NULL ,
	"ll_id" 			smallint NOT NULL ,
	"usable_yards"  		integer NOT NULL ,
	"gross_yards"   		integer NULL ,
	"date_in"       		date NOT NULL ,
	"date_out"      		date NULL ,
	"user_in"       		char(25) NOT NULL ,
	"user_out"      		char(25) NULL ,
	"po_no" 			char(10) NOT NULL ,
	"skid"  			integer NOT NULL ,
	"active"        		char(1) NULL DEFAULT 'Y' , 
	 PRIMARY KEY ("roll_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."fabric_inventory" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."fabric_inventory" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."fabric_inventory" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."Purchase_Order"
(
	"po_number"     		char(10) NOT NULL ,
	"quantity"      		integer NOT NULL ,
	"item_id"       		integer NOT NULL ,
	"date_cut"      		date NOT NULL ,
	"open"  			char(1) NOT NULL ,
	"vendor_po_number"      	integer NULL ,
	"dtl_no"        		integer NULL , 
	 PRIMARY KEY ("po_number", "item_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Purchase_Order" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Purchase_Order" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Purchase_Order" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."newcard"
(
	"id"    			integer NOT NULL ,
	"mrmrs" 			varchar(50) NULL ,
	"firstname"     		varchar(50) NULL ,
	"middle"        		varchar(50) NULL ,
	"lastname"      		varchar(50) NULL ,
	"order" 			varchar(6) NULL ,
	"address"       		varchar(50) NULL ,
	"city"  			varchar(50) NULL ,
	"state" 			varchar(2) NULL ,
	"zip"   			varchar(5) NULL ,
	"installed"     		varchar(50) NULL ,
	"date"  			timestamp NULL ,
	"commenta"      		varchar(50) NULL ,
	"comment_b"     		varchar(50) NULL ,
	"one"   			varchar(1) NULL ,
	"two"   			varchar(1) NULL ,
	"twob"  			varchar(50) NULL ,
	"twod"  			varchar(50) NULL ,
	"threea"        		varchar(1) NULL ,
	"threeb"        		varchar(1) NULL ,
	"threec"        		varchar(1) NULL ,
	"four"  			varchar(50) NULL ,
	"five"  			varchar(1) NULL ,
	"six"   			varchar(1) NULL ,
	"sixa"  			double NULL ,
	"sixb"  			double NULL ,
	"sixc"  			double NULL ,
	"sixd"  			double NULL ,
	"seven" 			varchar(1) NULL ,
	"sevenb"        		varchar(50) NULL ,
	"eight" 			varchar(1) NULL ,
	"nine"  			varchar(1) NULL ,
	"nineb" 			varchar(50) NULL ,
	"ten"   			varchar(2) NULL ,
	"eleven"        		varchar(2) NULL ,
	"twelve"        		varchar(1) NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."newcard" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."newcard" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."warr1"
(
	"namea" 			varchar(4) NULL ,
	"first" 			varchar(10) NULL ,
	"last"  			varchar(15) NULL ,
	"orderno"       		double NULL ,
	"address"       		varchar(25) NULL ,
	"city"  			varchar(15) NULL ,
	"state" 			varchar(6) NULL ,
	"zip"   			varchar(10) NULL ,
	"installed"     		varchar(30) NULL ,
	"date"  			timestamp NULL ,
	"comments"      		varchar(50) NULL ,
	"comments2"     		varchar(50) NULL ,
	"onea"  			varchar(1) NULL ,
	"oneae" 			varchar(10) NULL ,
	"oneb"  			varchar(1) NULL ,
	"onebl" 			varchar(10) NULL ,
	"twoa"  			varchar(1) NULL ,
	"twob"  			varchar(1) NULL ,
	"twoc"  			varchar(1) NULL ,
	"twod"  			varchar(1) NULL ,
	"twoe"  			varchar(1) NULL ,
	"three" 			varchar(1) NULL ,
	"threeb"        		varchar(1) NULL ,
	"threec"        		varchar(1) NULL ,
	"foura" 			varchar(1) NULL ,
	"fourb" 			varchar(1) NULL ,
	"fourb1"        		varchar(10) NULL ,
	"fourc" 			varchar(1) NULL ,
	"fourc1"        		varchar(10) NULL ,
	"five"  			varchar(40) NULL ,
	"six"   			varchar(1) NULL ,
	"seven" 			varchar(1) NULL ,
	"seveny1"       		varchar(2) NULL ,
	"seveny2"       		varchar(2) NULL ,
	"seveny3"       		varchar(2) NULL ,
	"seveny4"       		varchar(2) NULL ,
	"sevena"        		varchar(1) NULL ,
	"sevenay"       		varchar(15) NULL ,
	"eight" 			varchar(1) NULL ,
	"eighte"        		varchar(15) NULL ,
	"nine"  			varchar(1) NULL ,
	"ten"   			varchar(1) NULL ,
	"eleven"        		varchar(1) NULL ,
	"twelve"        		varchar(1) NULL ,
	"twelven"       		varchar(35) NULL ,
	"thirteen"      		varchar(1) NULL ,
	"label" 			double NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warr1" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warr1" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warr1" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."warranty_question_master"
(
	"question_id"   		char(10) NOT NULL ,
	"question_text" 		char(255) NOT NULL ,
	"active_year"   		integer NOT NULL , 
	 PRIMARY KEY ("question_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_question_master" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_question_master" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_question_master" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_question_master" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_question_master" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."warranty_detail"
(
	"warranty_id"   		integer NOT NULL ,
	"question_id"   		char(10) NOT NULL ,
	"answer"        		char(255) NOT NULL ,
	"modified_user" 		char(255) NOT NULL ,
	"modified_date" 		date NOT NULL , 
	 PRIMARY KEY ("warranty_id", "question_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_detail" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_detail" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_detail" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_detail" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_detail" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_detail" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."warranty_answer_master"
(
	"question_id"   		char(10) NOT NULL ,
	"answer"        		char(255) NOT NULL ,
	"active_year"   		integer NOT NULL , 
	 PRIMARY KEY ("question_id", "answer"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_answer_master" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_answer_master" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_answer_master" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_answer_master" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_answer_master" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."pfc_history"
(
	"collection_id" 		integer NOT NULL DEFAULT autoincrement ,
	"dealer_code"   		char(6) NOT NULL ,
	"date_opened"   		date NOT NULL ,
	"date_closed"   		date NULL ,
	"amount_owed"   		numeric(8,2) NULL ,
	"amount_payed"  		numeric(8,2) NULL ,
	"litigation_fee"        	numeric(7,2) NULL ,
	"collect_agency"        	char(20) NULL ,
	"comments"      		char(255) NULL , 
	 PRIMARY KEY ("collection_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pfc_history" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."pfc_history" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."pfc_history" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."inventory_history"
(
	"inv_id"        		integer NOT NULL DEFAULT autoincrement ,
	"inv_date"      		date NOT NULL ,
	"product_id"    		char(20) NOT NULL ,
	"item_id"       		char(30) NULL ,
	"qty"   			integer NULL , 
	 PRIMARY KEY ("inv_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."inventory_history" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."inventory_history" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."inventory_history" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."inventory_hardware"
(
	"inv_id"        		integer NOT NULL DEFAULT autoincrement ,
	"material_id"   		integer NOT NULL ,
	"qty"   			integer NOT NULL ,
	"date_in"       		date NOT NULL ,
	"user_in"       		char(25) NOT NULL ,
	"date_out"      		date NULL ,
	"user_out"      		char(25) NULL ,
	"po_no" 			char(10) NULL ,
	"lot_no"        		char(25) NULL ,
	"location"      		varchar(100) NULL , 
	 PRIMARY KEY ("inv_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."inventory_hardware" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."inventory_hardware" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."inventory_hardware" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."material_components"
(
	"line_id"       		integer NOT NULL DEFAULT autoincrement ,
	"ll_id" 			smallint NOT NULL ,
	"component_id"  		smallint NOT NULL ,
	"qty"   			numeric(9,5) NOT NULL , 
	 PRIMARY KEY ("line_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."material_components" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."material_components" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."material_components" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."inventory_child_codes"
(
	"material_parent_code"  	integer NOT NULL ,
	"material_child_code"   	integer NOT NULL ,
	"qty"   			smallint NULL , 
	 PRIMARY KEY ("material_parent_code", "material_child_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."inventory_child_codes" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."inventory_child_codes" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."inventory_child_codes" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."inventory_out_history"
(
	"line_id"       		integer NOT NULL DEFAULT autoincrement ,
	"material_id"   		smallint NOT NULL ,
	"qty"   			integer NOT NULL ,
	"date_used"     		date NOT NULL ,
	"user"  			char(20) NOT NULL ,
	"inv_id"        		integer NULL ,
	"comments"      		char(150) NULL ,
	"inventoryinshop"       	integer NULL , 
	 PRIMARY KEY ("line_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."inventory_out_history" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."inventory_out_history" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."inventory_out_history" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."inventory_out_history" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."inventory_out_history" TO "prod"  FROM "DBA"
go
CREATE TABLE "DBA"."inventory_code_usage"
(
	"material_code" 		integer NOT NULL ,
	"product_id"    		integer NOT NULL ,
	"ratio" 			numeric(5,4) NULL ,
	"grid_size"     		varchar(10) NOT NULL ,
	"min_sqft"      		integer NOT NULL ,
	"max_sqft"      		integer NOT NULL , 
	 PRIMARY KEY ("material_code", "product_id", "grid_size", "min_sqft", "max_sqft"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."inventory_code_usage" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."inventory_code_usage" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."inventory_code_usage" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."Damage_Type"
(
	"damage_id"     		integer NOT NULL ,
	"damage"        		char(52) NOT NULL ,
	"print_on_forms"        	integer NULL ,
	"active"        		integer NULL ,
	"damage_prep_type"      	varchar(2) NULL , 
	 PRIMARY KEY ("damage_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Damage_Type" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Damage_Type" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Damage_Type" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."web"
(
	"stock_id"      		float NULL ,
	"product_id"    		float NULL ,
	"description"   		char(50) NULL ,
	"manf_size"     		char(255) NULL ,
	"web_text"      		char(100) NULL ,
	"shape" 			char(50) NULL ,
	"sqft"  			float NULL ,
	"base_cost"     		float NULL ,
	"anchor_points" 		float NULL ,
	"extensions"    		float NULL ,
	"no_bows"       		float NULL ,
	"bl"    			numeric(16,2) NULL ,
	"s_cw"  			numeric(16,2) NULL ,
	"s_cl"  			numeric(16,2) NULL ,
	"s_off" 			numeric(16,2) NULL ,
	"l_or_r"        		char(2) NULL ,
	"wall_a"        		numeric(16,2) NULL ,
	"wall_c"        		numeric(16,2) NULL ,
	"web_category"  		char(10) NULL ,
	"fence_skew_no" 		float NULL ,
	"pool_wall_a"   		numeric(16,2) NULL ,
	"pool_wall_b"   		numeric(16,2) NULL ,
	"pool_wall_c"   		numeric(16,2) NULL ,
	"cw"    			numeric(16,2) NULL ,
	"cl"    			numeric(16,2) NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."web" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."web" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."Sales_call_log"
(
	"dealer_code"   		char(6) NOT NULL ,
	"date"  			date NOT NULL ,
	"sales_person"  		varchar(50) NOT NULL ,
	"log_entry"     		varchar(3000) NOT NULL ,
	"uploaded"      		char(1) NOT NULL DEFAULT 'N' ,
	"call_id"       		unsigned int NOT NULL ,
	"territory"     		char(2) NULL ,
	"call_type"     		char(2) NULL ,
	"additional_comments"   	varchar(3000) NULL ,
	"additional_comments_users"     varchar(100) NULL ,
	"job_visit_problem"     	varchar(2) NULL DEFAULT 'N' ,
	"review_call_made"      	varchar(2) NULL DEFAULT 'N' ,
	"review_Call_made_text" 	varchar(3000) NULL ,
	"problem"       		varchar(2) NULL DEFAULT 'N' ,
	"resolved"      		varchar(2) NULL DEFAULT 'N' ,
	"respond_to_id" 		unsigned int NULL ,
	"respond_to_person"     	varchar(50) NULL , 
	 PRIMARY KEY ("sales_person", "call_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Sales_call_log" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Sales_call_log" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Sales_call_log" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Sales_call_log" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."RATimer"
(
	"prep_id"       		integer NOT NULL ,
	"date"  			date NOT NULL ,
	"start_time"    		time NOT NULL ,
	"finish_time"   		time NULL ,
	"user"  			char(50) NOT NULL , 
	 PRIMARY KEY ("date", "start_time", "user"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."RATimer" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."RATimer" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."RATimer" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."Warranty_Reasons"
(
	"warranty_id"   		integer NOT NULL ,
	"warranty_reason"       	char(100) NOT NULL ,
	"print_on_forms"        	integer NOT NULL ,
	"active"        		integer NOT NULL , 
	 PRIMARY KEY ("warranty_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Warranty_Reasons" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Warranty_Reasons" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Warranty_Reasons" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Warranty_Reasons" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Warranty_Reasons" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Warranty_Reasons" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."Inventory_Returns"
(
	"return_id"     		integer NOT NULL DEFAULT autoincrement ,
	"material_code_id"      	integer NOT NULL ,
	"quantity"      		integer NOT NULL ,
	"date_returned" 		date NOT NULL ,
	"returned_by"   		char(50) NOT NULL ,
	"comments"      		char(250) NULL ,
	"po_number"     		char(10) NOT NULL ,
	"date_returned_to_inventory"    date NULL , 
	 PRIMARY KEY ("return_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Inventory_Returns" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Inventory_Returns" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Inventory_Returns" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."stock_special"
(
	"prep_id"       		integer NOT NULL ,
	"used_date"     		date NULL ,
	"return_date"   		date NULL ,
	"used_reason"   		varchar(80) NULL ,
	"return_reason" 		varchar(80) NULL ,
	"year"  			integer NOT NULL ,
	"type"  			char(1) NOT NULL ,
	"stock_number"  		integer NOT NULL DEFAULT autoincrement ,
	"comments"      		varchar(80) NULL ,
	"comments2"     		varchar(80) NULL ,
	"used_stock"    		char(1) NULL DEFAULT 'N' , 
	 PRIMARY KEY ("year", "type", "stock_number"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_special" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_special" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_special" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."liner_wall"
(
	"wall_id"       		integer NOT NULL ,
	"wall_description"      	char(100) NOT NULL ,
	"active"        		char(1) NOT NULL , 
	 PRIMARY KEY ("wall_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."liner_wall" TO "admin"  FROM "DBA"
go
CREATE TABLE "DBA"."email_que"
(
	"loop_email_id" 		integer NOT NULL DEFAULT autoincrement ,
	"document_name" 		char(2500) NULL ,
	"email_address" 		char(100) NULL ,
	"status"        		char(10) NULL ,
	"loc_code"      		char(5) NULL ,
	"loc_key"       		char(1000) NULL ,
	"document_description"  	char(400) NULL ,
	"modified_time" 		time NULL ,
	"modified_date" 		date NULL ,
	"dealer_code"   		char(10) NULL ,
	"subject"       		char(50) NULL ,
	"body"  			char(5000) NULL ,
	"zip_ref"       		integer NULL DEFAULT 0 ,
	"datawindow"    		char(2500) NULL , 
	 PRIMARY KEY ("loop_email_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."email_que" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."email_que" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."email_que" TO "ralph"  FROM "DBA"
go
GRANT UPDATE("body", "datawindow", "dealer_code", "document_description", "document_name", "email_address", "loc_code", "loc_key", "loop_email_id", "modified_date", "modified_time", "status", "subject", "zip_ref") ON "DBA"."email_que" TO "ralph" FROM "DBA"
go
GRANT UPDATE("body", "datawindow", "dealer_code", "document_description", "document_name", "email_address", "loc_code", "loc_key", "loop_email_id", "modified_date", "modified_time", "status", "subject", "zip_ref") ON "DBA"."email_que" TO "PUBLIC" FROM "DBA"
go
GRANT UPDATE("body", "datawindow", "dealer_code", "document_description", "document_name", "email_address", "loc_code", "loc_key", "loop_email_id", "modified_date", "modified_time", "status", "subject", "zip_ref") ON "DBA"."email_que" TO "admin" FROM "DBA"
go
CREATE TABLE "DBA"."material_usage"
(
	"prep_id"       		integer NOT NULL DEFAULT 0 ,
	"roll_id"       		integer NOT NULL ,
	"serial_no"     		integer NOT NULL DEFAULT 0 , 
	 PRIMARY KEY ("prep_id", "roll_id", "serial_no"),
	
)
go
GRANT INSERT, DELETE ON "DBA"."material_usage" TO "admin"  FROM "DBA"
go
GRANT SELECT, UPDATE, REFERENCES ON "DBA"."material_usage" TO "admin" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE ON "DBA"."material_usage" TO "cs"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."material_usage" TO "ralph" WITH GRANT OPTION
go
GRANT UPDATE("prep_id", "roll_id") ON "DBA"."material_usage" TO "ralph" FROM "DBA"
go
GRANT UPDATE("prep_id", "roll_id", "serial_no") ON "DBA"."material_usage" TO "cs" FROM "DBA"
go
CREATE TABLE "DBA"."prep_ra_hardware"
(
	"prep_id"       		integer NOT NULL ,
	"hexkey_return" 		char(1) NULL ,
	"instal_tool_return"    	char(1) NULL ,
	"tamp_return"   		char(1) NULL ,
	"pump_return"   		char(1) NULL ,
	"pipe"  			integer NULL ,
	"mac"   			integer NULL ,
	"undercover_padding"    	integer NULL ,
	"nrod"  			char(1) NULL ,
	"alumadj"       		integer NULL ,
	"replace_alt"   		char(1) NULL ,
	"warranty_type" 		char(10) NULL ,
	"warranty_claim_printed"        char(1) NULL ,
	"warranty_claim_printed_date"   date NULL ,
	"warranty_claim_paid_date"      date NULL ,
	"warranty_claim_submit_date"    varchar(100) NULL ,
	"min_repair_quote"      	integer NULL DEFAULT 0 ,
	"retail_replacement_quote"      integer NULL ,
	"hold_reason"   		varchar(200) NULL ,
	"hold_person"   		varchar(200) NULL ,
	"hold_new_bluesheet"    	integer NULL ,
	"cable_return"  		integer NULL ,
	"caanc_return"  		integer NULL ,
	"spring_return_type"    	char(5) NULL ,
	"pipe_with_anchors"     	integer NULL ,
	"location_comment"      	varchar(20) NULL ,
	"ssprg_return"  		integer NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."prep_ra_hardware" TO "DBA"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."prep_ra_hardware" TO "dbo"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."prep_ra_hardware" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."prep_ra_hardware" TO "Bleep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."prep_ra_hardware" TO "cs"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."prep_ra_hardware" TO "acct"  FROM "DBA"
go
GRANT UPDATE ON "DBA"."prep_ra_hardware" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."prep_ra_hardware" TO "SYS"  FROM "ralph"
go
GRANT UPDATE("alumadj", "hexkey_return", "instal_tool_return", "prep_id", "pump_return", "tamp_return") ON "DBA"."prep_ra_hardware" TO "tech" FROM "DBA"
go
GRANT UPDATE("alumadj", "caanc_return", "cable_return", "hexkey_return", "hold_new_bluesheet", "hold_person", "hold_reason", "instal_tool_return", "location_comment", "min_repair_quote", "nrod", "pipe_with_anchors", "prep_id", "pump_return", "replace_alt", "retail_replacement_quote", "spring_return_type", "tamp_return", "undercover_padding", "warranty_claim_paid_date", "warranty_claim_printed", "warranty_claim_printed_date", "warranty_claim_submit_date", "warranty_type") ON "DBA"."prep_ra_hardware" TO "PUBLIC" FROM "DBA"
go
GRANT UPDATE("hexkey_return", "instal_tool_return", "prep_id", "pump_return", "tamp_return") ON "DBA"."prep_ra_hardware" TO "prod" FROM "DBA"
go
GRANT UPDATE("alumadj", "hexkey_return", "instal_tool_return", "prep_id", "pump_return", "tamp_return") ON "DBA"."prep_ra_hardware" TO "prep" FROM "DBA"
go
GRANT UPDATE("hexkey_return", "instal_tool_return", "prep_id", "pump_return", "tamp_return") ON "DBA"."prep_ra_hardware" TO "Gods" FROM "DBA"
go
GRANT UPDATE("hexkey_return", "instal_tool_return", "prep_id", "pump_return", "tamp_return") ON "DBA"."prep_ra_hardware" TO "de" FROM "DBA"
go
GRANT UPDATE("hexkey_return", "instal_tool_return", "mac", "pipe", "prep_id", "pump_return", "tamp_return") ON "DBA"."prep_ra_hardware" TO "dbo" FROM "DBA"
go
GRANT UPDATE("hexkey_return", "instal_tool_return", "mac", "pipe", "prep_id", "pump_return", "tamp_return") ON "DBA"."prep_ra_hardware" TO "DBA" FROM "DBA"
go
GRANT UPDATE("alumadj", "hexkey_return", "instal_tool_return", "mac", "pipe", "prep_id", "pump_return", "tamp_return") ON "DBA"."prep_ra_hardware" TO "cs" FROM "DBA"
go
GRANT UPDATE("hexkey_return", "instal_tool_return", "mac", "pipe", "prep_id", "pump_return", "tamp_return") ON "DBA"."prep_ra_hardware" TO "Bleep" FROM "DBA"
go
GRANT UPDATE("hexkey_return", "instal_tool_return", "mac", "pipe", "prep_id", "pump_return", "tamp_return") ON "DBA"."prep_ra_hardware" TO "admin" FROM "DBA"
go
GRANT UPDATE("hexkey_return", "instal_tool_return", "mac", "pipe", "prep_id", "pump_return", "tamp_return") ON "DBA"."prep_ra_hardware" TO "acct" FROM "DBA"
go
GRANT UPDATE("hexkey_return", "instal_tool_return", "mac", "pipe", "prep_id", "pump_return", "tamp_return") ON "DBA"."prep_ra_hardware" TO "SYS" FROM "ralph"
go
CREATE TABLE "DBA"."email_sub_body"
(
	"ll_code"       		char(50) NOT NULL ,
	"description"   		char(100) NOT NULL ,
	"subject"       		char(100) NOT NULL ,
	"body"  			char(500) NOT NULL ,
	"active"        		char(1) NOT NULL , 
	 PRIMARY KEY ("ll_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."email_sub_body" TO "admin"  FROM "DBA"
go
GRANT UPDATE("active", "body", "description", "ll_code", "subject") ON "DBA"."email_sub_body" TO "admin" FROM "DBA"
go
CREATE TABLE "ralph"."pbcattbl"
(
	"pbt_tnam"      		char(129) NOT NULL ,
	"pbt_tid"       		integer NULL ,
	"pbt_ownr"      		char(129) NOT NULL ,
	"pbd_fhgt"      		smallint NULL ,
	"pbd_fwgt"      		smallint NULL ,
	"pbd_fitl"      		char(1) NULL ,
	"pbd_funl"      		char(1) NULL ,
	"pbd_fchr"      		smallint NULL ,
	"pbd_fptc"      		smallint NULL ,
	"pbd_ffce"      		char(18) NULL ,
	"pbh_fhgt"      		smallint NULL ,
	"pbh_fwgt"      		smallint NULL ,
	"pbh_fitl"      		char(1) NULL ,
	"pbh_funl"      		char(1) NULL ,
	"pbh_fchr"      		smallint NULL ,
	"pbh_fptc"      		smallint NULL ,
	"pbh_ffce"      		char(18) NULL ,
	"pbl_fhgt"      		smallint NULL ,
	"pbl_fwgt"      		smallint NULL ,
	"pbl_fitl"      		char(1) NULL ,
	"pbl_funl"      		char(1) NULL ,
	"pbl_fchr"      		smallint NULL ,
	"pbl_fptc"      		smallint NULL ,
	"pbl_ffce"      		char(18) NULL ,
	"pbt_cmnt"      		char(254) NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "ralph"."pbcattbl" TO "PUBLIC"  FROM "ralph"
go
CREATE TABLE "ralph"."pbcatcol"
(
	"pbc_tnam"      		char(129) NOT NULL ,
	"pbc_tid"       		integer NULL ,
	"pbc_ownr"      		char(129) NOT NULL ,
	"pbc_cnam"      		char(129) NOT NULL ,
	"pbc_cid"       		smallint NULL ,
	"pbc_labl"      		char(254) NULL ,
	"pbc_lpos"      		smallint NULL ,
	"pbc_hdr"       		char(254) NULL ,
	"pbc_hpos"      		smallint NULL ,
	"pbc_jtfy"      		smallint NULL ,
	"pbc_mask"      		char(31) NULL ,
	"pbc_case"      		smallint NULL ,
	"pbc_hght"      		smallint NULL ,
	"pbc_wdth"      		smallint NULL ,
	"pbc_ptrn"      		char(31) NULL ,
	"pbc_bmap"      		char(1) NULL ,
	"pbc_init"      		char(254) NULL ,
	"pbc_cmnt"      		char(254) NULL ,
	"pbc_edit"      		char(31) NULL ,
	"pbc_tag"       		char(254) NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "ralph"."pbcatcol" TO "PUBLIC"  FROM "ralph"
go
CREATE TABLE "ralph"."pbcatfmt"
(
	"pbf_name"      		char(30) NOT NULL ,
	"pbf_frmt"      		char(254) NULL ,
	"pbf_type"      		smallint NULL ,
	"pbf_cntr"      		integer NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "ralph"."pbcatfmt" TO "PUBLIC"  FROM "ralph"
go
CREATE TABLE "ralph"."pbcatvld"
(
	"pbv_name"      		char(30) NOT NULL ,
	"pbv_vald"      		char(254) NULL ,
	"pbv_type"      		smallint NULL ,
	"pbv_cntr"      		integer NULL ,
	"pbv_msg"       		char(254) NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "ralph"."pbcatvld" TO "PUBLIC"  FROM "ralph"
go
CREATE TABLE "ralph"."pbcatedt"
(
	"pbe_name"      		char(30) NOT NULL ,
	"pbe_edit"      		char(254) NULL ,
	"pbe_type"      		smallint NULL ,
	"pbe_cntr"      		integer NULL ,
	"pbe_seqn"      		smallint NOT NULL ,
	"pbe_flag"      		integer NULL ,
	"pbe_work"      		char(32) NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "ralph"."pbcatedt" TO "PUBLIC"  FROM "ralph"
go
CREATE TABLE "DBA"."prep_alter"
(
	"prep_id"       		integer NOT NULL ,
	"object_size"   		varchar(255) NULL ,
	"manf_size"     		varchar(255) NULL ,
	"original_order_no"     	integer NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."prep_alter" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("manf_size", "object_size", "original_order_no", "prep_id") ON "DBA"."prep_alter" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."rtn_bluesheet"
(
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"order_no"      		integer NULL ,
	"dealer_code"   		char(6) NOT NULL ,
	"date_created"  		date NOT NULL ,
	"entered_by"    		varchar(100) NOT NULL ,
	"person_spoketo"        	varchar(100) NOT NULL ,
	"backup_paperwork"      	char(1) NOT NULL ,
	"rtn_number"    		integer NULL ,
	"return_type"   		char(30) NOT NULL ,
	"discard_old_cover"     	char(1) NULL ,
	"new_cover_ordered"     	char(1) NULL ,
	"new_order_no"  		integer NULL ,
	"orig_hardcopy_pulled"  	char(1) NULL ,
	"return_reason" 		varchar(100) NULL ,
	"additional_comment"    	varchar(300) NULL ,
	"error_type"    		char(10) NULL DEFAULT 'N' ,
	"call_tag"      		char(1) NULL ,
	"pickup_cover_now"      	char(1) NULL ,
	"cust_type"     		char(20) NULL ,
	"hours_operation"       	varchar(100) NULL ,
	"customer_name" 		varchar(150) NULL ,
	"address1"      		varchar(100) NULL ,
	"address2"      		varchar(100) NULL ,
	"city"  			varchar(100) NULL ,
	"state" 			varchar(20) NULL ,
	"zip_code"      		char(20) NULL ,
	"jobname"       		varchar(255) NULL ,
	"no_hardcopy_present"   	varchar(1) NULL ,
	"phone" 			varchar(20) NULL ,
	"check_for_warr"        	varchar(1) NULL ,
	"cancel"        		char(1) NULL ,
	"dealer_address_type"   	varchar(1) NULL ,
	"call_tag_type" 		varchar(10) NULL ,
	"looploc_error" 		varchar(2) NULL ,
	"spring_alteration"     	varchar(2) NULL ,
	"rtn_type"      		varchar(2) NULL ,
	"mgr_initials"  		varchar(10) NULL ,
	"admin_initials"        	varchar(10) NULL ,
	"credit_type"   		varchar(10) NULL ,
	"dealer_requests_water_allowance" varchar(10) NULL ,
	"credit_applied"        	varchar(10) NULL ,
	"water_credit_applied"  	varchar(10) NULL ,
	"water_credit"  		double NULL ,
	"call_tag_sent" 		varchar(2) NULL ,
	"call_tag_code" 		varchar(50) NULL ,
	"third_dealer"  		varchar(6) NULL ,
	"close_bluesheet"       	varchar(1) NULL ,
	"alt_open_in_house"     	varchar(2) NULL ,
	"ct_bill_back_freight"  	varchar(2) NULL ,
	"ct_ll_error"   		varchar(2) NULL ,
	"ct_tbd"        		varchar(2) NULL ,
	"rtn_bluesheet" 		integer NULL ,
	"new_prep_no"   		integer NULL ,
	"artran_id"     		varchar(20) NULL ,
	"needs_sample_returned" 	char(2) NULL ,
	"alteration_marked_down"        char(2) NULL ,
	"liner_2_marked_down"   	char(2) NULL ,
	"wall_lot_number"       	char(50) NULL ,
	"material_rtn_vendor"   	char(10) NULL ,
	"call_tag_code_vendor"  	varchar(50) NULL ,
	"rtn_hold"      		char(2) NULL ,
	"bottom_lot_number"     	varchar(50) NULL ,
	"quality_issue" 		char(2) NULL ,
	"repair"        		char(2) NULL ,
	"liner_1_marked_down"   	char(2) NULL ,
	"recommended_water_allowance"   double NULL ,
	"warranty_issue"        	char(2) NULL ,
	"mfg_date"      		date NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."rtn_bluesheet" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE ON "DBA"."rtn_bluesheet" TO "cs"  FROM "DBA"
go
GRANT UPDATE("dealer_address_type") ON "DBA"."rtn_bluesheet" TO "RICHIE" FROM "DBA"
go
GRANT UPDATE("additional_comment", "address1", "address2", "admin_initials", "alt_open_in_house", "alteration_marked_down", "artran_id", "backup_paperwork", "bottom_lot_number", "call_tag", "call_tag_code", "call_tag_code_vendor", "call_tag_sent", "call_tag_type", "cancel", "check_for_warr", "city", "close_bluesheet", "credit_applied", "credit_type", "ct_bill_back_freight", "ct_ll_error", "ct_tbd", "cust_type", "customer_name", "date_created", "dealer_address_type", "dealer_code", "dealer_requests_water_allowance", "discard_old_cover", "entered_by", "error_type", "hours_operation", "id", "jobname", "liner_1_marked_down", "liner_2_marked_down", "looploc_error", "material_rtn_vendor", "mfg_date", "mgr_initials", "needs_sample_returned", "new_cover_ordered", "new_order_no", "new_prep_no", "no_hardcopy_present", "order_no", "orig_hardcopy_pulled", "person_spoketo", "phone", "pickup_cover_now", "quality_issue", "recommended_water_allowance", "repair", "return_reason", "return_type", "rtn_bluesheet", "rtn_hold", "rtn_number", "rtn_type", "spring_alteration", "state", "third_dealer", "wall_lot_number", "warranty_issue", "water_credit", "water_credit_applied", "zip_code") ON "DBA"."rtn_bluesheet" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."open_estimates"
(
	"dealer_code"   		char(6) NOT NULL ,
	"dealer_name"   		char(35) NOT NULL ,
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		integer NOT NULL ,
	"jobnmae"       		char(25) NOT NULL ,
	"order_date"    		date NOT NULL ,
	"sales_territory"       	char(2) NULL ,
	"product_group" 		char(2) NOT NULL ,
	"type"  			char(2) NOT NULL ,
	"status"        		integer NOT NULL ,
	"prep_type"     		char(2) NOT NULL ,
	"sqft"  			double NULL ,
	"price" 			double NULL ,
	"measured_by"   		char(5) NULL , 
	 PRIMARY KEY ("prep_id", "quote_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."open_estimates" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."open_estimates" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."open_estimates" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."rtn_bluesheet_retail_address"
(
	"id"    			integer NOT NULL ,
	"name_dealer"   		varchar(255) NULL ,
	"addr1" 			varchar(255) NULL ,
	"addr2" 			varchar(255) NULL ,
	"city"  			varchar(255) NULL ,
	"state" 			char(10) NULL ,
	"zip"   			char(20) NULL ,
	"phone" 			char(30) NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."rtn_bluesheet_retail_address" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("addr1", "addr2", "city", "id", "name_dealer", "phone", "state", "zip") ON "DBA"."rtn_bluesheet_retail_address" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."departments"
(
	"department_short"      	char(20) NOT NULL ,
	"department_long"       	char(50) NULL ,
	"department_type"       	char(5) NULL ,
	"prime" 			char(1) NULL ,
	"markdown"      		char(1) NULL , 
	 PRIMARY KEY ("department_short"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."departments" TO "admin"  FROM "DBA"
go
CREATE TABLE "DBA"."prep_flags"
(
	"prep_id"       		float NOT NULL ,
	"quote_no"      		float NOT NULL ,
	"old_safety_print"      	char(2) NULL ,
	"cwp_safety"    		char(1) NULL ,
	"safety_first"  		char(1) NULL ,
	"steps_finished"        	char(1) NULL , 
	 PRIMARY KEY ("prep_id", "quote_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_flags" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("cwp_safety", "old_safety_print", "prep_id", "quote_no", "safety_first") ON "DBA"."prep_flags" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."worksheet_que"
(
	"id"    			float NOT NULL DEFAULT autoincrement ,
	"prep_id"       		float NULL ,
	"entry_date"    		date NULL ,
	"entry_time"    		time NULL ,
	"print_date"    		date NULL ,
	"print_time"    		time NULL ,
	"print_log"     		char(20) NULL ,
	"printed"       		char(1) NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."worksheet_que" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("entry_date", "entry_time", "id", "prep_id", "print_date", "print_log", "print_time", "printed") ON "DBA"."worksheet_que" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."liner_error_report"
(
	"error_id"      		integer NOT NULL DEFAULT autoincrement ,
	"dealer_code"   		char(10) NOT NULL ,
	"original_job_number"   	integer NOT NULL ,
	"fault" 			char(150) NOT NULL ,
	"action_taken"  		char(150) NOT NULL ,
	"create_user"   		char(50) NOT NULL ,
	"create_date"   		date NOT NULL ,
	"last_modified_user"    	char(50) NOT NULL ,
	"last_modified_date"    	date NOT NULL ,
	"prep_id"       		integer NULL ,
	"product_id"    		integer NULL ,
	"pool_shape"    		char(10) NULL ,
	"pool_size"     		char(255) NULL ,
	"explanation"   		char(750) NULL ,
	"jobname"       		char(50) NULL ,
	"amount"        		numeric(9,2) NULL ,
	"credit_amt"    		double NULL ,
	"credit_applied"        	char(1) NULL ,
	"credit_applied_user"   	varchar(20) NULL ,
	"credit_applied_date"   	date NULL ,
	"liner_wall"    		integer NULL ,
	"liner_bottom"  		integer NULL ,
	"order_no_new"  		integer NULL ,
	"call_tag"      		char(1) NULL ,
	"cust_type"     		char(20) NULL ,
	"call_tag_type" 		varchar(10) NULL ,
	"pickup_cover_now"      	char(1) NULL ,
	"hours_operation"       	varchar(100) NULL ,
	"customer_name" 		varchar(100) NULL ,
	"address1"      		varchar(100) NULL ,
	"address2"      		varchar(100) NULL ,
	"city"  			varchar(100) NULL ,
	"state" 			varchar(100) NULL ,
	"zipcode"       		varchar(20) NULL ,
	"phone" 			varchar(50) NULL ,
	"person_spoke_to"       	varchar(100) NULL ,
	"awaiting_material"     	varchar(2) NULL , 
	 PRIMARY KEY ("error_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."liner_error_report" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."liner_error_report" TO "admin"  FROM "DBA"
go
GRANT UPDATE("action_taken", "address1", "address2", "amount", "call_tag", "call_tag_type", "city", "create_date", "create_user", "credit_amt", "credit_applied", "credit_applied_date", "credit_applied_user", "cust_type", "customer_name", "dealer_code", "error_id", "explanation", "fault", "hours_operation", "jobname", "last_modified_date", "last_modified_user", "liner_bottom", "liner_wall", "order_no_new", "original_job_number", "person_spoke_to", "phone", "pickup_cover_now", "pool_shape", "pool_size", "prep_id", "product_id", "state", "zipcode") ON "DBA"."liner_error_report" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."money_recieved"
(
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"dealer_code"   		char(10) NOT NULL ,
	"active"        		char(1) NULL DEFAULT 'Y' ,
	"decline"       		char(1) NULL DEFAULT 'N' ,
	"from_web"      		char(2) NULL ,
	"printed"       		char(2) NULL ,
	"date_stamped"  		date NULL ,
	"time_stamped"  		time NULL ,
	"deposit_id"    		integer NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."money_recieved" TO "prep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."money_recieved" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."money_recieved_detail"
(
	"id"    			integer NOT NULL ,
	"dtl_no"        		integer NOT NULL ,
	"payment_type"  		char(10) NOT NULL ,
	"payment_amount"        	double NOT NULL ,
	"ar_type"       		char(20) NOT NULL ,
	"description_prep_id"   	integer NULL ,
	"description_general"   	char(500) NULL ,
	"description_artran"    	integer NULL ,
	"create_user"   		char(100) NOT NULL ,
	"create_date"   		date NOT NULL ,
	"description_ar_type"   	varchar(20) NULL ,
	"cc_holder"     		varchar(20) NULL ,
	"paid_in_full"  		varchar(2) NULL , 
	 PRIMARY KEY ("id", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."money_recieved_detail" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."money_recieved_detail" TO "prep"  FROM "DBA"
go
GRANT UPDATE("ar_type", "cc_holder", "create_date", "create_user", "description_ar_type", "description_artran", "description_general", "description_prep_id", "dtl_no", "id", "payment_amount", "payment_type") ON "DBA"."money_recieved_detail" TO "PUBLIC" FROM "DBA"
go
GRANT UPDATE("ar_type", "create_date", "create_user", "description_artran", "description_general", "description_prep_id", "dtl_no", "id", "payment_amount", "payment_type") ON "DBA"."money_recieved_detail" TO "prep" FROM "DBA"
go
CREATE TABLE "DBA"."liner_error_report_explanation_history"
(
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"dtl_no"        		integer NULL ,
	"error_id"      		integer NULL ,
	"description"   		varchar(1000) NULL ,
	"entry_user"    		varchar(20) NULL ,
	"entry_date"    		date NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."liner_error_report_explanation_history" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("description", "dtl_no", "entry_date", "entry_user", "error_id", "id") ON "DBA"."liner_error_report_explanation_history" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."liner_error_report_action_history"
(
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"dtl_no"        		integer NULL ,
	"error_id"      		integer NULL ,
	"action"        		varchar(100) NULL ,
	"entry_user"    		varchar(20) NULL ,
	"entry_date"    		date NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."liner_error_report_action_history" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("action", "dtl_no", "entry_date", "entry_user", "error_id", "id") ON "DBA"."liner_error_report_action_history" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."liner_error_report_action_master"
(
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"display"       		varchar(100) NOT NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."liner_error_report_action_master" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("display", "id") ON "DBA"."liner_error_report_action_master" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."dealer_email_address"
(
	"dealer_code"   		char(6) NOT NULL ,
	"est_not_ack_form75"    	char(50) NULL ,
	"invoice"       		char(50) NULL ,
	"ups_tracking"  		char(50) NULL ,
	"est_not_ack_form75_2"  	char(50) NULL ,
	"date_last_modified"    	date NULL DEFAULT current date ,
	"principle_email_address"       char(50) NULL ,
	"advertising_email_address"     varchar(50) NULL ,
	"leads_email_address"   	char(50) NULL ,
	"invoice_2"     		char(50) NULL ,
	"verification_drawing"  	char(50) NULL ,
	"est_not_ack_form75_3"  	char(50) NULL ,
	"est_not_ack_form75_4"  	char(50) NULL ,
	"est_not_ack_form75_flag"       char(2) NULL ,
	"est_not_ack_form75_2_flag"     char(2) NULL ,
	"est_not_ack_form75_3_flag"     char(2) NULL ,
	"est_not_ack_form75_4_flag"     char(2) NULL ,
	"verification_drawing_2"        char(50) NULL ,
	"verification_drawing_3"        char(50) NULL ,
	"verification_drawing_4"        char(50) NULL ,
	"leads_email_address_flag"      char(2) NULL ,
	"verification_drawing_flag"     char(2) NULL ,
	"verification_drawing_2_flag"   char(2) NULL ,
	"verification_drawing_3_flag"   char(2) NULL ,
	"verification_drawing_4_flag"   char(2) NULL ,
	"on_mailing_list"       	char(1) NULL , 
	 PRIMARY KEY ("dealer_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."dealer_email_address" TO "PUBLIC"  FROM "DBA"
go
GRANT ALTER, REFERENCES ON "DBA"."dealer_email_address" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_email_address" TO "FAXMAN"  FROM "DBA"
go
GRANT UPDATE("dealer_code", "est_not_ack_form75", "est_not_ack_form75_2", "invoice", "ups_tracking") ON "DBA"."dealer_email_address" TO "ralph" FROM "DBA"
go
GRANT UPDATE("advertising_email_address", "date_last_modified", "dealer_code", "est_not_ack_form75", "est_not_ack_form75_2", "est_not_ack_form75_2_flag", "est_not_ack_form75_3", "est_not_ack_form75_3_flag", "est_not_ack_form75_4", "est_not_ack_form75_4_flag", "est_not_ack_form75_flag", "invoice", "invoice_2", "leads_email_address", "leads_email_address_flag", "principle_email_address", "ups_tracking", "verification_drawing", "verification_drawing_2", "verification_drawing_2_flag", "verification_drawing_3", "verification_drawing_3_flag", "verification_drawing_4", "verification_drawing_4_flag", "verification_drawing_flag") ON "DBA"."dealer_email_address" TO "PUBLIC" FROM "DBA"
go
GRANT UPDATE("est_not_ack_form75_2") ON "DBA"."dealer_email_address" TO "de" FROM "DBA"
go
GRANT UPDATE("est_not_ack_form75_2") ON "DBA"."dealer_email_address" TO "DBA" FROM "DBA"
go
GRANT UPDATE("est_not_ack_form75_2", "invoice_2", "verification_drawing") ON "DBA"."dealer_email_address" TO "cs" FROM "DBA"
go
CREATE TABLE "DBA"."liner_error_report_fault_master"
(
	"id"    			float NOT NULL ,
	"display"       		char(100) NOT NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."liner_error_report_fault_master" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("display", "id") ON "DBA"."liner_error_report_fault_master" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."stock_history_copy"
(
	"serial_no"     		integer NOT NULL ,
	"date_time"     		timestamp NOT NULL ,
	"user"  			varchar(15) NOT NULL ,
	"action"        		varchar(100) NOT NULL ,
	"action_no"     		smallint NOT NULL ,
	"prep_id"       		integer NULL ,
	
)
go
CREATE TABLE "DBA"."liner_cover_estimate"
(
	"prep_id"       		integer NOT NULL ,
	"overlap"       		double NULL ,
	"cover_string"  		varchar(100) NULL ,
	"sqft"  			double NULL ,
	"num_4x8"       		integer NULL DEFAULT 0 ,
	"lazyl" 			char(1) NULL DEFAULT 'N' , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."liner_cover_estimate" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("cover_string", "lazyl", "num_4x8", "overlap", "prep_id", "sqft") ON "DBA"."liner_cover_estimate" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."ra_nc_production_date"
(
	"production_date"       	date NOT NULL ,
	"ra_ship_date"  		date NOT NULL ,
	"ra_drop_date"  		date NOT NULL ,
	"nc_ship_date"  		date NOT NULL ,
	"nc_drop_date"  		date NOT NULL ,
	"alt_ship_date" 		date NOT NULL ,
	"alt_drop_date" 		date NOT NULL ,
	"wt_ship_date"  		date NULL ,
	"wt_drop_date"  		date NULL , 
	 PRIMARY KEY ("production_date"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."ra_nc_production_date" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("alt_drop_date", "alt_ship_date", "nc_drop_date", "nc_ship_date", "production_date", "ra_drop_date", "ra_ship_date", "wt_drop_date", "wt_ship_date") ON "DBA"."ra_nc_production_date" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."consumer_rebate"
(
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"first_name"    		varchar(100) NULL ,
	"last_name"     		varchar(100) NOT NULL ,
	"address"       		varchar(100) NOT NULL ,
	"city"  			varchar(100) NULL ,
	"state" 			varchar(100) NULL ,
	"zip"   			varchar(100) NOT NULL ,
	"order_no_cover"        	integer NULL ,
	"rebate_paid_cover"     	char(11) NULL ,
	"order_no_liner"        	integer NULL ,
	"rebate_paid_liner"     	char(1) NULL ,
	"entry_date"    		date NULL ,
	"rebate_paid_date_cover"        date NULL ,
	"rebate_paid_date_liner"        date NULL , 
	 PRIMARY KEY ("id", "last_name", "address", "zip"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."consumer_rebate" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("address", "city", "entry_date", "first_name", "id", "last_name", "order_no_cover", "order_no_liner", "rebate_paid_cover", "rebate_paid_date_cover", "rebate_paid_date_liner", "rebate_paid_liner", "state", "zip") ON "DBA"."consumer_rebate" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."linked_jobs"
(
	"prep_id_1"     		integer NOT NULL ,
	"prep_id_2"     		integer NOT NULL ,
	"paid"  			char(1) NOT NULL DEFAULT 'N' , 
	 PRIMARY KEY ("prep_id_1", "prep_id_2"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."linked_jobs" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("paid", "prep_id_1", "prep_id_2") ON "DBA"."linked_jobs" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "john2"."pbcattbl"
(
	"pbt_tnam"      		char(129) NOT NULL ,
	"pbt_tid"       		integer NULL ,
	"pbt_ownr"      		char(129) NOT NULL ,
	"pbd_fhgt"      		smallint NULL ,
	"pbd_fwgt"      		smallint NULL ,
	"pbd_fitl"      		char(1) NULL ,
	"pbd_funl"      		char(1) NULL ,
	"pbd_fchr"      		smallint NULL ,
	"pbd_fptc"      		smallint NULL ,
	"pbd_ffce"      		char(18) NULL ,
	"pbh_fhgt"      		smallint NULL ,
	"pbh_fwgt"      		smallint NULL ,
	"pbh_fitl"      		char(1) NULL ,
	"pbh_funl"      		char(1) NULL ,
	"pbh_fchr"      		smallint NULL ,
	"pbh_fptc"      		smallint NULL ,
	"pbh_ffce"      		char(18) NULL ,
	"pbl_fhgt"      		smallint NULL ,
	"pbl_fwgt"      		smallint NULL ,
	"pbl_fitl"      		char(1) NULL ,
	"pbl_funl"      		char(1) NULL ,
	"pbl_fchr"      		smallint NULL ,
	"pbl_fptc"      		smallint NULL ,
	"pbl_ffce"      		char(18) NULL ,
	"pbt_cmnt"      		char(254) NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "john2"."pbcattbl" TO "PUBLIC"  FROM "john2"
go
CREATE TABLE "john2"."pbcatcol"
(
	"pbc_tnam"      		char(129) NOT NULL ,
	"pbc_tid"       		integer NULL ,
	"pbc_ownr"      		char(129) NOT NULL ,
	"pbc_cnam"      		char(129) NOT NULL ,
	"pbc_cid"       		smallint NULL ,
	"pbc_labl"      		char(254) NULL ,
	"pbc_lpos"      		smallint NULL ,
	"pbc_hdr"       		char(254) NULL ,
	"pbc_hpos"      		smallint NULL ,
	"pbc_jtfy"      		smallint NULL ,
	"pbc_mask"      		char(31) NULL ,
	"pbc_case"      		smallint NULL ,
	"pbc_hght"      		smallint NULL ,
	"pbc_wdth"      		smallint NULL ,
	"pbc_ptrn"      		char(31) NULL ,
	"pbc_bmap"      		char(1) NULL ,
	"pbc_init"      		char(254) NULL ,
	"pbc_cmnt"      		char(254) NULL ,
	"pbc_edit"      		char(31) NULL ,
	"pbc_tag"       		char(254) NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "john2"."pbcatcol" TO "PUBLIC"  FROM "john2"
go
CREATE TABLE "john2"."pbcatfmt"
(
	"pbf_name"      		char(30) NOT NULL ,
	"pbf_frmt"      		char(254) NULL ,
	"pbf_type"      		smallint NULL ,
	"pbf_cntr"      		integer NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "john2"."pbcatfmt" TO "PUBLIC"  FROM "john2"
go
CREATE TABLE "john2"."pbcatvld"
(
	"pbv_name"      		char(30) NOT NULL ,
	"pbv_vald"      		char(254) NULL ,
	"pbv_type"      		smallint NULL ,
	"pbv_cntr"      		integer NULL ,
	"pbv_msg"       		char(254) NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "john2"."pbcatvld" TO "PUBLIC"  FROM "john2"
go
CREATE TABLE "john2"."pbcatedt"
(
	"pbe_name"      		char(30) NOT NULL ,
	"pbe_edit"      		char(254) NULL ,
	"pbe_type"      		smallint NULL ,
	"pbe_cntr"      		integer NULL ,
	"pbe_seqn"      		smallint NOT NULL ,
	"pbe_flag"      		integer NULL ,
	"pbe_work"      		char(32) NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "john2"."pbcatedt" TO "PUBLIC"  FROM "john2"
go
CREATE TABLE "DBA"."rtn_retail_address"
(
	"id"    			integer NOT NULL ,
	"name_retail"   		varchar(30) NULL ,
	"addr1" 			varchar(100) NULL ,
	"addr2" 			varchar(100) NULL ,
	"city"  			varchar(100) NULL ,
	"state" 			varchar(10) NULL ,
	"zip"   			varchar(20) NULL ,
	"phone" 			varchar(20) NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."rtn_retail_address" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("addr1", "addr2", "city", "id", "name_retail", "phone", "state", "zip") ON "DBA"."rtn_retail_address" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_retail"
(
	"prep_id"       		integer NOT NULL ,
	"fax_no"        		char(50) NULL ,
	"email" 			char(100) NULL ,
	"name_retail"   		char(100) NULL ,
	"company"       		char(100) NULL ,
	"addr1" 			char(100) NULL ,
	"addr2" 			char(100) NULL ,
	"city"  			char(100) NULL ,
	"state" 			char(5) NULL ,
	"zip"   			char(20) NULL ,
	"phone" 			char(20) NULL ,
	"country"       		char(50) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."prep_retail" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("email", "fax_no", "prep_id") ON "DBA"."prep_retail" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_ms"
(
	"prep_id"       		integer NOT NULL ,
	"measure_type"  		char(4) NULL ,
	"shape" 			varchar(10) NULL ,
	"advise_dealer_cost"    	varchar(2) NULL ,
	"locked_gate"   		varchar(2) NULL ,
	"pets"  			varchar(2) NULL ,
	"call_before_measure_homeowner" varchar(2) NULL ,
	"phone_homeowner"       	varchar(20) NULL ,
	"call_before_measure_dealer"    varchar(2) NULL ,
	"phone_dealer"  		varchar(20) NULL ,
	"num_pools_measured"    	integer NULL ,
	"order_by"      		varchar(50) NULL ,
	"comments"      		varchar(200) NULL ,
	"est_in_system" 		varchar(2) NULL ,
	"est_no"        		integer NULL ,
	"phone_homeowner_2"     	varchar(20) NULL ,
	"phone_dealer_2"        	varchar(20) NULL ,
	"est_or_order"  		varchar(2) NULL ,
	"est_no_ln"     		integer NULL ,
	"prepped_cover" 		varchar(2) NULL ,
	"prepped_liner" 		varchar(2) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_ms" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."prep_ms_cv"
(
	"prep_id"       		integer NOT NULL ,
	"cv_product"    		integer NULL DEFAULT 0 ,
	"pool_deck_instaled_complete"   varchar(2) NULL ,
	"instal_comments"       	varchar(200) NULL ,
	"nonremovable_obstruction"      varchar(2) NULL ,
	"spa_present"   		varchar(2) NULL ,
	"spa_raised_above_pool" 	varchar(2) NULL ,
	"planters_present"      	varchar(2) NULL ,
	"pipes_wanted"  		varchar(2) NULL ,
	"raised_wall_present"   	varchar(2) NULL ,
	"waterfall_rock_formation_present" varchar(2) NULL ,
	"varying_deck_levels_present"   varchar(2) NULL ,
	"unusual_treatments_present"    varchar(2) NULL ,
	"negative_edge_present" 	varchar(2) NULL ,
	"bridge_present"        	varchar(2) NULL ,
	"obstruction_unusual_present"   varchar(2) NULL ,
	"other_unusual_present" 	varchar(200) NULL ,
	"nonremovable_obstruction_detail" varchar(200) NULL ,
	"spa_present_details"   	varchar(200) NULL ,
	"mesh_poduct"   		varchar(2) NULL ,
	"ul_no_drains"  		varchar(2) NULL ,
	"ul_drains"     		varchar(2) NULL ,
	"mesh_color"    		varchar(2) NULL ,
	"ul_no_drains_color"    	varchar(2) NULL ,
	"ul_drains_color"       	varchar(2) NULL ,
	"aqua_extreme"  		varchar(2) NULL ,
	"aqua_extreme_color"    	varchar(2) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_ms_cv" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("aqua_extreme", "aqua_extreme_color", "bridge_present", "cv_product", "instal_comments", "mesh_color", "mesh_poduct", "negative_edge_present", "nonremovable_obstruction", "nonremovable_obstruction_detail", "obstruction_unusual_present", "other_unusual_present", "pipes_wanted", "planters_present", "pool_deck_instaled_complete", "prep_id", "raised_wall_present", "spa_present", "spa_present_details", "spa_raised_above_pool", "ul_drains", "ul_drains_color", "ul_no_drains", "ul_no_drains_color", "unusual_treatments_present", "varying_deck_levels_present", "waterfall_rock_formation_present") ON "DBA"."prep_ms_cv" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_ms_ln"
(
	"prep_id"       		integer NOT NULL ,
	"pattern_wanted"        	integer NULL ,
	"wall_thickness"        	integer NULL ,
	"floor_thickness"       	integer NULL ,
	"advised_dealer"        	varchar(2) NULL ,
	"vinyl_covered_steps_benches"   varchar(2) NULL ,
	"qty_steps_benches"     	integer NULL ,
	"safety_ledge"  		varchar(2) NULL ,
	"pool_deck_instaled_complete"   varchar(2) NULL ,
	"special_design"        	varchar(2) NULL ,
	"special_design_comments"       varchar(200) NULL ,
	"advised_dealer_cut_liner"      varchar(2) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_ms_ln" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."Dealer_Terms_Discount"
(
	"dealer_code"   		char(10) NOT NULL , 
	 PRIMARY KEY ("dealer_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."Dealer_Terms_Discount" TO "admin"  FROM "DBA"
go
CREATE TABLE "DBA"."email_subject_body_foreign"
(
	"state_code"    		char(3) NOT NULL ,
	"subject"       		varchar(1000) NOT NULL ,
	"body"  			varchar(1000) NOT NULL , 
	 PRIMARY KEY ("state_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."email_subject_body_foreign" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("body", "state_code", "subject") ON "DBA"."email_subject_body_foreign" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."liners_mfg"
(
	"id"    			float NOT NULL ,
	"company_name"  		char(50) NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."liners_mfg" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("company_name", "id") ON "DBA"."liners_mfg" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."vendor"
(
	"vendor_code"   		char(10) NOT NULL ,
	"vendor_name"   		varchar(100) NULL ,
	"contact_sales" 		varchar(100) NULL ,
	"attention"     		varchar(100) NULL ,
	"addr1" 			varchar(100) NULL ,
	"addr2" 			varchar(100) NULL ,
	"city"  			varchar(100) NULL ,
	"state" 			varchar(10) NULL ,
	"zipcode"       		varchar(20) NULL ,
	"phone" 			varchar(50) NULL ,
	"fax"   			varchar(50) NULL ,
	"email" 			varchar(50) NULL ,
	"term_id"       		integer NULL ,
	"ship_via_id"   		integer NULL ,
	"fob"   			integer NULL ,
	"active"        		char(1) NULL ,
	"create_date"   		date NULL ,
	"create_user"   		varchar(100) NULL ,
	"phone2"        		varchar(50) NULL ,
	"taxcd" 			varchar(50) NULL ,
	"doc"   			varchar(10) NULL ,
	"shop_inventory"        	varchar(1) NULL ,
	"additional_comments"   	varchar(3000) NULL ,
	"fob_text"      		varchar(100) NULL , 
	 PRIMARY KEY ("vendor_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."vendor" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "addr1", "addr2", "attention", "city", "contact_sales", "create_date", "create_user", "doc", "email", "fax", "fob", "phone", "phone2", "ship_via_id", "state", "taxcd", "term_id", "vendor_code", "vendor_name", "zipcode") ON "DBA"."vendor" TO "Gods" FROM "DBA"
go
CREATE TABLE "DBA"."vendor_po_materials"
(
	"vendor_code"   		char(10) NOT NULL ,
	"po_materials_id"       	integer NOT NULL ,
	"active"        		char(1) NULL , 
	 PRIMARY KEY ("vendor_code", "po_materials_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."vendor_po_materials" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "po_materials_id", "vendor_code") ON "DBA"."vendor_po_materials" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."vendor_purchases_orders"
(
	"po_number"     		integer NOT NULL ,
	"vendor_code"   		char(10) NOT NULL ,
	"req_by"        		char(50) NULL ,
	"fob"   			char(100) NULL ,
	"purchasing_agent"      	char(100) NULL ,
	"create_date"   		date NULL ,
	"create_user"   		char(100) NULL ,
	"ship_via_id"   		integer NULL ,
	"term_id"       		integer NULL ,
	"subtotal"      		double NULL ,
	"tax"   			double NULL ,
	"bal_due"       		double NULL ,
	"active"        		char(1) NULL ,
	"freight"       		double NULL ,
	"taxcd" 			varchar(50) NULL ,
	"doc"   			varchar(10) NULL ,
	"rev"   			varchar(1) NULL ,
	"additional_information"        varchar(1000) NULL ,
	"autocreate_po" 		varchar(1) NULL ,
	"price_overide" 		varchar(1) NULL ,
	"term_description"      	varchar(100) NULL ,
	"attention_to"  		varchar(100) NULL ,
	"cancel"        		varchar(2) NULL , 
	 PRIMARY KEY ("po_number"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."vendor_purchases_orders" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."vendor_purchases_orders_details"
(
	"po_number"     		integer NOT NULL ,
	"dtl_no"        		integer NOT NULL ,
	"id"    			integer NULL ,
	"description"   		varchar(50) NULL ,
	"unit_price"    		double NULL ,
	"qty"   			integer NULL ,
	"unit"  			varchar(10) NULL ,
	"asap"  			varchar(1) NULL ,
	"delivery_days" 		integer NULL ,
	"price_overide_price"   	decimal(20,6) NULL ,
	"will_advise"   		char(1) NULL ,
	"additional_information"        varchar(1000) NULL ,
	"is_promo"      		varchar(2) NULL , 
	 PRIMARY KEY ("po_number", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."vendor_purchases_orders_details" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("asap", "delivery_days", "description", "dtl_no", "id", "po_number", "price_overide_price", "qty", "unit", "unit_price", "will_advise") ON "DBA"."vendor_purchases_orders_details" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."po_materials"
(
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"po_description"        	char(50) NULL ,
	"ll_id" 			float NULL ,
	"active"        		char(1) NULL ,
	"additional_information"        varchar(1000) NULL ,
	"not_linked"    		char(1) NULL ,
	"promo_type_id" 		integer NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."po_materials" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."vendor_purchases_orders_delivery"
(
	"po_number"     		integer NOT NULL ,
	"dtl_no"        		integer NOT NULL ,
	"date1" 			date NULL ,
	"qty1"  			integer NULL ,
	"date2" 			date NULL ,
	"qty2"  			integer NULL ,
	"date3" 			date NULL ,
	"qty3"  			integer NULL ,
	"date4" 			date NULL ,
	"qty4"  			integer NULL ,
	"date5" 			date NULL ,
	"qty5"  			integer NULL ,
	"date6" 			date NULL ,
	"qty6"  			integer NULL ,
	"date7" 			date NULL ,
	"qty7"  			integer NULL ,
	"date8" 			date NULL ,
	"qty8"  			integer NULL ,
	"date9" 			date NULL ,
	"qty9"  			integer NULL ,
	"date10"        		date NULL ,
	"qty10" 			integer NULL ,
	"date11"        		date NULL ,
	"qty11" 			integer NULL ,
	"date12"        		date NULL ,
	"qty12" 			integer NULL , 
	 PRIMARY KEY ("po_number", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."vendor_purchases_orders_delivery" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("date1", "date10", "date11", "date12", "date2", "date3", "date4", "date5", "date6", "date7", "date8", "date9", "dtl_no", "po_number", "qty1", "qty10", "qty11", "qty12", "qty2", "qty3", "qty4", "qty5", "qty6", "qty7", "qty8", "qty9") ON "DBA"."vendor_purchases_orders_delivery" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."proforma"
(
	"proforma_id"   		integer NOT NULL DEFAULT autoincrement ,
	"printed"       		char(1) NULL ,
	"form_type"     		char(1) NULL ,
	"add_comments"  		varchar(750) NULL ,
	"create_date"   		date NULL ,
	"freight"       		double NULL , 
	 PRIMARY KEY ("proforma_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."proforma" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("add_comments", "create_date", "form_type", "printed", "proforma_id") ON "DBA"."proforma" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."proforma_detail"
(
	"proforma_id"   		integer NOT NULL ,
	"prep_id"       		integer NOT NULL , 
	 PRIMARY KEY ("proforma_id", "prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."proforma_detail" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."vendor_purchase_orders_delivery2"
(
	"po_number"     		integer NOT NULL ,
	"dtl_no"        		integer NOT NULL ,
	"date"  			date NOT NULL ,
	"qty"   			integer NOT NULL ,
	"asap"  			varchar(1) NULL , 
	 PRIMARY KEY ("po_number", "dtl_no", "date"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."vendor_purchase_orders_delivery2" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."prep_file_location"
(
	"prep_id"       		integer NOT NULL ,
	"dtl_no"        		integer NOT NULL ,
	"file"  			varchar(512) NOT NULL ,
	"date_stored"   		date NULL ,
	"user_name"     		varchar(512) NULL ,
	"destination_directory" 	varchar(512) NULL ,
	"time_stored"   		time NULL ,
	"comments"      		char(512) NULL ,
	"is_photo"      		char(2) NULL ,
	"void_file"     		char(2) NULL ,
	"to_be_reviewed"        	char(2) NULL , 
	 PRIMARY KEY ("prep_id", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_file_location" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("comments", "date_stored", "destination_directory", "dtl_no", "file", "is_photo", "prep_id", "time_stored", "to_be_reviewed", "user_name", "void_file") ON "DBA"."prep_file_location" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."dealer_m_ln"
(
	"dealer_code"   		varchar(10) NOT NULL ,
	"prep_id"       		integer NOT NULL ,
	"credit_letter" 		timestamp NULL ,
	"thankyou_letter"       	timestamp NULL ,
	"invoice_date"  		timestamp NULL ,
	"date_entered"  		date NULL ,
	"first_user"    		varchar(20) NULL ,
	"credit_app_source"     	char(1) NULL , 
	 PRIMARY KEY ("dealer_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_m_ln" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."dealer_references"
(
	"dealer_code"   		char(6) NOT NULL ,
	"company"       		varchar(200) NOT NULL ,
	"phone" 			varchar(30) NULL ,
	"spoke_to"      		varchar(100) NULL ,
	"comments"      		varchar(300) NULL ,
	"pk_counter"    		integer NOT NULL DEFAULT autoincrement , 
	 PRIMARY KEY ("dealer_code", "pk_counter"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_references" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."dealer_verification_form"
(
	"dealer_code"   		char(6) NOT NULL ,
	"person_spoken_to"      	varchar(100) NOT NULL ,
	"send_dealer_case"      	char(2) NOT NULL ,
	"send_dealer_package"   	char(2) NOT NULL ,
	"additional_comments"   	char(200) NULL ,
	"send_dealer_package_ln"        char(2) NULL ,
	"send_dealer_package_bl"        char(2) NULL ,
	"approved_declined_by"  	char(2) NULL , 
	 PRIMARY KEY ("dealer_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_verification_form" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_verification_form" TO "FAXMAN"  FROM "DBA"
go
GRANT UPDATE("additional_comments", "dealer_code", "person_spoken_to", "send_dealer_case", "send_dealer_package", "send_dealer_package_bl", "send_dealer_package_ln") ON "DBA"."dealer_verification_form" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_Ra_temp"
(
	"prep_id"       		float NULL ,
	"return_no"     		char(10) NULL ,
	"age_of_cover"  		float NULL ,
	"original_order_no"     	char(15) NULL ,
	"ra_approved_by"        	char(25) NULL ,
	"ra_inspected_by"       	char(25) NULL ,
	"repaired_no_times"     	float NULL ,
	"ra_ordered_by" 		char(25) NULL ,
	"discard_cover" 		char(25) NULL ,
	"return_cover"  		char(25) NULL ,
	"warranty"      		char(1) NULL ,
	"damage_type"   		char(255) NULL ,
	"manufactured_by"       	char(35) NULL ,
	"repair_comments"       	char(300) NULL ,
	"old_cover_instructions"        char(255) NULL ,
	"number_original_springs"       float NULL ,
	"original_spring_cover_qty"     float NULL ,
	"anchors_returned"      	float NULL ,
	
)
go
CREATE TABLE "DBA"."dealer_change_form"
(
	"dealer_code"   		char(6) NOT NULL ,
	"dealer_name"   		char(35) NULL ,
	"addr1" 			char(35) NULL ,
	"addr2" 			char(35) NULL ,
	"city"  			char(50) NULL ,
	"state" 			char(3) NULL ,
	"zip"   			char(10) NULL ,
	"phone" 			char(50) NULL ,
	"fax_number"    		char(50) NULL ,
	"id_number"     		integer NOT NULL DEFAULT autoincrement ,
	"additional_information"        varchar(500) NULL ,
	"date_taken"    		date NULL ,
	"taken_by"      		varchar(20) NULL ,
	"spoke_to"      		varchar(20) NULL ,
	"processed"     		varchar(2) NULL ,
	"cell_phone"    		char(20) NULL , 
	 PRIMARY KEY ("dealer_code", "id_number"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_change_form" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."standards_treatment"
(
	"plate_no"      		varchar(25) NOT NULL ,
	"treatment_code"        	char(10) NOT NULL ,
	"quantity"      		integer NOT NULL , 
	 PRIMARY KEY ("plate_no", "treatment_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."standards_treatment" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("plate_no", "quantity", "treatment_code") ON "DBA"."standards_treatment" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_calc_freight"
(
	"prep_id"       		integer NOT NULL ,
	"calculated_freight"    	double NOT NULL ,
	"ship_hold_cal" 		varchar(2) NOT NULL DEFAULT 'Y' ,
	"actual_freight"        	double NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_calc_freight" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("actual_freight", "calculated_freight", "prep_id", "ship_hold_cal") ON "DBA"."prep_calc_freight" TO "alfredojimenez" FROM "DBA"
go
CREATE TABLE "DBA"."rtn_bluesheet_copy"
(
	"id"    			float NULL ,
	"rtn_number"    		float NULL ,
	
)
go
CREATE TABLE "DBA"."replacement_cover_request"
(
	"id_number"     		integer NOT NULL DEFAULT autoincrement ,
	"entered_by"    		varchar(20) NOT NULL ,
	"date_entered"  		date NOT NULL ,
	"person_calling"        	varchar(20) NULL ,
	"job_type"      		varchar(2) NULL ,
	"original_order"        	integer NULL ,
	"dealer_code"   		varchar(10) NULL ,
	"jobname_new"   		varchar(50) NULL ,
	"process"       		varchar(2) NULL ,
	"prep_id"       		integer NULL ,
	"quote_mesh"    		varchar(2) NULL ,
	"quote_ul_drains"       	varchar(2) NULL ,
	"quote_ul_no_drains"    	varchar(2) NULL ,
	"quote_tan"     		varchar(2) NULL ,
	"quote_black"   		varchar(2) NULL ,
	"quote_grey"    		varchar(2) NULL ,
	"quote_blue"    		varchar(2) NULL ,
	"file_location" 		varchar(500) NULL ,
	"original_order_no_given"       varchar(2) NULL ,
	"verification_fax"      	varchar(2) NULL ,
	"additional_notes"      	varchar(300) NULL ,
	"original_order_no_not_prep"    integer NULL ,
	"quote_color"   		varchar(10) NULL ,
	"quote_ul_color"        	varchar(2) NULL ,
	"quote_ul_blue" 		varchar(2) NULL ,
	"quote_ul_tan"  		varchar(2) NULL ,
	"quote_ul_drains_color" 	varchar(2) NULL ,
	"quote_ul_drains_blue"  	varchar(2) NULL ,
	"quote_ul_drains_tan"   	varchar(2) NULL ,
	"prep_type"     		varchar(5) NULL ,
	"liner_pattern" 		integer NULL ,
	"wall"  			integer NULL ,
	"bottom"        		integer NULL ,
	"aqua_extreme"  		varchar(2) NULL ,
	"aqua_extreme_color"    	varchar(2) NULL ,
	"quote_ul_gray" 		char(2) NULL ,
	"quote_ul_drains_gray"  	char(2) NULL ,
	"actual_dealer" 		varchar(10) NULL ,
	"hardware_allowance_anchors"    varchar(2) NULL ,
	"aqua_extreme_brown"    	varchar(2) NULL ,
	"aqua_extreme_gray"     	varchar(2) NULL ,
	"om_vinyl"      		varchar(2) NULL ,
	"stock_id"      		integer NULL ,
	"serial_no"     		integer NULL , 
	 PRIMARY KEY ("id_number"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, REFERENCES ON "DBA"."replacement_cover_request" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."stock_its"
(
	"its"   			char(10) NOT NULL ,
	"stock_id"      		integer NOT NULL , 
	 PRIMARY KEY ("its"),
	
)
go
CREATE TABLE "DBA"."treatment_zone_code"
(
	"zone"  			integer NOT NULL ,
	"treatment_code"        	varchar(10) NOT NULL ,
	"treatment_type"        	varchar(2) NOT NULL ,
	"treatment_ms"  		varchar(10) NULL ,
	"id_num"        		integer NULL DEFAULT autoincrement , 
	 PRIMARY KEY ("zone", "treatment_code", "treatment_type"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."treatment_zone_code" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."treatment_zone_zip"
(
	"zone"  			integer NOT NULL ,
	"zipcodes"      		varchar(15) NOT NULL , 
	 PRIMARY KEY ("zone", "zipcodes"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."treatment_zone_zip" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."prep_ms_cs_input"
(
	"taken_date"    		date NULL ,
	"taken_user"    		char(20) NULL ,
	"scheduled"     		char(2) NULL ,
	"prepped"       		char(2) NULL ,
	"shipto_name"   		char(35) NULL ,
	"shipto_addr1"  		char(35) NULL ,
	"shipto_addr2"  		char(35) NULL ,
	"shipto_city"   		char(35) NULL ,
	"shipto_state_code"     	char(3) NULL ,
	"shipto_zip"    		char(6) NULL ,
	"dealer_code"   		char(6) NULL ,
	"prep_id"       		integer NOT NULL ,
	"treatment_cost"        	varchar(10) NULL ,
	"dealer_third"  		varchar(6) NULL ,
	"billto_dealer_code"    	varchar(6) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_ms_cs_input" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."prep_quickdraw"
(
	"prep_id"       		integer NOT NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_quickdraw" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("prep_id") ON "DBA"."prep_quickdraw" TO "ralph" FROM "DBA"
go
GRANT UPDATE("prep_id") ON "DBA"."prep_quickdraw" TO "PUBLIC" FROM "DBA"
go
GRANT UPDATE("prep_id") ON "DBA"."prep_quickdraw" TO "JohnPineda" FROM "DBA"
go
CREATE TABLE "DBA"."standards_shape"
(
	"id_no" 			integer NOT NULL DEFAULT autoincrement ,
	"company_shape_name"    	varchar(512) NOT NULL ,
	"jpg_field"     		varchar(512) NULL ,
	"active"        		varchar(2) NULL , 
	 PRIMARY KEY ("id_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."standards_shape" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."stock_linked_id"
(
	"id_no" 			integer NOT NULL DEFAULT autoincrement ,
	"stock_id_mesh" 		integer NULL ,
	"stock_id_ul_no_drains" 	integer NULL ,
	"stock_id_ul_drains"    	integer NULL ,
	"stock_id_mesh_color"   	integer NULL ,
	"stock_id_ul_drains_color"      integer NULL ,
	"stock_id_ul_no_drains_color"   integer NULL ,
	"solid_drains"  		integer NULL ,
	"solid_pump"    		integer NULL ,
	"stock_id_mesh_color_tan"       integer NULL ,
	"stock_id_mesh_color_black"     integer NULL ,
	"stock_id_mesh_color_gray"      integer NULL ,
	"stock_id_ul_drains_color_tan"  integer NULL ,
	"stock_id_ul_drains_color_gray" integer NULL ,
	"stock_id_ul_no_drains_color_tan" integer NULL ,
	"stock_id_ul_no_drains_color_gray" integer NULL ,
	"stock_id_aquaxtreme"   	integer NULL ,
	"stock_id_aquaxtreme_navy"      integer NULL ,
	"stock_id_aquaxtreme_brown"     integer NULL ,
	"stock_id_aquaxtreme_steel_gray" integer NULL , 
	 PRIMARY KEY ("id_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."stock_linked_id" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("id_no", "solid_drains", "solid_pump", "stock_id_aquaxtreme", "stock_id_aquaxtreme_brown", "stock_id_aquaxtreme_navy", "stock_id_mesh", "stock_id_mesh_color", "stock_id_mesh_color_black", "stock_id_mesh_color_gray", "stock_id_mesh_color_tan", "stock_id_ul_drains", "stock_id_ul_drains_color", "stock_id_ul_drains_color_gray", "stock_id_ul_drains_color_tan", "stock_id_ul_no_drains", "stock_id_ul_no_drains_color", "stock_id_ul_no_drains_color_gray", "stock_id_ul_no_drains_color_tan") ON "DBA"."stock_linked_id" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."aw_addresses"
(
	"dealer_code"   		char(6) NOT NULL ,
	"shipto_name"   		char(35) NOT NULL ,
	"shipto_addr1"  		char(35) NOT NULL ,
	"shipto_addr2"  		char(35) NOT NULL ,
	"shipto_city"   		char(20) NOT NULL ,
	"shipto_state"  		char(3) NOT NULL ,
	"shipto_zip"    		char(10) NOT NULL ,
	"billto_name"   		char(35) NOT NULL ,
	"billto_addr1"  		char(35) NOT NULL ,
	"billto_addr2"  		char(35) NOT NULL ,
	"billto_city"   		char(20) NOT NULL ,
	"billto_state"  		char(3) NOT NULL ,
	"billto_zip"    		char(10) NOT NULL ,
	"web_id"        		integer NOT NULL , 
	 PRIMARY KEY ("web_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_addresses" TO "lizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_addresses" TO "LoopLizard"  FROM "DBA"
go
CREATE TABLE "DBA"."aw_li_zips"
(
	"start_zip"     		integer NOT NULL ,
	"end_zip"       		integer NOT NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_li_zips" TO "admin" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_li_zips" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_li_zips" TO "lizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_li_zips" TO "LoopLizard"  FROM "DBA"
go
CREATE TABLE "DBA"."inventory_results"
(
	"id_number"     		integer NOT NULL DEFAULT autoincrement ,
	"datestamp"     		date NOT NULL ,
	"time_stamp"    		time NOT NULL ,
	"scanned_number"        	integer NULL ,
	"status"        		varchar(20) NULL , 
	 PRIMARY KEY ("id_number", "datestamp", "time_stamp"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."inventory_results" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("datestamp", "id_number", "scanned_number", "status", "time_stamp") ON "DBA"."inventory_results" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."aw_order"
(
	"transaction_id"        	bigint NOT NULL ,
	"subtotal"      		double NOT NULL ,
	"shipping_cost" 		double NOT NULL ,
	"sales_tax"     		double NOT NULL ,
	"approval_code" 		varchar(64) NULL ,
	"dealer_code"   		char(6) NULL ,
	"shipto_first_name"     	char(35) NULL ,
	"shipto_middle_initial" 	char(10) NULL ,
	"shipto_last_name"      	char(50) NULL ,
	"shipto_comapny"        	char(60) NULL ,
	"shipto_addr1"  		char(60) NULL ,
	"shipto_addr2"  		char(60) NULL ,
	"shipto_city"   		char(40) NULL ,
	"shipto_state"  		char(3) NULL ,
	"shipto_zip"    		char(10) NULL ,
	"shipto_country"        	varchar(10) NULL ,
	"billto_first_name"     	char(35) NOT NULL ,
	"billto_middle_initial" 	char(10) NULL ,
	"billto_last_name"      	char(50) NOT NULL ,
	"billto_company"        	char(60) NULL ,
	"billto_addr1"  		char(60) NOT NULL ,
	"billto_addr2"  		char(60) NULL ,
	"billto_city"   		char(40) NOT NULL ,
	"billto_state"  		char(3) NOT NULL ,
	"billto_zip"    		char(10) NOT NULL ,
	"billto_country"        	varchar(10) NULL ,
	"phone" 			char(25) NULL ,
	"email" 			char(60) NULL ,
	"cc_type"       		char(25) NULL , 
	 PRIMARY KEY ("transaction_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_order" TO "admin" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_order" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_order" TO "john"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_order" TO "john2"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_order" TO "ralph"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_order" TO "lizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_order" TO "LoopLizard"  FROM "DBA"
go
CREATE TABLE "DBA"."aw_order_detail"
(
	"transaction_id"        	bigint NOT NULL ,
	"hardware_code" 		char(10) NULL ,
	"stock_id"      		integer NULL ,
	"prep_id"       		integer NULL ,
	"quantity"      		integer NULL ,
	"processed_prep_id"     	integer NULL ,
	"jobname"       		char(50) NULL ,
	"po_no" 			char(25) NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_order_detail" TO "admin" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_order_detail" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_order_detail" TO "lizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_order_detail" TO "LoopLizard"  FROM "DBA"
go
CREATE TABLE "DBA"."aw_process"
(
	"transaction_id"        	bigint NOT NULL ,
	"completed"     		char(1) NOT NULL DEFAULT 'N' , 
	 PRIMARY KEY ("transaction_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_process" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_process" TO "admin" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_process" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_process" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."rtn_bluesheet_explanation_history"
(
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"dtl_no"        		integer NOT NULL ,
	"rtn_bluesheet" 		integer NOT NULL ,
	"description"   		varchar(300) NOT NULL ,
	"entry_user"    		varchar(20) NOT NULL ,
	"entry_date"    		date NOT NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."rtn_bluesheet_explanation_history" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("description", "dtl_no", "entry_date", "entry_user", "id", "rtn_bluesheet") ON "DBA"."rtn_bluesheet_explanation_history" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."aw_upcharge_conversion"
(
	"web_id"        		integer NOT NULL DEFAULT autoincrement ,
	"hardware_code" 		varchar(15) NOT NULL ,
	"grid_size"     		varchar(5) NOT NULL ,
	"area"  			integer NOT NULL ,
	"per_unit_cost" 		numeric(30,6) NOT NULL , 
	 PRIMARY KEY ("web_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_upcharge_conversion" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_upcharge_conversion" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_upcharge_conversion" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_upcharge_conversion" TO "admin" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."aw_upcharge_conversion" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."web_deposit"
(
	"id_number"     		integer NOT NULL DEFAULT autoincrement ,
	"amount"        		double NOT NULL ,
	"transaction_id"        	bigint NOT NULL ,
	"approval_code" 		varchar(100) NOT NULL ,
	"prep_id"       		integer NULL , 
	 PRIMARY KEY ("id_number"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."web_deposit" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("amount", "approval_code", "id_number", "prep_id", "transaction_id") ON "DBA"."web_deposit" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."fax_print_dealer"
(
	"id_number"     		integer NOT NULL DEFAULT autoincrement ,
	"document"      		varchar(100) NOT NULL ,
	"dealer_code"   		varchar(10) NOT NULL ,
	"printed"       		char(2) NULL DEFAULT 'N' ,
	"date_start"    		date NULL ,
	"date_end"      		date NULL ,
	"prep_type"     		char(5) NULL ,
	"dealer_code_prep"      	char(10) NULL , 
	 PRIMARY KEY ("id_number"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."fax_print_dealer" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("dealer_code", "document", "id_number", "printed") ON "DBA"."fax_print_dealer" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."cvln_to_lncv"
(
	"id_number"     		integer NOT NULL DEFAULT autoincrement ,
	"prep_type"     		varchar(2) NOT NULL ,
	"cs_user"       		varchar(20) NOT NULL ,
	"entry_date"    		date NOT NULL ,
	"person_calling"        	varchar(20) NOT NULL ,
	"dealer_code"   		varchar(10) NOT NULL ,
	"jobname"       		varchar(200) NULL ,
	"prep_id"       		integer NULL ,
	"order_no"      		integer NULL ,
	"obstructions"  		char(2) NULL ,
	"obstructions_description"      varchar(1000) NULL ,
	"step"  			varchar(2) NULL ,
	"step_description"      	varchar(1000) NULL ,
	"type_deck"     		varchar(1000) NULL ,
	"job_linked"    		varchar(2) NULL ,
	"job_linked_to_prep"    	integer NULL ,
	"form_what"     		varchar(2) NULL ,
	"mesh"  			integer NULL ,
	"mesh_color"    		integer NULL ,
	"ul_drains"     		integer NULL ,
	"ul_no_drains"  		integer NULL ,
	"ul_drains_color"       	integer NULL ,
	"ul_no_drains_color"    	integer NULL ,
	"liner_pattern" 		integer NULL ,
	"liner_wall"    		integer NULL ,
	"liner_bottom"  		integer NULL ,
	"additional_information"        varchar(500) NULL ,
	"prep_id_new"   		integer NULL ,
	"inground_mesh_aqua"    	integer NULL ,
	"inground_mesh_aqua_color"      integer NULL , 
	 PRIMARY KEY ("id_number"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."cvln_to_lncv" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("additional_information", "cs_user", "dealer_code", "entry_date", "form_what", "id_number", "inground_mesh_aqua", "inground_mesh_aqua_color", "job_linked", "job_linked_to_prep", "jobname", "liner_bottom", "liner_pattern", "liner_wall", "mesh", "mesh_color", "obstructions", "obstructions_description", "order_no", "person_calling", "prep_id", "prep_id_new", "prep_type", "step", "step_description", "type_deck", "ul_drains", "ul_drains_color", "ul_no_drains", "ul_no_drains_color") ON "DBA"."cvln_to_lncv" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."ln_above_grounds"
(
	"liner_id"      		integer NOT NULL DEFAULT autoincrement ,
	"product_id"    		integer NOT NULL ,
	"manf_size"     		varchar(255) NOT NULL ,
	"object_size"   		varchar(255) NOT NULL ,
	"shape" 			varchar(50) NOT NULL ,
	"base_cost"     		double NOT NULL ,
	"weight"        		double NOT NULL DEFAULT 0 ,
	"active"        		char(1) NOT NULL ,
	"create_date"   		date NOT NULL DEFAULT current date ,
	"create_user"   		varchar(50) NOT NULL DEFAULT current user ,
	"bead_id"       		integer NOT NULL ,
	"description"   		varchar(255) NOT NULL ,
	"plate_no"      		varchar(100) NOT NULL ,
	"picture"       		varchar(100) NULL ,
	"modified_date" 		date NULL ,
	"modified_user" 		varchar(50) NULL ,
	"base_cost_new" 		double NULL ,
	"flag_nde"      		char(1) NULL ,
	"flag_h"        		char(1) NULL , 
	 PRIMARY KEY ("liner_id"),
	
)
go

ALTER TABLE "DBA"."ln_above_grounds" ADD  UNIQUE 
(
	"plate_no"
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."ln_above_grounds" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "base_cost", "base_cost_new", "bead_id", "create_date", "create_user", "description", "flag_h", "flag_nde", "liner_id", "manf_size", "modified_date", "modified_user", "object_size", "picture", "plate_no", "product_id", "shape", "weight") ON "DBA"."ln_above_grounds" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."ln_bead_types"
(
	"bead_id"       		integer NOT NULL DEFAULT autoincrement ,
	"description"   		varchar(50) NOT NULL , 
	 PRIMARY KEY ("bead_id"),
	
)
go
GRANT SELECT, INSERT, ALTER ON "DBA"."ln_bead_types" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("bead_id", "description") ON "DBA"."ln_bead_types" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."liner_ag_production"
(
	"serial_number" 		varchar(100) NOT NULL ,
	"plate_no"      		varchar(100) NOT NULL ,
	"prep_number"   		integer NULL ,
	"bleep_status"  		integer NULL ,
	"status"        		varchar(5) NULL ,
	"year"  			integer NULL , 
	 PRIMARY KEY ("serial_number", "plate_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."liner_ag_production" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("bleep_status", "plate_no", "prep_number", "serial_number", "status", "year") ON "DBA"."liner_ag_production" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."omit_worksheet_Special_instructions"
(
	"treatment_code"        	varchar(10) NOT NULL , 
	 PRIMARY KEY ("treatment_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."omit_worksheet_Special_instructions" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("treatment_code") ON "DBA"."omit_worksheet_Special_instructions" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_web_orders"
(
	"prep_id"       		integer NOT NULL ,
	"order_type"    		varchar(3) NOT NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
CREATE TABLE "DBA"."dealer_promotion"
(
	"dealer_code"   		char(6) NOT NULL ,
	"brick_mortar_promotion_2013"   char(1) NOT NULL , 
	 PRIMARY KEY ("dealer_code"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_promotion" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."dealer_file_location"
(
	"dealer_code"   		varchar(10) NOT NULL ,
	"dtl_no"        		integer NOT NULL ,
	"file"  			varchar(500) NOT NULL ,
	"date_stored"   		date NOT NULL ,
	"user_name"     		varchar(100) NOT NULL ,
	"destination_directory" 	varchar(200) NOT NULL ,
	"time_stored"   		time NOT NULL ,
	"comments"      		varchar(100) NULL , 
	 PRIMARY KEY ("dealer_code", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_file_location" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."dealer_file_location" TO "admin"  FROM "DBA"
go
CREATE TABLE "DBA"."material_product"
(
	"id_num"        		integer NOT NULL DEFAULT autoincrement ,
	"ll_id" 			integer NOT NULL ,
	"product_id"    		integer NOT NULL , 
	 PRIMARY KEY ("id_num"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."material_product" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("id_num", "ll_id", "product_id") ON "DBA"."material_product" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."country"
(
	"name"  			varchar(100) NOT NULL ,
	"code"  			varchar(5) NOT NULL ,
	"phone_code"    		varchar(25) NOT NULL , 
	 PRIMARY KEY ("code"),
	
)
go
CREATE TABLE "DBA"."sales_call_log_responses"
(
	"response_id"   		unsigned int NOT NULL DEFAULT autoincrement ,
	"respond_to_id" 		unsigned int NOT NULL ,
	"respond_to_person"     	varchar(50) NOT NULL ,
	"entry_user"    		varchar(50) NOT NULL ,
	"entry_date"    		date NOT NULL ,
	"response_entry"        	varchar(2000) NULL ,
	"sales_person"  		varchar(50) NULL ,
	"call_id"       		unsigned int NULL , 
	 PRIMARY KEY ("response_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."sales_call_log_responses" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."sales_call_log_responses" TO "john2" WITH GRANT OPTION
go
CREATE TABLE "DBA"."sales_territory_location"
(
	"sales_territory"       	varchar(10) NOT NULL ,
	"state" 			varchar(10) NOT NULL ,
	"zip"   			varchar(10) NOT NULL ,
	"zip2"  			varchar(10) NULL ,
	"exclusion_territory"   	varchar(10) NULL , 
	 PRIMARY KEY ("sales_territory", "state", "zip"),
	
)
go
CREATE TABLE "DBA"."markdowns_subdepartment"
(
	"code"  			varchar(100) NOT NULL ,
	"description"   		varchar(500) NULL ,
	"department"    		varchar(500) NULL ,
	"reason"        		varchar(500) NULL ,
	"as_per"        		varchar(500) NULL ,
	"active"        		varchar(2) NULL ,
	"create_date"   		date NULL ,
	"create_user"   		varchar(20) NULL , 
	 PRIMARY KEY ("code"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."markdowns_subdepartment" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "as_per", "code", "department", "description", "reason") ON "DBA"."markdowns_subdepartment" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."liner_tracking"
(
	"prep_id"       		integer NOT NULL ,
	"status"        		integer NOT NULL ,
	"skid"  			integer NULL ,
	"year_bleep"    		integer NULL ,
	"date_bleep"    		date NULL ,
	"time_bleep"    		time NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."liner_tracking" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE ON "DBA"."liner_tracking" TO "bleep58"  FROM "DBA"
go
GRANT UPDATE("prep_id", "skid", "status") ON "DBA"."liner_tracking" TO "bleep58" FROM "DBA"
go
CREATE TABLE "DBA"."dealer_log"
(
	"dealer_code"   		char(6) NOT NULL ,
	"modified_date" 		date NOT NULL DEFAULT current date ,
	"modified_user" 		varchar(25) NOT NULL ,
	"note"  			varchar(150) NOT NULL , 
	 PRIMARY KEY ("dealer_code"),
	
)
go
CREATE TABLE "DBA"."prep_image_loc"
(
	"prep_id"       		integer NOT NULL ,
	"prep_id_image_loc"     	integer NOT NULL ,
	"credit_memo_print"     	varchar(2) NULL ,
	"credit_memo_date_entered"      date NULL ,
	"credit_memo_date_printed"      date NULL ,
	"credit_memo_amount"    	double NULL ,
	"credit_memo_created"   	varchar(2) NULL ,
	"credit_memo_date_created"      date NULL ,
	"credit_memo_artran"    	integer NULL ,
	"cost_added_to_main_job"        char(2) NULL ,
	"artran_canceled"       	char(2) NULL ,
	"cfa"   			char(2) NULL DEFAULT 'N' , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."prep_image_loc" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("artran_canceled", "cfa", "cost_added_to_main_job", "credit_memo_amount", "credit_memo_artran", "credit_memo_created", "credit_memo_date_created", "credit_memo_date_entered", "credit_memo_date_printed", "credit_memo_print", "prep_id", "prep_id_image_loc") ON "DBA"."prep_image_loc" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."universal_sales_territory"
(
	"sales_territory"       	varchar(10) NOT NULL ,
	"active"        		varchar(2) NOT NULL , 
	 PRIMARY KEY ("sales_territory"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."universal_sales_territory" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "sales_territory") ON "DBA"."universal_sales_territory" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."cpu_pickup"
(
	"id_number"     		integer NOT NULL DEFAULT autoincrement ,
	"pick_up_by"    		varchar(100) NULL ,
	"pulled_by"     		varchar(100) NULL ,
	"date_pickup"   		date NULL ,
	"status"        		varchar(5) NULL ,
	"time_pickup"   		time NULL ,
	"dealer_code"   		varchar(10) NULL , 
	 PRIMARY KEY ("id_number"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."cpu_pickup" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("date_pickup", "dealer_code", "id_number", "pick_up_by", "pulled_by", "status", "time_pickup") ON "DBA"."cpu_pickup" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."cpu_pickup_error"
(
	"id_number"     		integer NOT NULL ,
	"error_scan"    		varchar(100) NOT NULL ,
	"reason_scan"   		varchar(100) NOT NULL ,
	"dtl_no"        		integer NOT NULL , 
	 PRIMARY KEY ("id_number", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."cpu_pickup_error" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("dtl_no", "error_scan", "id_number", "reason_scan") ON "DBA"."cpu_pickup_error" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."cpu_pickup_prep_id"
(
	"id_number"     		integer NOT NULL ,
	"prep_id"       		integer NOT NULL ,
	"dtl_no"        		integer NOT NULL ,
	"selected_item" 		char(10) NULL , 
	 PRIMARY KEY ("id_number", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."cpu_pickup_prep_id" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("dtl_no", "id_number", "prep_id", "selected_item") ON "DBA"."cpu_pickup_prep_id" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."language_translation"
(
	"english"       		varchar(300) NOT NULL ,
	"french"        		varchar(300) NULL ,
	"italian"       		varchar(300) NULL ,
	"spanish"       		varchar(300) NULL ,
	"id_number"     		integer NOT NULL DEFAULT autoincrement ,
	"date_created"  		date NULL , 
	 PRIMARY KEY ("english"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."language_translation" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."calc_prep"
(
	"prep_id"       		integer NOT NULL DEFAULT autoincrement ,
	"selected_quote_no"     	smallint NULL ,
	"dealer_code"   		char(6) NOT NULL ,
	"billto_dealer_code"    	char(6) NOT NULL ,
	"term_id"       		integer NOT NULL ,
	"prep_type"     		char(1) NOT NULL ,
	"type"  			char(2) NULL ,
	"entry_date"    		date NOT NULL ,
	"order_no"      		integer NULL ,
	"order_date"    		date NULL ,
	"po_no" 			char(25) NULL ,
	"jobname"       		char(50) NULL ,
	"shipto_code"   		char(6) NOT NULL ,
	"shipto_name"   		char(35) NULL ,
	"shipto_contact"        	char(35) NULL ,
	"shipto_addr1"  		char(35) NULL ,
	"shipto_addr2"  		char(35) NULL ,
	"shipto_city"   		char(20) NULL ,
	"shipto_state_code"     	char(3) NULL ,
	"shipto_zip"    		char(10) NULL ,
	"status"        		char(3) NULL ,
	"replacement"   		char(1) NULL ,
	"warranty"      		char(1) NULL ,
	"manufactured_by"       	varchar(35) NULL ,
	"original_order_no"     	char(15) NULL ,
	"return_no"     		char(10) NULL ,
	"old_cover_instructions"        varchar(255) NULL ,
	"credit_release_flag"   	char(1) NULL ,
	"shipping_release_flag" 	char(1) NULL ,
	"manf_location" 		char(10) NULL ,
	"deposit_amt_received"  	double NULL DEFAULT 0 ,
	"chafe_length"  		smallint NULL ,
	"create_date"   		date NULL ,
	"create_user"   		char(15) NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL ,
	"print_estimate"        	char(1) NULL ,
	"print_notify"  		char(1) NULL ,
	"print_ack"     		char(1) NULL ,
	"print_invoice" 		char(1) NULL ,
	"print_worksheet"       	char(1) NULL ,
	"display_cover" 		char(1) NULL ,
	"called_with_price"     	char(1) NULL ,
	"cover_in_building"     	char(1) NULL ,
	"quick_stock_order"     	double NULL ,
	"pricing_description"   	varchar(255) NULL ,
	"discount_type" 		char(1) NULL ,
	"dealer_discount"       	char(50) NULL ,
	"hardware_discount"     	char(50) NULL ,
	"tech_date"     		timestamp NULL ,
	"ab_plot_flag"  		char(1) NULL ,
	"shipout_batch_id"      	timestamp NULL ,
	"deposit_amt_enclosed"  	numeric(9,2) NULL ,
	"previous_jobname"      	char(25) NULL ,
	"route_to"      		char(10) NULL ,
	"manf_hold"     		char(1) NULL ,
	"checked_for_accuracy"  	char(1) NULL ,
	"billto_estm_doc"       	char(1) NULL ,
	"billto_notify_doc"     	char(1) NULL ,
	"billto_ack_doc"        	char(1) NULL ,
	"dealer_estm_doc"       	char(1) NULL ,
	"dealer_notify_doc"     	char(1) NULL ,
	"dealer_ack_doc"        	char(1) NULL ,
	"shipto_tax_code"       	char(10) NULL ,
	"number_original_springs"       smallint NULL ,
	"original_storage_bag"  	char(1) NULL ,
	"ups_track"     		char(25) NULL ,
	"from_web"      		char(1) NULL ,
	"from_plot_prg" 		char(1) NULL ,
	"dispose_date"  		date NULL ,
	"age_of_cover"  		integer NULL ,
	"original_spring_cover_qty"     integer NULL ,
	"damage_type"   		char(255) NULL ,
	"discard_cover" 		char(25) NULL ,
	"return_no_work"        	char(1) NULL ,
	"full_hardware" 		char(1) NULL ,
	"back_to_tech"  		char(1) NULL ,
	"altered"       		integer NULL ,
	"return_cover"  		char(25) NULL ,
	"ra_ordered_by" 		char(25) NULL ,
	"ra_approved_by"        	char(25) NULL ,
	"ra_inspected_by"       	char(25) NULL ,
	"will_not_repair"       	char(1) NULL ,
	"repaired_no_times"     	integer NULL ,
	"ra_inspection_date"    	date NULL ,
	"repair_comments"       	char(300) NULL ,
	"anchors_returned"      	integer NULL ,
	"warranty_reasons"      	char(255) NULL ,
	"buckles_returned"      	integer NULL ,
	"Alter_Job"     		char(1) NULL ,
	"Liner_reference"       	integer NULL ,
	"print_hardware"        	char(1) NULL ,
	"billto_form75_doc"     	char(1) NULL ,
	"dealer_form75_doc"     	char(1) NULL ,
	"Liner_Perimeter"       	integer NULL ,
	"Roll_Serial_No"        	integer NULL ,
	"liner_bottom"  		integer NULL ,
	"Liner_step"    		char(1) NULL ,
	"requote"       		char(1) NULL ,
	"third_dealer"  		char(6) NULL ,
	"billto_proforma_doc"   	char(1) NULL ,
	"photo" 			char(2) NULL ,
	"template"      		char(2) NULL ,
	"measure_by_sales"      	char(2) NULL ,
	"back_to_imageloc"      	char(2) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."calc_prep_manf"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"product_id"    		integer NULL ,
	"product_group" 		char(1) NULL ,
	"grid_size"     		char(10) NULL ,
	"qty"   			smallint NULL ,
	"out_of_stock_flag"     	char(1) NULL ,
	"shape" 			varchar(50) NULL ,
	"object_size"   		varchar(255) NULL ,
	"manf_size"     		varchar(255) NULL ,
	"averaged_flag" 		char(1) NULL ,
	"safe_flag"     		char(1) NULL ,
	"price_table_flag"      	char(1) NULL ,
	"sqft"  			double NULL ,
	"base_cost"     		double NULL ,
	"cover_hardware_cost"   	double NULL ,
	"markdown"      		double NULL ,
	"shipping_cost" 		double NULL ,
	"sales_tax"     		double NULL ,
	"dealer_discount"       	varchar(50) NULL ,
	"ship_via_id"   		integer NULL ,
	"number_of_cartons"     	smallint NULL ,
	"weight_of_cartons"     	double NULL ,
	"create_date"   		date NULL ,
	"create_user"   		char(15) NULL ,
	"last_modified_date"    	date NULL ,
	"last_modified_user"    	char(15) NULL ,
	"extensions"    		integer NULL ,
	"hardware_discount"     	char(50) NULL ,
	"deposit_requested"     	double NULL ,
	"deposit_acceptable"    	double NULL ,
	"ship_date"     		date NULL ,
	"drop_date"     		date NULL ,
	"ups_zone"      		char(10) NULL ,
	"cover_net"     		double NULL ,
	"other_list"    		double NULL ,
	"other_net"     		double NULL ,
	"total" 			double NULL ,
	"waiting_for_price"     	char(1) NULL ,
	"stock_master_id"       	integer NULL ,
	"status"        		integer NULL ,
	"treatment_cost"        	double NULL ,
	"c_end" 			char(1) NULL ,
	"rough_estimate"        	char(1) NULL ,
	"carton_types"  		char(300) NULL ,
	"carton_weights"        	char(400) NULL ,
	"stock_serial_numbers"  	varchar(1000) NULL ,
	"cover_list"    		numeric(9,2) NULL ,
	"old_cover_list"        	numeric(9,2) NULL ,
	"cod_fee"       		double NULL ,
	"pool_shape"    		char(50) NULL ,
	"COD_Changes"   		double NULL ,
	"Liner_Wall_Thickness"  	integer NULL ,
	"Liner_Bottom_Thickness"        integer NULL ,
	"Liner_Overide" 		char(5) NULL ,
	"plate_no"      		varchar(10) NULL ,
	"ln_is_estimate"        	varchar(2) NULL ,
	"replace"       		varchar(2) NULL ,
	"paid_in_full"  		varchar(2) NULL DEFAULT 'N' ,
	"stock_master_id_ln_ag" 	integer NULL , 
	 PRIMARY KEY ("prep_id", "quote_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_manf" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_manf" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_manf" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_manf" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."calc_prep_manf_admin"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"admin_discount_type"   	char(1) NULL ,
	"admin_discount"        	char(20) NULL ,
	"admin_no_charge_net"   	char(1) NULL ,
	"admin_no_charge_freight"       char(1) NULL ,
	"admin_description"     	varchar(255) NULL ,
	"deposit_required"      	char(1) NULL ,
	"deposit_flat_amount"   	integer NULL ,
	"deposit_min_pct"       	integer NULL ,
	"deposit_source"        	char(1) NULL ,
	"deposit_max_pct"       	integer NULL ,
	"admin_description_dept"        varchar(255) NULL ,
	"admin_description_reason"      varchar(255) NULL ,
	"admin_description_as_per"      varchar(30) NULL ,
	"admin_description_date"        date NULL ,
	"admin_description_person"      varchar(30) NULL ,
	"deposit_override"      	char(1) NULL ,
	"dept_markdowns"        	varchar(255) NULL ,
	"giftcard"      		varchar(255) NULL ,
	"fixed_freight" 		double NULL , 
	 PRIMARY KEY ("prep_id", "quote_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_manf_admin" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_manf_admin" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_manf_admin" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_manf_admin" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."calc_prep_hardware"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"dtl_no"        		integer NOT NULL ,
	"hardware_code" 		char(10) NOT NULL ,
	"quantity"      		integer NULL ,
	"actual_quantity"       	integer NULL ,
	"unit"  			char(10) NULL ,
	"unit_price"    		double NULL ,
	"charge_flag"   		char(1) NULL ,
	"last_modified_date"    	date NULL ,
	"last_modified_user"    	char(15) NULL ,
	"additional_flag"       	char(1) NOT NULL ,
	"source"        		char(1) NULL ,
	"up_charge_flag"        	char(1) NULL ,
	"units" 			integer NULL ,
	"weight"        		double NULL , 
	 PRIMARY KEY ("prep_id", "quote_no", "dtl_no", "additional_flag"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_hardware" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_hardware" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_hardware" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_hardware" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."calc_prep_treatment"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"dtl_no"        		integer NOT NULL ,
	"treatment_code"        	char(10) NOT NULL ,
	"quantity"      		integer NULL ,
	"actual_quantity"       	integer NULL ,
	"unit"  			char(10) NULL ,
	"unit_price"    		double NULL ,
	"charge_flag"   		char(1) NULL ,
	"last_modified_date"    	date NULL ,
	"last_modified_user"    	char(15) NULL ,
	"source"        		char(1) NULL , 
	 PRIMARY KEY ("prep_id", "quote_no", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_treatment" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_treatment" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_treatment" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_treatment" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."calc_prep_special_instructions"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"dtl_no"        		integer NOT NULL ,
	"code"  			char(10) NOT NULL ,
	"short_description"     	varchar(50) NULL ,
	"long_description"      	varchar(255) NULL ,
	"active_flag"   		char(1) NULL ,
	"print_warranty_flag"   	char(1) NULL ,
	"source"        		char(1) NULL , 
	 PRIMARY KEY ("prep_id", "quote_no", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_special_instructions" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_special_instructions" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_special_instructions" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_special_instructions" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."calc_prep_blue_dot"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"dtl_no"        		smallint NOT NULL ,
	"text"  			varchar(255) NULL ,
	"date_cleared"  		date NULL ,
	"cleared_by"    		varchar(35) NULL ,
	"last_modified_date"    	date NULL ,
	"last_modified_user"    	char(15) NULL ,
	"source"        		char(1) NULL ,
	"answer"        		varchar(255) NULL ,
	"markable"      		char(5) NULL ,
	"foreign_version"       	char(255) NULL , 
	 PRIMARY KEY ("prep_id", "quote_no", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_blue_dot" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_blue_dot" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_blue_dot" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_blue_dot" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."calc_prep_comments"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"dtl_no"        		integer NOT NULL ,
	"category"      		char(10) NOT NULL ,
	"type"  			char(10) NOT NULL ,
	"text"  			varchar(255) NULL ,
	"active"        		char(1) NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL ,
	"dealer_flag"   		char(1) NULL ,
	"source"        		char(1) NULL , 
	 PRIMARY KEY ("prep_id", "quote_no", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_comments" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_comments" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_comments" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_comments" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."calc_prep_rules"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"dtl_no"        		integer NOT NULL ,
	"category"      		char(10) NOT NULL ,
	"type"  			char(10) NOT NULL ,
	"text"  			varchar(255) NULL ,
	"active"        		char(1) NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL ,
	"dealer_flag"   		char(1) NULL ,
	"source"        		char(1) NULL ,
	"section"       		char(10) NULL ,
	"pool_type"     		char(2) NULL , 
	 PRIMARY KEY ("prep_id", "quote_no", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_rules" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_rules" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_rules" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_prep_rules" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."calc_log"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		smallint NOT NULL ,
	"task"  			varchar(50) NULL ,
	"action"        		varchar(50) NULL ,
	"action_date"   		date NULL DEFAULT current date ,
	"action_time"   		time NULL DEFAULT current time ,
	"action_user"   		char(15) NULL DEFAULT current user ,
	"reference"     		varchar(50) NULL ,
	"status"        		integer NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_log" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_log" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_log" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_log" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."fax_que_problems"
(
	"fax_id"        		integer NOT NULL DEFAULT autoincrement ,
	"document_name" 		char(2500) NULL ,
	"phone_no"      		char(50) NULL ,
	"loc_code"      		char(5) NULL ,
	"loc_key"       		char(1000) NULL ,
	"document_desc" 		char(400) NULL ,
	"modified_date" 		date NULL ,
	"modified_time" 		time NULL ,
	"dealer_code"   		char(10) NULL , 
	 PRIMARY KEY ("fax_id"),
	
)
go
CREATE TABLE "DBA"."wt_description"
(
	"wt_id" 			integer NOT NULL ,
	"description"   		varchar(100) NOT NULL , 
	 PRIMARY KEY ("wt_id", "description"),
	
)
go
CREATE TABLE "DBA"."product_wt_type"
(
	"product_id"    		integer NOT NULL ,
	"wt_id" 			integer NOT NULL , 
	 PRIMARY KEY ("product_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."product_wt_type" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."warranty_claims_type"
(
	"id"    			integer NOT NULL DEFAULT autoincrement ,
	"warranty_type_code"    	varchar(30) NOT NULL ,
	"warranty_type_description"     varchar(100) NOT NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_claims_type" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_claims_type" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_claims_type" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."warranty_claims_address"
(
	"id_no" 			integer NOT NULL DEFAULT autoincrement ,
	"company_name"  		varchar(50) NULL ,
	"address"       		varchar(100) NULL ,
	"city"  			varchar(100) NULL ,
	"state" 			varchar(2) NULL ,
	"zip_code"      		varchar(15) NULL ,
	"attention"     		varchar(50) NULL ,
	"warranty_type_id"      	integer NULL ,
	"created_user"  		varchar(20) NULL ,
	"created_date"  		date NULL ,
	"all_fabric"    		char(2) NULL ,
	"mesh_green"    		integer NULL ,
	"solid_green"   		integer NULL ,
	"mesh_color"    		integer NULL ,
	"solid_color"   		integer NULL ,
	"vinyl" 			integer NULL , 
	 PRIMARY KEY ("id_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_claims_address" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_claims_address" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."warranty_claims_address" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."rtn_bluesheet_rtn_reason"
(
	"id_number"     		integer NOT NULL DEFAULT autoincrement ,
	"description"   		varchar(300) NOT NULL ,
	"created_by"    		char(100) NULL ,
	"created_date"  		date NULL ,
	"modified_by"   		char(100) NULL ,
	"modified_date" 		date NULL ,
	"active"        		char(2) NULL ,
	"jobtype"       		char(2) NULL ,
	"category_id"   		integer NULL , 
	 PRIMARY KEY ("id_number"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."rtn_bluesheet_rtn_reason" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "category_id", "created_by", "created_date", "description", "id_number", "jobtype", "modified_by", "modified_date") ON "DBA"."rtn_bluesheet_rtn_reason" TO "PUBLIC" FROM "DBA"
go
GRANT UPDATE("active", "created_by", "created_date", "modified_by", "modified_date") ON "DBA"."rtn_bluesheet_rtn_reason" TO "maryellen" FROM "DBA"
go
CREATE TABLE "DBA"."tbl_products_cover_hardware"
(
	"web_id"        		integer NOT NULL ,
	"hardware_code" 		varchar(10) NOT NULL ,
	"web_title"     		varchar(63) NOT NULL ,
	"description"   		varchar(255) NOT NULL ,
	"unit_price"    		decimal(12,6) NOT NULL ,
	"weight_per_unit"       	float NOT NULL ,
	"sqft"  			integer NOT NULL ,
	"grid_size"     		varchar(5) NOT NULL , 
	 PRIMARY KEY ("web_id"),
	
)
go
COMMENT ON TABLE "DBA"."tbl_products_cover_hardware" IS 
	'Import data from the ''Stock Upcharge Conversion Creation 2015.xls'' excel file in your Excel directory, or C:\\Projects 9.0\\Prep.'
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."tbl_products_cover_hardware" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."tbl_products_cover_hardware" TO "admin"  FROM "DBA"
go
CREATE TABLE "DBA"."special_discount"
(
	"identifier"    		integer NOT NULL DEFAULT autoincrement ,
	"description"   		varchar(100) NULL ,
	"discount_type" 		varchar(10) NOT NULL ,
	"increment"     		integer NOT NULL ,
	"discount"      		varchar(500) NOT NULL ,
	"create_user"   		varchar(500) NOT NULL ,
	"active"        		varchar(2) NOT NULL ,
	"create_date"   		date NULL ,
	"dealer_code"   		varchar(10) NULL , 
	 PRIMARY KEY ("identifier"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."special_discount" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "create_date", "create_user", "dealer_code", "description", "discount", "discount_type", "identifier", "increment") ON "DBA"."special_discount" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."special_discount_detail"
(
	"identifier"    		integer NOT NULL ,
	"dtl_no"        		integer NOT NULL ,
	"prep_id"       		integer NULL ,
	"amount"        		double NULL DEFAULT 0 , 
	 PRIMARY KEY ("identifier", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."special_discount_detail" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("amount", "dtl_no", "identifier", "prep_id") ON "DBA"."special_discount_detail" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."co_op_certificate"
(
	"dealer_code"   		char(6) NOT NULL ,
	"amount"        		double NOT NULL ,
	"year_certificate"      	integer NOT NULL ,
	"identifier"    		integer NOT NULL DEFAULT autoincrement ,
	"children_modifier"     	double NULL DEFAULT 0 ,
	"is_child"      		varchar(2) NULL ,
	"print_certificate"     	varchar(2) NULL ,
	"document_code" 		varchar(20) NULL , 
	 PRIMARY KEY ("dealer_code", "year_certificate"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."co_op_certificate" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("amount", "children_modifier", "dealer_code", "document_code", "identifier", "is_child", "print_certificate", "year_certificate") ON "DBA"."co_op_certificate" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."material_hardware"
(
	"id_num"        		integer NOT NULL DEFAULT autoincrement ,
	"ll_id" 			integer NOT NULL ,
	"hardware_code" 		char(10) NOT NULL , 
	 PRIMARY KEY ("id_num"),
	
)
go
GRANT SELECT, INSERT, DELETE, REFERENCES ON "DBA"."material_hardware" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("hardware_code", "id_num", "ll_id") ON "DBA"."material_hardware" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."material_code_special_alerts"
(
	"ll_id" 			smallint NOT NULL ,
	"month_alert"   		integer NOT NULL ,
	"alert" 			integer NOT NULL , 
	 PRIMARY KEY ("ll_id", "month_alert"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."material_code_special_alerts" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("alert", "ll_id", "month_alert") ON "DBA"."material_code_special_alerts" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prepCAD"
(
	"prep_id"       		integer NOT NULL DEFAULT autoincrement ,
	"selected_quote_no"     	smallint NULL ,
	"dealer_code"   		char(6) NOT NULL ,
	"billto_dealer_code"    	char(6) NOT NULL ,
	"term_id"       		integer NOT NULL ,
	"prep_type"     		char(1) NOT NULL ,
	"type"  			char(2) NULL ,
	"entry_date"    		date NOT NULL ,
	"order_no"      		integer NULL ,
	"order_date"    		date NULL ,
	"po_no" 			char(25) NULL ,
	"jobname"       		char(50) NULL ,
	"shipto_code"   		char(6) NOT NULL ,
	"shipto_name"   		char(35) NULL ,
	"shipto_contact"        	char(35) NULL ,
	"shipto_addr1"  		char(35) NULL ,
	"shipto_addr2"  		char(35) NULL ,
	"shipto_city"   		char(20) NULL ,
	"shipto_state_code"     	char(3) NULL ,
	"shipto_zip"    		char(10) NULL ,
	"status"        		char(3) NULL ,
	"replacement"   		char(1) NULL ,
	"warranty"      		char(1) NULL ,
	"manufactured_by"       	varchar(35) NULL ,
	"original_order_no"     	char(15) NULL ,
	"return_no"     		char(10) NULL ,
	"old_cover_instructions"        varchar(255) NULL ,
	"credit_release_flag"   	char(1) NULL ,
	"shipping_release_flag" 	char(1) NULL ,
	"manf_location" 		char(10) NULL ,
	"deposit_amt_received"  	double NULL DEFAULT 0 ,
	"chafe_length"  		smallint NULL ,
	"create_date"   		date NULL ,
	"create_user"   		char(15) NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	char(15) NOT NULL ,
	"print_estimate"        	char(1) NULL ,
	"print_notify"  		char(1) NULL ,
	"print_ack"     		char(1) NULL ,
	"print_invoice" 		char(1) NULL ,
	"print_worksheet"       	char(1) NULL ,
	"display_cover" 		char(1) NULL ,
	"called_with_price"     	char(1) NULL ,
	"cover_in_building"     	char(1) NULL ,
	"quick_stock_order"     	double NULL ,
	"pricing_description"   	varchar(255) NULL ,
	"discount_type" 		char(1) NULL ,
	"dealer_discount"       	char(50) NULL ,
	"hardware_discount"     	char(50) NULL ,
	"tech_date"     		timestamp NULL ,
	"ab_plot_flag"  		char(1) NULL ,
	"shipout_batch_id"      	timestamp NULL ,
	"deposit_amt_enclosed"  	numeric(9,2) NULL ,
	"previous_jobname"      	char(25) NULL ,
	"route_to"      		char(10) NULL ,
	"manf_hold"     		char(1) NULL ,
	"checked_for_accuracy"  	char(1) NULL ,
	"billto_estm_doc"       	char(1) NULL ,
	"billto_notify_doc"     	char(1) NULL ,
	"billto_ack_doc"        	char(1) NULL ,
	"dealer_estm_doc"       	char(1) NULL ,
	"dealer_notify_doc"     	char(1) NULL ,
	"dealer_ack_doc"        	char(1) NULL ,
	"shipto_tax_code"       	char(10) NULL ,
	"number_original_springs"       smallint NULL ,
	"original_storage_bag"  	char(1) NULL ,
	"ups_track"     		char(25) NULL ,
	"from_web"      		char(1) NULL ,
	"from_plot_prg" 		char(1) NULL ,
	"dispose_date"  		date NULL ,
	"age_of_cover"  		integer NULL ,
	"original_spring_cover_qty"     integer NULL ,
	"damage_type"   		char(255) NULL ,
	"discard_cover" 		char(25) NULL ,
	"return_no_work"        	char(1) NULL ,
	"full_hardware" 		char(1) NULL ,
	"back_to_tech"  		char(1) NULL ,
	"altered"       		integer NULL ,
	"return_cover"  		char(25) NULL ,
	"ra_ordered_by" 		char(25) NULL ,
	"ra_approved_by"        	char(25) NULL ,
	"ra_inspected_by"       	char(25) NULL ,
	"will_not_repair"       	char(1) NULL ,
	"repaired_no_times"     	integer NULL ,
	"ra_inspection_date"    	date NULL ,
	"repair_comments"       	char(300) NULL ,
	"anchors_returned"      	integer NULL ,
	"warranty_reasons"      	char(255) NULL ,
	"buckles_returned"      	integer NULL ,
	"alter_job"     		char(1) NULL ,
	"liner_reference"       	integer NULL ,
	"print_hardware"        	char(1) NULL ,
	"billto_form75_doc"     	char(1) NULL ,
	"dealer_form75_doc"     	char(1) NULL ,
	"liner_perimeter"       	integer NULL ,
	"roll_serial_no"        	integer NULL ,
	"liner_bottom"  		integer NULL ,
	"liner_step"    		char(1) NULL ,
	"requote"       		char(1) NULL ,
	"third_dealer"  		char(6) NULL ,
	"billto_proforma_doc"   	char(1) NULL ,
	"photo" 			char(2) NULL ,
	"template"      		char(2) NULL ,
	"measure_by_sales"      	char(2) NULL ,
	"back_to_imageloc"      	char(2) NULL ,
	"country"       		char(3) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
CREATE TABLE "DBA"."product_treatment"
(
	"product_id"    		integer NOT NULL ,
	"treatment_code"        	char(20) NOT NULL ,
	"active"        		char(2) NULL ,
	"quantity"      		integer NULL ,
	"texture_treatment"     	char(2) NULL , 
	 PRIMARY KEY ("product_id", "treatment_code"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."product_treatment" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "product_id", "quantity", "treatment_code") ON "DBA"."product_treatment" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."product_treatment_liner_thickness"
(
	"product_id"    		integer NOT NULL ,
	"treatment_code"        	varchar(50) NOT NULL ,
	"wall_thickness"        	varchar(10) NOT NULL ,
	"bottom_thickness"      	varchar(10) NOT NULL , 
	 PRIMARY KEY ("product_id", "treatment_code", "wall_thickness", "bottom_thickness"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."product_treatment_liner_thickness" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("bottom_thickness", "product_id", "treatment_code", "wall_thickness") ON "DBA"."product_treatment_liner_thickness" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."discount_list"
(
	"discount_type" 		varchar(10) NOT NULL ,
	"description"   		varchar(20) NULL , 
	 PRIMARY KEY ("discount_type"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."discount_list" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("description", "discount_type") ON "DBA"."discount_list" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."discount_change_history"
(
	"dealer_code"   		char(6) NOT NULL ,
	"discount_type" 		varchar(10) NOT NULL ,
	"date_change"   		date NOT NULL ,
	"time_change"   		time NOT NULL ,
	"old_discount"  		varchar(25) NOT NULL ,
	"new_discount"  		varchar(25) NOT NULL ,
	"user_change"   		varchar(50) NOT NULL , 
	 PRIMARY KEY ("dealer_code", "discount_type", "date_change", "time_change"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."discount_change_history" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("date_change", "dealer_code", "discount_type", "new_discount", "old_discount", "time_change", "user_change") ON "DBA"."discount_change_history" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."ab_questions_original"
(
	"prep_id"       		integer NOT NULL ,
	"plot_id"       		integer NOT NULL ,
	"dealer_code"   		varchar(16) NOT NULL ,
	"question_1"    		varchar(128) NOT NULL ,
	"question_2"    		varchar(128) NOT NULL ,
	"question_3"    		varchar(128) NOT NULL ,
	"question_4"    		varchar(128) NOT NULL ,
	"question_5"    		varchar(128) NOT NULL ,
	"question_6"    		varchar(128) NOT NULL ,
	"question_7"    		varchar(128) NOT NULL ,
	"question_8"    		varchar(128) NOT NULL ,
	"question_9"    		varchar(128) NOT NULL ,
	"question_10"   		varchar(128) NOT NULL ,
	"question_11"   		varchar(128) NOT NULL ,
	"question_12"   		varchar(128) NOT NULL ,
	"question_13"   		varchar(128) NOT NULL ,
	"question_14"   		varchar(128) NOT NULL ,
	"question_15"   		varchar(128) NOT NULL ,
	"question_16"   		varchar(128) NOT NULL ,
	"question_17"   		varchar(128) NOT NULL ,
	"question_18"   		varchar(128) NOT NULL ,
	"question_19"   		varchar(128) NOT NULL ,
	"question_20"   		varchar(128) NOT NULL ,
	"question_21"   		varchar(128) NOT NULL ,
	"question_22"   		varchar(128) NOT NULL ,
	"question_23"   		varchar(128) NOT NULL ,
	"question_24"   		varchar(128) NOT NULL ,
	"question_25"   		varchar(128) NOT NULL ,
	"question_26"   		varchar(128) NOT NULL ,
	"question_27"   		varchar(128) NOT NULL ,
	"question_28"   		varchar(128) NOT NULL ,
	"question_29"   		varchar(128) NOT NULL ,
	"question_30"   		varchar(128) NOT NULL ,
	"question_31"   		varchar(128) NOT NULL ,
	"question_32"   		varchar(128) NOT NULL ,
	"question_33"   		varchar(128) NOT NULL ,
	"question_34"   		varchar(128) NOT NULL ,
	"question_35"   		varchar(128) NOT NULL ,
	"question_36"   		varchar(128) NOT NULL ,
	"question_37"   		varchar(128) NOT NULL ,
	"question_38"   		varchar(128) NOT NULL ,
	"question_39"   		varchar(128) NOT NULL ,
	"question_40"   		varchar(128) NOT NULL ,
	"question_41"   		varchar(128) NOT NULL ,
	"question_42"   		varchar(128) NOT NULL ,
	"question_43"   		varchar(128) NOT NULL ,
	"question_44"   		varchar(128) NOT NULL ,
	"question_45"   		varchar(128) NOT NULL ,
	"question_46"   		varchar(128) NOT NULL ,
	"question_47"   		varchar(128) NOT NULL ,
	"question_48"   		varchar(128) NOT NULL ,
	"question_49"   		varchar(128) NOT NULL ,
	"question_50"   		varchar(128) NOT NULL ,
	"question_51"   		varchar(128) NOT NULL ,
	"question_52"   		varchar(128) NOT NULL ,
	"question_53"   		varchar(128) NOT NULL ,
	"question_54"   		varchar(128) NOT NULL ,
	"question_55"   		varchar(128) NOT NULL ,
	"question_56"   		varchar(128) NOT NULL ,
	"question_57"   		varchar(128) NOT NULL ,
	"question_58"   		varchar(128) NOT NULL ,
	"question_59"   		varchar(128) NOT NULL ,
	"question_60"   		varchar(128) NOT NULL ,
	"question_61"   		varchar(128) NOT NULL ,
	"question_62"   		varchar(128) NOT NULL ,
	"question_63"   		varchar(128) NOT NULL ,
	"question_64"   		varchar(128) NOT NULL ,
	"question_65"   		varchar(128) NOT NULL ,
	"question_66"   		varchar(128) NOT NULL ,
	"question_67"   		varchar(128) NOT NULL ,
	"question_68"   		varchar(128) NOT NULL ,
	"question_69"   		varchar(128) NOT NULL ,
	"liner_corners" 		varchar(50) NULL ,
	"liner_bead_style"      	varchar(50) NULL ,
	"liner_folding_method"  	varchar(50) NULL ,
	"liner_steps_benches"   	varchar(50) NULL ,
	"liner_fit_options"     	varchar(50) NULL ,
	"liner_notes"   		varchar(255) NULL ,
	"product_id"    		varchar(11) NOT NULL ,
	"liner_wall_thickness"  	varchar(11) NOT NULL ,
	"liner_bottom_thickness"        varchar(11) NOT NULL , 
	 PRIMARY KEY ("prep_id", "plot_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_questions_original" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_questions_original" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_questions_original" TO "lizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_questions_original" TO "LoopLizard"  FROM "DBA"
go
CREATE TABLE "DBA"."ab_pool_details"
(
	"prep_id"       		integer NOT NULL ,
	"plot_id"       		integer NOT NULL ,
	"pool_type"     		varchar(30) NULL ,
	"deck_width"    		integer NULL ,
	"coping_type"   		varchar(50) NULL ,
	"coping_width"  		integer NULL ,
	"rough_coping"  		char(1) NULL ,
	"under_cover_padding"   	char(1) NULL ,
	"additional_info"       	char(1) NULL ,
	"units" 			varchar(20) NULL ,
	"date_entered"  		date NULL DEFAULT current date ,
	"last_modified_date"    	date NULL DEFAULT current date , 
	 PRIMARY KEY ("prep_id", "plot_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_pool_details" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_pool_details" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_pool_details" TO "lizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_pool_details" TO "LoopLizard"  FROM "DBA"
go
CREATE TABLE "DBA"."ab_liner_data"
(
	"prep_id"       		integer NOT NULL ,
	"plot_id"       		integer NOT NULL ,
	"a_dim" 			integer NOT NULL ,
	"b_dim" 			integer NOT NULL ,
	"c_dim" 			integer NOT NULL ,
	"d_dim" 			integer NOT NULL ,
	"e_dim" 			integer NOT NULL ,
	"f_dim" 			integer NOT NULL ,
	"g_dim" 			integer NOT NULL ,
	"h_dim" 			integer NOT NULL ,
	"i_dim" 			integer NOT NULL ,
	"j_dim" 			integer NOT NULL ,
	"k_dim" 			integer NOT NULL ,
	"l_dim" 			integer NOT NULL ,
	"m_dim" 			integer NOT NULL ,
	"n_dim" 			integer NOT NULL ,
	"point_c"       		integer NOT NULL ,
	"point_d"       		integer NOT NULL ,
	"point_e"       		integer NOT NULL ,
	"point_f"       		integer NOT NULL ,
	"point_g"       		integer NOT NULL ,
	"point_h"       		integer NOT NULL ,
	"c_d_length"    		double NULL ,
	"e_f_length"    		double NULL ,
	"g_h_length"    		double NULL , 
	 PRIMARY KEY ("prep_id", "plot_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_liner_data" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_liner_data" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_liner_data" TO "lizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_liner_data" TO "LoopLizard"  FROM "DBA"
go
CREATE TABLE "DBA"."ab_questions"
(
	"id"    			float NOT NULL DEFAULT autoincrement ,
	"job_id"        		integer NOT NULL ,
	"dealer_code"   		varchar(16) NOT NULL ,
	"question_1"    		varchar(255) NOT NULL ,
	"question_2"    		varchar(255) NOT NULL ,
	"question_3"    		varchar(255) NOT NULL ,
	"question_4"    		varchar(255) NOT NULL ,
	"question_5"    		varchar(255) NOT NULL ,
	"question_6"    		varchar(255) NOT NULL ,
	"question_7"    		varchar(255) NOT NULL ,
	"question_8"    		varchar(255) NOT NULL ,
	"question_9"    		varchar(255) NOT NULL ,
	"question_10"   		varchar(255) NOT NULL ,
	"question_11"   		varchar(255) NOT NULL ,
	"question_12"   		varchar(255) NOT NULL ,
	"question_13"   		varchar(255) NOT NULL ,
	"question_14"   		varchar(255) NOT NULL ,
	"question_15"   		varchar(255) NOT NULL ,
	"question_16"   		varchar(255) NOT NULL ,
	"question_17"   		varchar(255) NOT NULL ,
	"question_18"   		varchar(255) NOT NULL ,
	"question_19"   		varchar(255) NOT NULL ,
	"question_20"   		varchar(255) NOT NULL ,
	"question_21"   		varchar(255) NOT NULL ,
	"question_22"   		varchar(255) NOT NULL ,
	"question_23"   		varchar(255) NOT NULL ,
	"question_24"   		varchar(255) NOT NULL ,
	"question_25"   		varchar(255) NOT NULL ,
	"question_26"   		varchar(255) NOT NULL ,
	"question_27"   		varchar(255) NOT NULL ,
	"question_28"   		varchar(255) NOT NULL ,
	"question_29"   		varchar(255) NOT NULL ,
	"question_30"   		varchar(255) NOT NULL ,
	"question_31"   		varchar(255) NOT NULL ,
	"question_32"   		varchar(255) NOT NULL ,
	"question_33"   		varchar(255) NOT NULL ,
	"question_34"   		varchar(255) NOT NULL ,
	"question_35"   		varchar(255) NOT NULL ,
	"question_36"   		varchar(255) NOT NULL ,
	"question_37"   		varchar(255) NOT NULL ,
	"question_38"   		varchar(255) NOT NULL ,
	"question_39"   		varchar(255) NOT NULL ,
	"question_40"   		varchar(255) NOT NULL ,
	"question_41"   		varchar(255) NOT NULL ,
	"question_42"   		varchar(255) NOT NULL ,
	"question_43"   		varchar(255) NOT NULL ,
	"question_44"   		varchar(255) NOT NULL ,
	"question_45"   		varchar(255) NOT NULL ,
	"question_46"   		varchar(255) NOT NULL ,
	"question_47"   		varchar(255) NOT NULL ,
	"question_48"   		varchar(255) NOT NULL ,
	"question_49"   		varchar(255) NOT NULL ,
	"question_50"   		varchar(255) NOT NULL ,
	"question_51"   		varchar(255) NOT NULL ,
	"question_52"   		varchar(255) NOT NULL ,
	"question_53"   		varchar(255) NOT NULL ,
	"question_54"   		varchar(255) NOT NULL ,
	"question_55"   		varchar(255) NOT NULL ,
	"question_56"   		varchar(255) NOT NULL ,
	"question_57"   		varchar(255) NOT NULL ,
	"question_58"   		varchar(255) NOT NULL ,
	"question_59"   		varchar(255) NOT NULL ,
	"question_60"   		varchar(255) NOT NULL ,
	"question_61"   		varchar(255) NOT NULL ,
	"question_62"   		varchar(255) NOT NULL ,
	"question_63"   		varchar(255) NOT NULL ,
	"question_64"   		varchar(255) NOT NULL ,
	"question_65"   		varchar(255) NOT NULL ,
	"question_66"   		varchar(255) NOT NULL ,
	"question_67"   		varchar(511) NOT NULL ,
	"question_68"   		varchar(255) NOT NULL ,
	"question_69"   		varchar(255) NOT NULL ,
	"liner_corners" 		varchar(50) NULL ,
	"liner_bead_style"      	varchar(50) NULL ,
	"liner_folding_method"  	varchar(50) NULL ,
	"liner_steps_benches"   	varchar(50) NULL ,
	"liner_fit_options"     	varchar(50) NULL ,
	"liner_notes"   		varchar(255) NULL ,
	"product_id"    		varchar(11) NULL ,
	"liner_wall_thickness"  	varchar(11) NULL ,
	"liner_bottom_thickness"        varchar(11) NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_questions" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_questions" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_questions" TO "lizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."ab_questions" TO "LoopLizard"  FROM "DBA"
go
CREATE TABLE "DBA"."calc_tracking"
(
	"prep_id"       		unsigned int NOT NULL ,
	"entry_date"    		date NOT NULL DEFAULT current date ,
	"ab_plot"       		varchar(1) NOT NULL DEFAULT 'N' , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_tracking" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_tracking" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."calc_tracking" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."dealer_logos"
(
	"dealer_code"   		varchar(6) NOT NULL ,
	"logo_file"     		varchar(50) NOT NULL ,
	"active"        		varchar(1) NOT NULL DEFAULT 'Y' ,
	"show_cv"       		varchar(2) NOT NULL DEFAULT 'N' ,
	"show_ln"       		varchar(2) NOT NULL DEFAULT 'N' ,
	"show_all_else" 		varchar(2) NULL , 
	 PRIMARY KEY ("dealer_code", "show_cv", "show_ln"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."dealer_logos" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "dealer_code", "logo_file") ON "DBA"."dealer_logos" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_weights"
(
	"prep_id"       		integer NOT NULL ,
	"hardware_weight"       	double NOT NULL DEFAULT 0 ,
	"cover_weight"  		double NOT NULL DEFAULT 0 ,
	"hardware_return_weight"        double NOT NULL DEFAULT 0 ,
	"pump_weight"   		double NOT NULL DEFAULT 0 ,
	"dimensional_weight"    	double NULL ,
	"total_weight"  		double NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_weights" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("cover_weight", "dimensional_weight", "hardware_return_weight", "hardware_weight", "prep_id", "pump_weight", "total_weight") ON "DBA"."prep_weights" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."treatment_h_product"
(
	"treatment_code"        	char(10) NOT NULL ,
	"product_id"    		integer NOT NULL ,
	"active"        		char(1) NOT NULL , 
	 PRIMARY KEY ("treatment_code", "product_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."treatment_h_product" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "product_id", "treatment_code") ON "DBA"."treatment_h_product" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "Bleep1100"."pbcattbl"
(
	"pbt_tnam"      		char(129) NOT NULL ,
	"pbt_tid"       		integer NULL ,
	"pbt_ownr"      		char(129) NOT NULL ,
	"pbd_fhgt"      		smallint NULL ,
	"pbd_fwgt"      		smallint NULL ,
	"pbd_fitl"      		char(1) NULL ,
	"pbd_funl"      		char(1) NULL ,
	"pbd_fchr"      		smallint NULL ,
	"pbd_fptc"      		smallint NULL ,
	"pbd_ffce"      		char(18) NULL ,
	"pbh_fhgt"      		smallint NULL ,
	"pbh_fwgt"      		smallint NULL ,
	"pbh_fitl"      		char(1) NULL ,
	"pbh_funl"      		char(1) NULL ,
	"pbh_fchr"      		smallint NULL ,
	"pbh_fptc"      		smallint NULL ,
	"pbh_ffce"      		char(18) NULL ,
	"pbl_fhgt"      		smallint NULL ,
	"pbl_fwgt"      		smallint NULL ,
	"pbl_fitl"      		char(1) NULL ,
	"pbl_funl"      		char(1) NULL ,
	"pbl_fchr"      		smallint NULL ,
	"pbl_fptc"      		smallint NULL ,
	"pbl_ffce"      		char(18) NULL ,
	"pbt_cmnt"      		char(254) NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "Bleep1100"."pbcattbl" TO "PUBLIC"  FROM "Bleep1100"
go
CREATE TABLE "Bleep1100"."pbcatcol"
(
	"pbc_tnam"      		char(129) NOT NULL ,
	"pbc_tid"       		integer NULL ,
	"pbc_ownr"      		char(129) NOT NULL ,
	"pbc_cnam"      		char(129) NOT NULL ,
	"pbc_cid"       		smallint NULL ,
	"pbc_labl"      		char(254) NULL ,
	"pbc_lpos"      		smallint NULL ,
	"pbc_hdr"       		char(254) NULL ,
	"pbc_hpos"      		smallint NULL ,
	"pbc_jtfy"      		smallint NULL ,
	"pbc_mask"      		char(31) NULL ,
	"pbc_case"      		smallint NULL ,
	"pbc_hght"      		smallint NULL ,
	"pbc_wdth"      		smallint NULL ,
	"pbc_ptrn"      		char(31) NULL ,
	"pbc_bmap"      		char(1) NULL ,
	"pbc_init"      		char(254) NULL ,
	"pbc_cmnt"      		char(254) NULL ,
	"pbc_edit"      		char(31) NULL ,
	"pbc_tag"       		char(254) NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "Bleep1100"."pbcatcol" TO "PUBLIC"  FROM "Bleep1100"
go
CREATE TABLE "Bleep1100"."pbcatfmt"
(
	"pbf_name"      		char(30) NOT NULL ,
	"pbf_frmt"      		char(254) NULL ,
	"pbf_type"      		smallint NULL ,
	"pbf_cntr"      		integer NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "Bleep1100"."pbcatfmt" TO "PUBLIC"  FROM "Bleep1100"
go
CREATE TABLE "Bleep1100"."pbcatvld"
(
	"pbv_name"      		char(30) NOT NULL ,
	"pbv_vald"      		char(254) NULL ,
	"pbv_type"      		smallint NULL ,
	"pbv_cntr"      		integer NULL ,
	"pbv_msg"       		char(254) NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "Bleep1100"."pbcatvld" TO "PUBLIC"  FROM "Bleep1100"
go
CREATE TABLE "Bleep1100"."pbcatedt"
(
	"pbe_name"      		char(30) NOT NULL ,
	"pbe_edit"      		char(254) NULL ,
	"pbe_type"      		smallint NULL ,
	"pbe_cntr"      		integer NULL ,
	"pbe_seqn"      		smallint NOT NULL ,
	"pbe_flag"      		integer NULL ,
	"pbe_work"      		char(32) NULL ,
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "Bleep1100"."pbcatedt" TO "PUBLIC"  FROM "Bleep1100"
go
CREATE TABLE "DBA"."state_sales_territory"
(
	"state_code"    		varchar(10) NOT NULL ,
	"zip_code1"     		varchar(10) NOT NULL ,
	"zip_code2"     		varchar(10) NULL ,
	"sales_territory"       	varchar(10) NOT NULL ,
	"active"        		varchar(2) NULL , 
	 PRIMARY KEY ("state_code", "zip_code1"),
	
)
go
GRANT SELECT, INSERT, DELETE, REFERENCES ON "DBA"."state_sales_territory" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "sales_territory", "state_code", "zip_code1", "zip_code2") ON "DBA"."state_sales_territory" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_generational"
(
	"prep_id"       		integer NOT NULL ,
	"prep_id_original"      	integer NOT NULL ,
	"generation_number"     	integer NOT NULL ,
	"create_date"   		date NULL ,
	"create_user"   		varchar(50) NULL ,
	"modified_date" 		date NULL ,
	"modified_user" 		varchar(50) NULL ,
	"not_looploc_error"     	varchar(2) NULL ,
	"give_quick_shipdate"   	varchar(2) NULL ,
	"looploc_error" 		varchar(2) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_generational" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("create_date", "create_user", "generation_number", "give_quick_shipdate", "looploc_error", "modified_date", "modified_user", "not_looploc_error", "prep_id", "prep_id_original") ON "DBA"."prep_generational" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."zip_Code_zone"
(
	"id_number"     		integer NOT NULL ,
	"zone_name"     		varchar(200) NOT NULL , 
	 PRIMARY KEY ("id_number"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."zip_Code_zone" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("id_number", "zone_name") ON "DBA"."zip_Code_zone" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."rtn_location_areas"
(
	"location_id"   		unsigned int NOT NULL DEFAULT autoincrement ,
	"description"   		varchar(50) NOT NULL ,
	"active"        		varchar(1) NOT NULL DEFAULT 'Y' , 
	 PRIMARY KEY ("location_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."rtn_location_areas" TO "PUBLIC"  FROM "DBA"
go
CREATE TABLE "DBA"."rtn_location_tracker"
(
	"return_no"     		unsigned int NOT NULL ,
	"location_id"   		unsigned int NOT NULL ,
	"last_modified_date"    	date NOT NULL DEFAULT current date ,
	"purge_rtn"     		char(2) NULL , 
	 PRIMARY KEY ("return_no"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."rtn_location_tracker" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."rtn_location_tracker" TO "admin"  FROM "DBA"
go
GRANT UPDATE("last_modified_date", "location_id", "purge_rtn", "return_no") ON "DBA"."rtn_location_tracker" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."measure_history"
(
	"date_job"      		date NOT NULL ,
	"item_id"       		integer NOT NULL ,
	"prep_id"       		integer NULL ,
	"measure_type"  		char(5) NULL ,
	"city"  			char(50) NULL ,
	"state" 			char(2) NULL ,
	"measure_team"  		char(100) NULL ,
	"dealer_code"   		char(6) NULL ,
	"status"        		char(2) NULL ,
	"jobname"       		char(50) NULL ,
	"dealer_called" 		char(2) NULL ,
	"dealer_called_date"    	date NULL ,
	"dealer_called_text"    	varchar(200) NULL ,
	"homeowner_called"      	char(2) NULL ,
	"homeowner_called_date" 	date NULL ,
	"homeowner_called_text" 	varchar(200) NULL , 
	 PRIMARY KEY ("date_job", "item_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."measure_history" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("city", "date_job", "dealer_called", "dealer_called_date", "dealer_called_text", "dealer_code", "homeowner_called", "homeowner_called_date", "homeowner_called_text", "item_id", "jobname", "measure_team", "measure_type", "prep_id", "state", "status") ON "DBA"."measure_history" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."rtn_bluesheet_promo"
(
	"rtn_bluesheet_id"      	integer NOT NULL ,
	"promo_promo_id"        	integer NOT NULL , 
	 PRIMARY KEY ("rtn_bluesheet_id", "promo_promo_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, REFERENCES ON "DBA"."rtn_bluesheet_promo" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("promo_promo_id", "rtn_bluesheet_id") ON "DBA"."rtn_bluesheet_promo" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."rtn_bluesheet_file"
(
	"rtn_bluesheet_id"      	integer NOT NULL ,
	"dtl_no"        		integer NOT NULL ,
	"file"  			varchar(512) NOT NULL ,
	"destination_directory" 	varchar(512) NOT NULL ,
	"date_stored"   		date NOT NULL ,
	"userid"        		varchar(50) NOT NULL , 
	 PRIMARY KEY ("rtn_bluesheet_id", "dtl_no"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."rtn_bluesheet_file" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("date_stored", "destination_directory", "dtl_no", "file", "rtn_bluesheet_id", "userid") ON "DBA"."rtn_bluesheet_file" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_liner"
(
	"prep_id"       		integer NOT NULL ,
	"step_length"   		unsigned smallint NOT NULL ,
	"step_wall_length"      	unsigned smallint NOT NULL DEFAULT 0 ,
	"bottom_length" 		unsigned smallint NULL DEFAULT 0 , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_liner" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_liner" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_liner" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep_liner" TO "Bleep"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_liner" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_liner" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_liner" TO "lizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_liner" TO "DBA"  FROM "DBA"
go
GRANT UPDATE("bottom_length", "prep_id", "step_length", "step_wall_length") ON "DBA"."prep_liner" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_custom_stock"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		integer NOT NULL ,
	"stock_id"      		integer NOT NULL ,
	"serial_no"     		varchar(20) NOT NULL ,
	"date_custom_stock"     	date NOT NULL , 
	 PRIMARY KEY ("prep_id", "quote_no"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_custom_stock" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("date_custom_stock", "prep_id", "quote_no", "serial_no", "stock_id") ON "DBA"."prep_custom_stock" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_auto_converted"
(
	"prep_id"       		integer NOT NULL ,
	"userid"        		char(20) NOT NULL ,
	"date_converted"        	date NOT NULL ,
	"time_converted"        	time NOT NULL ,
	"reviewed"      		char(2) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_auto_converted" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("date_converted", "prep_id", "reviewed", "time_converted", "userid") ON "DBA"."prep_auto_converted" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."tan_promo"
(
	"id"    			unsigned smallint NOT NULL DEFAULT autoincrement ,
	"dealer_code"   		varchar(10) NOT NULL , 
	 PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."tan_promo" TO "PUBLIC"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."tan_promo" TO "admin"  FROM "DBA"
go
CREATE TABLE "DBA"."prep_error"
(
	"prep_id"       		integer NOT NULL ,
	"error_id"      		integer NOT NULL ,
	"checker"       		varchar(25) NOT NULL ,
	"prepper"       		varchar(25) NOT NULL ,
	"error_date"    		date NOT NULL DEFAULT current date ,
	"department"    		varchar(1) NOT NULL ,
	"error_count"   		integer NOT NULL , 
	 PRIMARY KEY ("prep_id", "error_id", "prepper"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE ON "DBA"."prep_error" TO "admin"  FROM "DBA"
go
CREATE TABLE "DBA"."price_notes"
(
	"product_id"    		integer NOT NULL ,
	"grid_size"     		char(10) NOT NULL ,
	"effective_date"        	date NOT NULL ,
	"type"  			char(1) NOT NULL ,
	"pricenote"     		varchar(500) NULL ,
	"datecreated"   		date NULL ,
	"usercreated"   		varchar(20) NULL ,
	"datemodified"  		date NULL ,
	"usermodified"  		varchar(20) NULL , 
	 PRIMARY KEY ("product_id", "grid_size", "effective_date", "type"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."price_notes" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("datecreated", "datemodified", "effective_date", "grid_size", "pricenote", "product_id", "type", "usercreated", "usermodified") ON "DBA"."price_notes" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."error_image_loc"
(
	"prep_id"       		integer NOT NULL ,
	"error_id"      		integer NOT NULL ,
	"checker"       		varchar(25) NOT NULL ,
	"drafter"       		varchar(25) NOT NULL ,
	"error_date"    		date NOT NULL DEFAULT current date ,
	"department"    		varchar(1) NOT NULL ,
	"error_count"   		integer NOT NULL , 
	 PRIMARY KEY ("prep_id", "error_id", "drafter"),
	
)
go
CREATE TABLE "DBA"."prep_return_no_workdone"
(
	"prep_id"       		integer NOT NULL ,
	"return_no"     		char(10) NOT NULL ,
	"will_not_repair"       	char(1) NOT NULL ,
	"date_done"     		date NULL ,
	"ra_inspected_by"       	char(25) NULL ,
	"repaired_no_times"     	integer NULL ,
	"damage_type"   		char(255) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_return_no_workdone" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("date_done", "prep_id", "return_no", "will_not_repair") ON "DBA"."prep_return_no_workdone" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_return_no_workdown_detail"
(
	"prep_id"       		integer NOT NULL ,
	"prep_id_detail"        	integer NOT NULL ,
	"job_was_open"  		char(2) NULL ,
	"paper_pulled"  		char(2) NULL , 
	 PRIMARY KEY ("prep_id", "prep_id_detail"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_return_no_workdown_detail" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("job_was_open", "paper_pulled", "prep_id", "prep_id_detail") ON "DBA"."prep_return_no_workdown_detail" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."rtn_bluesheet_sales_measure_error"
(
	"rtn_bluesheet_id"      	integer NOT NULL ,
	"credit_measure_charge_back"    char(2) NULL ,
	"measure_order" 		integer NULL ,
	"amount_back"   		double NULL , 
	 PRIMARY KEY ("rtn_bluesheet_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."rtn_bluesheet_sales_measure_error" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("amount_back", "credit_measure_charge_back", "measure_order", "rtn_bluesheet_id") ON "DBA"."rtn_bluesheet_sales_measure_error" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."stock_backup"
(
	"serial_no"     		unsigned int NOT NULL ,
	"stock_id"      		float NULL ,
	"status"        		char(1) NULL ,
	"location"      		char(5) NULL ,
	"pick_id"       		float NULL ,
	"bleep_status"  		float NULL ,
	"cutting_tag_print"     	char(1) NULL ,
	"manf_date"     		"datetime" NULL ,
	"prep_id"       		float NULL ,
	"old_stock"     		char(1) NULL , 
	 PRIMARY KEY ("serial_no"),
	
)
go
CREATE TABLE "DBA"."ptfe_exceptions"
(
	"dealer_code"   		varchar(6) NOT NULL ,
	"active"        		varchar(1) NULL DEFAULT 'Y' , 
	 PRIMARY KEY ("dealer_code"),
	
)
go
CREATE TABLE "DBA"."dealer_bought_child_third"
(
	"dealer_code"   		varchar(10) NOT NULL ,
	"bought_third_cover"    	varchar(2) NULL ,
	"bought_third_liner"    	varchar(2) NULL ,
	"bought_child_cover"    	varchar(2) NULL ,
	"bought_child_liner"    	varchar(2) NULL ,
	"bought_third_cover_year"       integer NULL ,
	"bought_third_liner_year"       integer NULL ,
	"bought_child_cover_year"       integer NULL ,
	"bought_child_liner_year"       integer NULL , 
	 PRIMARY KEY ("dealer_code"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."dealer_bought_child_third" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("bought_child_cover", "bought_child_cover_year", "bought_child_liner", "bought_child_liner_year", "bought_third_cover", "bought_third_cover_year", "bought_third_liner", "bought_third_liner_year", "dealer_code") ON "DBA"."dealer_bought_child_third" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_cpu_signature"
(
	"order_no"      		unsigned int NOT NULL ,
	"signature"     		long varchar NOT NULL ,
	"timestamp"     		timestamp NOT NULL DEFAULT current timestamp ,
	"id"    			unsigned int NOT NULL DEFAULT autoincrement , 
	 CONSTRAINT "ID"  PRIMARY KEY ("id"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."prep_cpu_signature" TO "admin"  FROM "DBA"
go
CREATE TABLE "DBA"."dealer_bal_third"
(
	"dealer_code"   		char(6) NOT NULL ,
	"bal_year"      		integer NOT NULL ,
	"net_cover"     		double NULL DEFAULT 0 ,
	"number_cover"  		integer NULL DEFAULT 0 ,
	"net_liner"     		double NULL DEFAULT 0 ,
	"number_liner"  		integer NULL DEFAULT 0 , 
	 PRIMARY KEY ("dealer_code", "bal_year"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."dealer_bal_third" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("bal_year", "dealer_code", "net_cover", "net_liner", "number_cover", "number_liner") ON "DBA"."dealer_bal_third" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."state_tax_code_master"
(
	"zipcode"       		varchar(10) NOT NULL ,
	"city"  			varchar(50) NULL ,
	"county"        		varchar(50) NULL ,
	"zipcode_type"  		varchar(10) NOT NULL ,
	"tax_code"      		varchar(10) NULL , 
	 PRIMARY KEY ("zipcode", "zipcode_type"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."state_tax_code_master" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("city", "county", "tax_code", "zipcode", "zipcode_type") ON "DBA"."state_tax_code_master" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_free_imageloc"
(
	"dealer_code"   		varchar(10) NOT NULL ,
	"year_job"      		integer NOT NULL ,
	"prep_id"       		integer NOT NULL ,
	"job_counter"   		integer NOT NULL , 
	 PRIMARY KEY ("dealer_code", "year_job", "prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, REFERENCES ON "DBA"."prep_free_imageloc" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("dealer_code", "job_counter", "prep_id", "year_job") ON "DBA"."prep_free_imageloc" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."material_code_speciality_group"
(
	"speciality_code"       	varchar(20) NOT NULL ,
	"description"   		varchar(100) NULL ,
	"active"        		varchar(2) NULL ,
	"create_user"   		varchar(20) NULL ,
	"create_date"   		date NULL , 
	 PRIMARY KEY ("speciality_code"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."material_code_speciality_group" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "create_date", "create_user", "description", "speciality_code") ON "DBA"."material_code_speciality_group" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."material_code_speciality_group_detail"
(
	"speciality_code"       	varchar(20) NOT NULL ,
	"ll_id" 			smallint NOT NULL , 
	 PRIMARY KEY ("speciality_code", "ll_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."material_code_speciality_group_detail" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("ll_id", "speciality_code") ON "DBA"."material_code_speciality_group_detail" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_claimed_jobs"
(
	"prep_id"       		integer NOT NULL ,
	"username"      		varchar(20) NULL ,
	"username_cfa"  		varchar(20) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE, ALTER, REFERENCES ON "DBA"."prep_claimed_jobs" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("prep_id", "username", "username_cfa") ON "DBA"."prep_claimed_jobs" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_cfa_pricechange_log"
(
	"prep_id"       		integer NOT NULL ,
	"quote_no"      		integer NOT NULL ,
	"list_price"    		double NOT NULL ,
	"net_price"     		double NOT NULL ,
	"cfa_date"      		date NOT NULL ,
	"cfa_time"      		time NOT NULL ,
	"price_type"    		char(2) NULL , 
	 PRIMARY KEY ("prep_id", "quote_no", "cfa_date", "cfa_time"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_cfa_pricechange_log" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("cfa_date", "cfa_time", "list_price", "net_price", "prep_id", "price_type", "quote_no") ON "DBA"."prep_cfa_pricechange_log" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_multi_bleeped"
(
	"id_number"     		integer NOT NULL DEFAULT autoincrement ,
	"prep_id"       		integer NOT NULL ,
	"date_multi"    		date NOT NULL ,
	"bleeped_job"   		char(1) NOT NULL ,
	"time_multi"    		time NULL , 
	 PRIMARY KEY ("id_number", "prep_id", "date_multi"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_multi_bleeped" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("bleeped_job", "date_multi", "id_number", "prep_id") ON "DBA"."prep_multi_bleeped" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_claimed_jobs_cs"
(
	"prep_id"       		integer NOT NULL ,
	"username"      		varchar(20) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_claimed_jobs_cs" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("prep_id", "username") ON "DBA"."prep_claimed_jobs_cs" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_claimed_plot"
(
	"prep_id"       		integer NOT NULL ,
	"username"      		varchar(20) NOT NULL ,
	"username_checker"      	varchar(20) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_claimed_plot" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("prep_id", "username", "username_checker") ON "DBA"."prep_claimed_plot" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_print_rtn_que"
(
	"prep_id"       		integer NOT NULL ,
	"print_jobs"    		char(2) NOT NULL ,
	"date_entered"  		date NOT NULL ,
	"date_printed"  		date NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_print_rtn_que" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("date_entered", "date_printed", "prep_id", "print_jobs") ON "DBA"."prep_print_rtn_que" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."worksheet_que_custom"
(
	"prep_id"       		integer NOT NULL ,
	"print_date"    		date NULL ,
	"print_time"    		time NULL ,
	"printed"       		char(2) NULL ,
	"print_user"    		varchar(20) NULL ,
	"reviewed_job"  		varchar(2) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."worksheet_que_custom" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("prep_id", "print_date", "print_time", "print_user", "printed", "reviewed_job") ON "DBA"."worksheet_que_custom" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_claimed_imageloc"
(
	"prep_id"       		integer NOT NULL ,
	"username"      		char(20) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_claimed_imageloc" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("prep_id", "username") ON "DBA"."prep_claimed_imageloc" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_easyjob"
(
	"prep_id"       		integer NOT NULL ,
	"easyjob"       		char(2) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_easyjob" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("easyjob", "prep_id") ON "DBA"."prep_easyjob" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."price_extra_large"
(
	"product_id"    		integer NOT NULL ,
	"grid_size"     		char(10) NOT NULL ,
	"type"  			char(1) NOT NULL ,
	"square_footage"        	double NOT NULL ,
	"price" 			double NULL ,
	"last_modified_date"    	date NULL ,
	"last_modified_user"    	varchar(20) NULL , 
	 PRIMARY KEY ("product_id", "grid_size", "type", "square_footage"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."price_extra_large" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("grid_size", "last_modified_date", "last_modified_user", "price", "product_id", "square_footage", "type") ON "DBA"."price_extra_large" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."dealer_Magento"
(
	"dealer_code"   		varchar(6) NOT NULL ,
	"address"       		varchar(200) NULL ,
	"city"  			varchar(50) NULL ,
	"id"    			integer NOT NULL DEFAULT autoincrement , 
	 PRIMARY KEY ("id"),
	
)
go
CREATE TABLE "DBA"."backyard_list"
(
	"id_no" 			integer NOT NULL DEFAULT autoincrement ,
	"backyard_accent_name"  	varchar(100) NOT NULL , 
	 PRIMARY KEY ("id_no"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."backyard_list" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("backyard_accent_name", "id_no") ON "DBA"."backyard_list" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."stock_master_upc"
(
	"stock_id"      		integer NOT NULL ,
	"dealer_code"   		varchar(10) NOT NULL ,
	"upc_code"      		varchar(50) NOT NULL , 
	 PRIMARY KEY ("stock_id", "dealer_code"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."stock_master_upc" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("dealer_code", "stock_id", "upc_code") ON "DBA"."stock_master_upc" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."counter_table"
(
	"id_counter"    		integer NOT NULL DEFAULT autoincrement ,
	"test"  			integer NULL , 
	 PRIMARY KEY ("id_counter"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."counter_table" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("id_counter", "test") ON "DBA"."counter_table" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."hardware_bya"
(
	"upc_code"      		varchar(15) NOT NULL ,
	"id_no" 			integer NOT NULL DEFAULT autoincrement ,
	"hardware_code" 		char(10) NOT NULL ,
	"liner_wall_id" 		integer NULL , 
	 PRIMARY KEY ("upc_code"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."hardware_bya" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("hardware_code", "id_no", "upc_code") ON "DBA"."hardware_bya" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."inventory_in_shop"
(
	"line_id"       		integer NOT NULL DEFAULT autoincrement ,
	"inv_id"        		integer NOT NULL ,
	"quantity_in"   		integer NOT NULL ,
	"date_out"      		date NOT NULL ,
	"quantity_out"  		integer NULL , 
	 PRIMARY KEY ("line_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."inventory_in_shop" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("date_out", "inv_id", "line_id", "quantity_in", "quantity_out") ON "DBA"."inventory_in_shop" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_nonups_tracking"
(
	"prep_id"       		integer NOT NULL ,
	"tracking_number"       	varchar(30) NOT NULL ,
	"ship_via_id"   		integer NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_nonups_tracking" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("prep_id", "ship_via_id", "tracking_number") ON "DBA"."prep_nonups_tracking" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."warranty_header_preinvoiced"
(
	"prep_id"       		integer NOT NULL ,
	"ho_last_name"  		char(50) NULL ,
	"ho_middle_int" 		char(50) NULL ,
	"ho_first_name" 		char(50) NULL ,
	"ho_title"      		char(10) NULL ,
	"ho_address"    		char(60) NULL ,
	"ho_city"       		char(50) NULL ,
	"ho_state"      		char(30) NULL ,
	"ho_zip"        		char(30) NULL ,
	"type"  			char(1) NULL ,
	"active"        		char(1) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."warranty_header_preinvoiced" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "ho_address", "ho_city", "ho_first_name", "ho_last_name", "ho_middle_int", "ho_state", "ho_title", "ho_zip", "prep_id", "type") ON "DBA"."warranty_header_preinvoiced" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."ln_above_grounds_Old_pricing"
(
	"liner_id"      		integer NOT NULL DEFAULT autoincrement ,
	"base_cost"     		double NULL , 
	 PRIMARY KEY ("liner_id"),
	
)
go
CREATE TABLE "DBA"."rtn_bluesheet_cm"
(
	"rtn_bluesheet_id"      	integer NOT NULL ,
	"artran_id"     		integer NOT NULL ,
	"cm_type"       		integer NOT NULL , 
	 PRIMARY KEY ("rtn_bluesheet_id", "artran_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."rtn_bluesheet_cm" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("artran_id", "cm_type", "rtn_bluesheet_id") ON "DBA"."rtn_bluesheet_cm" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."rtn_bluesheet_cm_type"
(
	"id_no" 			integer NOT NULL DEFAULT autoincrement ,
	"description"   		varchar(100) NOT NULL ,
	"active"        		char(2) NULL ,
	"description_creditmemo"        varchar(200) NULL , 
	 PRIMARY KEY ("id_no"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."rtn_bluesheet_cm_type" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "description", "id_no") ON "DBA"."rtn_bluesheet_cm_type" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."rtn_bluesheet_type_return"
(
	"id_number"     		integer NOT NULL DEFAULT autoincrement ,
	"description"   		varchar(100) NOT NULL ,
	"created_by"    		varchar(20) NULL ,
	"created_date"  		date NULL ,
	"modified_by"   		varchar(20) NULL ,
	"modified_date" 		date NULL ,
	"active"        		char(2) NULL ,
	"jobtype"       		char(2) NULL , 
	 PRIMARY KEY ("id_number"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."rtn_bluesheet_type_return" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "created_by", "created_date", "description", "id_number", "jobtype", "modified_by", "modified_date") ON "DBA"."rtn_bluesheet_type_return" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_finalize_tbc"
(
	"prep_id"       		integer NOT NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_finalize_tbc" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("prep_id") ON "DBA"."prep_finalize_tbc" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."promo_master_liner_sample_cases"
(
	"limit_min"     		integer NOT NULL ,
	"limit_max"     		integer NOT NULL ,
	"num_liner_brochures"   	integer NOT NULL ,
	"num_measure_forms"     	integer NOT NULL ,
	"liner_sample_cases"    	integer NOT NULL ,
	"limit_default" 		integer NULL , 
	 PRIMARY KEY ("limit_min", "limit_max"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."promo_master_liner_sample_cases" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("limit_default", "limit_max", "limit_min", "liner_sample_cases", "num_liner_brochures", "num_measure_forms") ON "DBA"."promo_master_liner_sample_cases" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."dealer_promo_liner"
(
	"dealer_code"   		char(10) NOT NULL ,
	"year"  			integer NOT NULL ,
	"promo_h459"    		integer NULL ,
	"promo_h459_sent"       	char(2) NULL ,
	"promo_l004"    		integer NULL ,
	"promo_l004_sent"       	char(2) NULL ,
	"promo_l162"    		integer NULL ,
	"promo_l162_sent"       	char(2) NULL ,
	"promo_chromerep"       	integer NULL ,
	"promo_chromerep_sent"  	char(2) NULL ,
	"promo_spiralrep"       	integer NULL ,
	"promo_spiralrep_sent"  	char(2) NULL ,
	"promo_pop"     		integer NULL ,
	"promo_pop_sent"        	char(2) NULL ,
	"promo_l220"    		integer NULL ,
	"promo_l220_sent"       	char(2) NULL , 
	 PRIMARY KEY ("dealer_code", "year"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."dealer_promo_liner" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("dealer_code", "promo_chromerep", "promo_chromerep_sent", "promo_h459", "promo_h459_sent", "promo_l004", "promo_l004_sent", "promo_l162", "promo_l162_sent", "promo_l220", "promo_l220_sent", "promo_pop", "promo_pop_sent", "promo_spiralrep", "promo_spiralrep_sent", "year") ON "DBA"."dealer_promo_liner" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."promo_type_to_make_year"
(
	"promo_type_id" 		integer NOT NULL ,
	"to_make_year"  		integer NOT NULL ,
	"to_make_qty"   		integer NOT NULL , 
	 PRIMARY KEY ("promo_type_id", "to_make_year"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."promo_type_to_make_year" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("promo_type_id", "to_make_qty", "to_make_year") ON "DBA"."promo_type_to_make_year" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."product_out_of_stock"
(
	"product_id"    		integer NOT NULL ,
	"wall"  			char(5) NOT NULL ,
	"bottomc"       		char(5) NOT NULL , 
	 PRIMARY KEY ("product_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."product_out_of_stock" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("bottomc", "product_id", "wall") ON "DBA"."product_out_of_stock" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."cs_claim_report"
(
	"user_name"     		char(25) NOT NULL , 
	 PRIMARY KEY ("user_name"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."cs_claim_report" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("user_name") ON "DBA"."cs_claim_report" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."slugs"
(
	"id"    			unsigned int NOT NULL DEFAULT autoincrement ,
	"slug"  			varchar(256) NOT NULL ,
	"sitemap"       		integer NOT NULL DEFAULT 0 ,
	"status"        		integer NOT NULL DEFAULT 0 ,
	"entity_id"     		integer NOT NULL ,
	"entity_type"   		varchar(191) NOT NULL ,
	"created_at"    		timestamp NULL ,
	"updated_at"    		timestamp NULL , 
	 PRIMARY KEY ("id"),
	
)
go
CREATE TABLE "DBA"."prep_ms_additional_jobs"
(
	"prep_id"       		integer NOT NULL ,
	"prep_id_job"   		integer NOT NULL , 
	 PRIMARY KEY ("prep_id", "prep_id_job"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_ms_additional_jobs" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("prep_id", "prep_id_job") ON "DBA"."prep_ms_additional_jobs" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."stock_liner"
(
	"stock_liner_id"        	integer NOT NULL ,
	"active"        		char(2) NULL , 
	 PRIMARY KEY ("stock_liner_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."stock_liner" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("stock_liner_id") ON "DBA"."stock_liner" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_cfa_second"
(
	"prep_id"       		integer NOT NULL ,
	"cfa_second"    		char(2) NOT NULL ,
	"double_cfa_required"   	char(2) NULL ,
	"pre_draft_cfa" 		char(2) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_cfa_second" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("cfa_second", "double_cfa_required", "pre_draft_cfa", "prep_id") ON "DBA"."prep_cfa_second" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."hardware_bulk_price"
(
	"hardware_code" 		varchar(10) NOT NULL ,
	"effective_date"        	date NOT NULL ,
	"last_modified_date"    	date NOT NULL ,
	"last_modified_user"    	varchar(50) NOT NULL ,
	"bulk_price"    		decimal(7,2) NOT NULL , 
	 PRIMARY KEY ("hardware_code", "effective_date"),
	
)
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."hardware_bulk_price" TO "LoopLizard"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."hardware_bulk_price" TO "admin"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."hardware_bulk_price" TO "AustinW"  FROM "DBA"
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."hardware_bulk_price" TO "john2" WITH GRANT OPTION
go
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER, REFERENCES ON "DBA"."hardware_bulk_price" TO "lizard"  FROM "DBA"
go
CREATE TABLE "DBA"."rtn_no_workdone"
(
	"prep_id"       		integer NOT NULL ,
	"printed"       		char(2) NOT NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."rtn_no_workdone" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("prep_id", "printed") ON "DBA"."rtn_no_workdone" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."job_safety_information_h"
(
	"code"  			char(10) NOT NULL ,
	"short_description"     	varchar(100) NOT NULL ,
	"long_description"      	varchar(305) NOT NULL ,
	"active"        		char(2) NOT NULL ,
	"create_date"   		date NOT NULL ,
	"create_user"   		varchar(50) NOT NULL ,
	"last_modified_date"    	date NULL ,
	"last_modified_user"    	varchar(50) NULL ,
	"jobtype"       		char(10) NOT NULL , 
	 PRIMARY KEY ("code"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."job_safety_information_h" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "code", "create_date", "create_user", "jobtype", "last_modified_date", "last_modified_user", "long_description", "short_description") ON "DBA"."job_safety_information_h" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."comments_h"
(
	"id_no" 			integer NOT NULL DEFAULT autoincrement ,
	"category"      		char(10) NOT NULL ,
	"type"  			char(10) NOT NULL ,
	"text"  			varchar(255) NULL ,
	"active"        		char(1) NOT NULL ,
	"create_date"   		date NOT NULL ,
	"create_user"   		varchar(20) NOT NULL ,
	"modified_date" 		date NULL ,
	"modified_user" 		varchar(20) NULL ,
	"job_type"      		varchar(2) NULL ,
	"print_type"    		varchar(5) NULL , 
	 PRIMARY KEY ("id_no"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."comments_h" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("active", "category", "create_date", "create_user", "id_no", "job_type", "modified_date", "modified_user", "print_type", "text", "type") ON "DBA"."comments_h" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."rtn_bluesheet_rtn_reason_category"
(
	"id_no" 			integer NOT NULL DEFAULT autoincrement ,
	"description"   		varchar(25) NOT NULL , 
	 PRIMARY KEY ("id_no"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."rtn_bluesheet_rtn_reason_category" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("description", "id_no") ON "DBA"."rtn_bluesheet_rtn_reason_category" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_production"
(
	"prep_id"       		integer NOT NULL ,
	"production_date"       	date NOT NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_production" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("prep_id", "production_date") ON "DBA"."prep_production" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_po"
(
	"prep_id"       		integer NOT NULL ,
	"po_no" 			char(25) NOT NULL ,
	"amount"        		double NOT NULL DEFAULT 0 , 
	 PRIMARY KEY ("prep_id", "po_no"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."prep_po" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("amount", "po_no", "prep_id") ON "DBA"."prep_po" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."dealer_organization"
(
	"organization_id"       	integer NOT NULL DEFAULT autoincrement ,
	"description"   		varchar(100) NOT NULL ,
	"created_by"    		varchar(20) NULL ,
	"created_date"  		date NULL ,
	"modified_by"   		varchar(20) NULL ,
	"modified_date" 		date NULL , 
	 PRIMARY KEY ("organization_id"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."dealer_organization" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("created_by", "created_date", "description", "modified_by", "modified_date", "organization_id") ON "DBA"."dealer_organization" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."dealer_key_target"
(
	"dealer_code"   		char(6) NOT NULL ,
	"buys_covers"   		char(1) NOT NULL DEFAULT 'N' ,
	"buys_liner"    		char(1) NOT NULL DEFAULT 'N' ,
	"target_dealer" 		char(1) NULL DEFAULT 'N' , 
	 PRIMARY KEY ("dealer_code"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."dealer_key_target" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("buys_covers", "buys_liner", "dealer_code", "target_dealer") ON "DBA"."dealer_key_target" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."dealer_admin_contact"
(
	"dealer_code"   		char(6) NOT NULL ,
	"main_contact_name"     	varchar(100) NULL ,
	"main_contact_email"    	varchar(100) NULL ,
	"main_contact_phone"    	varchar(20) NULL ,
	"second_contact_name"   	varchar(100) NULL ,
	"second_contact_email"  	varchar(100) NULL ,
	"second_contact_phone"  	varchar(20) NULL ,
	"cfo_main"      		varchar(100) NULL ,
	"cfo_email"     		varchar(100) NULL ,
	"cfo_phone"     		varchar(20) NULL ,
	"main_contact_title"    	varchar(30) NULL ,
	"second_contact_title"  	varchar(30) NULL ,
	"cfo_title"     		varchar(30) NULL , 
	 PRIMARY KEY ("dealer_code"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."dealer_admin_contact" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("cfo_email", "cfo_main", "cfo_phone", "cfo_title", "dealer_code", "main_contact_email", "main_contact_name", "main_contact_phone", "main_contact_title", "second_contact_email", "second_contact_name", "second_contact_phone", "second_contact_title") ON "DBA"."dealer_admin_contact" TO "PUBLIC" FROM "DBA"
go
CREATE TABLE "DBA"."prep_cancel_fee"
(
	"prep_id"       		integer NOT NULL ,
	"cancel_charge_id"      	integer NOT NULL ,
	"percentage_cancel_charge"      double NOT NULL ,
	"additional_comment"    	varchar(400) NULL ,
	"amount_reduced"        	double NULL DEFAULT 0 ,
	"username"      		varchar(200) NULL , 
	 PRIMARY KEY ("prep_id"),
	
)
go
CREATE TABLE "DBA"."cancel_charge"
(
	"id_number"     		integer NOT NULL DEFAULT autoincrement ,
	"job_type"      		char(2) NOT NULL ,
	"description"   		varchar(100) NOT NULL ,
	"percentage_modification"       double NOT NULL , 
	 PRIMARY KEY ("id_number"),
	
)
go
CREATE TABLE "DBA"."color_upcharge"
(
	"fabric_id"     		integer NOT NULL ,
	"sqft"  			unsigned int NOT NULL ,
	"effective_date"        	date NOT NULL ,
	"upcharge_amount"       	numeric(12,4) NOT NULL ,
	"create_date"   		date NOT NULL ,
	"create_user"   		varchar(50) NOT NULL ,
	"modified_date" 		date NULL ,
	"modified_user" 		varchar(50) NULL , 
	 PRIMARY KEY ("fabric_id", "sqft", "effective_date"),
	
)
go
GRANT SELECT, INSERT, DELETE ON "DBA"."color_upcharge" TO "PUBLIC"  FROM "DBA"
go
GRANT UPDATE("create_date", "create_user", "effective_date", "fabric_id", "modified_date", "modified_user", "sqft", "upcharge_amount") ON "DBA"."color_upcharge" TO "PUBLIC" FROM "DBA"
go
commit work
go