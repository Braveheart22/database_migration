-- Generated ALTER TABLE scripts for SQL Server
-- Adds columns present in SQL Anywhere but missing in SQL Server

-- bill_of_lading_header: 6 missing column(s)
ALTER TABLE [bill_of_lading_header] ADD [shipping_cost_carrier_quote] FLOAT NULL;
GO
ALTER TABLE [bill_of_lading_header] ADD [shipping_cost_carrier_actual] FLOAT NULL;
GO
ALTER TABLE [bill_of_lading_header] ADD [quote_code] VARCHAR(100) NULL;
GO
ALTER TABLE [bill_of_lading_header] ADD [dimension_shipment] VARCHAR(100) NULL;
GO
ALTER TABLE [bill_of_lading_header] ADD [email_address] VARCHAR(100) NULL;
GO
ALTER TABLE [bill_of_lading_header] ADD [notes_difference_reason] VARCHAR(100) NULL;
GO

-- cancel_charge: 1 missing column(s)
ALTER TABLE [cancel_charge] ADD [jobstatus] INT NULL;
GO

-- dealer_credit_history: 1 missing column(s)
ALTER TABLE [dealer_credit_history] ADD [discount_liner] CHAR(25) NULL;
GO

-- dealer_promo_liner: 4 missing column(s)
ALTER TABLE [dealer_promo_liner] ADD [promo_l093h] INT NULL;
GO
ALTER TABLE [dealer_promo_liner] ADD [promo_l093h_sent] CHAR(2) NULL;
GO
ALTER TABLE [dealer_promo_liner] ADD [promo_h923] INT NULL;
GO
ALTER TABLE [dealer_promo_liner] ADD [promo_h923_sent] CHAR(2) NULL;
GO

-- hardware_h: 2 missing column(s)
ALTER TABLE [hardware_h] ADD [max_discount] CHAR(25) NULL;
GO
ALTER TABLE [hardware_h] ADD [dealer_only] CHAR(1) NULL;
GO

-- lll_users: 1 missing column(s)
ALTER TABLE [lll_users] ADD [prep_version] VARCHAR(50) NULL;
GO

-- prep_cancel_fee: 2 missing column(s)
ALTER TABLE [prep_cancel_fee] ADD [amount_payed] FLOAT NULL;
GO
ALTER TABLE [prep_cancel_fee] ADD [quote_no] INT NULL;
GO

-- prep_file_location: 2 missing column(s)
ALTER TABLE [prep_file_location] ADD [file_processed] CHAR(2) NULL;
GO
ALTER TABLE [prep_file_location] ADD [forward_email_accounting] CHAR(2) NULL;
GO

-- prep_ra_hardware: 1 missing column(s)
ALTER TABLE [prep_ra_hardware] ADD [start_prorated_warranty] DATE NULL;
GO

-- promo_type: 1 missing column(s)
ALTER TABLE [promo_type] ADD [alert_email_flag] CHAR(2) NULL;
GO

-- replacement_cover_request: 1 missing column(s)
ALTER TABLE [replacement_cover_request] ADD [aqua_extreme_color_question] VARCHAR(2) NULL;
GO

-- rtn_bluesheet: 5 missing column(s)
ALTER TABLE [rtn_bluesheet] ADD [box_replacement] CHAR(1) NULL;
GO
ALTER TABLE [rtn_bluesheet] ADD [date_label_sent] DATE NULL;
GO
ALTER TABLE [rtn_bluesheet] ADD [email_address_label] CHAR(100) NULL;
GO
ALTER TABLE [rtn_bluesheet] ADD [prep_id_preexisting] INT NULL;
GO
ALTER TABLE [rtn_bluesheet] ADD [no_box_needed] CHAR(2) NULL;
GO

-- special_instructions: 2 missing column(s)
ALTER TABLE [special_instructions] ADD [print_documents] CHAR(2) NULL;
GO
ALTER TABLE [special_instructions] ADD [highlight_color] INT NULL;
GO

-- standards: 1 missing column(s)
ALTER TABLE [standards] ADD [stock_id_aqua] INT NULL;
GO

-- standards_treatment: 1 missing column(s)
ALTER TABLE [standards_treatment] ADD [id] INT NOT NULL;
GO

-- stock_master: 3 missing column(s)
ALTER TABLE [stock_master] ADD [weight_cover] FLOAT NULL;
GO
ALTER TABLE [stock_master] ADD [weight_pump] FLOAT NULL;
GO
ALTER TABLE [stock_master] ADD [weight_hardware] FLOAT NULL;
GO

-- syscon: 9 missing column(s)
ALTER TABLE [syscon] ADD [deposit_required_2_distributor] FLOAT NULL;
GO
ALTER TABLE [syscon] ADD [cost_signature] FLOAT NULL;
GO
ALTER TABLE [syscon] ADD [cost_liftgate] FLOAT NULL;
GO
ALTER TABLE [syscon] ADD [cost_limited_access] FLOAT NULL;
GO
ALTER TABLE [syscon] ADD [cost_arrival_notification] FLOAT NULL;
GO
ALTER TABLE [syscon] ADD [cost_drop_ups] FLOAT NULL;
GO
ALTER TABLE [syscon] ADD [cost_drop_mf] FLOAT NULL;
GO
ALTER TABLE [syscon] ADD [freight_stock] FLOAT NULL;
GO
ALTER TABLE [syscon] ADD [cost_mf_liner_flat] FLOAT NULL;
GO

-- treatment_h: 4 missing column(s)
ALTER TABLE [treatment_h] ADD [difficulty_rating] INT NULL;
GO
ALTER TABLE [treatment_h] ADD [max_discount] CHAR(25) NULL;
GO
ALTER TABLE [treatment_h] ADD [highlight_color] INT NULL;
GO
ALTER TABLE [treatment_h] ADD [is_textured] CHAR(2) NULL;
GO

-- vendor_purchases_orders: 2 missing column(s)
ALTER TABLE [vendor_purchases_orders] ADD [discount_percentage] FLOAT NULL;
GO
ALTER TABLE [vendor_purchases_orders] ADD [discount_amount] FLOAT NULL;
GO

-- warranty_header_preinvoiced: 1 missing column(s)
ALTER TABLE [warranty_header_preinvoiced] ADD [email_address] CHAR(50) NULL;
GO

