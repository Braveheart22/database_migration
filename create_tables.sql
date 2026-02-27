-- Generated CREATE TABLE scripts for SQL Server
-- Source: SQL Anywhere 9 (Smith)

CREATE TABLE [ab_base] (
    [prep_id] INT NOT NULL,
    [base_line] FLOAT NOT NULL,
    [plot_in_rev] INT NULL,
    [plot_id] INT NOT NULL,
    [Last_modified_user] CHAR(25) NULL,
    [last_modified_date] DATE NULL,
    [create_date] DATE NULL,
    [verify_plot] CHAR(1) NULL,
    [check_orientation] CHAR(1) NULL,
    [verify_plot_user] VARCHAR(20) NULL,
    [comment_user] VARCHAR(200) NULL,
    CONSTRAINT [PK_ab_base] PRIMARY KEY ([prep_id], [plot_id])
);
GO

CREATE TABLE [ab_cross] (
    [prep_id] INT NOT NULL,
    [cross_no] INT NOT NULL,
    [pt_start] INT NOT NULL,
    [pt_end] INT NOT NULL,
    [given_dist] NUMERIC(30,6) NOT NULL,
    [plot_id] INT NOT NULL,
    CONSTRAINT [PK_ab_cross] PRIMARY KEY ([prep_id], [cross_no], [plot_id])
);
GO

CREATE TABLE [ab_liner_data] (
    [prep_id] INT NOT NULL,
    [plot_id] INT NOT NULL,
    [a_dim] INT NOT NULL,
    [b_dim] INT NOT NULL,
    [c_dim] INT NOT NULL,
    [d_dim] INT NOT NULL,
    [e_dim] INT NOT NULL,
    [f_dim] INT NOT NULL,
    [g_dim] INT NOT NULL,
    [h_dim] INT NOT NULL,
    [i_dim] INT NOT NULL,
    [j_dim] INT NOT NULL,
    [k_dim] INT NOT NULL,
    [l_dim] INT NOT NULL,
    [m_dim] INT NOT NULL,
    [n_dim] INT NOT NULL,
    [point_c] INT NOT NULL,
    [point_d] INT NOT NULL,
    [point_e] INT NOT NULL,
    [point_f] INT NOT NULL,
    [point_g] INT NOT NULL,
    [point_h] INT NOT NULL,
    [c_d_length] FLOAT NULL,
    [e_f_length] FLOAT NULL,
    [g_h_length] FLOAT NULL,
    CONSTRAINT [PK_ab_liner_data] PRIMARY KEY ([prep_id], [plot_id])
);
GO

CREATE TABLE [ab_points] (
    [prep_id] INT NOT NULL,
    [pt_no] INT NOT NULL,
    [a_dim] FLOAT NOT NULL,
    [b_dim] FLOAT NOT NULL,
    [plot_id] INT NOT NULL,
    [rw] CHAR(1) NULL,
    [ob] CHAR(1) NULL,
    [skip_point] CHAR(1) NULL,
    CONSTRAINT [PK_ab_points] PRIMARY KEY ([prep_id], [pt_no], [plot_id])
);
GO

CREATE TABLE [ab_pool_details] (
    [prep_id] INT NOT NULL,
    [plot_id] INT NOT NULL,
    [pool_type] VARCHAR(30) NULL,
    [deck_width] INT NULL,
    [coping_type] VARCHAR(50) NULL,
    [coping_width] INT NULL,
    [rough_coping] CHAR(1) NULL,
    [under_cover_padding] CHAR(1) NULL,
    [additional_info] CHAR(1) NULL,
    [units] VARCHAR(20) NULL,
    [date_entered] DATE NULL,
    [last_modified_date] DATE NULL,
    CONSTRAINT [PK_ab_pool_details] PRIMARY KEY ([prep_id], [plot_id])
);
GO

CREATE TABLE [ab_questions] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [job_id] INT NOT NULL,
    [dealer_code] VARCHAR(16) NOT NULL,
    [question_1] VARCHAR(255) NOT NULL,
    [question_2] VARCHAR(255) NOT NULL,
    [question_3] VARCHAR(255) NOT NULL,
    [question_4] VARCHAR(255) NOT NULL,
    [question_5] VARCHAR(255) NOT NULL,
    [question_6] VARCHAR(255) NOT NULL,
    [question_7] VARCHAR(255) NOT NULL,
    [question_8] VARCHAR(255) NOT NULL,
    [question_9] VARCHAR(255) NOT NULL,
    [question_10] VARCHAR(255) NOT NULL,
    [question_11] VARCHAR(255) NOT NULL,
    [question_12] VARCHAR(255) NOT NULL,
    [question_13] VARCHAR(255) NOT NULL,
    [question_14] VARCHAR(255) NOT NULL,
    [question_15] VARCHAR(255) NOT NULL,
    [question_16] VARCHAR(255) NOT NULL,
    [question_17] VARCHAR(255) NOT NULL,
    [question_18] VARCHAR(255) NOT NULL,
    [question_19] VARCHAR(255) NOT NULL,
    [question_20] VARCHAR(255) NOT NULL,
    [question_21] VARCHAR(255) NOT NULL,
    [question_22] VARCHAR(255) NOT NULL,
    [question_23] VARCHAR(255) NOT NULL,
    [question_24] VARCHAR(255) NOT NULL,
    [question_25] VARCHAR(255) NOT NULL,
    [question_26] VARCHAR(255) NOT NULL,
    [question_27] VARCHAR(255) NOT NULL,
    [question_28] VARCHAR(255) NOT NULL,
    [question_29] VARCHAR(255) NOT NULL,
    [question_30] VARCHAR(255) NOT NULL,
    [question_31] VARCHAR(255) NOT NULL,
    [question_32] VARCHAR(255) NOT NULL,
    [question_33] VARCHAR(255) NOT NULL,
    [question_34] VARCHAR(255) NOT NULL,
    [question_35] VARCHAR(255) NOT NULL,
    [question_36] VARCHAR(255) NOT NULL,
    [question_37] VARCHAR(255) NOT NULL,
    [question_38] VARCHAR(255) NOT NULL,
    [question_39] VARCHAR(255) NOT NULL,
    [question_40] VARCHAR(255) NOT NULL,
    [question_41] VARCHAR(255) NOT NULL,
    [question_42] VARCHAR(255) NOT NULL,
    [question_43] VARCHAR(255) NOT NULL,
    [question_44] VARCHAR(255) NOT NULL,
    [question_45] VARCHAR(255) NOT NULL,
    [question_46] VARCHAR(255) NOT NULL,
    [question_47] VARCHAR(255) NOT NULL,
    [question_48] VARCHAR(255) NOT NULL,
    [question_49] VARCHAR(255) NOT NULL,
    [question_50] VARCHAR(255) NOT NULL,
    [question_51] VARCHAR(255) NOT NULL,
    [question_52] VARCHAR(255) NOT NULL,
    [question_53] VARCHAR(255) NOT NULL,
    [question_54] VARCHAR(255) NOT NULL,
    [question_55] VARCHAR(255) NOT NULL,
    [question_56] VARCHAR(255) NOT NULL,
    [question_57] VARCHAR(255) NOT NULL,
    [question_58] VARCHAR(255) NOT NULL,
    [question_59] VARCHAR(255) NOT NULL,
    [question_60] VARCHAR(255) NOT NULL,
    [question_61] VARCHAR(255) NOT NULL,
    [question_62] VARCHAR(255) NOT NULL,
    [question_63] VARCHAR(255) NOT NULL,
    [question_64] VARCHAR(255) NOT NULL,
    [question_65] VARCHAR(255) NOT NULL,
    [question_66] VARCHAR(255) NOT NULL,
    [question_67] VARCHAR(511) NOT NULL,
    [question_68] VARCHAR(255) NOT NULL,
    [question_69] VARCHAR(255) NOT NULL,
    [liner_corners] VARCHAR(50) NULL,
    [liner_bead_style] VARCHAR(50) NULL,
    [liner_folding_method] VARCHAR(50) NULL,
    [liner_steps_benches] VARCHAR(50) NULL,
    [liner_fit_options] VARCHAR(50) NULL,
    [liner_notes] VARCHAR(255) NULL,
    [product_id] VARCHAR(11) NULL,
    [liner_wall_thickness] VARCHAR(11) NULL,
    [liner_bottom_thickness] VARCHAR(11) NULL,
    CONSTRAINT [PK_ab_questions] PRIMARY KEY ([id])
);
GO

CREATE TABLE [ab_questions_original] (
    [prep_id] INT NOT NULL,
    [plot_id] INT NOT NULL,
    [dealer_code] VARCHAR(16) NOT NULL,
    [question_1] VARCHAR(128) NOT NULL,
    [question_2] VARCHAR(128) NOT NULL,
    [question_3] VARCHAR(128) NOT NULL,
    [question_4] VARCHAR(128) NOT NULL,
    [question_5] VARCHAR(128) NOT NULL,
    [question_6] VARCHAR(128) NOT NULL,
    [question_7] VARCHAR(128) NOT NULL,
    [question_8] VARCHAR(128) NOT NULL,
    [question_9] VARCHAR(128) NOT NULL,
    [question_10] VARCHAR(128) NOT NULL,
    [question_11] VARCHAR(128) NOT NULL,
    [question_12] VARCHAR(128) NOT NULL,
    [question_13] VARCHAR(128) NOT NULL,
    [question_14] VARCHAR(128) NOT NULL,
    [question_15] VARCHAR(128) NOT NULL,
    [question_16] VARCHAR(128) NOT NULL,
    [question_17] VARCHAR(128) NOT NULL,
    [question_18] VARCHAR(128) NOT NULL,
    [question_19] VARCHAR(128) NOT NULL,
    [question_20] VARCHAR(128) NOT NULL,
    [question_21] VARCHAR(128) NOT NULL,
    [question_22] VARCHAR(128) NOT NULL,
    [question_23] VARCHAR(128) NOT NULL,
    [question_24] VARCHAR(128) NOT NULL,
    [question_25] VARCHAR(128) NOT NULL,
    [question_26] VARCHAR(128) NOT NULL,
    [question_27] VARCHAR(128) NOT NULL,
    [question_28] VARCHAR(128) NOT NULL,
    [question_29] VARCHAR(128) NOT NULL,
    [question_30] VARCHAR(128) NOT NULL,
    [question_31] VARCHAR(128) NOT NULL,
    [question_32] VARCHAR(128) NOT NULL,
    [question_33] VARCHAR(128) NOT NULL,
    [question_34] VARCHAR(128) NOT NULL,
    [question_35] VARCHAR(128) NOT NULL,
    [question_36] VARCHAR(128) NOT NULL,
    [question_37] VARCHAR(128) NOT NULL,
    [question_38] VARCHAR(128) NOT NULL,
    [question_39] VARCHAR(128) NOT NULL,
    [question_40] VARCHAR(128) NOT NULL,
    [question_41] VARCHAR(128) NOT NULL,
    [question_42] VARCHAR(128) NOT NULL,
    [question_43] VARCHAR(128) NOT NULL,
    [question_44] VARCHAR(128) NOT NULL,
    [question_45] VARCHAR(128) NOT NULL,
    [question_46] VARCHAR(128) NOT NULL,
    [question_47] VARCHAR(128) NOT NULL,
    [question_48] VARCHAR(128) NOT NULL,
    [question_49] VARCHAR(128) NOT NULL,
    [question_50] VARCHAR(128) NOT NULL,
    [question_51] VARCHAR(128) NOT NULL,
    [question_52] VARCHAR(128) NOT NULL,
    [question_53] VARCHAR(128) NOT NULL,
    [question_54] VARCHAR(128) NOT NULL,
    [question_55] VARCHAR(128) NOT NULL,
    [question_56] VARCHAR(128) NOT NULL,
    [question_57] VARCHAR(128) NOT NULL,
    [question_58] VARCHAR(128) NOT NULL,
    [question_59] VARCHAR(128) NOT NULL,
    [question_60] VARCHAR(128) NOT NULL,
    [question_61] VARCHAR(128) NOT NULL,
    [question_62] VARCHAR(128) NOT NULL,
    [question_63] VARCHAR(128) NOT NULL,
    [question_64] VARCHAR(128) NOT NULL,
    [question_65] VARCHAR(128) NOT NULL,
    [question_66] VARCHAR(128) NOT NULL,
    [question_67] VARCHAR(128) NOT NULL,
    [question_68] VARCHAR(128) NOT NULL,
    [question_69] VARCHAR(128) NOT NULL,
    [liner_corners] VARCHAR(50) NULL,
    [liner_bead_style] VARCHAR(50) NULL,
    [liner_folding_method] VARCHAR(50) NULL,
    [liner_steps_benches] VARCHAR(50) NULL,
    [liner_fit_options] VARCHAR(50) NULL,
    [liner_notes] VARCHAR(255) NULL,
    [product_id] VARCHAR(11) NOT NULL,
    [liner_wall_thickness] VARCHAR(11) NOT NULL,
    [liner_bottom_thickness] VARCHAR(11) NOT NULL,
    CONSTRAINT [PK_ab_questions_original] PRIMARY KEY ([prep_id], [plot_id])
);
GO

CREATE TABLE [action_ticket] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [date] DATE NOT NULL,
    [time] TIME NOT NULL,
    [prep_id] INT NOT NULL,
    [staff] CHAR(15) NOT NULL,
    [person_speaking_to] CHAR(25) NOT NULL,
    [paper] CHAR(1) NULL,
    [action] CHAR(50) NOT NULL,
    [instruction] CHAR(255) NOT NULL,
    [deposit_id] INT NOT NULL,
    [print_timestamp] DATETIME NULL,
    [answered_bd] VARCHAR(30) NULL,
    [cancel] VARCHAR(2) NULL,
    [reviewed_action_ticket] VARCHAR(2) NULL,
    CONSTRAINT [PK_action_ticket] PRIMARY KEY ([id])
);
GO

CREATE TABLE [artran] (
    [type] CHAR(1) NOT NULL,
    [id] INT NOT NULL,
    [dealer_code] CHAR(6) NOT NULL,
    [date] DATE NOT NULL,
    [total_amount] NUMERIC(9,2) NOT NULL,
    [terms_id] INT NOT NULL,
    [terms_dscnt_prcnt] SMALLINT NULL,
    [terms_dscnt_days] SMALLINT NULL,
    [terms_due_days] SMALLINT NOT NULL,
    [terms_dscnt_date] DATE NULL,
    [terms_due_date] DATE NOT NULL,
    [status] CHAR(1) NULL,
    [paid_amount] NUMERIC(9,2) NULL,
    [rcpt_in_progress] CHAR(1) NULL,
    [dscnt_todate] NUMERIC(9,2) NULL,
    [writeoff_todate] NUMERIC(9,2) NULL,
    [dscntable_amount] NUMERIC(9,2) NULL,
    [credit_type] CHAR(2) NULL,
    [debit_type] CHAR(2) NULL,
    [prep_id] INT NULL,
    [shipout_batch_id] DATETIME NULL,
    [ref] CHAR(50) NULL,
    [text] CHAR(1000) NULL,
    [paid_date] DATE NULL,
    [funds_hold] CHAR(1) NULL,
    [db_cr_inv_no] INT NULL,
    [company] CHAR(3) NULL,
    CONSTRAINT [PK_artran] PRIMARY KEY ([type], [id])
);
GO

CREATE TABLE [artran_apply] (
    [type] CHAR(1) NOT NULL,
    [id] INT NOT NULL,
    [line_id] INT NOT NULL,
    [transaction] CHAR(1) NOT NULL,
    [deposit_id] INT NULL,
    [receipt_id] INT NULL,
    [amount] NUMERIC(9,2) NOT NULL,
    [date] DATE NOT NULL,
    [keyoff_id] INT NULL,
    CONSTRAINT [PK_artran_apply] PRIMARY KEY ([line_id])
);
GO

CREATE TABLE [artran_detail] (
    [artran_type] CHAR(1) NOT NULL,
    [artran_id] INT NOT NULL,
    [line_id] SMALLINT NOT NULL,
    [line_amount] NUMERIC(8,2) NOT NULL,
    [gl_dbcr] CHAR(1) NOT NULL,
    [reference] VARCHAR(250) NULL,
    [gl_account] CHAR(10) NULL,
    CONSTRAINT [PK_artran_detail] PRIMARY KEY ([artran_type], [artran_id], [line_id])
);
GO

CREATE TABLE [aw_addresses] (
    [dealer_code] CHAR(6) NOT NULL,
    [shipto_name] CHAR(35) NOT NULL,
    [shipto_addr1] CHAR(35) NOT NULL,
    [shipto_addr2] CHAR(35) NOT NULL,
    [shipto_city] CHAR(20) NOT NULL,
    [shipto_state] CHAR(3) NOT NULL,
    [shipto_zip] CHAR(10) NOT NULL,
    [billto_name] CHAR(35) NOT NULL,
    [billto_addr1] CHAR(35) NOT NULL,
    [billto_addr2] CHAR(35) NOT NULL,
    [billto_city] CHAR(20) NOT NULL,
    [billto_state] CHAR(3) NOT NULL,
    [billto_zip] CHAR(10) NOT NULL,
    [web_id] INT NOT NULL,
    CONSTRAINT [PK_aw_addresses] PRIMARY KEY ([web_id])
);
GO

CREATE TABLE [aw_li_zips] (
    [start_zip] INT NOT NULL,
    [end_zip] INT NOT NULL
);
GO

CREATE TABLE [aw_order] (
    [transaction_id] BIGINT NOT NULL,
    [subtotal] FLOAT NOT NULL,
    [shipping_cost] FLOAT NOT NULL,
    [sales_tax] FLOAT NOT NULL,
    [approval_code] VARCHAR(64) NULL,
    [dealer_code] CHAR(6) NULL,
    [shipto_first_name] CHAR(35) NULL,
    [shipto_middle_initial] CHAR(10) NULL,
    [shipto_last_name] CHAR(50) NULL,
    [shipto_comapny] CHAR(60) NULL,
    [shipto_addr1] CHAR(60) NULL,
    [shipto_addr2] CHAR(60) NULL,
    [shipto_city] CHAR(40) NULL,
    [shipto_state] CHAR(3) NULL,
    [shipto_zip] CHAR(10) NULL,
    [shipto_country] VARCHAR(10) NULL,
    [billto_first_name] CHAR(35) NOT NULL,
    [billto_middle_initial] CHAR(10) NULL,
    [billto_last_name] CHAR(50) NOT NULL,
    [billto_company] CHAR(60) NULL,
    [billto_addr1] CHAR(60) NOT NULL,
    [billto_addr2] CHAR(60) NULL,
    [billto_city] CHAR(40) NOT NULL,
    [billto_state] CHAR(3) NOT NULL,
    [billto_zip] CHAR(10) NOT NULL,
    [billto_country] VARCHAR(10) NULL,
    [phone] CHAR(25) NULL,
    [email] CHAR(60) NULL,
    [cc_type] CHAR(25) NULL,
    CONSTRAINT [PK_aw_order] PRIMARY KEY ([transaction_id])
);
GO

CREATE TABLE [aw_order_detail] (
    [transaction_id] BIGINT NOT NULL,
    [hardware_code] CHAR(10) NULL,
    [stock_id] INT NULL,
    [prep_id] INT NULL,
    [quantity] INT NULL,
    [processed_prep_id] INT NULL,
    [jobname] CHAR(50) NULL,
    [po_no] CHAR(25) NULL
);
GO

CREATE TABLE [aw_process] (
    [transaction_id] BIGINT NOT NULL,
    [completed] CHAR(1) NOT NULL,
    CONSTRAINT [PK_aw_process] PRIMARY KEY ([transaction_id])
);
GO

CREATE TABLE [aw_upcharge_conversion] (
    [web_id] INT IDENTITY(1,1) NOT NULL,
    [hardware_code] VARCHAR(15) NOT NULL,
    [grid_size] VARCHAR(5) NOT NULL,
    [area] INT NOT NULL,
    [per_unit_cost] NUMERIC(30,6) NOT NULL,
    CONSTRAINT [PK_aw_upcharge_conversion] PRIMARY KEY ([web_id])
);
GO

CREATE TABLE [backyard_list] (
    [id_no] INT IDENTITY(1,1) NOT NULL,
    [backyard_accent_name] VARCHAR(100) NOT NULL,
    CONSTRAINT [PK_backyard_list] PRIMARY KEY ([id_no])
);
GO

CREATE TABLE [bank] (
    [bank_id] CHAR(10) NOT NULL,
    [name] VARCHAR(50) NOT NULL,
    CONSTRAINT [PK_bank] PRIMARY KEY ([bank_id])
);
GO

CREATE TABLE [bill_of_lading_detail] (
    [ll_bill_no] INT NOT NULL,
    [prep_id] INT NOT NULL,
    CONSTRAINT [PK_bill_of_lading_detail] PRIMARY KEY ([ll_bill_no], [prep_id])
);
GO

CREATE TABLE [bill_of_lading_header] (
    [ll_bill_no] INT IDENTITY(1,1) NOT NULL,
    [bill_no] INT NULL,
    [shipto_code] CHAR(10) NOT NULL,
    [bl_name] CHAR(35) NOT NULL,
    [bl_addr1] CHAR(35) NULL,
    [bl_addr2] CHAR(35) NULL,
    [dealer_code] CHAR(6) NOT NULL,
    [city] CHAR(35) NOT NULL,
    [state_code] CHAR(3) NOT NULL,
    [zip] CHAR(10) NOT NULL,
    [phone] CHAR(20) NOT NULL,
    [hours] CHAR(35) NOT NULL,
    [date] DATE NOT NULL,
    [freight] CHAR(2) NOT NULL,
    [printed_flag] CHAR(1) NOT NULL,
    [ship_via_id] INT NOT NULL,
    [time_printed] DATETIME NULL,
    [notes] CHAR(300) NULL,
    [cod] CHAR(2) NULL,
    [term_id] INT NOT NULL,
    [bill_back_freight] CHAR(1) NULL,
    [account_credit] CHAR(1) NULL,
    [loop_loc_error] CHAR(1) NULL,
    [bbf_notes] CHAR(20) NULL,
    [acr_notes] CHAR(20) NULL,
    [Hold_Bill] CHAR(1) NOT NULL,
    [shipping_cost_carrier_quote] FLOAT NULL,
    [shipping_cost_carrier_actual] FLOAT NULL,
    [quote_code] VARCHAR(100) NULL,
    [dimension_shipment] VARCHAR(100) NULL,
    [email_address] VARCHAR(100) NULL,
    [notes_difference_reason] VARCHAR(100) NULL,
    CONSTRAINT [PK_bill_of_lading_header] PRIMARY KEY ([ll_bill_no])
);
GO

CREATE TABLE [bin_created] (
    [id_no] INT IDENTITY(1,1) NOT NULL,
    [bin_label_id_no] INT NOT NULL,
    [roll_id] INT NOT NULL,
    [quantity] INT NOT NULL,
    [created_user] VARCHAR(20) NOT NULL,
    [created_date] DATE NOT NULL,
    [active] CHAR(2) NULL,
    CONSTRAINT [PK_bin_created] PRIMARY KEY ([id_no])
);
GO

CREATE TABLE [bin_label] (
    [id_no] INT IDENTITY(1,1) NOT NULL,
    [product_id] INT NOT NULL,
    [bead_color] VARCHAR(20) NOT NULL,
    [ll_id] INT NOT NULL,
    [created_user] VARCHAR(20) NOT NULL,
    [created_date] DATE NOT NULL,
    [active] CHAR(2) NULL,
    CONSTRAINT [PK_bin_label] PRIMARY KEY ([id_no])
);
GO

CREATE TABLE [bin_qty_removed] (
    [bin_created_id_no] INT NOT NULL,
    [prep_id] INT NOT NULL,
    [qty_taken] INT NOT NULL,
    [scanned_user] VARCHAR(20) NOT NULL,
    [scanned_date] DATE NOT NULL,
    [scanned_user_modified] VARCHAR(20) NULL,
    [scanned_date_modified] DATE NULL,
    [no_times] INT NOT NULL,
    CONSTRAINT [PK_bin_qty_removed] PRIMARY KEY ([bin_created_id_no], [prep_id], [no_times])
);
GO

CREATE TABLE [blue_dot_questions] (
    [blue_dot_id] INT IDENTITY(1,1) NOT NULL,
    [category] CHAR(50) NOT NULL,
    [question] CHAR(500) NOT NULL,
    [last_modified_user] CHAR(50) NULL,
    [last_modified_date] DATETIME NULL,
    [spanish_questions] CHAR(500) NULL,
    [active] CHAR(1) NULL,
    [bd_type] CHAR(50) NULL,
    [french_questions] CHAR(500) NULL,
    [italian_questions] CHAR(500) NULL,
    [russian_questions] CHAR(500) NULL,
    [markable] CHAR(5) NULL,
    CONSTRAINT [PK_blue_dot_questions] PRIMARY KEY ([blue_dot_id])
);
GO

CREATE TABLE [calc_log] (
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [task] VARCHAR(50) NULL,
    [action] VARCHAR(50) NULL,
    [action_date] DATE NULL,
    [action_time] TIME NULL,
    [action_user] CHAR(15) NULL,
    [reference] VARCHAR(50) NULL,
    [status] INT NULL
);
GO

CREATE TABLE [calc_prep] (
    [prep_id] INT IDENTITY(1,1) NOT NULL,
    [selected_quote_no] SMALLINT NULL,
    [dealer_code] CHAR(6) NOT NULL,
    [billto_dealer_code] CHAR(6) NOT NULL,
    [term_id] INT NOT NULL,
    [prep_type] CHAR(1) NOT NULL,
    [type] CHAR(2) NULL,
    [entry_date] DATE NOT NULL,
    [order_no] INT NULL,
    [order_date] DATE NULL,
    [po_no] CHAR(25) NULL,
    [jobname] CHAR(50) NULL,
    [shipto_code] CHAR(6) NOT NULL,
    [shipto_name] CHAR(35) NULL,
    [shipto_contact] CHAR(35) NULL,
    [shipto_addr1] CHAR(35) NULL,
    [shipto_addr2] CHAR(35) NULL,
    [shipto_city] CHAR(20) NULL,
    [shipto_state_code] CHAR(3) NULL,
    [shipto_zip] CHAR(10) NULL,
    [status] CHAR(3) NULL,
    [replacement] CHAR(1) NULL,
    [warranty] CHAR(1) NULL,
    [manufactured_by] VARCHAR(35) NULL,
    [original_order_no] CHAR(15) NULL,
    [return_no] CHAR(10) NULL,
    [old_cover_instructions] VARCHAR(255) NULL,
    [credit_release_flag] CHAR(1) NULL,
    [shipping_release_flag] CHAR(1) NULL,
    [manf_location] CHAR(10) NULL,
    [deposit_amt_received] FLOAT NULL,
    [chafe_length] SMALLINT NULL,
    [create_date] DATE NULL,
    [create_user] CHAR(15) NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    [print_estimate] CHAR(1) NULL,
    [print_notify] CHAR(1) NULL,
    [print_ack] CHAR(1) NULL,
    [print_invoice] CHAR(1) NULL,
    [print_worksheet] CHAR(1) NULL,
    [display_cover] CHAR(1) NULL,
    [called_with_price] CHAR(1) NULL,
    [cover_in_building] CHAR(1) NULL,
    [quick_stock_order] FLOAT NULL,
    [pricing_description] VARCHAR(255) NULL,
    [discount_type] CHAR(1) NULL,
    [dealer_discount] CHAR(50) NULL,
    [hardware_discount] CHAR(50) NULL,
    [tech_date] DATETIME NULL,
    [ab_plot_flag] CHAR(1) NULL,
    [shipout_batch_id] DATETIME NULL,
    [deposit_amt_enclosed] NUMERIC(9,2) NULL,
    [previous_jobname] CHAR(25) NULL,
    [route_to] CHAR(10) NULL,
    [manf_hold] CHAR(1) NULL,
    [checked_for_accuracy] CHAR(1) NULL,
    [billto_estm_doc] CHAR(1) NULL,
    [billto_notify_doc] CHAR(1) NULL,
    [billto_ack_doc] CHAR(1) NULL,
    [dealer_estm_doc] CHAR(1) NULL,
    [dealer_notify_doc] CHAR(1) NULL,
    [dealer_ack_doc] CHAR(1) NULL,
    [shipto_tax_code] CHAR(10) NULL,
    [number_original_springs] SMALLINT NULL,
    [original_storage_bag] CHAR(1) NULL,
    [ups_track] CHAR(25) NULL,
    [from_web] CHAR(1) NULL,
    [from_plot_prg] CHAR(1) NULL,
    [dispose_date] DATE NULL,
    [age_of_cover] INT NULL,
    [original_spring_cover_qty] INT NULL,
    [damage_type] CHAR(255) NULL,
    [discard_cover] CHAR(25) NULL,
    [return_no_work] CHAR(1) NULL,
    [full_hardware] CHAR(1) NULL,
    [back_to_tech] CHAR(1) NULL,
    [altered] INT NULL,
    [return_cover] CHAR(25) NULL,
    [ra_ordered_by] CHAR(25) NULL,
    [ra_approved_by] CHAR(25) NULL,
    [ra_inspected_by] CHAR(25) NULL,
    [will_not_repair] CHAR(1) NULL,
    [repaired_no_times] INT NULL,
    [ra_inspection_date] DATE NULL,
    [repair_comments] CHAR(300) NULL,
    [anchors_returned] INT NULL,
    [warranty_reasons] CHAR(255) NULL,
    [buckles_returned] INT NULL,
    [Alter_Job] CHAR(1) NULL,
    [Liner_reference] INT NULL,
    [print_hardware] CHAR(1) NULL,
    [billto_form75_doc] CHAR(1) NULL,
    [dealer_form75_doc] CHAR(1) NULL,
    [Liner_Perimeter] INT NULL,
    [Roll_Serial_No] INT NULL,
    [liner_bottom] INT NULL,
    [Liner_step] CHAR(1) NULL,
    [requote] CHAR(1) NULL,
    [third_dealer] CHAR(6) NULL,
    [billto_proforma_doc] CHAR(1) NULL,
    [photo] CHAR(2) NULL,
    [template] CHAR(2) NULL,
    [measure_by_sales] CHAR(2) NULL,
    [back_to_imageloc] CHAR(2) NULL,
    CONSTRAINT [PK_calc_prep] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [calc_prep_blue_dot] (
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [dtl_no] SMALLINT NOT NULL,
    [text] VARCHAR(255) NULL,
    [date_cleared] DATE NULL,
    [cleared_by] VARCHAR(35) NULL,
    [last_modified_date] DATE NULL,
    [last_modified_user] CHAR(15) NULL,
    [source] CHAR(1) NULL,
    [answer] VARCHAR(255) NULL,
    [markable] CHAR(5) NULL,
    [foreign_version] CHAR(255) NULL,
    CONSTRAINT [PK_calc_prep_blue_dot] PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
);
GO

CREATE TABLE [calc_prep_comments] (
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [dtl_no] INT NOT NULL,
    [category] CHAR(10) NOT NULL,
    [type] CHAR(10) NOT NULL,
    [text] VARCHAR(255) NULL,
    [active] CHAR(1) NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    [dealer_flag] CHAR(1) NULL,
    [source] CHAR(1) NULL,
    CONSTRAINT [PK_calc_prep_comments] PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
);
GO

CREATE TABLE [calc_prep_hardware] (
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [dtl_no] INT NOT NULL,
    [hardware_code] CHAR(10) NOT NULL,
    [quantity] INT NULL,
    [actual_quantity] INT NULL,
    [unit] CHAR(10) NULL,
    [unit_price] FLOAT NULL,
    [charge_flag] CHAR(1) NULL,
    [last_modified_date] DATE NULL,
    [last_modified_user] CHAR(15) NULL,
    [additional_flag] CHAR(1) NOT NULL,
    [source] CHAR(1) NULL,
    [up_charge_flag] CHAR(1) NULL,
    [units] INT NULL,
    [weight] FLOAT NULL,
    CONSTRAINT [PK_calc_prep_hardware] PRIMARY KEY ([prep_id], [quote_no], [dtl_no], [additional_flag])
);
GO

CREATE TABLE [calc_prep_manf] (
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [product_id] INT NULL,
    [product_group] CHAR(1) NULL,
    [grid_size] CHAR(10) NULL,
    [qty] SMALLINT NULL,
    [out_of_stock_flag] CHAR(1) NULL,
    [shape] VARCHAR(50) NULL,
    [object_size] VARCHAR(255) NULL,
    [manf_size] VARCHAR(255) NULL,
    [averaged_flag] CHAR(1) NULL,
    [safe_flag] CHAR(1) NULL,
    [price_table_flag] CHAR(1) NULL,
    [sqft] FLOAT NULL,
    [base_cost] FLOAT NULL,
    [cover_hardware_cost] FLOAT NULL,
    [markdown] FLOAT NULL,
    [shipping_cost] FLOAT NULL,
    [sales_tax] FLOAT NULL,
    [dealer_discount] VARCHAR(50) NULL,
    [ship_via_id] INT NULL,
    [number_of_cartons] SMALLINT NULL,
    [weight_of_cartons] FLOAT NULL,
    [create_date] DATE NULL,
    [create_user] CHAR(15) NULL,
    [last_modified_date] DATE NULL,
    [last_modified_user] CHAR(15) NULL,
    [extensions] INT NULL,
    [hardware_discount] CHAR(50) NULL,
    [deposit_requested] FLOAT NULL,
    [deposit_acceptable] FLOAT NULL,
    [ship_date] DATE NULL,
    [drop_date] DATE NULL,
    [ups_zone] CHAR(10) NULL,
    [cover_net] FLOAT NULL,
    [other_list] FLOAT NULL,
    [other_net] FLOAT NULL,
    [total] FLOAT NULL,
    [waiting_for_price] CHAR(1) NULL,
    [stock_master_id] INT NULL,
    [status] INT NULL,
    [treatment_cost] FLOAT NULL,
    [c_end] CHAR(1) NULL,
    [rough_estimate] CHAR(1) NULL,
    [carton_types] CHAR(300) NULL,
    [carton_weights] CHAR(400) NULL,
    [stock_serial_numbers] VARCHAR(1000) NULL,
    [cover_list] NUMERIC(9,2) NULL,
    [old_cover_list] NUMERIC(9,2) NULL,
    [cod_fee] FLOAT NULL,
    [pool_shape] CHAR(50) NULL,
    [COD_Changes] FLOAT NULL,
    [Liner_Wall_Thickness] INT NULL,
    [Liner_Bottom_Thickness] INT NULL,
    [Liner_Overide] CHAR(5) NULL,
    [plate_no] VARCHAR(10) NULL,
    [ln_is_estimate] VARCHAR(2) NULL,
    [replace] VARCHAR(2) NULL,
    [paid_in_full] VARCHAR(2) NULL,
    [stock_master_id_ln_ag] INT NULL,
    CONSTRAINT [PK_calc_prep_manf] PRIMARY KEY ([prep_id], [quote_no])
);
GO

CREATE TABLE [calc_prep_manf_admin] (
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [admin_discount_type] CHAR(1) NULL,
    [admin_discount] CHAR(20) NULL,
    [admin_no_charge_net] CHAR(1) NULL,
    [admin_no_charge_freight] CHAR(1) NULL,
    [admin_description] VARCHAR(255) NULL,
    [deposit_required] CHAR(1) NULL,
    [deposit_flat_amount] INT NULL,
    [deposit_min_pct] INT NULL,
    [deposit_source] CHAR(1) NULL,
    [deposit_max_pct] INT NULL,
    [admin_description_dept] VARCHAR(255) NULL,
    [admin_description_reason] VARCHAR(255) NULL,
    [admin_description_as_per] VARCHAR(30) NULL,
    [admin_description_date] DATE NULL,
    [admin_description_person] VARCHAR(30) NULL,
    [deposit_override] CHAR(1) NULL,
    [dept_markdowns] VARCHAR(255) NULL,
    [giftcard] VARCHAR(255) NULL,
    [fixed_freight] FLOAT NULL,
    CONSTRAINT [PK_calc_prep_manf_admin] PRIMARY KEY ([prep_id], [quote_no])
);
GO

CREATE TABLE [calc_prep_rules] (
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [dtl_no] INT NOT NULL,
    [category] CHAR(10) NOT NULL,
    [type] CHAR(10) NOT NULL,
    [text] VARCHAR(255) NULL,
    [active] CHAR(1) NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    [dealer_flag] CHAR(1) NULL,
    [source] CHAR(1) NULL,
    [section] CHAR(10) NULL,
    [pool_type] CHAR(2) NULL,
    CONSTRAINT [PK_calc_prep_rules] PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
);
GO

CREATE TABLE [calc_prep_special_instructions] (
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [dtl_no] INT NOT NULL,
    [code] CHAR(10) NOT NULL,
    [short_description] VARCHAR(50) NULL,
    [long_description] VARCHAR(255) NULL,
    [active_flag] CHAR(1) NULL,
    [print_warranty_flag] CHAR(1) NULL,
    [source] CHAR(1) NULL,
    CONSTRAINT [PK_calc_prep_special_instructions] PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
);
GO

CREATE TABLE [calc_prep_treatment] (
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [dtl_no] INT NOT NULL,
    [treatment_code] CHAR(10) NOT NULL,
    [quantity] INT NULL,
    [actual_quantity] INT NULL,
    [unit] CHAR(10) NULL,
    [unit_price] FLOAT NULL,
    [charge_flag] CHAR(1) NULL,
    [last_modified_date] DATE NULL,
    [last_modified_user] CHAR(15) NULL,
    [source] CHAR(1) NULL,
    CONSTRAINT [PK_calc_prep_treatment] PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
);
GO

CREATE TABLE [calc_tracking] (
    [prep_id] INT NOT NULL,
    [entry_date] DATE NOT NULL,
    [ab_plot] VARCHAR(1) NOT NULL,
    CONSTRAINT [PK_calc_tracking] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [call_log_calls] (
    [item_no] INT NOT NULL,
    [called_date] DATETIME NOT NULL,
    [message] CHAR(500) NULL,
    [person_called] CHAR(20) NULL,
    [ll_user] CHAR(20) NULL,
    CONSTRAINT [PK_call_log_calls] PRIMARY KEY ([item_no], [called_date])
);
GO

CREATE TABLE [call_log_header] (
    [item_no] INT IDENTITY(1,1) NOT NULL,
    [dealer_code] CHAR(10) NOT NULL,
    [expected_payment_date] DATE NULL,
    [notes] VARCHAR(3500) NULL,
    [next_call_date] DATE NULL,
    [open] CHAR(2) NOT NULL,
    [close_date] DATE NULL,
    [create_user] CHAR(20) NOT NULL,
    [create_date] DATE NULL,
    CONSTRAINT [PK_call_log_header] PRIMARY KEY ([item_no])
);
GO

CREATE TABLE [call_log_invoices] (
    [item_no] INT NOT NULL,
    [invoice_id] INT NOT NULL,
    CONSTRAINT [PK_call_log_invoices] PRIMARY KEY ([item_no], [invoice_id])
);
GO

CREATE TABLE [cancel_charge] (
    [id_number] INT IDENTITY(1,1) NOT NULL,
    [job_type] CHAR(2) NOT NULL,
    [description] VARCHAR(100) NOT NULL,
    [percentage_modification] FLOAT NOT NULL,
    [jobstatus] INT NULL,
    CONSTRAINT [PK_cancel_charge] PRIMARY KEY ([id_number])
);
GO

CREATE TABLE [carton_types] (
    [carton_name] VARCHAR(10) NOT NULL,
    [length] INT NOT NULL,
    [width] INT NOT NULL,
    [height] INT NOT NULL,
    [cubic_feet] NUMERIC(5,2) NOT NULL,
    [ups] CHAR(1) NOT NULL,
    [short_name] CHAR(15) NULL,
    [active] CHAR(1) NULL,
    [include_subwt] CHAR(1) NULL,
    [on_skid] CHAR(1) NULL,
    [weight] FLOAT NULL,
    [dimensional_weight] FLOAT NULL,
    CONSTRAINT [PK_carton_types] PRIMARY KEY ([carton_name])
);
GO

CREATE TABLE [co_op_certificate] (
    [dealer_code] CHAR(6) NOT NULL,
    [amount] FLOAT NOT NULL,
    [year_certificate] INT NOT NULL,
    [identifier] INT IDENTITY(1,1) NOT NULL,
    [children_modifier] FLOAT NULL,
    [is_child] VARCHAR(2) NULL,
    [print_certificate] VARCHAR(2) NULL,
    [document_code] VARCHAR(20) NULL,
    CONSTRAINT [PK_co_op_certificate] PRIMARY KEY ([dealer_code], [year_certificate])
);
GO

CREATE TABLE [co_op_usage] (
    [co_op_id] INT IDENTITY(1,1) NOT NULL,
    [dealer_code] CHAR(6) NOT NULL,
    [date_used] DATE NOT NULL,
    [amount] NUMERIC(8,2) NOT NULL,
    [check_number] INT NULL,
    [reason] CHAR(150) NOT NULL,
    [check_date] DATE NULL,
    CONSTRAINT [PK_co_op_usage] PRIMARY KEY ([co_op_id])
);
GO

CREATE TABLE [color_upcharge] (
    [fabric_id] INT NOT NULL,
    [sqft] INT NOT NULL,
    [effective_date] DATE NOT NULL,
    [upcharge_amount] NUMERIC(12,4) NOT NULL,
    [create_date] DATE NOT NULL,
    [create_user] VARCHAR(50) NOT NULL,
    [modified_date] DATE NULL,
    [modified_user] VARCHAR(50) NULL,
    CONSTRAINT [PK_color_upcharge] PRIMARY KEY ([fabric_id], [sqft], [effective_date])
);
GO

CREATE TABLE [comments] (
    [category] CHAR(10) NOT NULL,
    [type] CHAR(10) NOT NULL,
    [text] VARCHAR(255) NULL,
    [active] CHAR(1) NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    CONSTRAINT [PK_comments] PRIMARY KEY ([category], [type])
);
GO

CREATE TABLE [comments_h] (
    [id_no] INT IDENTITY(1,1) NOT NULL,
    [category] CHAR(10) NOT NULL,
    [type] CHAR(10) NOT NULL,
    [text] VARCHAR(255) NULL,
    [active] CHAR(1) NOT NULL,
    [create_date] DATE NOT NULL,
    [create_user] VARCHAR(20) NOT NULL,
    [modified_date] DATE NULL,
    [modified_user] VARCHAR(20) NULL,
    [job_type] VARCHAR(2) NULL,
    [print_type] VARCHAR(5) NULL,
    CONSTRAINT [PK_comments_h] PRIMARY KEY ([id_no])
);
GO

CREATE TABLE [consumer_rebate] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [first_name] VARCHAR(100) NULL,
    [last_name] VARCHAR(100) NOT NULL,
    [address] VARCHAR(100) NOT NULL,
    [city] VARCHAR(100) NULL,
    [state] VARCHAR(100) NULL,
    [zip] VARCHAR(100) NOT NULL,
    [order_no_cover] INT NULL,
    [rebate_paid_cover] CHAR(11) NULL,
    [order_no_liner] INT NULL,
    [rebate_paid_liner] CHAR(1) NULL,
    [entry_date] DATE NULL,
    [rebate_paid_date_cover] DATE NULL,
    [rebate_paid_date_liner] DATE NULL,
    CONSTRAINT [PK_consumer_rebate] PRIMARY KEY ([id], [last_name], [address], [zip])
);
GO

CREATE TABLE [counter_table] (
    [id_counter] INT IDENTITY(1,1) NOT NULL,
    [test] INT NULL,
    CONSTRAINT [PK_counter_table] PRIMARY KEY ([id_counter])
);
GO

CREATE TABLE [country] (
    [name] VARCHAR(100) NOT NULL,
    [code] VARCHAR(5) NOT NULL,
    [phone_code] VARCHAR(25) NOT NULL,
    CONSTRAINT [PK_country] PRIMARY KEY ([code])
);
GO

CREATE TABLE [cpu_pickup] (
    [id_number] INT IDENTITY(1,1) NOT NULL,
    [pick_up_by] VARCHAR(100) NULL,
    [pulled_by] VARCHAR(100) NULL,
    [date_pickup] DATE NULL,
    [status] VARCHAR(5) NULL,
    [time_pickup] TIME NULL,
    [dealer_code] VARCHAR(10) NULL,
    CONSTRAINT [PK_cpu_pickup] PRIMARY KEY ([id_number])
);
GO

CREATE TABLE [cpu_pickup_error] (
    [id_number] INT NOT NULL,
    [error_scan] VARCHAR(100) NOT NULL,
    [reason_scan] VARCHAR(100) NOT NULL,
    [dtl_no] INT NOT NULL,
    CONSTRAINT [PK_cpu_pickup_error] PRIMARY KEY ([id_number], [dtl_no])
);
GO

CREATE TABLE [cpu_pickup_prep_id] (
    [id_number] INT NOT NULL,
    [prep_id] INT NOT NULL,
    [dtl_no] INT NOT NULL,
    [selected_item] CHAR(10) NULL,
    CONSTRAINT [PK_cpu_pickup_prep_id] PRIMARY KEY ([id_number], [dtl_no])
);
GO

CREATE TABLE [cs_claim_report] (
    [user_name] CHAR(25) NOT NULL,
    CONSTRAINT [PK_cs_claim_report] PRIMARY KEY ([user_name])
);
GO

CREATE TABLE [cst_errors] (
    [counter] INT IDENTITY(1,1) NOT NULL,
    [dealer_code] VARCHAR(10) NOT NULL,
    [error_text] VARCHAR(254) NULL,
    [error_date] DATE NULL,
    [error_time] TIME NULL,
    CONSTRAINT [PK_cst_errors] PRIMARY KEY ([counter])
);
GO

CREATE TABLE [customer_service] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [user] CHAR(10) NOT NULL,
    [cs_date] DATE NOT NULL,
    [cs_time] TIME NOT NULL,
    [dealer_code] CHAR(6) NOT NULL,
    [person] CHAR(25) NULL,
    [child_dealer_code] CHAR(6) NULL,
    CONSTRAINT [PK_customer_service] PRIMARY KEY ([id])
);
GO

CREATE TABLE [customer_service_detail] (
    [id] INT NOT NULL,
    [action] CHAR(50) NOT NULL,
    [cs_date] DATE NOT NULL,
    [cs_time] TIME NOT NULL,
    [prep_id] INT NULL,
    [quote_no] SMALLINT NULL,
    [instructions] VARCHAR(255) NULL,
    [paper] CHAR(1) NULL,
    [order_no] INT NULL,
    CONSTRAINT [PK_customer_service_detail] PRIMARY KEY ([id], [cs_date], [cs_time])
);
GO

CREATE TABLE [cv_production_date_history] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [original_date] DATE NOT NULL,
    [new_date] DATE NOT NULL,
    [production_date] DATE NOT NULL,
    [cover_type] CHAR(1) NOT NULL,
    [user_modified] CHAR(25) NOT NULL,
    [date_changed] DATE NOT NULL,
    [time_changed] TIME NOT NULL,
    [material_id] INT NOT NULL,
    CONSTRAINT [PK_cv_production_date_history] PRIMARY KEY ([id])
);
GO

CREATE TABLE [cv_production_dates] (
    [production_date] DATE NOT NULL,
    [material_id] INT NOT NULL,
    [stock_ship_date] DATE NOT NULL,
    [out_of_stock_ship_date] DATE NOT NULL,
    [custom_ship_date] DATE NOT NULL,
    [drop_date] DATE NOT NULL,
    CONSTRAINT [PK_cv_production_dates] PRIMARY KEY ([production_date], [material_id])
);
GO

CREATE TABLE [cvln_to_lncv] (
    [id_number] INT IDENTITY(1,1) NOT NULL,
    [prep_type] VARCHAR(2) NOT NULL,
    [cs_user] VARCHAR(20) NOT NULL,
    [entry_date] DATE NOT NULL,
    [person_calling] VARCHAR(20) NOT NULL,
    [dealer_code] VARCHAR(10) NOT NULL,
    [jobname] VARCHAR(200) NULL,
    [prep_id] INT NULL,
    [order_no] INT NULL,
    [obstructions] CHAR(2) NULL,
    [obstructions_description] VARCHAR(1000) NULL,
    [step] VARCHAR(2) NULL,
    [step_description] VARCHAR(1000) NULL,
    [type_deck] VARCHAR(1000) NULL,
    [job_linked] VARCHAR(2) NULL,
    [job_linked_to_prep] INT NULL,
    [form_what] VARCHAR(2) NULL,
    [mesh] INT NULL,
    [mesh_color] INT NULL,
    [ul_drains] INT NULL,
    [ul_no_drains] INT NULL,
    [ul_drains_color] INT NULL,
    [ul_no_drains_color] INT NULL,
    [liner_pattern] INT NULL,
    [liner_wall] INT NULL,
    [liner_bottom] INT NULL,
    [additional_information] VARCHAR(500) NULL,
    [prep_id_new] INT NULL,
    [inground_mesh_aqua] INT NULL,
    [inground_mesh_aqua_color] INT NULL,
    CONSTRAINT [PK_cvln_to_lncv] PRIMARY KEY ([id_number])
);
GO

CREATE TABLE [Damage_Type] (
    [damage_id] INT NOT NULL,
    [damage] CHAR(52) NOT NULL,
    [print_on_forms] INT NULL,
    [active] INT NULL,
    [damage_prep_type] VARCHAR(2) NULL,
    CONSTRAINT [PK_Damage_Type] PRIMARY KEY ([damage_id])
);
GO

CREATE TABLE [dbcr_master] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [dbcr_type] CHAR(1) NOT NULL,
    [description] CHAR(50) NOT NULL,
    [gl_account] CHAR(10) NOT NULL,
    [company] CHAR(3) NULL,
    CONSTRAINT [PK_dbcr_master] PRIMARY KEY ([id])
);
GO

CREATE TABLE [dbhc] (
    [dealer_code] CHAR(6) NOT NULL,
    [period_end] DATE NOT NULL,
    [bal_year] SMALLINT NULL,
    [gross_sales] FLOAT NULL,
    [net_sales] FLOAT NULL,
    [high_credit] FLOAT NULL,
    [average_days] INT NULL,
    [covers] INT NULL,
    CONSTRAINT [PK_dbhc] PRIMARY KEY ([dealer_code], [period_end])
);
GO

CREATE TABLE [de_productivity] (
    [prep_id] INT NOT NULL,
    [plot_id] INT NOT NULL,
    [user_name] CHAR(25) NOT NULL,
    [insert_date] DATE NOT NULL,
    [action] CHAR(30) NOT NULL
);
GO

CREATE TABLE [dealer] (
    [dealer_code] CHAR(6) NOT NULL,
    [name] CHAR(35) NULL,
    [contact_sales] CHAR(100) NULL,
    [contact_acct] CHAR(35) NULL,
    [addr1] CHAR(35) NULL,
    [addr2] CHAR(35) NULL,
    [city] CHAR(50) NULL,
    [state_code] CHAR(3) NOT NULL,
    [zip] CHAR(10) NULL,
    [phone] CHAR(20) NULL,
    [fax] CHAR(20) NULL,
    [active] CHAR(1) NULL,
    [admin_hold] CHAR(1) NULL,
    [alias] CHAR(35) NULL,
    [category] CHAR(2) NULL,
    [sales_territory] CHAR(2) NULL,
    [parent_dealer_code] CHAR(6) NULL,
    [term_id] INT NULL,
    [ship_via_id] INT NULL,
    [ship_via_mf] INT NULL,
    [credit_limit] FLOAT NULL,
    [credit_app_date] DATE NULL,
    [deposit_required] CHAR(1) NULL,
    [deposit_amt] FLOAT NULL,
    [deposit_min_pct] FLOAT NULL,
    [tax_code] CHAR(10) NULL,
    [tax_reseller_certificate] CHAR(20) NULL,
    [call_with_price] CHAR(1) NULL,
    [create_date] DATE NOT NULL,
    [create_user] CHAR(15) NOT NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    [discount] VARCHAR(25) NULL,
    [hardware_discount] VARCHAR(10) NULL,
    [mail_list] CHAR(1) NULL,
    [mail_list_codes] CHAR(100) NULL,
    [quote_only_names] CHAR(100) NULL,
    [leads_dealer] CHAR(1) NULL,
    [salestype_service] CHAR(1) NULL,
    [salestype_home] CHAR(1) NULL,
    [salestype_retail] CHAR(1) NULL,
    [salestype_builder] CHAR(1) NULL,
    [salestype_distributor] CHAR(1) NULL,
    [credit_app_received] DATE NULL,
    [phone2] CHAR(20) NULL,
    [call_b4_faxing] CHAR(1) NULL,
    [estm_doc] CHAR(1) NULL,
    [notify_doc] CHAR(1) NULL,
    [ack_doc] CHAR(1) NULL,
    [invc_doc] CHAR(1) NULL,
    [leads_date] DATE NULL,
    [po_box_flag] CHAR(1) NULL,
    [tax_cert_exp_date] DATE NULL,
    [onground_leads] CHAR(1) NULL,
    [babyloc_leads] CHAR(1) NULL,
    [Cell_Phone] CHAR(20) NULL,
    [E_Mail_address] CHAR(50) NULL,
    [Principal] CHAR(100) NULL,
    [web_site] CHAR(1) NULL,
    [source] CHAR(50) NULL,
    [fax_leads] CHAR(1) NULL,
    [ra_deposit_required] CHAR(1) NULL,
    [ra_deposit_amt] FLOAT NULL,
    [ra_deposit_min_pct] FLOAT NULL,
    [company_sales] CHAR(2) NULL,
    [fax_messages] CHAR(1) NULL,
    [salestype_fence] CHAR(1) NULL,
    [bulk_dealer] CHAR(1) NULL,
    [zip_rating] TINYINT NULL,
    [baby_loc_discount] VARCHAR(25) NULL,
    [liner_discount] VARCHAR(25) NULL,
    [liner_term_id] INT NULL,
    [liner_deposit_required] CHAR(1) NULL,
    [liner_deposit_amt] FLOAT NULL,
    [liner_deposit_min_pct] FLOAT NULL,
    [liner_leads] CHAR(1) NULL,
    [form75_doc] CHAR(1) NULL,
    [cc_on_file] CHAR(1) NOT NULL,
    [admin_notes] CHAR(250) NULL,
    [liner_discount_ag] VARCHAR(25) NULL,
    [web_address] CHAR(150) NULL,
    [liner_tax_reseller_certificate] CHAR(20) NULL,
    [cd_Rep] CHAR(30) NULL,
    [star_82] CHAR(1) NULL,
    [bulk_email] CHAR(1) NULL,
    [deposit_override] CHAR(1) NULL,
    [wt_discount] VARCHAR(25) NULL,
    [om_discount] VARCHAR(25) NULL,
    [spa_cap_discount] VARCHAR(25) NULL,
    [barrier_discount] VARCHAR(25) NULL,
    [sales_priority] INT NULL,
    [production_number] INT NULL,
    [route_to] VARCHAR(100) NULL,
    [category_ln] CHAR(2) NULL,
    [nspi_member] CHAR(2) NULL,
    [business_listing] CHAR(2) NULL,
    [verify_dealer] CHAR(2) NULL,
    [abbreviation_name] VARCHAR(35) NULL,
    [ra_discount] VARCHAR(25) NULL,
    [proforma_doc] CHAR(1) NULL,
    [no_charge_freight] CHAR(1) NULL,
    [no_print_freight] VARCHAR(10) NULL,
    [li_dealer] CHAR(1) NULL,
    [trouble_priority] CHAR(1) NOT NULL,
    [en_discount] VARCHAR(25) NULL,
    [ag_liner_stock] VARCHAR(25) NULL,
    [display_metric] CHAR(1) NULL,
    [display_price_on_web] VARCHAR(1) NULL,
    [display_jobs_on_web] VARCHAR(1) NULL,
    [salestype_online] VARCHAR(2) NULL,
    [salestype_buyinggroup] VARCHAR(2) NULL,
    [out_of_business] VARCHAR(2) NULL,
    [li_dealer_ln] VARCHAR(1) NULL,
    [li_dealer_bl] VARCHAR(1) NULL,
    [credit_line_override] VARCHAR(1) NULL,
    [no_charge_freight_ln] CHAR(1) NULL,
    [country] CHAR(3) NOT NULL,
    [verification_doc] CHAR(1) NULL,
    [admin_notes_de] CHAR(250) NULL,
    [mirage_white_label] CHAR(2) NULL,
    [ba_discount] VARCHAR(25) NULL,
    [omit_commision] VARCHAR(2) NULL,
    [deposit_override_2] CHAR(1) NULL,
    [organization_code] INT NULL,
    [sendpromo_covers] CHAR(2) NULL,
    [sendpromo_liners] CHAR(2) NULL,
    [measure_notify] CHAR(2) NULL,
    CONSTRAINT [PK_dealer] PRIMARY KEY ([dealer_code])
);
GO

CREATE TABLE [dealer_admin_contact] (
    [dealer_code] CHAR(6) NOT NULL,
    [main_contact_name] VARCHAR(100) NULL,
    [main_contact_email] VARCHAR(100) NULL,
    [main_contact_phone] VARCHAR(20) NULL,
    [second_contact_name] VARCHAR(100) NULL,
    [second_contact_email] VARCHAR(100) NULL,
    [second_contact_phone] VARCHAR(20) NULL,
    [cfo_main] VARCHAR(100) NULL,
    [cfo_email] VARCHAR(100) NULL,
    [cfo_phone] VARCHAR(20) NULL,
    [main_contact_title] VARCHAR(30) NULL,
    [second_contact_title] VARCHAR(30) NULL,
    [cfo_title] VARCHAR(30) NULL,
    CONSTRAINT [PK_dealer_admin_contact] PRIMARY KEY ([dealer_code])
);
GO

CREATE TABLE [dealer_bal] (
    [dealer_code] CHAR(6) NOT NULL,
    [period_end] DATE NOT NULL,
    [bal_year] SMALLINT NULL,
    [gross_sales] FLOAT NULL,
    [net_sales] FLOAT NULL,
    [high_credit] NUMERIC(12,2) NULL,
    [average_days] INT NULL,
    [covers] INT NULL,
    [bl_feet] INT NULL,
    [bl_orders] INT NULL,
    [bl_gross] NUMERIC(8,2) NULL,
    [bl_net] NUMERIC(8,2) NULL,
    [liners] INT NULL,
    CONSTRAINT [PK_dealer_bal] PRIMARY KEY ([dealer_code], [period_end])
);
GO

CREATE TABLE [dealer_bal_detail] (
    [dealer_code] CHAR(6) NOT NULL,
    [period_end] DATE NOT NULL,
    [product_id] INT NOT NULL,
    [product_group] CHAR(2) NULL,
    [safe] CHAR(2) NULL,
    [replacement] CHAR(2) NULL,
    [qty] SMALLINT NULL,
    [net_amount] NUMERIC(9,2) NULL,
    [total_amount] NUMERIC(9,2) NULL,
    [baby_feet] INT NULL
);
GO

CREATE TABLE [dealer_bal_third] (
    [dealer_code] CHAR(6) NOT NULL,
    [bal_year] INT NOT NULL,
    [net_cover] FLOAT NULL,
    [number_cover] INT NULL,
    [net_liner] FLOAT NULL,
    [number_liner] INT NULL,
    CONSTRAINT [PK_dealer_bal_third] PRIMARY KEY ([dealer_code], [bal_year])
);
GO

CREATE TABLE [dealer_bought_child_third] (
    [dealer_code] VARCHAR(10) NOT NULL,
    [bought_third_cover] VARCHAR(2) NULL,
    [bought_third_liner] VARCHAR(2) NULL,
    [bought_child_cover] VARCHAR(2) NULL,
    [bought_child_liner] VARCHAR(2) NULL,
    [bought_third_cover_year] INT NULL,
    [bought_third_liner_year] INT NULL,
    [bought_child_cover_year] INT NULL,
    [bought_child_liner_year] INT NULL,
    CONSTRAINT [PK_dealer_bought_child_third] PRIMARY KEY ([dealer_code])
);
GO

CREATE TABLE [dealer_change_form] (
    [dealer_code] CHAR(6) NOT NULL,
    [dealer_name] CHAR(35) NULL,
    [addr1] CHAR(35) NULL,
    [addr2] CHAR(35) NULL,
    [city] CHAR(50) NULL,
    [state] CHAR(3) NULL,
    [zip] CHAR(10) NULL,
    [phone] CHAR(50) NULL,
    [fax_number] CHAR(50) NULL,
    [id_number] INT IDENTITY(1,1) NOT NULL,
    [additional_information] VARCHAR(500) NULL,
    [date_taken] DATE NULL,
    [taken_by] VARCHAR(20) NULL,
    [spoke_to] VARCHAR(20) NULL,
    [processed] VARCHAR(2) NULL,
    [cell_phone] CHAR(20) NULL,
    CONSTRAINT [PK_dealer_change_form] PRIMARY KEY ([dealer_code], [id_number])
);
GO

CREATE TABLE [dealer_comments] (
    [dealer_code] CHAR(6) NOT NULL,
    [category] CHAR(10) NOT NULL,
    [type] CHAR(10) NOT NULL,
    [text] VARCHAR(255) NULL,
    [active] CHAR(1) NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    [id] INT IDENTITY(1,1) NOT NULL,
    [cv_om_wt_sc] VARCHAR(2) NULL,
    [ln] VARCHAR(2) NULL,
    [ms] VARCHAR(2) NULL,
    [ra] VARCHAR(2) NULL,
    [nc] VARCHAR(2) NULL,
    [bl] VARCHAR(2) NULL,
    [create_date] DATE NULL,
    [create_user] VARCHAR(15) NULL,
    [id_no] INT NULL,
    CONSTRAINT [PK_dealer_comments] PRIMARY KEY ([id])
);
GO

CREATE TABLE [dealer_credit_history] (
    [dealer_code] CHAR(6) NOT NULL,
    [credit_date] DATE NOT NULL,
    [credit_time] TIME NOT NULL,
    [term_id] INT NOT NULL,
    [deposit_required] CHAR(1) NOT NULL,
    [credit_limit] FLOAT NOT NULL,
    [discount] CHAR(25) NOT NULL,
    [discount_liner] CHAR(25) NULL,
    CONSTRAINT [PK_dealer_credit_history] PRIMARY KEY ([dealer_code], [credit_date], [credit_time])
);
GO

CREATE TABLE [dealer_discount] (
    [dealer_code] CHAR(6) NOT NULL,
    [type] CHAR(2) NOT NULL,
    [class] CHAR(6) NOT NULL,
    [product_id] INT NOT NULL,
    [dealer_discount] VARCHAR(50) NOT NULL,
    CONSTRAINT [PK_dealer_discount] PRIMARY KEY ([dealer_code], [type], [class], [product_id])
);
GO

CREATE TABLE [dealer_email_address] (
    [dealer_code] CHAR(6) NOT NULL,
    [est_not_ack_form75] CHAR(50) NULL,
    [invoice] CHAR(50) NULL,
    [ups_tracking] CHAR(50) NULL,
    [est_not_ack_form75_2] CHAR(50) NULL,
    [date_last_modified] DATE NULL,
    [principle_email_address] CHAR(50) NULL,
    [advertising_email_address] VARCHAR(50) NULL,
    [leads_email_address] CHAR(50) NULL,
    [invoice_2] CHAR(50) NULL,
    [verification_drawing] CHAR(50) NULL,
    [est_not_ack_form75_3] CHAR(50) NULL,
    [est_not_ack_form75_4] CHAR(50) NULL,
    [est_not_ack_form75_flag] CHAR(2) NULL,
    [est_not_ack_form75_2_flag] CHAR(2) NULL,
    [est_not_ack_form75_3_flag] CHAR(2) NULL,
    [est_not_ack_form75_4_flag] CHAR(2) NULL,
    [verification_drawing_2] CHAR(50) NULL,
    [verification_drawing_3] CHAR(50) NULL,
    [verification_drawing_4] CHAR(50) NULL,
    [leads_email_address_flag] CHAR(2) NULL,
    [verification_drawing_flag] CHAR(2) NULL,
    [verification_drawing_2_flag] CHAR(2) NULL,
    [verification_drawing_3_flag] CHAR(2) NULL,
    [verification_drawing_4_flag] CHAR(2) NULL,
    [on_mailing_list] CHAR(1) NULL,
    CONSTRAINT [PK_dealer_email_address] PRIMARY KEY ([dealer_code])
);
GO

CREATE TABLE [dealer_file_location] (
    [dealer_code] VARCHAR(10) NOT NULL,
    [dtl_no] INT NOT NULL,
    [file] VARCHAR(500) NOT NULL,
    [date_stored] DATE NOT NULL,
    [user_name] VARCHAR(100) NOT NULL,
    [destination_directory] VARCHAR(200) NOT NULL,
    [time_stored] TIME NOT NULL,
    [comments] VARCHAR(100) NULL,
    CONSTRAINT [PK_dealer_file_location] PRIMARY KEY ([dealer_code], [dtl_no])
);
GO

CREATE TABLE [dealer_file_location_financial] (
    [dealer_code] VARCHAR(10) NOT NULL,
    [dtl_no] INT NOT NULL,
    [file_type] VARCHAR(20) NOT NULL,
    [file] VARCHAR(500) NOT NULL,
    [destination_directory] VARCHAR(200) NOT NULL,
    [user_name] VARCHAR(100) NOT NULL,
    [date_stored] DATE NOT NULL,
    [comments] VARCHAR(100) NULL,
    CONSTRAINT [PK_dealer_file_location_financial] PRIMARY KEY ([dealer_code], [dtl_no])
);
GO

CREATE TABLE [dealer_key_target] (
    [dealer_code] CHAR(6) NOT NULL,
    [buys_covers] CHAR(1) NOT NULL,
    [buys_liner] CHAR(1) NOT NULL,
    [target_dealer] CHAR(1) NULL,
    CONSTRAINT [PK_dealer_key_target] PRIMARY KEY ([dealer_code])
);
GO

CREATE TABLE [dealer_log] (
    [dealer_code] CHAR(6) NOT NULL,
    [modified_date] DATE NOT NULL,
    [modified_user] VARCHAR(25) NOT NULL,
    [note] VARCHAR(150) NOT NULL,
    CONSTRAINT [PK_dealer_log] PRIMARY KEY ([dealer_code])
);
GO

CREATE TABLE [dealer_logos] (
    [dealer_code] VARCHAR(6) NOT NULL,
    [logo_file] VARCHAR(50) NOT NULL,
    [active] VARCHAR(1) NOT NULL,
    [show_cv] VARCHAR(2) NOT NULL,
    [show_ln] VARCHAR(2) NOT NULL,
    [show_all_else] VARCHAR(2) NULL,
    CONSTRAINT [PK_dealer_logos] PRIMARY KEY ([dealer_code], [show_cv], [show_ln])
);
GO

CREATE TABLE [Dealer_M] (
    [dealer_code] VARCHAR(10) NOT NULL,
    [prep_id] INT NOT NULL,
    [credit_letter] DATETIME NULL,
    [thankyou_letter] DATETIME NULL,
    [invoice_date] DATETIME NULL,
    [date_entered] DATE NULL,
    [first_user] VARCHAR(20) NULL,
    [credit_app_source] CHAR(1) NULL,
    CONSTRAINT [PK_Dealer_M] PRIMARY KEY ([dealer_code])
);
GO

CREATE TABLE [dealer_m_ln] (
    [dealer_code] VARCHAR(10) NOT NULL,
    [prep_id] INT NOT NULL,
    [credit_letter] DATETIME NULL,
    [thankyou_letter] DATETIME NULL,
    [invoice_date] DATETIME NULL,
    [date_entered] DATE NULL,
    [first_user] VARCHAR(20) NULL,
    [credit_app_source] CHAR(1) NULL,
    CONSTRAINT [PK_dealer_m_ln] PRIMARY KEY ([dealer_code])
);
GO

CREATE TABLE [dealer_Magento] (
    [dealer_code] VARCHAR(6) NOT NULL,
    [address] VARCHAR(200) NULL,
    [city] VARCHAR(50) NULL,
    [id] INT IDENTITY(1,1) NOT NULL,
    CONSTRAINT [PK_dealer_Magento] PRIMARY KEY ([id])
);
GO

CREATE TABLE [dealer_organization] (
    [organization_id] INT IDENTITY(1,1) NOT NULL,
    [description] VARCHAR(100) NOT NULL,
    [created_by] VARCHAR(20) NULL,
    [created_date] DATE NULL,
    [modified_by] VARCHAR(20) NULL,
    [modified_date] DATE NULL,
    CONSTRAINT [PK_dealer_organization] PRIMARY KEY ([organization_id])
);
GO

CREATE TABLE [dealer_promo_cover] (
    [dealer_code] VARCHAR(10) NOT NULL,
    [year_sent] INT NOT NULL,
    [status] CHAR(2) NOT NULL,
    CONSTRAINT [PK_dealer_promo_cover] PRIMARY KEY ([dealer_code], [year_sent])
);
GO

CREATE TABLE [dealer_promo_liner] (
    [dealer_code] CHAR(10) NOT NULL,
    [year] INT NOT NULL,
    [promo_h459] INT NULL,
    [promo_h459_sent] CHAR(2) NULL,
    [promo_l004] INT NULL,
    [promo_l004_sent] CHAR(2) NULL,
    [promo_l162] INT NULL,
    [promo_l162_sent] CHAR(2) NULL,
    [promo_chromerep] INT NULL,
    [promo_chromerep_sent] CHAR(2) NULL,
    [promo_spiralrep] INT NULL,
    [promo_spiralrep_sent] CHAR(2) NULL,
    [promo_pop] INT NULL,
    [promo_pop_sent] CHAR(2) NULL,
    [promo_l220] INT NULL,
    [promo_l220_sent] CHAR(2) NULL,
    [promo_l093h] INT NULL,
    [promo_l093h_sent] CHAR(2) NULL,
    [promo_h923] INT NULL,
    [promo_h923_sent] CHAR(2) NULL,
    CONSTRAINT [PK_dealer_promo_liner] PRIMARY KEY ([dealer_code], [year])
);
GO

CREATE TABLE [dealer_promotion] (
    [dealer_code] CHAR(6) NOT NULL,
    [brick_mortar_promotion_2013] CHAR(1) NOT NULL,
    CONSTRAINT [PK_dealer_promotion] PRIMARY KEY ([dealer_code])
);
GO

CREATE TABLE [dealer_references] (
    [dealer_code] CHAR(6) NOT NULL,
    [company] VARCHAR(200) NOT NULL,
    [phone] VARCHAR(30) NULL,
    [spoke_to] VARCHAR(100) NULL,
    [comments] VARCHAR(300) NULL,
    [pk_counter] INT IDENTITY(1,1) NOT NULL,
    CONSTRAINT [PK_dealer_references] PRIMARY KEY ([dealer_code], [pk_counter])
);
GO

CREATE TABLE [dealer_rules] (
    [dealer_code] CHAR(6) NOT NULL,
    [category] CHAR(10) NOT NULL,
    [type] CHAR(10) NOT NULL,
    [text] VARCHAR(255) NULL,
    [active] CHAR(1) NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    [section] CHAR(10) NOT NULL,
    [pool_type] CHAR(2) NULL,
    [additional_flag] CHAR(2) NULL,
    [cv_om_wt_sc] VARCHAR(2) NULL,
    [ln] VARCHAR(2) NULL,
    [ms] VARCHAR(2) NULL,
    [ra] VARCHAR(2) NULL,
    [nc] VARCHAR(2) NULL,
    [bl] VARCHAR(2) NULL,
    [third_dealer_allow] VARCHAR(2) NULL,
    CONSTRAINT [PK_dealer_rules] PRIMARY KEY ([dealer_code], [category], [type], [section])
);
GO

CREATE TABLE [dealer_rules_test] (
    [dealer_code] CHAR(6) NOT NULL,
    [category] CHAR(10) NOT NULL,
    [type] CHAR(10) NOT NULL,
    [text] VARCHAR(255) NULL,
    [active] CHAR(1) NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    [section] CHAR(10) NULL,
    [pool_type] CHAR(2) NULL,
    CONSTRAINT [PK_dealer_rules_test] PRIMARY KEY ([dealer_code], [category], [type])
);
GO

CREATE TABLE [dealer_sales_journal] (
    [dealer_code] VARCHAR(6) NOT NULL,
    [dtl_no] INT NOT NULL,
    [text_entry] VARCHAR(250) NULL,
    [sales_person_created] VARCHAR(10) NOT NULL,
    [date_created] DATE NOT NULL,
    [sales_person_modified] VARCHAR(10) NULL,
    [date_modified] DATE NULL,
    CONSTRAINT [PK_dealer_sales_journal] PRIMARY KEY ([dealer_code], [dtl_no])
);
GO

CREATE TABLE [dealer_same_company] (
    [id_no] INT IDENTITY(1,1) NOT NULL,
    [dealer_code_1] VARCHAR(6) NULL,
    [dealer_code_2] VARCHAR(6) NULL,
    CONSTRAINT [PK_dealer_same_company] PRIMARY KEY ([id_no])
);
GO

CREATE TABLE [dealer_shipto] (
    [dealer_code] CHAR(6) NOT NULL,
    [shipto_code] CHAR(6) NOT NULL,
    [name] CHAR(35) NULL,
    [contact] CHAR(35) NULL,
    [addr1] CHAR(35) NULL,
    [addr2] CHAR(35) NULL,
    [city] CHAR(20) NULL,
    [state_code] CHAR(3) NULL,
    [zip] CHAR(10) NULL,
    [phone] CHAR(10) NULL,
    [fax] CHAR(10) NULL,
    [mail_list] CHAR(1) NULL,
    [mail_list_codes] CHAR(100) NULL,
    [tax_code] CHAR(10) NULL,
    [country] CHAR(3) NULL,
    CONSTRAINT [PK_dealer_shipto] PRIMARY KEY ([dealer_code], [shipto_code])
);
GO

CREATE TABLE [dealer_term_code] (
    [DLRCD] CHAR(10) NULL,
    [COUNTER] NUMERIC(11,0) NULL,
    [TERMS] CHAR(50) NULL,
    [TERMPCT] NUMERIC(11,0) NULL,
    [DSCDAYS] NUMERIC(11,0) NULL,
    [SUPPRESS] CHAR(10) NULL
);
GO

CREATE TABLE [Dealer_Terms_Discount] (
    [dealer_code] CHAR(10) NOT NULL,
    CONSTRAINT [PK_Dealer_Terms_Discount] PRIMARY KEY ([dealer_code])
);
GO

CREATE TABLE [dealer_unique_pricing] (
    [dealer_code] CHAR(6) NOT NULL,
    [product_id] INT NOT NULL,
    [active] CHAR(2) NOT NULL,
    CONSTRAINT [PK_dealer_unique_pricing] PRIMARY KEY ([dealer_code], [product_id])
);
GO

CREATE TABLE [dealer_verification_form] (
    [dealer_code] CHAR(6) NOT NULL,
    [person_spoken_to] VARCHAR(100) NOT NULL,
    [send_dealer_case] CHAR(2) NOT NULL,
    [send_dealer_package] CHAR(2) NOT NULL,
    [additional_comments] CHAR(200) NULL,
    [send_dealer_package_ln] CHAR(2) NULL,
    [send_dealer_package_bl] CHAR(2) NULL,
    [approved_declined_by] CHAR(2) NULL,
    CONSTRAINT [PK_dealer_verification_form] PRIMARY KEY ([dealer_code])
);
GO

CREATE TABLE [departments] (
    [department_short] CHAR(20) NOT NULL,
    [department_long] CHAR(50) NULL,
    [department_type] CHAR(5) NULL,
    [prime] CHAR(1) NULL,
    [markdown] CHAR(1) NULL,
    CONSTRAINT [PK_departments] PRIMARY KEY ([department_short])
);
GO

CREATE TABLE [deposit] (
    [deposit_id] INT IDENTITY(1,1) NOT NULL,
    [date] DATE NOT NULL,
    [cash_account] CHAR(10) NOT NULL,
    [status] CHAR(10) NOT NULL,
    [estimated_amount] NUMERIC(9,2) NOT NULL,
    [actual_amount] NUMERIC(9,2) NOT NULL,
    [assigned_user] CHAR(15) NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    [last_modified_date] DATE NOT NULL,
    [bank_id] CHAR(10) NOT NULL,
    [depno] INT NULL,
    [estimated_count] INT NULL,
    [actual_count] INT NULL,
    [company] CHAR(3) NULL,
    CONSTRAINT [PK_deposit] PRIMARY KEY ([deposit_id])
);
GO

CREATE TABLE [deposit_description] (
    [drop_type] CHAR(20) NOT NULL,
    [description] CHAR(20) NOT NULL,
    CONSTRAINT [PK_deposit_description] PRIMARY KEY ([drop_type], [description])
);
GO

CREATE TABLE [deposit_rcpt] (
    [deposit_id] INT NOT NULL,
    [receipt_id] INT NOT NULL,
    [status] CHAR(1) NULL,
    [dealer_id] CHAR(6) NOT NULL,
    [amount] NUMERIC(9,2) NOT NULL,
    [pymt_type] CHAR(15) NOT NULL,
    [check_type] CHAR(15) NULL,
    [check_number] VARCHAR(50) NULL,
    [days_to_hold] INT NOT NULL,
    [note] VARCHAR(255) NULL,
    [last_modified_user] CHAR(15) NULL,
    [last_modified_date] DATE NULL,
    [create_user] CHAR(15) NULL,
    [create_date] DATE NULL,
    CONSTRAINT [PK_deposit_rcpt] PRIMARY KEY ([deposit_id], [receipt_id])
);
GO

CREATE TABLE [deposit_rcpt_detail] (
    [deposit_id] INT NOT NULL,
    [receipt_id] INT NOT NULL,
    [line_id] INT NOT NULL,
    [group_code] CHAR(5) NOT NULL,
    [group_type] CHAR(15) NOT NULL,
    [group_id] INT NULL,
    [apply_amount] NUMERIC(9,2) NOT NULL,
    [write_off_amount] NUMERIC(9,2) NOT NULL,
    [discount_amount] NUMERIC(9,2) NOT NULL,
    [gl_account] CHAR(10) NOT NULL,
    [gl_dbcr] CHAR(1) NOT NULL,
    [comment] VARCHAR(200) NULL,
    [balance_amount] NUMERIC(9,2) NULL,
    [total_amount] NUMERIC(9,2) NULL,
    [terms_dscnt_prcnt] SMALLINT NULL,
    [terms_dscnt_date] DATE NULL,
    [eligible_dscnt_amount] NUMERIC(9,2) NULL,
    [order_no] INT NULL,
    CONSTRAINT [PK_deposit_rcpt_detail] PRIMARY KEY ([deposit_id], [receipt_id], [line_id])
);
GO

CREATE TABLE [discount] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [discount] CHAR(25) NOT NULL,
    [min_orders] INT NOT NULL,
    [square_feet] INT NOT NULL,
    CONSTRAINT [PK_discount] PRIMARY KEY ([id])
);
GO

CREATE TABLE [discount_change_history] (
    [dealer_code] CHAR(6) NOT NULL,
    [discount_type] VARCHAR(10) NOT NULL,
    [date_change] DATE NOT NULL,
    [time_change] TIME NOT NULL,
    [old_discount] VARCHAR(25) NOT NULL,
    [new_discount] VARCHAR(25) NOT NULL,
    [user_change] VARCHAR(50) NOT NULL,
    CONSTRAINT [PK_discount_change_history] PRIMARY KEY ([dealer_code], [discount_type], [date_change], [time_change])
);
GO

CREATE TABLE [discount_list] (
    [discount_type] VARCHAR(10) NOT NULL,
    [description] VARCHAR(20) NULL,
    CONSTRAINT [PK_discount_list] PRIMARY KEY ([discount_type])
);
GO

CREATE TABLE [draft_productivity] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [user_name] CHAR(25) NOT NULL,
    [job_number] INT NOT NULL,
    [start_time] DATETIME NULL,
    [elapsed_time] NUMERIC(20,3) NULL,
    [last_update_time] DATETIME NOT NULL,
    [last_update_user] CHAR(25) NOT NULL,
    [bleep_time] DATETIME NULL,
    [checker] CHAR(1) NULL,
    [display] CHAR(1) NULL,
    [prep_id] INT NULL,
    CONSTRAINT [PK_draft_productivity] PRIMARY KEY ([id])
);
GO

CREATE TABLE [email_que] (
    [loop_email_id] INT IDENTITY(1,1) NOT NULL,
    [document_name] CHAR(2500) NULL,
    [email_address] CHAR(100) NULL,
    [status] CHAR(10) NULL,
    [loc_code] CHAR(5) NULL,
    [loc_key] CHAR(1000) NULL,
    [document_description] CHAR(400) NULL,
    [modified_time] TIME NULL,
    [modified_date] DATE NULL,
    [dealer_code] CHAR(10) NULL,
    [subject] CHAR(50) NULL,
    [body] CHAR(5000) NULL,
    [zip_ref] INT NULL,
    [datawindow] CHAR(2500) NULL,
    CONSTRAINT [PK_email_que] PRIMARY KEY ([loop_email_id])
);
GO

CREATE TABLE [email_sub_body] (
    [ll_code] CHAR(50) NOT NULL,
    [description] CHAR(100) NOT NULL,
    [subject] CHAR(100) NOT NULL,
    [body] CHAR(500) NOT NULL,
    [active] CHAR(1) NOT NULL,
    CONSTRAINT [PK_email_sub_body] PRIMARY KEY ([ll_code])
);
GO

CREATE TABLE [email_subject_body_foreign] (
    [state_code] CHAR(3) NOT NULL,
    [subject] VARCHAR(1000) NOT NULL,
    [body] VARCHAR(1000) NOT NULL,
    CONSTRAINT [PK_email_subject_body_foreign] PRIMARY KEY ([state_code])
);
GO

CREATE TABLE [ena_detail] (
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [line_no] SMALLINT NOT NULL,
    [quantity] INT NULL,
    [description] VARCHAR(255) NULL,
    [unit_price] FLOAT NULL,
    [total] FLOAT NULL,
    [short_desc] CHAR(60) NULL,
    CONSTRAINT [PK_ena_detail] PRIMARY KEY ([prep_id], [quote_no], [line_no])
);
GO

CREATE TABLE [error_image_loc] (
    [prep_id] INT NOT NULL,
    [error_id] INT NOT NULL,
    [checker] VARCHAR(25) NOT NULL,
    [drafter] VARCHAR(25) NOT NULL,
    [error_date] DATE NOT NULL,
    [department] VARCHAR(1) NOT NULL,
    [error_count] INT NOT NULL,
    CONSTRAINT [PK_error_image_loc] PRIMARY KEY ([prep_id], [error_id], [drafter])
);
GO

CREATE TABLE [error_master] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [type] CHAR(35) NOT NULL,
    [error] CHAR(75) NOT NULL,
    [active] CHAR(1) NOT NULL,
    [department] CHAR(3) NULL,
    CONSTRAINT [PK_error_master] PRIMARY KEY ([id])
);
GO

CREATE TABLE [fabric] (
    [fabric_id] INT IDENTITY(1,1) NOT NULL,
    [description] VARCHAR(70) NULL,
    [color] CHAR(25) NULL,
    [cost] FLOAT NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    [material_id] INT NULL,
    [active] CHAR(1) NULL,
    [aqua_xtreme] CHAR(1) NULL,
    CONSTRAINT [PK_fabric] PRIMARY KEY ([fabric_id])
);
GO

CREATE TABLE [fabric_inventory] (
    [roll_id] INT NOT NULL,
    [ll_id] SMALLINT NOT NULL,
    [usable_yards] INT NOT NULL,
    [gross_yards] INT NULL,
    [date_in] DATE NOT NULL,
    [date_out] DATE NULL,
    [user_in] CHAR(25) NOT NULL,
    [user_out] CHAR(25) NULL,
    [po_no] CHAR(10) NOT NULL,
    [skid] INT NOT NULL,
    [active] CHAR(1) NULL,
    CONSTRAINT [PK_fabric_inventory] PRIMARY KEY ([roll_id])
);
GO

CREATE TABLE [fax_docs] (
    [document_id] INT IDENTITY(1,1) NOT NULL,
    [name] CHAR(50) NOT NULL,
    [file] CHAR(70) NULL,
    [abbreviation] CHAR(10) NULL,
    [active] SMALLINT NOT NULL,
    [file_pdf] CHAR(70) NULL,
    [fax_type] CHAR(2) NULL,
    CONSTRAINT [PK_fax_docs] PRIMARY KEY ([document_id])
);
GO

CREATE TABLE [fax_print_dealer] (
    [id_number] INT IDENTITY(1,1) NOT NULL,
    [document] VARCHAR(100) NOT NULL,
    [dealer_code] VARCHAR(10) NOT NULL,
    [printed] CHAR(2) NULL,
    [date_start] DATE NULL,
    [date_end] DATE NULL,
    [prep_type] CHAR(5) NULL,
    [dealer_code_prep] CHAR(10) NULL,
    CONSTRAINT [PK_fax_print_dealer] PRIMARY KEY ([id_number])
);
GO

CREATE TABLE [fax_que] (
    [loop_fax_id] INT IDENTITY(1,1) NOT NULL,
    [fax_man_id] INT NULL,
    [document_name] CHAR(2500) NOT NULL,
    [phone_no] CHAR(50) NOT NULL,
    [status] CHAR(10) NULL,
    [loc_code] CHAR(5) NULL,
    [loc_key] CHAR(1000) NULL,
    [document_desc] CHAR(400) NULL,
    [modified_time] TIME NULL,
    [modified_date] DATE NULL,
    [dealer_code] CHAR(10) NULL,
    [datawindow] CHAR(50) NULL,
    [inserted_location] INT NULL,
    CONSTRAINT [PK_fax_que] PRIMARY KEY ([loop_fax_id])
);
GO

CREATE TABLE [fax_que_problems] (
    [fax_id] INT IDENTITY(1,1) NOT NULL,
    [document_name] CHAR(2500) NULL,
    [phone_no] CHAR(50) NULL,
    [loc_code] CHAR(5) NULL,
    [loc_key] CHAR(1000) NULL,
    [document_desc] CHAR(400) NULL,
    [modified_date] DATE NULL,
    [modified_time] TIME NULL,
    [dealer_code] CHAR(10) NULL,
    CONSTRAINT [PK_fax_que_problems] PRIMARY KEY ([fax_id])
);
GO

CREATE TABLE [file_type] (
    [code] VARCHAR(10) NOT NULL,
    [description] VARCHAR(50) NOT NULL,
    CONSTRAINT [PK_file_type] PRIMARY KEY ([code])
);
GO

CREATE TABLE [flat_rates_h] (
    [sales_territory] CHAR(10) NOT NULL,
    [ship_via_id] INT NOT NULL,
    [type] CHAR(2) NOT NULL,
    [flat_amount] FLOAT NOT NULL,
    CONSTRAINT [PK_flat_rates_h] PRIMARY KEY ([sales_territory], [ship_via_id], [type])
);
GO

CREATE TABLE [flat_rates_state_h] (
    [state_code] CHAR(2) NOT NULL,
    [sales_territory] CHAR(2) NOT NULL,
    [jobtype] CHAR(2) NOT NULL,
    [flat_amount] FLOAT NOT NULL,
    CONSTRAINT [PK_flat_rates_state_h] PRIMARY KEY ([state_code], [sales_territory], [jobtype])
);
GO

CREATE TABLE [gl_account] (
    [account] CHAR(10) NOT NULL,
    [title] CHAR(30) NOT NULL,
    [type] CHAR(10) NOT NULL,
    [dbcr] CHAR(10) NOT NULL,
    [category] CHAR(10) NOT NULL,
    [company] CHAR(3) NULL,
    CONSTRAINT [PK_gl_account] PRIMARY KEY ([account])
);
GO

CREATE TABLE [grid_size] (
    [product_id] INT NOT NULL,
    [grid_size] CHAR(10) NOT NULL,
    CONSTRAINT [PK_grid_size] PRIMARY KEY ([product_id], [grid_size])
);
GO

CREATE TABLE [hardware_bulk_price] (
    [hardware_code] VARCHAR(10) NOT NULL,
    [effective_date] DATE NOT NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] VARCHAR(50) NOT NULL,
    [bulk_price] DECIMAL(7,2) NOT NULL,
    CONSTRAINT [PK_hardware_bulk_price] PRIMARY KEY ([hardware_code], [effective_date])
);
GO

CREATE TABLE [hardware_bya] (
    [upc_code] VARCHAR(15) NOT NULL,
    [id_no] INT IDENTITY(1,1) NOT NULL,
    [hardware_code] CHAR(10) NOT NULL,
    [liner_wall_id] INT NULL,
    CONSTRAINT [PK_hardware_bya] PRIMARY KEY ([upc_code])
);
GO

CREATE TABLE [hardware_h] (
    [hardware_code] CHAR(10) NOT NULL,
    [description] CHAR(50) NOT NULL,
    [discontinued_date] DATE NULL,
    [unit] CHAR(10) NOT NULL,
    [weight_per_unit] FLOAT NOT NULL,
    [message] VARCHAR(255) NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    [type_flag] CHAR(1) NULL,
    [allowance_amount] FLOAT NULL,
    [up_charge_flag] CHAR(1) NULL,
    [active] CHAR(1) NOT NULL,
    [on_ground] CHAR(1) NULL,
    [in_ground] CHAR(1) NULL,
    [bold_flag] SMALLINT NULL,
    [up_charge_type] CHAR(1) NULL,
    [baby_loc] CHAR(1) NULL,
    [baby_loc_length] SMALLINT NULL,
    [baby_loc_logo] SMALLINT NULL,
    [bl_material] CHAR(3) NULL,
    [shipping_weight] FLOAT NULL,
    [Baby_Loc_Deluxe] CHAR(2) NULL,
    [baby_loc_caps] INT NULL,
    [jobtype_cv] CHAR(1) NULL,
    [jobtype_bl] CHAR(1) NULL,
    [jobtype_wt] CHAR(1) NULL,
    [jobtype_sc] CHAR(1) NULL,
    [jobtype_all] CHAR(1) NULL,
    [web_id] INT IDENTITY(1,1) NOT NULL,
    [max_public_quantity] INT NULL,
    [web_description] CHAR(255) NULL,
    [web_title] CHAR(63) NULL,
    [web_sale] CHAR(1) NULL,
    [cover_hardware_blue_dot] CHAR(2) NULL,
    [bl_height] SMALLINT NULL,
    [bl_web_sale] CHAR(1) NULL,
    [ignore_discount] CHAR(1) NULL,
    [jobtype_ln] CHAR(1) NULL,
    [special_discount] VARCHAR(10) NULL,
    [buying_limit] INT NULL,
    [description_spanish] CHAR(200) NULL,
    [description_french] CHAR(200) NULL,
    [description_italian] CHAR(200) NULL,
    [description_russian] CHAR(200) NULL,
    [description_metric] CHAR(200) NULL,
    [is_cablekit] CHAR(2) NULL,
    [is_returnable] CHAR(2) NULL,
    [is_inBox] VARCHAR(1) NULL,
    [is_babyloc_gate] CHAR(2) NULL,
    [backyard_accents] CHAR(1) NULL,
    [backyard_accents_type] INT NULL,
    [uses_hexk] CHAR(2) NULL,
    [bl_deck_sleeve] INT NULL,
    [max_discount] CHAR(25) NULL,
    [dealer_only] CHAR(1) NULL,
    CONSTRAINT [PK_hardware_h] PRIMARY KEY ([hardware_code])
);
GO

CREATE TABLE [hardware_price] (
    [hardware_code] CHAR(10) NOT NULL,
    [effective_date] DATE NOT NULL,
    [unit_price] NUMERIC(7,2) NOT NULL,
    [up_charge_flag] CHAR(1) NOT NULL,
    [last_modified_date] DATE NULL,
    [last_modified_user] CHAR(15) NULL,
    [retail_price] NUMERIC(7,2) NULL,
    CONSTRAINT [PK_hardware_price] PRIMARY KEY ([hardware_code], [effective_date])
);
GO

CREATE TABLE [hardware_upcharge] (
    [hardware_code] CHAR(10) NOT NULL,
    [effective_date] DATE NOT NULL,
    [grid_size] CHAR(10) NOT NULL,
    [up_charge] NUMERIC(5,2) NOT NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    [sqft_or_each] CHAR(1) NULL,
    [web_id] INT IDENTITY(1,1) NOT NULL,
    CONSTRAINT [PK_hardware_upcharge] PRIMARY KEY ([hardware_code], [effective_date], [grid_size])
);
GO

CREATE TABLE [interest] (
    [type] CHAR(1) NOT NULL,
    [id] INT NOT NULL,
    [create_date] DATE NOT NULL,
    [total_amount] NUMERIC(8,2) NOT NULL,
    [paid_amount] NUMERIC(8,2) NOT NULL,
    [rcpt_in_progress] CHAR(1) NULL,
    [writeoff_todate] NUMERIC(9,2) NULL,
    [status] CHAR(1) NULL,
    CONSTRAINT [PK_interest] PRIMARY KEY ([type], [id])
);
GO

CREATE TABLE [interest_detail] (
    [type] CHAR(1) NOT NULL,
    [id] INT NOT NULL,
    [ar_period] DATE NOT NULL,
    [amount] NUMERIC(9,2) NOT NULL,
    [create_date] DATE NOT NULL,
    [create_user] CHAR(20) NOT NULL,
    CONSTRAINT [PK_interest_detail] PRIMARY KEY ([type], [id], [ar_period])
);
GO

CREATE TABLE [inventory_child_codes] (
    [material_parent_code] INT NOT NULL,
    [material_child_code] INT NOT NULL,
    [qty] SMALLINT NULL,
    CONSTRAINT [PK_inventory_child_codes] PRIMARY KEY ([material_parent_code], [material_child_code])
);
GO

CREATE TABLE [inventory_code_usage] (
    [material_code] INT NOT NULL,
    [product_id] INT NOT NULL,
    [ratio] NUMERIC(5,4) NULL,
    [grid_size] VARCHAR(10) NOT NULL,
    [min_sqft] INT NOT NULL,
    [max_sqft] INT NOT NULL,
    CONSTRAINT [PK_inventory_code_usage] PRIMARY KEY ([material_code], [product_id], [grid_size], [min_sqft], [max_sqft])
);
GO

CREATE TABLE [inventory_hardware] (
    [inv_id] INT IDENTITY(1,1) NOT NULL,
    [material_id] INT NOT NULL,
    [qty] INT NOT NULL,
    [date_in] DATE NOT NULL,
    [user_in] CHAR(25) NOT NULL,
    [date_out] DATE NULL,
    [user_out] CHAR(25) NULL,
    [po_no] CHAR(10) NULL,
    [lot_no] CHAR(25) NULL,
    [location] VARCHAR(100) NULL,
    CONSTRAINT [PK_inventory_hardware] PRIMARY KEY ([inv_id])
);
GO

CREATE TABLE [inventory_history] (
    [inv_id] INT IDENTITY(1,1) NOT NULL,
    [inv_date] DATE NOT NULL,
    [product_id] CHAR(20) NOT NULL,
    [item_id] CHAR(30) NULL,
    [qty] INT NULL,
    CONSTRAINT [PK_inventory_history] PRIMARY KEY ([inv_id])
);
GO

CREATE TABLE [inventory_in_shop] (
    [line_id] INT IDENTITY(1,1) NOT NULL,
    [inv_id] INT NOT NULL,
    [quantity_in] INT NOT NULL,
    [date_out] DATE NOT NULL,
    [quantity_out] INT NULL,
    CONSTRAINT [PK_inventory_in_shop] PRIMARY KEY ([line_id])
);
GO

CREATE TABLE [inventory_out_history] (
    [line_id] INT IDENTITY(1,1) NOT NULL,
    [material_id] SMALLINT NOT NULL,
    [qty] INT NOT NULL,
    [date_used] DATE NOT NULL,
    [user] CHAR(20) NOT NULL,
    [inv_id] INT NULL,
    [comments] CHAR(150) NULL,
    [inventoryinshop] INT NULL,
    CONSTRAINT [PK_inventory_out_history] PRIMARY KEY ([line_id])
);
GO

CREATE TABLE [inventory_results] (
    [id_number] INT IDENTITY(1,1) NOT NULL,
    [datestamp] DATE NOT NULL,
    [time_stamp] TIME NOT NULL,
    [scanned_number] INT NULL,
    [status] VARCHAR(20) NULL,
    CONSTRAINT [PK_inventory_results] PRIMARY KEY ([id_number], [datestamp], [time_stamp])
);
GO

CREATE TABLE [Inventory_Returns] (
    [return_id] INT IDENTITY(1,1) NOT NULL,
    [material_code_id] INT NOT NULL,
    [quantity] INT NOT NULL,
    [date_returned] DATE NOT NULL,
    [returned_by] CHAR(50) NOT NULL,
    [comments] CHAR(250) NULL,
    [po_number] CHAR(10) NOT NULL,
    [date_returned_to_inventory] DATE NULL,
    CONSTRAINT [PK_Inventory_Returns] PRIMARY KEY ([return_id])
);
GO

CREATE TABLE [job_safety_information_h] (
    [code] CHAR(10) NOT NULL,
    [short_description] VARCHAR(100) NOT NULL,
    [long_description] VARCHAR(305) NOT NULL,
    [active] CHAR(2) NOT NULL,
    [create_date] DATE NOT NULL,
    [create_user] VARCHAR(50) NOT NULL,
    [last_modified_date] DATE NULL,
    [last_modified_user] VARCHAR(50) NULL,
    [jobtype] CHAR(10) NOT NULL,
    CONSTRAINT [PK_job_safety_information_h] PRIMARY KEY ([code])
);
GO

CREATE TABLE [keyoff] (
    [keyoff_id] INT NOT NULL,
    [artran_type] CHAR(1) NOT NULL,
    [artran_id] INT NOT NULL,
    [date] DATE NOT NULL,
    [create_user] CHAR(15) NULL,
    [create_date] DATE NULL,
    [last_modified_user] CHAR(15) NULL,
    [last_modified_date] DATE NULL,
    [status] CHAR(1) NULL,
    [amount] NUMERIC(9,2) NULL,
    [note] VARCHAR(255) NULL,
    [company] CHAR(3) NULL,
    CONSTRAINT [PK_keyoff] PRIMARY KEY ([keyoff_id])
);
GO

CREATE TABLE [keyoff_detail] (
    [keyoff_id] INT NOT NULL,
    [line_id] INT NOT NULL,
    [group_code] CHAR(5) NOT NULL,
    [group_type] CHAR(15) NOT NULL,
    [group_id] INT NULL,
    [apply_amount] NUMERIC(9,2) NOT NULL,
    [write_off_amount] NUMERIC(9,2) NOT NULL,
    [discount_amount] NUMERIC(9,2) NOT NULL,
    [gl_account] CHAR(10) NOT NULL,
    [gl_dbcr] CHAR(1) NOT NULL,
    [comment] VARCHAR(200) NULL,
    [balance_amount] NUMERIC(9,2) NULL,
    [total_amount] NUMERIC(9,2) NULL,
    [terms_dscnt_prcnt] SMALLINT NULL,
    [eligible_dscnt_amount] NUMERIC(9,2) NULL,
    [terms_dscnt_date] DATE NULL,
    CONSTRAINT [PK_keyoff_detail] PRIMARY KEY ([keyoff_id], [line_id])
);
GO

CREATE TABLE [language_translation] (
    [english] VARCHAR(300) NOT NULL,
    [french] VARCHAR(300) NULL,
    [italian] VARCHAR(300) NULL,
    [spanish] VARCHAR(300) NULL,
    [id_number] INT IDENTITY(1,1) NOT NULL,
    [date_created] DATE NULL,
    CONSTRAINT [PK_language_translation] PRIMARY KEY ([english])
);
GO

CREATE TABLE [leads_consumers] (
    [consumer_no] INT IDENTITY(1,1) NOT NULL,
    [last_name] CHAR(30) NOT NULL,
    [first_name] CHAR(15) NULL,
    [sir_name] CHAR(10) NULL,
    [address1] CHAR(50) NULL,
    [address2] CHAR(50) NULL,
    [city] CHAR(25) NOT NULL,
    [state] CHAR(3) NULL,
    [zip] CHAR(10) NOT NULL,
    [country] CHAR(3) NOT NULL,
    [phone] CHAR(25) NULL,
    [source_code] CHAR(15) NOT NULL,
    [create_user] CHAR(15) NULL,
    [create_date] DATETIME NULL,
    [last_user] CHAR(15) NULL,
    [last_date] DATETIME NULL,
    [above_ground] CHAR(2) NULL,
    [babby_loc] CHAR(2) NULL,
    [in_ground] CHAR(2) NULL,
    [current_dealer] CHAR(10) NULL,
    [sales_dealer] CHAR(10) NULL,
    [letter_notes] CHAR(100) NULL,
    [active] SMALLINT NULL,
    [liner] CHAR(2) NULL,
    [email_homeowner] CHAR(1) NULL,
    [email] VARCHAR(50) NULL,
    [ll_notes] VARCHAR(100) NULL,
    [province] VARCHAR(50) NULL,
    CONSTRAINT [PK_leads_consumers] PRIMARY KEY ([consumer_no])
);
GO

CREATE TABLE [leads_countries] (
    [country_code] CHAR(10) NOT NULL,
    [country_name] CHAR(30) NOT NULL,
    CONSTRAINT [PK_leads_countries] PRIMARY KEY ([country_code])
);
GO

CREATE TABLE [leads_dealer_leads] (
    [consumer_no] INT NOT NULL,
    [dealer_code] CHAR(10) NOT NULL,
    [leads_order] SMALLINT NOT NULL,
    [lead_date] DATE NOT NULL,
    CONSTRAINT [PK_leads_dealer_leads] PRIMARY KEY ([consumer_no], [dealer_code])
);
GO

CREATE TABLE [leads_dealer_zips] (
    [dealer_code] CHAR(10) NOT NULL,
    [leads_zip] CHAR(11) NOT NULL,
    CONSTRAINT [PK_leads_dealer_zips] PRIMARY KEY ([dealer_code], [leads_zip])
);
GO

CREATE TABLE [leads_letter_master] (
    [new_id] CHAR(7) NOT NULL,
    [old_id] CHAR(10) NOT NULL,
    [letter_title] CHAR(80) NOT NULL,
    [active] CHAR(1) NULL,
    [display_order] SMALLINT NULL,
    [datawindow_name] CHAR(30) NULL,
    [letter_type] CHAR(1) NULL,
    [dealer_loc] CHAR(1) NULL,
    CONSTRAINT [PK_leads_letter_master] PRIMARY KEY ([new_id])
);
GO

CREATE TABLE [leads_print] (
    [consumer_no] INT NOT NULL,
    [letter_id] CHAR(7) NOT NULL,
    [dateprinted] DATETIME NOT NULL,
    [person_printed] VARCHAR(15) NOT NULL,
    CONSTRAINT [PK_leads_print] PRIMARY KEY ([consumer_no], [letter_id])
);
GO

CREATE TABLE [leads_print_que] (
    [que_id] INT IDENTITY(1,1) NOT NULL,
    [consumer_no] INT NOT NULL,
    [letter_id] CHAR(10) NOT NULL,
    [date_in_que] DATE NOT NULL,
    [date_time_printed] DATETIME NULL,
    [batch_id] INT NULL,
    [que_type] CHAR(1) NULL,
    CONSTRAINT [PK_leads_print_que] PRIMARY KEY ([que_id])
);
GO

CREATE TABLE [leads_questions_master] (
    [question_id] CHAR(10) NOT NULL,
    [q_desciption] CHAR(50) NOT NULL,
    [old_question_id] CHAR(50) NULL,
    CONSTRAINT [PK_leads_questions_master] PRIMARY KEY ([question_id])
);
GO

CREATE TABLE [leads_source] (
    [source_code] VARCHAR(15) NOT NULL,
    [source_description] VARCHAR(50) NOT NULL,
    [source_year] INT NOT NULL,
    [active] CHAR(1) NOT NULL,
    CONSTRAINT [PK_leads_source] PRIMARY KEY ([source_code])
);
GO

CREATE TABLE [leads_survey] (
    [consumer_no] INT NOT NULL,
    [question_id] CHAR(10) NOT NULL,
    [answer] CHAR(30) NOT NULL,
    [date_answered] DATE NOT NULL,
    [survey_user] CHAR(20) NOT NULL,
    CONSTRAINT [PK_leads_survey] PRIMARY KEY ([consumer_no], [question_id])
);
GO

CREATE TABLE [leads_swaf] (
    [consumer_no] INT NOT NULL,
    [swaf_first_name] CHAR(30) NULL,
    [swaf_last_name] CHAR(30) NULL,
    [swaf_sir_name] CHAR(10) NULL,
    [swaf_addr1] CHAR(30) NULL,
    [swaf_addr2] CHAR(30) NULL,
    [swaf_city] CHAR(15) NULL,
    [swaf_state] CHAR(2) NULL,
    [swaf_zip] CHAR(10) NULL,
    [swaf_phone] CHAR(10) NULL,
    CONSTRAINT [PK_leads_swaf] PRIMARY KEY ([consumer_no])
);
GO

CREATE TABLE [liner_ag_production] (
    [serial_number] VARCHAR(100) NOT NULL,
    [plate_no] VARCHAR(100) NOT NULL,
    [prep_number] INT NULL,
    [bleep_status] INT NULL,
    [status] VARCHAR(5) NULL,
    [year] INT NULL,
    CONSTRAINT [PK_liner_ag_production] PRIMARY KEY ([serial_number], [plate_no])
);
GO

CREATE TABLE [liner_cover_estimate] (
    [prep_id] INT NOT NULL,
    [overlap] FLOAT NULL,
    [cover_string] VARCHAR(100) NULL,
    [sqft] FLOAT NULL,
    [num_4x8] INT NULL,
    [lazyl] CHAR(1) NULL,
    CONSTRAINT [PK_liner_cover_estimate] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [liner_error_report] (
    [error_id] INT IDENTITY(1,1) NOT NULL,
    [dealer_code] CHAR(10) NOT NULL,
    [original_job_number] INT NOT NULL,
    [fault] CHAR(150) NOT NULL,
    [action_taken] CHAR(150) NOT NULL,
    [create_user] CHAR(50) NOT NULL,
    [create_date] DATE NOT NULL,
    [last_modified_user] CHAR(50) NOT NULL,
    [last_modified_date] DATE NOT NULL,
    [prep_id] INT NULL,
    [product_id] INT NULL,
    [pool_shape] CHAR(10) NULL,
    [pool_size] CHAR(255) NULL,
    [explanation] CHAR(750) NULL,
    [jobname] CHAR(50) NULL,
    [amount] NUMERIC(9,2) NULL,
    [credit_amt] FLOAT NULL,
    [credit_applied] CHAR(1) NULL,
    [credit_applied_user] VARCHAR(20) NULL,
    [credit_applied_date] DATE NULL,
    [liner_wall] INT NULL,
    [liner_bottom] INT NULL,
    [order_no_new] INT NULL,
    [call_tag] CHAR(1) NULL,
    [cust_type] CHAR(20) NULL,
    [call_tag_type] VARCHAR(10) NULL,
    [pickup_cover_now] CHAR(1) NULL,
    [hours_operation] VARCHAR(100) NULL,
    [customer_name] VARCHAR(100) NULL,
    [address1] VARCHAR(100) NULL,
    [address2] VARCHAR(100) NULL,
    [city] VARCHAR(100) NULL,
    [state] VARCHAR(100) NULL,
    [zipcode] VARCHAR(20) NULL,
    [phone] VARCHAR(50) NULL,
    [person_spoke_to] VARCHAR(100) NULL,
    [awaiting_material] VARCHAR(2) NULL,
    CONSTRAINT [PK_liner_error_report] PRIMARY KEY ([error_id])
);
GO

CREATE TABLE [liner_error_report_action_history] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [dtl_no] INT NULL,
    [error_id] INT NULL,
    [action] VARCHAR(100) NULL,
    [entry_user] VARCHAR(20) NULL,
    [entry_date] DATE NULL,
    CONSTRAINT [PK_liner_error_report_action_history] PRIMARY KEY ([id])
);
GO

CREATE TABLE [liner_error_report_action_master] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [display] VARCHAR(100) NOT NULL,
    CONSTRAINT [PK_liner_error_report_action_master] PRIMARY KEY ([id])
);
GO

CREATE TABLE [liner_error_report_explanation_history] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [dtl_no] INT NULL,
    [error_id] INT NULL,
    [description] VARCHAR(1000) NULL,
    [entry_user] VARCHAR(20) NULL,
    [entry_date] DATE NULL,
    CONSTRAINT [PK_liner_error_report_explanation_history] PRIMARY KEY ([id])
);
GO

CREATE TABLE [liner_error_report_fault_master] (
    [id] FLOAT NOT NULL,
    [display] CHAR(100) NOT NULL,
    CONSTRAINT [PK_liner_error_report_fault_master] PRIMARY KEY ([id])
);
GO

CREATE TABLE [liner_tracking] (
    [prep_id] INT NOT NULL,
    [status] INT NOT NULL,
    [skid] INT NULL,
    [year_bleep] INT NULL,
    [date_bleep] DATE NULL,
    [time_bleep] TIME NULL,
    CONSTRAINT [PK_liner_tracking] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [liner_wall] (
    [wall_id] INT NOT NULL,
    [wall_description] CHAR(100) NOT NULL,
    [active] CHAR(1) NOT NULL,
    CONSTRAINT [PK_liner_wall] PRIMARY KEY ([wall_id])
);
GO

CREATE TABLE [liners_mfg] (
    [id] FLOAT NOT NULL,
    [company_name] CHAR(50) NULL,
    CONSTRAINT [PK_liners_mfg] PRIMARY KEY ([id])
);
GO

CREATE TABLE [linked_jobs] (
    [prep_id_1] INT NOT NULL,
    [prep_id_2] INT NOT NULL,
    [paid] CHAR(1) NOT NULL,
    CONSTRAINT [PK_linked_jobs] PRIMARY KEY ([prep_id_1], [prep_id_2])
);
GO

CREATE TABLE [lll_users] (
    [user_name] CHAR(25) NOT NULL,
    [security_level] INT NOT NULL,
    [department] VARCHAR(25) NOT NULL,
    [password] VARCHAR(25) NULL,
    [department_level] SMALLINT NULL,
    [initials] CHAR(3) NULL,
    [sales_territory] CHAR(2) NULL,
    [full_name] CHAR(50) NULL,
    [Liner_Department] CHAR(1) NULL,
    [email_address] VARCHAR(100) NULL,
    [active] VARCHAR(2) NULL,
    [gmail_password] VARCHAR(20) NULL,
    [manager] VARCHAR(2) NULL,
    [prep_version] VARCHAR(50) NULL,
    CONSTRAINT [PK_lll_users] PRIMARY KEY ([user_name])
);
GO

CREATE TABLE [ln_above_grounds] (
    [liner_id] INT IDENTITY(1,1) NOT NULL,
    [product_id] INT NOT NULL,
    [manf_size] VARCHAR(255) NOT NULL,
    [object_size] VARCHAR(255) NOT NULL,
    [shape] VARCHAR(50) NOT NULL,
    [base_cost] FLOAT NOT NULL,
    [weight] FLOAT NOT NULL,
    [active] CHAR(1) NOT NULL,
    [create_date] DATE NOT NULL,
    [create_user] VARCHAR(50) NOT NULL,
    [bead_id] INT NOT NULL,
    [description] VARCHAR(255) NOT NULL,
    [plate_no] VARCHAR(100) NOT NULL,
    [picture] VARCHAR(100) NULL,
    [modified_date] DATE NULL,
    [modified_user] VARCHAR(50) NULL,
    [base_cost_new] FLOAT NULL,
    [flag_nde] CHAR(1) NULL,
    [flag_h] CHAR(1) NULL,
    CONSTRAINT [PK_ln_above_grounds] PRIMARY KEY ([liner_id])
);
GO

CREATE TABLE [ln_above_grounds_Old_pricing] (
    [liner_id] INT IDENTITY(1,1) NOT NULL,
    [base_cost] FLOAT NULL,
    CONSTRAINT [PK_ln_above_grounds_Old_pricing] PRIMARY KEY ([liner_id])
);
GO

CREATE TABLE [ln_bead_types] (
    [bead_id] INT IDENTITY(1,1) NOT NULL,
    [description] VARCHAR(50) NOT NULL,
    CONSTRAINT [PK_ln_bead_types] PRIMARY KEY ([bead_id])
);
GO

CREATE TABLE [log] (
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [task] VARCHAR(50) NULL,
    [action] VARCHAR(50) NULL,
    [action_date] DATE NULL,
    [action_time] TIME NULL,
    [action_user] CHAR(15) NULL,
    [reference] VARCHAR(150) NULL,
    [status] INT NULL
);
GO

CREATE TABLE [log_status] (
    [id] INT NOT NULL,
    [task] CHAR(50) NOT NULL,
    [action] CHAR(50) NOT NULL,
    [active] CHAR(1) NOT NULL,
    [web_location] CHAR(50) NULL,
    CONSTRAINT [PK_log_status] PRIMARY KEY ([id], [task], [action])
);
GO

CREATE TABLE [machine_parts] (
    [parts_id] INT IDENTITY(1,1) NOT NULL,
    [part_number] VARCHAR(20) NOT NULL,
    [description] VARCHAR(75) NOT NULL,
    [machine_id] INT NOT NULL,
    [quantity] INT NOT NULL,
    [alert_level] INT NOT NULL,
    [create_date] DATE NOT NULL,
    [create_user] VARCHAR(25) NOT NULL,
    [image] VARCHAR(200) NULL,
    [department] INT NOT NULL,
    [Product_Use] VARCHAR(5) NOT NULL,
    [part_location] VARCHAR(75) NOT NULL,
    [modify_date] DATE NULL,
    [modify_user] VARCHAR(25) NULL,
    [active] VARCHAR(2) NULL,
    [quantity_used_at_once] INT NULL,
    [bin_location] VARCHAR(20) NULL,
    CONSTRAINT [PK_machine_parts] PRIMARY KEY ([parts_id])
);
GO

CREATE TABLE [machine_parts_removed_entry] (
    [inv_id] INT NOT NULL,
    [parts_id] INT NOT NULL,
    [quantity_deducted] INT NOT NULL,
    [original_quantity] INT NULL,
    [group_id_no] INT NULL,
    CONSTRAINT [PK_machine_parts_removed_entry] PRIMARY KEY ([inv_id], [parts_id])
);
GO

CREATE TABLE [machine_parts_removed_group] (
    [group_id_no] INT IDENTITY(1,1) NOT NULL,
    [taken_user] VARCHAR(25) NOT NULL,
    [taken_date] DATE NOT NULL,
    [sewing_id_no] INT NOT NULL,
    CONSTRAINT [PK_machine_parts_removed_group] PRIMARY KEY ([group_id_no])
);
GO

CREATE TABLE [machine_parts_taken_out] (
    [inv_id] INT NOT NULL,
    [parts_id] INT NOT NULL,
    [quantity_deducted] INT NOT NULL,
    [taken_user] VARCHAR(25) NOT NULL,
    [taken_date] DATE NOT NULL,
    [original_quantity] INT NULL,
    [sewing_id_no] INT NULL,
    CONSTRAINT [PK_machine_parts_taken_out] PRIMARY KEY ([inv_id], [parts_id])
);
GO

CREATE TABLE [machine_production] (
    [machine_id] INT IDENTITY(1,1) NOT NULL,
    [description] VARCHAR(250) NOT NULL,
    [description_general] VARCHAR(250) NULL,
    CONSTRAINT [PK_machine_production] PRIMARY KEY ([machine_id])
);
GO

CREATE TABLE [machine_sewing] (
    [identifier] CHAR(5) NULL,
    [id_no] INT IDENTITY(1,1) NOT NULL,
    [department] INT NULL,
    [model] INT NULL,
    [serial_no] CHAR(20) NULL,
    [year_machine] CHAR(10) NULL,
    [active] CHAR(2) NULL,
    [description] CHAR(100) NULL,
    [create_user] CHAR(20) NULL,
    [create_date] DATE NULL,
    [modify_user] CHAR(20) NULL,
    [modify_date] DATE NULL,
    CONSTRAINT [PK_machine_sewing] PRIMARY KEY ([id_no])
);
GO

CREATE TABLE [markdowns_subdepartment] (
    [code] VARCHAR(100) NOT NULL,
    [description] VARCHAR(500) NULL,
    [department] VARCHAR(500) NULL,
    [reason] VARCHAR(500) NULL,
    [as_per] VARCHAR(500) NULL,
    [active] VARCHAR(2) NULL,
    [create_date] DATE NULL,
    [create_user] VARCHAR(20) NULL,
    CONSTRAINT [PK_markdowns_subdepartment] PRIMARY KEY ([code])
);
GO

CREATE TABLE [material] (
    [material_id] INT IDENTITY(1,1) NOT NULL,
    [name] CHAR(10) NOT NULL,
    CONSTRAINT [PK_material] PRIMARY KEY ([material_id])
);
GO

CREATE TABLE [material_code] (
    [ll_id] SMALLINT NOT NULL,
    [width] INT NOT NULL,
    [style] CHAR(50) NOT NULL,
    [style_id] CHAR(50) NOT NULL,
    [centerline] SMALLINT NOT NULL,
    [weight] NUMERIC(9,5) NULL,
    [unit] CHAR(10) NULL,
    [value] NUMERIC(9,5) NULL,
    [po_req] CHAR(1) NULL,
    [current_inv] INT NULL,
    [trackable] CHAR(1) NULL,
    [sub_component] CHAR(1) NULL,
    [looploc_code] CHAR(15) NULL,
    [finished_good] CHAR(1) NULL,
    [stock_no_track] CHAR(1) NULL,
    [company] CHAR(3) NULL,
    [alert] INT NULL,
    [active] CHAR(1) NULL,
    [location] VARCHAR(100) NULL,
    [description] VARCHAR(100) NULL,
    [fabric_type] VARCHAR(20) NULL,
    [thickness] INT NULL,
    [while_supplies_last] VARCHAR(2) NULL,
    [custom_material] VARCHAR(2) NULL,
    [vendor] VARCHAR(50) NULL,
    CONSTRAINT [PK_material_code] PRIMARY KEY ([ll_id])
);
GO

CREATE TABLE [material_code_special_alerts] (
    [ll_id] SMALLINT NOT NULL,
    [month_alert] INT NOT NULL,
    [alert] INT NOT NULL,
    CONSTRAINT [PK_material_code_special_alerts] PRIMARY KEY ([ll_id], [month_alert])
);
GO

CREATE TABLE [material_code_speciality_group] (
    [speciality_code] VARCHAR(20) NOT NULL,
    [description] VARCHAR(100) NULL,
    [active] VARCHAR(2) NULL,
    [create_user] VARCHAR(20) NULL,
    [create_date] DATE NULL,
    CONSTRAINT [PK_material_code_speciality_group] PRIMARY KEY ([speciality_code])
);
GO

CREATE TABLE [material_code_speciality_group_detail] (
    [speciality_code] VARCHAR(20) NOT NULL,
    [ll_id] SMALLINT NOT NULL,
    CONSTRAINT [PK_material_code_speciality_group_detail] PRIMARY KEY ([speciality_code], [ll_id])
);
GO

CREATE TABLE [material_components] (
    [line_id] INT IDENTITY(1,1) NOT NULL,
    [ll_id] SMALLINT NOT NULL,
    [component_id] SMALLINT NOT NULL,
    [qty] NUMERIC(9,5) NOT NULL,
    CONSTRAINT [PK_material_components] PRIMARY KEY ([line_id])
);
GO

CREATE TABLE [material_hardware] (
    [id_num] INT IDENTITY(1,1) NOT NULL,
    [ll_id] INT NOT NULL,
    [hardware_code] CHAR(10) NOT NULL,
    CONSTRAINT [PK_material_hardware] PRIMARY KEY ([id_num])
);
GO

CREATE TABLE [material_product] (
    [id_num] INT IDENTITY(1,1) NOT NULL,
    [ll_id] INT NOT NULL,
    [product_id] INT NOT NULL,
    CONSTRAINT [PK_material_product] PRIMARY KEY ([id_num])
);
GO

CREATE TABLE [material_usage] (
    [prep_id] INT NOT NULL,
    [roll_id] INT NOT NULL,
    [serial_no] INT NOT NULL,
    CONSTRAINT [PK_material_usage] PRIMARY KEY ([prep_id], [roll_id], [serial_no])
);
GO

CREATE TABLE [measure_history] (
    [date_job] DATE NOT NULL,
    [item_id] INT NOT NULL,
    [prep_id] INT NULL,
    [measure_type] CHAR(5) NULL,
    [city] CHAR(50) NULL,
    [state] CHAR(2) NULL,
    [measure_team] CHAR(100) NULL,
    [dealer_code] CHAR(6) NULL,
    [status] CHAR(2) NULL,
    [jobname] CHAR(50) NULL,
    [dealer_called] CHAR(2) NULL,
    [dealer_called_date] DATE NULL,
    [dealer_called_text] VARCHAR(200) NULL,
    [homeowner_called] CHAR(2) NULL,
    [homeowner_called_date] DATE NULL,
    [homeowner_called_text] VARCHAR(200) NULL,
    CONSTRAINT [PK_measure_history] PRIMARY KEY ([date_job], [item_id])
);
GO

CREATE TABLE [menu_data] (
    [menu_id] INT IDENTITY(1,1) NOT NULL,
    [menu_label] CHAR(50) NOT NULL,
    [menu_description] CHAR(100) NOT NULL,
    [department] CHAR(15) NOT NULL,
    [menu_level] INT NOT NULL,
    [click_counter] INT NULL,
    CONSTRAINT [PK_menu_data] PRIMARY KEY ([menu_id])
);
GO

CREATE TABLE [menu_user] (
    [user_name] CHAR(40) NOT NULL,
    [menu_id] INT NOT NULL,
    [security_mode] CHAR(10) NULL,
    CONSTRAINT [PK_menu_user] PRIMARY KEY ([user_name], [menu_id])
);
GO

CREATE TABLE [messages] (
    [msgid] CHAR(40) NOT NULL,
    [msgtitle] CHAR(255) NOT NULL,
    [msgtext] CHAR(255) NOT NULL,
    [msgicon] CHAR(12) NOT NULL,
    [msgbutton] CHAR(17) NOT NULL,
    [msgdefaultbutton] INT NOT NULL,
    [msgseverity] INT NOT NULL,
    [msgprint] CHAR(1) NOT NULL,
    [msguserinput] CHAR(1) NOT NULL,
    CONSTRAINT [PK_messages] PRIMARY KEY ([msgid])
);
GO

CREATE TABLE [money_recieved] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [dealer_code] CHAR(10) NOT NULL,
    [active] CHAR(1) NULL,
    [decline] CHAR(1) NULL,
    [from_web] CHAR(2) NULL,
    [printed] CHAR(2) NULL,
    [date_stamped] DATE NULL,
    [time_stamped] TIME NULL,
    [deposit_id] INT NULL,
    CONSTRAINT [PK_money_recieved] PRIMARY KEY ([id])
);
GO

CREATE TABLE [money_recieved_detail] (
    [id] INT NOT NULL,
    [dtl_no] INT NOT NULL,
    [payment_type] CHAR(10) NOT NULL,
    [payment_amount] FLOAT NOT NULL,
    [ar_type] CHAR(20) NOT NULL,
    [description_prep_id] INT NULL,
    [description_general] CHAR(500) NULL,
    [description_artran] INT NULL,
    [create_user] CHAR(100) NOT NULL,
    [create_date] DATE NOT NULL,
    [description_ar_type] VARCHAR(20) NULL,
    [cc_holder] VARCHAR(20) NULL,
    [paid_in_full] VARCHAR(2) NULL,
    CONSTRAINT [PK_money_recieved_detail] PRIMARY KEY ([id], [dtl_no])
);
GO

CREATE TABLE [newcard] (
    [id] INT NOT NULL,
    [mrmrs] VARCHAR(50) NULL,
    [firstname] VARCHAR(50) NULL,
    [middle] VARCHAR(50) NULL,
    [lastname] VARCHAR(50) NULL,
    [order] VARCHAR(6) NULL,
    [address] VARCHAR(50) NULL,
    [city] VARCHAR(50) NULL,
    [state] VARCHAR(2) NULL,
    [zip] VARCHAR(5) NULL,
    [installed] VARCHAR(50) NULL,
    [date] DATETIME NULL,
    [commenta] VARCHAR(50) NULL,
    [comment_b] VARCHAR(50) NULL,
    [one] VARCHAR(1) NULL,
    [two] VARCHAR(1) NULL,
    [twob] VARCHAR(50) NULL,
    [twod] VARCHAR(50) NULL,
    [threea] VARCHAR(1) NULL,
    [threeb] VARCHAR(1) NULL,
    [threec] VARCHAR(1) NULL,
    [four] VARCHAR(50) NULL,
    [five] VARCHAR(1) NULL,
    [six] VARCHAR(1) NULL,
    [sixa] FLOAT NULL,
    [sixb] FLOAT NULL,
    [sixc] FLOAT NULL,
    [sixd] FLOAT NULL,
    [seven] VARCHAR(1) NULL,
    [sevenb] VARCHAR(50) NULL,
    [eight] VARCHAR(1) NULL,
    [nine] VARCHAR(1) NULL,
    [nineb] VARCHAR(50) NULL,
    [ten] VARCHAR(2) NULL,
    [eleven] VARCHAR(2) NULL,
    [twelve] VARCHAR(1) NULL,
    CONSTRAINT [PK_newcard] PRIMARY KEY ([id])
);
GO

CREATE TABLE [omit_worksheet_Special_instructions] (
    [treatment_code] VARCHAR(10) NOT NULL,
    CONSTRAINT [PK_omit_worksheet_Special_instructions] PRIMARY KEY ([treatment_code])
);
GO

CREATE TABLE [open_estimates] (
    [dealer_code] CHAR(6) NOT NULL,
    [dealer_name] CHAR(35) NOT NULL,
    [prep_id] INT NOT NULL,
    [quote_no] INT NOT NULL,
    [jobnmae] CHAR(25) NOT NULL,
    [order_date] DATE NOT NULL,
    [sales_territory] CHAR(2) NULL,
    [product_group] CHAR(2) NOT NULL,
    [type] CHAR(2) NOT NULL,
    [status] INT NOT NULL,
    [prep_type] CHAR(2) NOT NULL,
    [sqft] FLOAT NULL,
    [price] FLOAT NULL,
    [measured_by] CHAR(5) NULL,
    CONSTRAINT [PK_open_estimates] PRIMARY KEY ([prep_id], [quote_no])
);
GO

CREATE TABLE [pfc_history] (
    [collection_id] INT IDENTITY(1,1) NOT NULL,
    [dealer_code] CHAR(6) NOT NULL,
    [date_opened] DATE NOT NULL,
    [date_closed] DATE NULL,
    [amount_owed] NUMERIC(8,2) NULL,
    [amount_payed] NUMERIC(8,2) NULL,
    [litigation_fee] NUMERIC(7,2) NULL,
    [collect_agency] CHAR(20) NULL,
    [comments] CHAR(255) NULL,
    CONSTRAINT [PK_pfc_history] PRIMARY KEY ([collection_id])
);
GO

CREATE TABLE [pferrorlog] (
    [error_num] INT NOT NULL,
    [user_id] CHAR(30) NOT NULL,
    [error_date] DATE NOT NULL,
    [error_log_num] FLOAT NOT NULL,
    [dberror_no] INT NULL,
    [dberror_text] CHAR(2000) NULL,
    [additional_text] CHAR(256) NULL,
    [window_name] CHAR(40) NULL,
    [error_label] CHAR(80) NULL,
    CONSTRAINT [PK_pferrorlog] PRIMARY KEY ([error_num], [user_id], [error_date], [error_log_num])
);
GO

CREATE TABLE [pferrormsg] (
    [error_num] INT NOT NULL,
    [title_text] CHAR(40) NULL,
    [body_text] CHAR(256) NULL,
    [icon] SMALLINT NULL,
    [buttons] SMALLINT NULL,
    [short_desc] CHAR(40) NULL,
    [severity] INT NULL,
    [log_error] CHAR(1) NULL,
    CONSTRAINT [PK_pferrormsg] PRIMARY KEY ([error_num])
);
GO

CREATE TABLE [pfuser_pref] (
    [keyword] VARCHAR(256) NOT NULL,
    [ini_section] VARCHAR(256) NOT NULL,
    [userid] CHAR(30) NOT NULL,
    [key_value] VARCHAR(256) NULL,
    [last_modified_userid] CHAR(30) NOT NULL,
    [last_modified_date] DATE NOT NULL,
    CONSTRAINT [PK_pfuser_pref] PRIMARY KEY ([keyword], [ini_section], [userid])
);
GO

CREATE TABLE [plot_serial] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [year] INT NOT NULL,
    [serial_no] VARCHAR(14) NOT NULL,
    [dealer_code] CHAR(10) NULL,
    [create_date] DATE NULL,
    [version] CHAR(10) NULL,
    [sent_date] DATE NULL,
    CONSTRAINT [PK_plot_serial] PRIMARY KEY ([id])
);
GO

CREATE TABLE [po_materials] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [po_description] CHAR(50) NULL,
    [ll_id] FLOAT NULL,
    [active] CHAR(1) NULL,
    [additional_information] VARCHAR(1000) NULL,
    [not_linked] CHAR(1) NULL,
    [promo_type_id] INT NULL,
    CONSTRAINT [PK_po_materials] PRIMARY KEY ([id])
);
GO

CREATE TABLE [prep] (
    [prep_id] INT IDENTITY(1,1) NOT NULL,
    [selected_quote_no] SMALLINT NULL,
    [dealer_code] CHAR(6) NOT NULL,
    [billto_dealer_code] CHAR(6) NOT NULL,
    [term_id] INT NOT NULL,
    [prep_type] CHAR(1) NOT NULL,
    [type] CHAR(2) NULL,
    [entry_date] DATE NOT NULL,
    [order_no] INT NULL,
    [order_date] DATE NULL,
    [po_no] CHAR(25) NULL,
    [jobname] CHAR(50) NULL,
    [shipto_code] CHAR(6) NOT NULL,
    [shipto_name] CHAR(35) NULL,
    [shipto_contact] CHAR(35) NULL,
    [shipto_addr1] CHAR(35) NULL,
    [shipto_addr2] CHAR(35) NULL,
    [shipto_city] CHAR(20) NULL,
    [shipto_state_code] CHAR(3) NULL,
    [shipto_zip] CHAR(10) NULL,
    [status] CHAR(3) NULL,
    [replacement] CHAR(1) NULL,
    [warranty] CHAR(1) NULL,
    [manufactured_by] VARCHAR(35) NULL,
    [original_order_no] CHAR(15) NULL,
    [return_no] CHAR(10) NULL,
    [old_cover_instructions] VARCHAR(255) NULL,
    [credit_release_flag] CHAR(1) NULL,
    [shipping_release_flag] CHAR(1) NULL,
    [manf_location] CHAR(10) NULL,
    [deposit_amt_received] FLOAT NULL,
    [chafe_length] SMALLINT NULL,
    [create_date] DATE NULL,
    [create_user] CHAR(15) NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    [print_estimate] CHAR(1) NULL,
    [print_notify] CHAR(1) NULL,
    [print_ack] CHAR(1) NULL,
    [print_invoice] CHAR(1) NULL,
    [print_worksheet] CHAR(1) NULL,
    [display_cover] CHAR(1) NULL,
    [called_with_price] CHAR(1) NULL,
    [cover_in_building] CHAR(1) NULL,
    [quick_stock_order] FLOAT NULL,
    [pricing_description] VARCHAR(255) NULL,
    [discount_type] CHAR(1) NULL,
    [dealer_discount] CHAR(50) NULL,
    [hardware_discount] CHAR(50) NULL,
    [tech_date] DATETIME NULL,
    [ab_plot_flag] CHAR(1) NULL,
    [shipout_batch_id] DATETIME NULL,
    [deposit_amt_enclosed] NUMERIC(9,2) NULL,
    [previous_jobname] CHAR(25) NULL,
    [route_to] CHAR(10) NULL,
    [manf_hold] CHAR(1) NULL,
    [checked_for_accuracy] CHAR(1) NULL,
    [billto_estm_doc] CHAR(1) NULL,
    [billto_notify_doc] CHAR(1) NULL,
    [billto_ack_doc] CHAR(1) NULL,
    [dealer_estm_doc] CHAR(1) NULL,
    [dealer_notify_doc] CHAR(1) NULL,
    [dealer_ack_doc] CHAR(1) NULL,
    [shipto_tax_code] CHAR(10) NULL,
    [number_original_springs] SMALLINT NULL,
    [original_storage_bag] CHAR(1) NULL,
    [ups_track] CHAR(25) NULL,
    [from_web] CHAR(1) NULL,
    [from_plot_prg] CHAR(1) NULL,
    [dispose_date] DATE NULL,
    [age_of_cover] INT NULL,
    [original_spring_cover_qty] INT NULL,
    [damage_type] CHAR(255) NULL,
    [discard_cover] CHAR(25) NULL,
    [return_no_work] CHAR(1) NULL,
    [full_hardware] CHAR(1) NULL,
    [back_to_tech] CHAR(1) NULL,
    [altered] INT NULL,
    [return_cover] CHAR(25) NULL,
    [ra_ordered_by] CHAR(25) NULL,
    [ra_approved_by] CHAR(25) NULL,
    [ra_inspected_by] CHAR(25) NULL,
    [will_not_repair] CHAR(1) NULL,
    [repaired_no_times] INT NULL,
    [ra_inspection_date] DATE NULL,
    [repair_comments] CHAR(300) NULL,
    [anchors_returned] INT NULL,
    [warranty_reasons] CHAR(255) NULL,
    [buckles_returned] INT NULL,
    [Alter_Job] CHAR(1) NULL,
    [Liner_reference] INT NULL,
    [print_hardware] CHAR(1) NULL,
    [billto_form75_doc] CHAR(1) NULL,
    [dealer_form75_doc] CHAR(1) NULL,
    [Liner_Perimeter] INT NULL,
    [Roll_Serial_No] INT NULL,
    [liner_bottom] INT NULL,
    [Liner_step] CHAR(1) NULL,
    [requote] CHAR(1) NULL,
    [third_dealer] CHAR(6) NULL,
    [billto_proforma_doc] CHAR(1) NULL,
    [photo] CHAR(2) NULL,
    [template] CHAR(2) NULL,
    [measure_by_sales] CHAR(2) NULL,
    [back_to_imageloc] CHAR(2) NULL,
    [country] CHAR(3) NULL,
    [cod_due] FLOAT NULL,
    [dealer_verification] CHAR(1) NULL,
    [from_app] CHAR(2) NULL,
    CONSTRAINT [PK_prep] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_alter] (
    [prep_id] INT NOT NULL,
    [object_size] VARCHAR(255) NULL,
    [manf_size] VARCHAR(255) NULL,
    [original_order_no] INT NULL,
    CONSTRAINT [PK_prep_alter] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_auto_converted] (
    [prep_id] INT NOT NULL,
    [userid] CHAR(20) NOT NULL,
    [date_converted] DATE NOT NULL,
    [time_converted] TIME NOT NULL,
    [reviewed] CHAR(2) NULL,
    CONSTRAINT [PK_prep_auto_converted] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_blue_dot] (
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [dtl_no] SMALLINT NOT NULL,
    [text] VARCHAR(500) NULL,
    [date_cleared] DATE NULL,
    [cleared_by] VARCHAR(35) NULL,
    [last_modified_date] DATE NULL,
    [last_modified_user] CHAR(15) NULL,
    [source] CHAR(1) NULL,
    [answer] VARCHAR(255) NULL,
    [markable] CHAR(5) NULL,
    [foreign_version] CHAR(500) NULL,
    [create_date] DATE NULL,
    [create_user] VARCHAR(50) NULL,
    CONSTRAINT [PK_prep_blue_dot] PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
);
GO

CREATE TABLE [prep_calc_freight] (
    [prep_id] INT NOT NULL,
    [calculated_freight] FLOAT NOT NULL,
    [ship_hold_cal] VARCHAR(2) NOT NULL,
    [actual_freight] FLOAT NULL,
    CONSTRAINT [PK_prep_calc_freight] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_cancel_fee] (
    [prep_id] INT NOT NULL,
    [cancel_charge_id] INT NOT NULL,
    [percentage_cancel_charge] FLOAT NOT NULL,
    [additional_comment] VARCHAR(400) NULL,
    [amount_reduced] FLOAT NULL,
    [username] VARCHAR(200) NULL,
    [amount_payed] FLOAT NULL,
    [quote_no] INT NULL,
    CONSTRAINT [PK_prep_cancel_fee] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_cfa_pricechange_log] (
    [prep_id] INT NOT NULL,
    [quote_no] INT NOT NULL,
    [list_price] FLOAT NOT NULL,
    [net_price] FLOAT NOT NULL,
    [cfa_date] DATE NOT NULL,
    [cfa_time] TIME NOT NULL,
    [price_type] CHAR(2) NULL,
    CONSTRAINT [PK_prep_cfa_pricechange_log] PRIMARY KEY ([prep_id], [quote_no], [cfa_date], [cfa_time])
);
GO

CREATE TABLE [prep_cfa_second] (
    [prep_id] INT NOT NULL,
    [cfa_second] CHAR(2) NOT NULL,
    [double_cfa_required] CHAR(2) NULL,
    [pre_draft_cfa] CHAR(2) NULL,
    CONSTRAINT [PK_prep_cfa_second] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_claimed_drafting] (
    [prep_id] INT NOT NULL,
    [username] VARCHAR(20) NOT NULL,
    CONSTRAINT [PK_prep_claimed_drafting] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_claimed_imageloc] (
    [prep_id] INT NOT NULL,
    [username] CHAR(20) NULL,
    CONSTRAINT [PK_prep_claimed_imageloc] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_claimed_jobs] (
    [prep_id] INT NOT NULL,
    [username] VARCHAR(20) NULL,
    [username_cfa] VARCHAR(20) NULL,
    CONSTRAINT [PK_prep_claimed_jobs] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_claimed_jobs_cs] (
    [prep_id] INT NOT NULL,
    [username] VARCHAR(20) NULL,
    CONSTRAINT [PK_prep_claimed_jobs_cs] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_claimed_plot] (
    [prep_id] INT NOT NULL,
    [username] VARCHAR(20) NOT NULL,
    [username_checker] VARCHAR(20) NULL,
    CONSTRAINT [PK_prep_claimed_plot] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_comments] (
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [dtl_no] INT NOT NULL,
    [category] CHAR(10) NOT NULL,
    [type] CHAR(10) NOT NULL,
    [text] VARCHAR(255) NULL,
    [active] CHAR(1) NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    [dealer_flag] CHAR(1) NULL,
    [source] CHAR(1) NULL,
    [id_no] INT NULL,
    CONSTRAINT [PK_prep_comments] PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
);
GO

CREATE TABLE [prep_cpu_signature] (
    [order_no] INT NOT NULL,
    [signature] VARCHAR(MAX) NOT NULL,
    [timestamp] DATETIME NOT NULL,
    [id] INT IDENTITY(1,1) NOT NULL,
    CONSTRAINT [PK_prep_cpu_signature] PRIMARY KEY ([id])
);
GO

CREATE TABLE [prep_custom_stock] (
    [prep_id] INT NOT NULL,
    [quote_no] INT NOT NULL,
    [stock_id] INT NOT NULL,
    [serial_no] VARCHAR(20) NOT NULL,
    [date_custom_stock] DATE NOT NULL,
    CONSTRAINT [PK_prep_custom_stock] PRIMARY KEY ([prep_id], [quote_no])
);
GO

CREATE TABLE [prep_easyjob] (
    [prep_id] INT NOT NULL,
    [easyjob] CHAR(2) NULL,
    CONSTRAINT [PK_prep_easyjob] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_error] (
    [prep_id] INT NOT NULL,
    [error_id] INT NOT NULL,
    [checker] VARCHAR(25) NOT NULL,
    [prepper] VARCHAR(25) NOT NULL,
    [error_date] DATE NOT NULL,
    [department] VARCHAR(1) NOT NULL,
    [error_count] INT NOT NULL,
    CONSTRAINT [PK_prep_error] PRIMARY KEY ([prep_id], [error_id], [prepper])
);
GO

CREATE TABLE [prep_file_location] (
    [prep_id] INT NOT NULL,
    [dtl_no] INT NOT NULL,
    [file] VARCHAR(512) NOT NULL,
    [date_stored] DATE NULL,
    [user_name] VARCHAR(512) NULL,
    [destination_directory] VARCHAR(512) NULL,
    [time_stored] TIME NULL,
    [comments] CHAR(512) NULL,
    [is_photo] CHAR(2) NULL,
    [void_file] CHAR(2) NULL,
    [to_be_reviewed] CHAR(2) NULL,
    [file_processed] CHAR(2) NULL,
    [forward_email_accounting] CHAR(2) NULL,
    CONSTRAINT [PK_prep_file_location] PRIMARY KEY ([prep_id], [dtl_no])
);
GO

CREATE TABLE [prep_finalize_tbc] (
    [prep_id] INT NOT NULL,
    CONSTRAINT [PK_prep_finalize_tbc] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_flags] (
    [prep_id] FLOAT NOT NULL,
    [quote_no] FLOAT NOT NULL,
    [old_safety_print] CHAR(2) NULL,
    [cwp_safety] CHAR(1) NULL,
    [safety_first] CHAR(1) NULL,
    [steps_finished] CHAR(1) NULL,
    CONSTRAINT [PK_prep_flags] PRIMARY KEY ([prep_id], [quote_no])
);
GO

CREATE TABLE [prep_free_imageloc] (
    [dealer_code] VARCHAR(10) NOT NULL,
    [year_job] INT NOT NULL,
    [prep_id] INT NOT NULL,
    [job_counter] INT NOT NULL,
    CONSTRAINT [PK_prep_free_imageloc] PRIMARY KEY ([dealer_code], [year_job], [prep_id])
);
GO

CREATE TABLE [prep_generational] (
    [prep_id] INT NOT NULL,
    [prep_id_original] INT NOT NULL,
    [generation_number] INT NOT NULL,
    [create_date] DATE NULL,
    [create_user] VARCHAR(50) NULL,
    [modified_date] DATE NULL,
    [modified_user] VARCHAR(50) NULL,
    [not_looploc_error] VARCHAR(2) NULL,
    [give_quick_shipdate] VARCHAR(2) NULL,
    [looploc_error] VARCHAR(2) NULL,
    CONSTRAINT [PK_prep_generational] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_hardware] (
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [dtl_no] INT NOT NULL,
    [hardware_code] CHAR(10) NOT NULL,
    [quantity] INT NULL,
    [actual_quantity] INT NULL,
    [unit] CHAR(10) NULL,
    [unit_price] FLOAT NULL,
    [charge_flag] CHAR(1) NULL,
    [last_modified_date] DATE NULL,
    [last_modified_user] CHAR(15) NULL,
    [additional_flag] CHAR(1) NOT NULL,
    [source] CHAR(1) NULL,
    [up_charge_flag] CHAR(1) NULL,
    [units] INT NULL,
    [weight] FLOAT NULL,
    CONSTRAINT [PK_prep_hardware] PRIMARY KEY ([prep_id], [quote_no], [dtl_no], [additional_flag])
);
GO

CREATE TABLE [prep_image_loc] (
    [prep_id] INT NOT NULL,
    [prep_id_image_loc] INT NOT NULL,
    [credit_memo_print] VARCHAR(2) NULL,
    [credit_memo_date_entered] DATE NULL,
    [credit_memo_date_printed] DATE NULL,
    [credit_memo_amount] FLOAT NULL,
    [credit_memo_created] VARCHAR(2) NULL,
    [credit_memo_date_created] DATE NULL,
    [credit_memo_artran] INT NULL,
    [cost_added_to_main_job] CHAR(2) NULL,
    [artran_canceled] CHAR(2) NULL,
    [cfa] CHAR(2) NULL,
    CONSTRAINT [PK_prep_image_loc] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_liner] (
    [prep_id] INT NOT NULL,
    [step_length] INT NOT NULL,
    [step_wall_length] INT NOT NULL,
    [bottom_length] INT NULL,
    CONSTRAINT [PK_prep_liner] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_linerwall_nobasket] (
    [prep_id] INT NOT NULL,
    [dtl_number] INT NOT NULL,
    [liner_pattern] INT NOT NULL,
    [date_bleeped] DATE NOT NULL,
    [user_bleeped] VARCHAR(20) NULL,
    [linerwall] INT NULL,
    [linerbottom] INT NULL,
    CONSTRAINT [PK_prep_linerwall_nobasket] PRIMARY KEY ([prep_id], [dtl_number])
);
GO

CREATE TABLE [prep_manf] (
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [product_id] INT NULL,
    [product_group] CHAR(1) NULL,
    [grid_size] CHAR(10) NULL,
    [qty] SMALLINT NULL,
    [out_of_stock_flag] CHAR(1) NULL,
    [shape] VARCHAR(50) NULL,
    [object_size] VARCHAR(255) NULL,
    [manf_size] VARCHAR(255) NULL,
    [averaged_flag] CHAR(1) NULL,
    [safe_flag] CHAR(1) NULL,
    [price_table_flag] CHAR(1) NULL,
    [sqft] FLOAT NULL,
    [base_cost] FLOAT NULL,
    [cover_hardware_cost] FLOAT NULL,
    [markdown] FLOAT NULL,
    [shipping_cost] FLOAT NULL,
    [sales_tax] FLOAT NULL,
    [dealer_discount] VARCHAR(50) NULL,
    [ship_via_id] INT NULL,
    [number_of_cartons] SMALLINT NULL,
    [weight_of_cartons] FLOAT NULL,
    [create_date] DATE NULL,
    [create_user] CHAR(15) NULL,
    [last_modified_date] DATE NULL,
    [last_modified_user] CHAR(15) NULL,
    [extensions] INT NULL,
    [hardware_discount] CHAR(50) NULL,
    [deposit_requested] FLOAT NULL,
    [deposit_acceptable] FLOAT NULL,
    [ship_date] DATE NULL,
    [drop_date] DATE NULL,
    [ups_zone] CHAR(10) NULL,
    [cover_net] FLOAT NULL,
    [other_list] FLOAT NULL,
    [other_net] FLOAT NULL,
    [total] FLOAT NULL,
    [waiting_for_price] CHAR(1) NULL,
    [stock_master_id] INT NULL,
    [status] INT NULL,
    [treatment_cost] FLOAT NULL,
    [c_end] CHAR(1) NULL,
    [rough_estimate] CHAR(1) NULL,
    [carton_types] CHAR(300) NULL,
    [carton_weights] CHAR(400) NULL,
    [stock_serial_numbers] VARCHAR(1000) NULL,
    [cover_list] NUMERIC(9,2) NULL,
    [old_cover_list] NUMERIC(9,2) NULL,
    [cod_fee] FLOAT NULL,
    [pool_shape] CHAR(50) NULL,
    [COD_Changes] FLOAT NULL,
    [Liner_Wall_Thickness] INT NULL,
    [Liner_Bottom_Thickness] INT NULL,
    [Liner_Overide] CHAR(5) NULL,
    [plate_no] VARCHAR(10) NULL,
    [ln_is_estimate] VARCHAR(2) NULL,
    [replace] VARCHAR(2) NULL,
    [paid_in_full] VARCHAR(2) NULL,
    [stock_master_id_ln_ag] INT NULL,
    [freeze_shipdate] CHAR(1) NULL,
    [note_ship_text] CHAR(2) NULL,
    [markdown_wall] CHAR(2) NULL,
    [markdown_bottom] CHAR(2) NULL,
    CONSTRAINT [PK_prep_manf] PRIMARY KEY ([prep_id], [quote_no])
);
GO

CREATE TABLE [prep_manf_admin] (
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [admin_discount_type] CHAR(1) NULL,
    [admin_discount] CHAR(20) NULL,
    [admin_no_charge_net] CHAR(1) NULL,
    [admin_no_charge_freight] CHAR(1) NULL,
    [admin_description] VARCHAR(255) NULL,
    [deposit_required] CHAR(1) NULL,
    [deposit_flat_amount] INT NULL,
    [deposit_min_pct] INT NULL,
    [deposit_source] CHAR(1) NULL,
    [deposit_max_pct] INT NULL,
    [admin_description_dept] VARCHAR(255) NULL,
    [admin_description_reason] VARCHAR(255) NULL,
    [admin_description_as_per] VARCHAR(30) NULL,
    [admin_description_date] DATE NULL,
    [admin_description_person] VARCHAR(30) NULL,
    [deposit_override] CHAR(1) NULL,
    [dept_markdowns] VARCHAR(255) NULL,
    [giftcard] VARCHAR(255) NULL,
    [fixed_freight] FLOAT NULL,
    [tobedetermined] VARCHAR(2) NULL,
    [deposit_override_2] CHAR(1) NULL,
    [admin_description_dept2] VARCHAR(255) NULL,
    CONSTRAINT [PK_prep_manf_admin] PRIMARY KEY ([prep_id], [quote_no])
);
GO

CREATE TABLE [prep_ms] (
    [prep_id] INT NOT NULL,
    [measure_type] CHAR(4) NULL,
    [shape] VARCHAR(10) NULL,
    [advise_dealer_cost] VARCHAR(2) NULL,
    [locked_gate] VARCHAR(2) NULL,
    [pets] VARCHAR(2) NULL,
    [call_before_measure_homeowner] VARCHAR(2) NULL,
    [phone_homeowner] VARCHAR(20) NULL,
    [call_before_measure_dealer] VARCHAR(2) NULL,
    [phone_dealer] VARCHAR(20) NULL,
    [num_pools_measured] INT NULL,
    [order_by] VARCHAR(50) NULL,
    [comments] VARCHAR(200) NULL,
    [est_in_system] VARCHAR(2) NULL,
    [est_no] INT NULL,
    [phone_homeowner_2] VARCHAR(20) NULL,
    [phone_dealer_2] VARCHAR(20) NULL,
    [est_or_order] VARCHAR(2) NULL,
    [est_no_ln] INT NULL,
    [prepped_cover] VARCHAR(2) NULL,
    [prepped_liner] VARCHAR(2) NULL,
    CONSTRAINT [PK_prep_ms] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_ms_additional_jobs] (
    [prep_id] INT NOT NULL,
    [prep_id_job] INT NOT NULL,
    CONSTRAINT [PK_prep_ms_additional_jobs] PRIMARY KEY ([prep_id], [prep_id_job])
);
GO

CREATE TABLE [prep_ms_cs_input] (
    [taken_date] DATE NULL,
    [taken_user] CHAR(20) NULL,
    [scheduled] CHAR(2) NULL,
    [prepped] CHAR(2) NULL,
    [shipto_name] CHAR(35) NULL,
    [shipto_addr1] CHAR(35) NULL,
    [shipto_addr2] CHAR(35) NULL,
    [shipto_city] CHAR(35) NULL,
    [shipto_state_code] CHAR(3) NULL,
    [shipto_zip] CHAR(6) NULL,
    [dealer_code] CHAR(6) NULL,
    [prep_id] INT NOT NULL,
    [treatment_cost] VARCHAR(10) NULL,
    [dealer_third] VARCHAR(6) NULL,
    [billto_dealer_code] VARCHAR(6) NULL,
    CONSTRAINT [PK_prep_ms_cs_input] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_ms_cv] (
    [prep_id] INT NOT NULL,
    [cv_product] INT NULL,
    [pool_deck_instaled_complete] VARCHAR(2) NULL,
    [instal_comments] VARCHAR(200) NULL,
    [nonremovable_obstruction] VARCHAR(2) NULL,
    [spa_present] VARCHAR(2) NULL,
    [spa_raised_above_pool] VARCHAR(2) NULL,
    [planters_present] VARCHAR(2) NULL,
    [pipes_wanted] VARCHAR(2) NULL,
    [raised_wall_present] VARCHAR(2) NULL,
    [waterfall_rock_formation_present] VARCHAR(2) NULL,
    [varying_deck_levels_present] VARCHAR(2) NULL,
    [unusual_treatments_present] VARCHAR(2) NULL,
    [negative_edge_present] VARCHAR(2) NULL,
    [bridge_present] VARCHAR(2) NULL,
    [obstruction_unusual_present] VARCHAR(2) NULL,
    [other_unusual_present] VARCHAR(200) NULL,
    [nonremovable_obstruction_detail] VARCHAR(200) NULL,
    [spa_present_details] VARCHAR(200) NULL,
    [mesh_poduct] VARCHAR(2) NULL,
    [ul_no_drains] VARCHAR(2) NULL,
    [ul_drains] VARCHAR(2) NULL,
    [mesh_color] VARCHAR(2) NULL,
    [ul_no_drains_color] VARCHAR(2) NULL,
    [ul_drains_color] VARCHAR(2) NULL,
    [aqua_extreme] VARCHAR(2) NULL,
    [aqua_extreme_color] VARCHAR(2) NULL,
    CONSTRAINT [PK_prep_ms_cv] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_ms_ln] (
    [prep_id] INT NOT NULL,
    [pattern_wanted] INT NULL,
    [wall_thickness] INT NULL,
    [floor_thickness] INT NULL,
    [advised_dealer] VARCHAR(2) NULL,
    [vinyl_covered_steps_benches] VARCHAR(2) NULL,
    [qty_steps_benches] INT NULL,
    [safety_ledge] VARCHAR(2) NULL,
    [pool_deck_instaled_complete] VARCHAR(2) NULL,
    [special_design] VARCHAR(2) NULL,
    [special_design_comments] VARCHAR(200) NULL,
    [advised_dealer_cut_liner] VARCHAR(2) NULL,
    CONSTRAINT [PK_prep_ms_ln] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_multi_bleeped] (
    [id_number] INT IDENTITY(1,1) NOT NULL,
    [prep_id] INT NOT NULL,
    [date_multi] DATE NOT NULL,
    [bleeped_job] CHAR(1) NOT NULL,
    [time_multi] TIME NULL,
    CONSTRAINT [PK_prep_multi_bleeped] PRIMARY KEY ([id_number], [prep_id], [date_multi])
);
GO

CREATE TABLE [prep_nonups_tracking] (
    [prep_id] INT NOT NULL,
    [tracking_number] VARCHAR(30) NOT NULL,
    [ship_via_id] INT NULL,
    CONSTRAINT [PK_prep_nonups_tracking] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_po] (
    [prep_id] INT NOT NULL,
    [po_no] CHAR(25) NOT NULL,
    [amount] FLOAT NOT NULL,
    CONSTRAINT [PK_prep_po] PRIMARY KEY ([prep_id], [po_no])
);
GO

CREATE TABLE [prep_print_rtn_que] (
    [prep_id] INT NOT NULL,
    [print_jobs] CHAR(2) NOT NULL,
    [date_entered] DATE NOT NULL,
    [date_printed] DATE NULL,
    CONSTRAINT [PK_prep_print_rtn_que] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_production] (
    [prep_id] INT NOT NULL,
    [production_date] DATE NOT NULL,
    CONSTRAINT [PK_prep_production] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_quickdraw] (
    [prep_id] INT NOT NULL,
    CONSTRAINT [PK_prep_quickdraw] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_ra_hardware] (
    [prep_id] INT NOT NULL,
    [hexkey_return] CHAR(1) NULL,
    [instal_tool_return] CHAR(1) NULL,
    [tamp_return] CHAR(1) NULL,
    [pump_return] CHAR(1) NULL,
    [pipe] INT NULL,
    [mac] INT NULL,
    [undercover_padding] INT NULL,
    [nrod] CHAR(1) NULL,
    [alumadj] INT NULL,
    [replace_alt] CHAR(1) NULL,
    [warranty_type] CHAR(10) NULL,
    [warranty_claim_printed] CHAR(1) NULL,
    [warranty_claim_printed_date] DATE NULL,
    [warranty_claim_paid_date] DATE NULL,
    [warranty_claim_submit_date] VARCHAR(100) NULL,
    [min_repair_quote] INT NULL,
    [retail_replacement_quote] INT NULL,
    [hold_reason] VARCHAR(200) NULL,
    [hold_person] VARCHAR(200) NULL,
    [hold_new_bluesheet] INT NULL,
    [cable_return] INT NULL,
    [caanc_return] INT NULL,
    [spring_return_type] CHAR(5) NULL,
    [pipe_with_anchors] INT NULL,
    [location_comment] VARCHAR(20) NULL,
    [ssprg_return] INT NULL,
    [start_prorated_warranty] DATE NULL,
    CONSTRAINT [PK_prep_ra_hardware] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_Ra_temp] (
    [prep_id] FLOAT NULL,
    [return_no] CHAR(10) NULL,
    [age_of_cover] FLOAT NULL,
    [original_order_no] CHAR(15) NULL,
    [ra_approved_by] CHAR(25) NULL,
    [ra_inspected_by] CHAR(25) NULL,
    [repaired_no_times] FLOAT NULL,
    [ra_ordered_by] CHAR(25) NULL,
    [discard_cover] CHAR(25) NULL,
    [return_cover] CHAR(25) NULL,
    [warranty] CHAR(1) NULL,
    [damage_type] CHAR(255) NULL,
    [manufactured_by] CHAR(35) NULL,
    [repair_comments] CHAR(300) NULL,
    [old_cover_instructions] CHAR(255) NULL,
    [number_original_springs] FLOAT NULL,
    [original_spring_cover_qty] FLOAT NULL,
    [anchors_returned] FLOAT NULL
);
GO

CREATE TABLE [prep_retail] (
    [prep_id] INT NOT NULL,
    [fax_no] CHAR(50) NULL,
    [email] CHAR(100) NULL,
    [name_retail] CHAR(100) NULL,
    [company] CHAR(100) NULL,
    [addr1] CHAR(100) NULL,
    [addr2] CHAR(100) NULL,
    [city] CHAR(100) NULL,
    [state] CHAR(5) NULL,
    [zip] CHAR(20) NULL,
    [phone] CHAR(20) NULL,
    [country] CHAR(50) NULL,
    CONSTRAINT [PK_prep_retail] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_return] (
    [line_id] INT IDENTITY(1,1) NOT NULL,
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [qty] SMALLINT NOT NULL,
    [item_code] CHAR(2) NOT NULL,
    [item_desc] CHAR(50) NULL,
    [net_return] NUMERIC(8,2) NOT NULL,
    [total_return] NUMERIC(8,2) NOT NULL,
    [date_return] DATE NOT NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] VARCHAR(20) NOT NULL,
    [qty_bl_a] INT NULL,
    [qty_bl_f] INT NULL,
    [bl_deluxe] CHAR(1) NULL,
    [liner_return_text] VARCHAR(100) NULL,
    CONSTRAINT [PK_prep_return] PRIMARY KEY ([line_id])
);
GO

CREATE TABLE [prep_return_no_workdone] (
    [prep_id] INT NOT NULL,
    [return_no] CHAR(10) NOT NULL,
    [will_not_repair] CHAR(1) NOT NULL,
    [date_done] DATE NULL,
    [ra_inspected_by] CHAR(25) NULL,
    [repaired_no_times] INT NULL,
    [damage_type] CHAR(255) NULL,
    CONSTRAINT [PK_prep_return_no_workdone] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_return_no_workdown_detail] (
    [prep_id] INT NOT NULL,
    [prep_id_detail] INT NOT NULL,
    [job_was_open] CHAR(2) NULL,
    [paper_pulled] CHAR(2) NULL,
    CONSTRAINT [PK_prep_return_no_workdown_detail] PRIMARY KEY ([prep_id], [prep_id_detail])
);
GO

CREATE TABLE [prep_rules] (
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [dtl_no] INT NOT NULL,
    [category] CHAR(10) NOT NULL,
    [type] CHAR(10) NOT NULL,
    [text] VARCHAR(255) NULL,
    [active] CHAR(1) NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    [dealer_flag] CHAR(1) NULL,
    [source] CHAR(1) NULL,
    [section] CHAR(10) NULL,
    [pool_type] CHAR(2) NULL,
    CONSTRAINT [PK_prep_rules] PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
);
GO

CREATE TABLE [prep_special_instructions] (
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [dtl_no] INT NOT NULL,
    [code] CHAR(10) NOT NULL,
    [short_description] VARCHAR(50) NULL,
    [long_description] VARCHAR(255) NULL,
    [active_flag] CHAR(1) NULL,
    [print_warranty_flag] CHAR(1) NULL,
    [source] CHAR(1) NULL,
    CONSTRAINT [PK_prep_special_instructions] PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
);
GO

CREATE TABLE [prep_treatment] (
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [dtl_no] INT NOT NULL,
    [treatment_code] CHAR(10) NOT NULL,
    [quantity] INT NULL,
    [actual_quantity] INT NULL,
    [unit] CHAR(10) NULL,
    [unit_price] FLOAT NULL,
    [charge_flag] CHAR(1) NULL,
    [last_modified_date] DATE NULL,
    [last_modified_user] CHAR(15) NULL,
    [source] CHAR(1) NULL,
    CONSTRAINT [PK_prep_treatment] PRIMARY KEY ([prep_id], [quote_no], [dtl_no])
);
GO

CREATE TABLE [prep_web_orders] (
    [prep_id] INT NOT NULL,
    [order_type] VARCHAR(3) NOT NULL,
    CONSTRAINT [PK_prep_web_orders] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prep_weights] (
    [prep_id] INT NOT NULL,
    [hardware_weight] FLOAT NOT NULL,
    [cover_weight] FLOAT NOT NULL,
    [hardware_return_weight] FLOAT NOT NULL,
    [pump_weight] FLOAT NOT NULL,
    [dimensional_weight] FLOAT NULL,
    [total_weight] FLOAT NULL,
    CONSTRAINT [PK_prep_weights] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [prepCAD] (
    [prep_id] INT IDENTITY(1,1) NOT NULL,
    [selected_quote_no] SMALLINT NULL,
    [dealer_code] CHAR(6) NOT NULL,
    [billto_dealer_code] CHAR(6) NOT NULL,
    [term_id] INT NOT NULL,
    [prep_type] CHAR(1) NOT NULL,
    [type] CHAR(2) NULL,
    [entry_date] DATE NOT NULL,
    [order_no] INT NULL,
    [order_date] DATE NULL,
    [po_no] CHAR(25) NULL,
    [jobname] CHAR(50) NULL,
    [shipto_code] CHAR(6) NOT NULL,
    [shipto_name] CHAR(35) NULL,
    [shipto_contact] CHAR(35) NULL,
    [shipto_addr1] CHAR(35) NULL,
    [shipto_addr2] CHAR(35) NULL,
    [shipto_city] CHAR(20) NULL,
    [shipto_state_code] CHAR(3) NULL,
    [shipto_zip] CHAR(10) NULL,
    [status] CHAR(3) NULL,
    [replacement] CHAR(1) NULL,
    [warranty] CHAR(1) NULL,
    [manufactured_by] VARCHAR(35) NULL,
    [original_order_no] CHAR(15) NULL,
    [return_no] CHAR(10) NULL,
    [old_cover_instructions] VARCHAR(255) NULL,
    [credit_release_flag] CHAR(1) NULL,
    [shipping_release_flag] CHAR(1) NULL,
    [manf_location] CHAR(10) NULL,
    [deposit_amt_received] FLOAT NULL,
    [chafe_length] SMALLINT NULL,
    [create_date] DATE NULL,
    [create_user] CHAR(15) NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    [print_estimate] CHAR(1) NULL,
    [print_notify] CHAR(1) NULL,
    [print_ack] CHAR(1) NULL,
    [print_invoice] CHAR(1) NULL,
    [print_worksheet] CHAR(1) NULL,
    [display_cover] CHAR(1) NULL,
    [called_with_price] CHAR(1) NULL,
    [cover_in_building] CHAR(1) NULL,
    [quick_stock_order] FLOAT NULL,
    [pricing_description] VARCHAR(255) NULL,
    [discount_type] CHAR(1) NULL,
    [dealer_discount] CHAR(50) NULL,
    [hardware_discount] CHAR(50) NULL,
    [tech_date] DATETIME NULL,
    [ab_plot_flag] CHAR(1) NULL,
    [shipout_batch_id] DATETIME NULL,
    [deposit_amt_enclosed] NUMERIC(9,2) NULL,
    [previous_jobname] CHAR(25) NULL,
    [route_to] CHAR(10) NULL,
    [manf_hold] CHAR(1) NULL,
    [checked_for_accuracy] CHAR(1) NULL,
    [billto_estm_doc] CHAR(1) NULL,
    [billto_notify_doc] CHAR(1) NULL,
    [billto_ack_doc] CHAR(1) NULL,
    [dealer_estm_doc] CHAR(1) NULL,
    [dealer_notify_doc] CHAR(1) NULL,
    [dealer_ack_doc] CHAR(1) NULL,
    [shipto_tax_code] CHAR(10) NULL,
    [number_original_springs] SMALLINT NULL,
    [original_storage_bag] CHAR(1) NULL,
    [ups_track] CHAR(25) NULL,
    [from_web] CHAR(1) NULL,
    [from_plot_prg] CHAR(1) NULL,
    [dispose_date] DATE NULL,
    [age_of_cover] INT NULL,
    [original_spring_cover_qty] INT NULL,
    [damage_type] CHAR(255) NULL,
    [discard_cover] CHAR(25) NULL,
    [return_no_work] CHAR(1) NULL,
    [full_hardware] CHAR(1) NULL,
    [back_to_tech] CHAR(1) NULL,
    [altered] INT NULL,
    [return_cover] CHAR(25) NULL,
    [ra_ordered_by] CHAR(25) NULL,
    [ra_approved_by] CHAR(25) NULL,
    [ra_inspected_by] CHAR(25) NULL,
    [will_not_repair] CHAR(1) NULL,
    [repaired_no_times] INT NULL,
    [ra_inspection_date] DATE NULL,
    [repair_comments] CHAR(300) NULL,
    [anchors_returned] INT NULL,
    [warranty_reasons] CHAR(255) NULL,
    [buckles_returned] INT NULL,
    [alter_job] CHAR(1) NULL,
    [liner_reference] INT NULL,
    [print_hardware] CHAR(1) NULL,
    [billto_form75_doc] CHAR(1) NULL,
    [dealer_form75_doc] CHAR(1) NULL,
    [liner_perimeter] INT NULL,
    [roll_serial_no] INT NULL,
    [liner_bottom] INT NULL,
    [liner_step] CHAR(1) NULL,
    [requote] CHAR(1) NULL,
    [third_dealer] CHAR(6) NULL,
    [billto_proforma_doc] CHAR(1) NULL,
    [photo] CHAR(2) NULL,
    [template] CHAR(2) NULL,
    [measure_by_sales] CHAR(2) NULL,
    [back_to_imageloc] CHAR(2) NULL,
    [country] CHAR(3) NULL,
    CONSTRAINT [PK_prepCAD] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [price] (
    [product_id] INT NOT NULL,
    [grid_size] CHAR(10) NOT NULL,
    [effective_date] DATE NOT NULL,
    [type] CHAR(1) NOT NULL,
    [square_footage] FLOAT NOT NULL,
    [price] FLOAT NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    [active] CHAR(1) NULL,
    CONSTRAINT [PK_price] PRIMARY KEY ([product_id], [grid_size], [effective_date], [type], [square_footage])
);
GO

CREATE TABLE [price_extra_large] (
    [product_id] INT NOT NULL,
    [grid_size] CHAR(10) NOT NULL,
    [type] CHAR(1) NOT NULL,
    [square_footage] FLOAT NOT NULL,
    [price] FLOAT NULL,
    [last_modified_date] DATE NULL,
    [last_modified_user] VARCHAR(20) NULL,
    CONSTRAINT [PK_price_extra_large] PRIMARY KEY ([product_id], [grid_size], [type], [square_footage])
);
GO

CREATE TABLE [price_notes] (
    [product_id] INT NOT NULL,
    [grid_size] CHAR(10) NOT NULL,
    [effective_date] DATE NOT NULL,
    [type] CHAR(1) NOT NULL,
    [pricenote] VARCHAR(500) NULL,
    [datecreated] DATE NULL,
    [usercreated] VARCHAR(20) NULL,
    [datemodified] DATE NULL,
    [usermodified] VARCHAR(20) NULL,
    CONSTRAINT [PK_price_notes] PRIMARY KEY ([product_id], [grid_size], [effective_date], [type])
);
GO

CREATE TABLE [product] (
    [product_id] INT IDENTITY(1,1) NOT NULL,
    [fabric_id] INT NULL,
    [type] CHAR(2) NULL,
    [class] CHAR(6) NOT NULL,
    [description] CHAR(100) NULL,
    [trade_name] CHAR(200) NULL,
    [warranty_text] VARCHAR(255) NULL,
    [non_safe_name] CHAR(60) NULL,
    [stock_deposit_percent] INT NULL,
    [custom_deposit_percent] INT NULL,
    [deposit_minimum_percent] INT NULL,
    [call_with_price] CHAR(1) NULL,
    [object_name] CHAR(20) NULL,
    [manf_name] CHAR(20) NULL,
    [discontinued_date] DATE NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    [non_warranty_text] VARCHAR(255) NULL,
    [special_rect_flag] CHAR(1) NULL,
    [gl_sales_account] CHAR(10) NULL,
    [drain_flag] CHAR(1) NULL,
    [freight_charge] CHAR(1) NULL,
    [price_as] INT NULL,
    [active] CHAR(1) NULL,
    [autocad_image] CHAR(50) NULL,
    [wall_thickness_allowed] CHAR(5) NULL,
    [bottom_thickness_allowed] CHAR(5) NULL,
    [liner_wall_id] INT NULL,
    [trade_name_foreign] CHAR(200) NULL,
    [wt_flag] CHAR(2) NULL,
    [racv] INT NULL,
    [my_exclusive] VARCHAR(1) NULL,
    [web_category] VARCHAR(1) NULL,
    [above_ground_stock] VARCHAR(2) NULL,
    [distributor_exclusive] VARCHAR(1) NULL,
    [charge_all_print] VARCHAR(1) NULL,
    [prmtion_pattern] VARCHAR(1) NULL,
    [no_charge_all_print] VARCHAR(1) NULL,
    [undercover_padding] VARCHAR(1) NULL,
    [display_in_plotter] VARCHAR(1) NULL,
    [delay] CHAR(2) NULL,
    [delay_liner_wall] CHAR(5) NULL,
    [delay_liner_bottom] CHAR(5) NULL,
    [pearlessence] CHAR(2) NULL,
    [liner_carousel] SMALLINT NULL,
    [liner_add_sticker] SMALLINT NULL,
    [beads_color] VARCHAR(15) NULL,
    CONSTRAINT [PK_product] PRIMARY KEY ([product_id])
);
GO

CREATE TABLE [product_bluedot] (
    [product_id] INT NOT NULL,
    [bluedot_code] VARCHAR(10) NOT NULL,
    [text] VARCHAR(500) NOT NULL,
    CONSTRAINT [PK_product_bluedot] PRIMARY KEY ([product_id], [bluedot_code])
);
GO

CREATE TABLE [product_hardware] (
    [product_id] INT NOT NULL,
    [hardware_code] CHAR(10) NOT NULL,
    [chargeable] CHAR(1) NOT NULL,
    [per_anchor] CHAR(1) NOT NULL,
    [fixed_amount] INT NOT NULL,
    CONSTRAINT [PK_product_hardware] PRIMARY KEY ([product_id], [hardware_code])
);
GO

CREATE TABLE [product_out_of_stock] (
    [product_id] INT NOT NULL,
    [wall] CHAR(5) NOT NULL,
    [bottomc] CHAR(5) NOT NULL,
    CONSTRAINT [PK_product_out_of_stock] PRIMARY KEY ([product_id])
);
GO

CREATE TABLE [product_treatment] (
    [product_id] INT NOT NULL,
    [treatment_code] CHAR(20) NOT NULL,
    [active] CHAR(2) NULL,
    [quantity] INT NULL,
    [texture_treatment] CHAR(2) NULL,
    CONSTRAINT [PK_product_treatment] PRIMARY KEY ([product_id], [treatment_code])
);
GO

CREATE TABLE [product_treatment_liner_thickness] (
    [product_id] INT NOT NULL,
    [treatment_code] VARCHAR(50) NOT NULL,
    [wall_thickness] VARCHAR(10) NOT NULL,
    [bottom_thickness] VARCHAR(10) NOT NULL,
    CONSTRAINT [PK_product_treatment_liner_thickness] PRIMARY KEY ([product_id], [treatment_code], [wall_thickness], [bottom_thickness])
);
GO

CREATE TABLE [product_wt_type] (
    [product_id] INT NOT NULL,
    [wt_id] INT NOT NULL,
    CONSTRAINT [PK_product_wt_type] PRIMARY KEY ([product_id])
);
GO

CREATE TABLE [production_cap] (
    [production_date] DATE NOT NULL,
    [holiday] CHAR(1) NULL,
    [unit_capacity] INT NULL,
    [units_scheduled] INT NULL,
    [liner_capacity] INT NULL,
    CONSTRAINT [PK_production_cap] PRIMARY KEY ([production_date])
);
GO

CREATE TABLE [production_dates] (
    [prep_type] CHAR(2) NOT NULL,
    [ship_date] DATE NULL,
    [ship_days] INT NULL,
    [deposit_date] DATE NULL,
    [deposit_days] INT NULL,
    CONSTRAINT [PK_production_dates] PRIMARY KEY ([prep_type])
);
GO

CREATE TABLE [production_detail] (
    [production_date] DATE NOT NULL,
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [qty] SMALLINT NULL,
    CONSTRAINT [PK_production_detail] PRIMARY KEY ([production_date], [prep_id], [quote_no])
);
GO

CREATE TABLE [proforma] (
    [proforma_id] INT IDENTITY(1,1) NOT NULL,
    [printed] CHAR(1) NULL,
    [form_type] CHAR(1) NULL,
    [add_comments] VARCHAR(750) NULL,
    [create_date] DATE NULL,
    [freight] FLOAT NULL,
    CONSTRAINT [PK_proforma] PRIMARY KEY ([proforma_id])
);
GO

CREATE TABLE [proforma_detail] (
    [proforma_id] INT NOT NULL,
    [prep_id] INT NOT NULL,
    CONSTRAINT [PK_proforma_detail] PRIMARY KEY ([proforma_id], [prep_id])
);
GO

CREATE TABLE [promo] (
    [promo_id] INT IDENTITY(1,1) NOT NULL,
    [dealer_code] CHAR(10) NOT NULL,
    [shipto_code] CHAR(10) NOT NULL,
    [ship_via_id] INT NOT NULL,
    [status] CHAR(1) NULL,
    [ship_date] DATE NULL,
    [shipto_name] CHAR(35) NULL,
    [shipto_contact] CHAR(100) NULL,
    [shipto_addr1] CHAR(35) NULL,
    [shipto_addr2] CHAR(35) NULL,
    [shipto_city] CHAR(20) NULL,
    [shipto_state_code] CHAR(3) NULL,
    [shipto_zip] CHAR(10) NULL,
    [create_date] DATE NULL,
    [create_user] CHAR(15) NULL,
    [approx_ship_date] DATE NULL,
    [label_print_time] TIME NULL,
    [last_modified_date] DATE NULL,
    [last_modified_user] CHAR(15) NULL,
    [comments] CHAR(255) NULL,
    [tracking_number] VARCHAR(20) NULL,
    [tracking_number_mf] VARCHAR(20) NULL,
    CONSTRAINT [PK_promo] PRIMARY KEY ([promo_id])
);
GO

CREATE TABLE [promo_dtl] (
    [promo_id] INT NOT NULL,
    [dtl_no] SMALLINT NOT NULL,
    [promo_type_id] INT NOT NULL,
    [qty] FLOAT NULL,
    [create_date] DATE NULL,
    [create_user] CHAR(15) NULL,
    [last_modified_date] DATE NULL,
    [last_modified_user] CHAR(15) NULL,
    [too_much] CHAR(1) NULL,
    CONSTRAINT [PK_promo_dtl] PRIMARY KEY ([promo_id], [dtl_no])
);
GO

CREATE TABLE [promo_master_liner_sample_cases] (
    [limit_min] INT NOT NULL,
    [limit_max] INT NOT NULL,
    [num_liner_brochures] INT NOT NULL,
    [num_measure_forms] INT NOT NULL,
    [liner_sample_cases] INT NOT NULL,
    [limit_default] INT NULL,
    CONSTRAINT [PK_promo_master_liner_sample_cases] PRIMARY KEY ([limit_min], [limit_max])
);
GO

CREATE TABLE [promo_type] (
    [promo_type_id] INT IDENTITY(1,1) NOT NULL,
    [promo_code] CHAR(10) NOT NULL,
    [promo_description] CHAR(50) NOT NULL,
    [level1_qty] INT NOT NULL,
    [level2_qty] INT NOT NULL,
    [level3_qty] INT NOT NULL,
    [promo_group] CHAR(2) NULL,
    [active_flag] CHAR(1) NULL,
    [quantity_on_hand] INT NULL,
    [inventory_id] INT NULL,
    [amount_per_case] INT NULL,
    [alert] INT NULL,
    [promo_jobtype] CHAR(20) NULL,
    [promo_make_priority] CHAR(20) NULL,
    [alert_email_flag] CHAR(2) NULL,
    CONSTRAINT [PK_promo_type] PRIMARY KEY ([promo_type_id])
);
GO

CREATE TABLE [promo_type_to_make_year] (
    [promo_type_id] INT NOT NULL,
    [to_make_year] INT NOT NULL,
    [to_make_qty] INT NOT NULL,
    CONSTRAINT [PK_promo_type_to_make_year] PRIMARY KEY ([promo_type_id], [to_make_year])
);
GO

CREATE TABLE [ptfe_exceptions] (
    [dealer_code] VARCHAR(6) NOT NULL,
    [active] VARCHAR(1) NULL,
    CONSTRAINT [PK_ptfe_exceptions] PRIMARY KEY ([dealer_code])
);
GO

CREATE TABLE [Purchase_Order] (
    [po_number] CHAR(10) NOT NULL,
    [quantity] INT NOT NULL,
    [item_id] INT NOT NULL,
    [date_cut] DATE NOT NULL,
    [open] CHAR(1) NOT NULL,
    [vendor_po_number] INT NULL,
    [dtl_no] INT NULL,
    CONSTRAINT [PK_Purchase_Order] PRIMARY KEY ([po_number], [item_id])
);
GO

CREATE TABLE [que] (
    [que_id] INT IDENTITY(1,1) NOT NULL,
    [prep_id] INT NOT NULL,
    [quote_no] SMALLINT NOT NULL,
    [date_in] DATE NOT NULL,
    [time_in] TIME NOT NULL,
    [document_code] CHAR(20) NOT NULL,
    [date_completed] DATE NULL,
    [time_completed] TIME NULL,
    [log] VARCHAR(250) NULL,
    [dealer_code] CHAR(6) NULL,
    [reprint_2nd] CHAR(1) NULL,
    CONSTRAINT [PK_que] PRIMARY KEY ([que_id])
);
GO

CREATE TABLE [que_rtn_dealer_notify_prep] (
    [que_id] INT NOT NULL,
    [prep_id] INT NOT NULL,
    [rtn_id] INT NOT NULL,
    CONSTRAINT [PK_que_rtn_dealer_notify_prep] PRIMARY KEY ([que_id], [prep_id], [rtn_id])
);
GO

CREATE TABLE [ra_nc_production_date] (
    [production_date] DATE NOT NULL,
    [ra_ship_date] DATE NOT NULL,
    [ra_drop_date] DATE NOT NULL,
    [nc_ship_date] DATE NOT NULL,
    [nc_drop_date] DATE NOT NULL,
    [alt_ship_date] DATE NOT NULL,
    [alt_drop_date] DATE NOT NULL,
    [wt_ship_date] DATE NULL,
    [wt_drop_date] DATE NULL,
    CONSTRAINT [PK_ra_nc_production_date] PRIMARY KEY ([production_date])
);
GO

CREATE TABLE [RATimer] (
    [prep_id] INT NOT NULL,
    [date] DATE NOT NULL,
    [start_time] TIME NOT NULL,
    [finish_time] TIME NULL,
    [user] CHAR(50) NOT NULL,
    CONSTRAINT [PK_RATimer] PRIMARY KEY ([date], [start_time], [user])
);
GO

CREATE TABLE [rebate] (
    [rebate_year] DATE NOT NULL,
    [dealer_code] CHAR(10) NOT NULL,
    [cover_net] NUMERIC(10,2) NOT NULL,
    [rebate_net] NUMERIC(10,2) NOT NULL,
    [qty] SMALLINT NOT NULL,
    CONSTRAINT [PK_rebate] PRIMARY KEY ([rebate_year], [dealer_code])
);
GO

CREATE TABLE [repeat_jobs] (
    [id] INT NOT NULL,
    [parameter] CHAR(25) NOT NULL,
    [number_data] INT NULL,
    [string_data] CHAR(100) NULL,
    CONSTRAINT [PK_repeat_jobs] PRIMARY KEY ([id], [parameter])
);
GO

CREATE TABLE [replacement_cover_request] (
    [id_number] INT IDENTITY(1,1) NOT NULL,
    [entered_by] VARCHAR(20) NOT NULL,
    [date_entered] DATE NOT NULL,
    [person_calling] VARCHAR(20) NULL,
    [job_type] VARCHAR(2) NULL,
    [original_order] INT NULL,
    [dealer_code] VARCHAR(10) NULL,
    [jobname_new] VARCHAR(50) NULL,
    [process] VARCHAR(2) NULL,
    [prep_id] INT NULL,
    [quote_mesh] VARCHAR(2) NULL,
    [quote_ul_drains] VARCHAR(2) NULL,
    [quote_ul_no_drains] VARCHAR(2) NULL,
    [quote_tan] VARCHAR(2) NULL,
    [quote_black] VARCHAR(2) NULL,
    [quote_grey] VARCHAR(2) NULL,
    [quote_blue] VARCHAR(2) NULL,
    [file_location] VARCHAR(500) NULL,
    [original_order_no_given] VARCHAR(2) NULL,
    [verification_fax] VARCHAR(2) NULL,
    [additional_notes] VARCHAR(300) NULL,
    [original_order_no_not_prep] INT NULL,
    [quote_color] VARCHAR(10) NULL,
    [quote_ul_color] VARCHAR(2) NULL,
    [quote_ul_blue] VARCHAR(2) NULL,
    [quote_ul_tan] VARCHAR(2) NULL,
    [quote_ul_drains_color] VARCHAR(2) NULL,
    [quote_ul_drains_blue] VARCHAR(2) NULL,
    [quote_ul_drains_tan] VARCHAR(2) NULL,
    [prep_type] VARCHAR(5) NULL,
    [liner_pattern] INT NULL,
    [wall] INT NULL,
    [bottom] INT NULL,
    [aqua_extreme] VARCHAR(2) NULL,
    [aqua_extreme_color] VARCHAR(2) NULL,
    [quote_ul_gray] CHAR(2) NULL,
    [quote_ul_drains_gray] CHAR(2) NULL,
    [actual_dealer] VARCHAR(10) NULL,
    [hardware_allowance_anchors] VARCHAR(2) NULL,
    [aqua_extreme_brown] VARCHAR(2) NULL,
    [aqua_extreme_gray] VARCHAR(2) NULL,
    [om_vinyl] VARCHAR(2) NULL,
    [stock_id] INT NULL,
    [serial_no] INT NULL,
    [aqua_extreme_color_question] VARCHAR(2) NULL,
    CONSTRAINT [PK_replacement_cover_request] PRIMARY KEY ([id_number])
);
GO

CREATE TABLE [rtn] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [date_received] DATE NOT NULL,
    [rtn] CHAR(10) NULL,
    [dealer_code] CHAR(6) NOT NULL,
    [rtn_type] CHAR(2) NOT NULL,
    [fabric_id] INT NOT NULL,
    [storage_bag_returned] INT NOT NULL,
    [number_of_springs] INT NOT NULL,
    [note] VARCHAR(1000) NULL,
    [status] CHAR(1) NOT NULL,
    [jobname] CHAR(50) NULL,
    [staff] CHAR(10) NULL,
    [ll_cover] CHAR(2) NULL,
    [ll_coments] VARCHAR(255) NULL,
    [manufacture_year] INT NULL,
    [location] INT NULL,
    [call_tag] VARCHAR(20) NULL,
    [sent_via] INT NULL,
    [quotes_wanted] CHAR(10) NULL,
    [original_order_number] VARCHAR(100) NULL,
    [cpu_flag] VARCHAR(10) NULL,
    [rtn_prep] INT NULL,
    [prepped] CHAR(2) NULL,
    [dropped_off_by] VARCHAR(20) NULL,
    [paperwork_included] CHAR(2) NULL,
    [stock_id] INT NULL,
    [serial_no] INT NULL,
    [scanned_tracking_number] VARCHAR(30) NULL,
    [spring_return_type] CHAR(5) NULL,
    [potential_blue] VARCHAR(50) NULL,
    CONSTRAINT [PK_rtn] PRIMARY KEY ([id])
);
GO

CREATE TABLE [rtn_bluesheet] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [order_no] INT NULL,
    [dealer_code] CHAR(6) NOT NULL,
    [date_created] DATE NOT NULL,
    [entered_by] VARCHAR(100) NOT NULL,
    [person_spoketo] VARCHAR(100) NOT NULL,
    [backup_paperwork] CHAR(1) NOT NULL,
    [rtn_number] INT NULL,
    [return_type] CHAR(30) NOT NULL,
    [discard_old_cover] CHAR(1) NULL,
    [new_cover_ordered] CHAR(1) NULL,
    [new_order_no] INT NULL,
    [orig_hardcopy_pulled] CHAR(1) NULL,
    [return_reason] VARCHAR(100) NULL,
    [additional_comment] VARCHAR(300) NULL,
    [error_type] CHAR(10) NULL,
    [call_tag] CHAR(1) NULL,
    [pickup_cover_now] CHAR(1) NULL,
    [cust_type] CHAR(20) NULL,
    [hours_operation] VARCHAR(100) NULL,
    [customer_name] VARCHAR(150) NULL,
    [address1] VARCHAR(100) NULL,
    [address2] VARCHAR(100) NULL,
    [city] VARCHAR(100) NULL,
    [state] VARCHAR(20) NULL,
    [zip_code] CHAR(20) NULL,
    [jobname] VARCHAR(255) NULL,
    [no_hardcopy_present] VARCHAR(1) NULL,
    [phone] VARCHAR(20) NULL,
    [check_for_warr] VARCHAR(1) NULL,
    [cancel] CHAR(1) NULL,
    [dealer_address_type] VARCHAR(1) NULL,
    [call_tag_type] VARCHAR(10) NULL,
    [looploc_error] VARCHAR(2) NULL,
    [spring_alteration] VARCHAR(2) NULL,
    [rtn_type] VARCHAR(2) NULL,
    [mgr_initials] VARCHAR(10) NULL,
    [admin_initials] VARCHAR(10) NULL,
    [credit_type] VARCHAR(10) NULL,
    [dealer_requests_water_allowance] VARCHAR(10) NULL,
    [credit_applied] VARCHAR(10) NULL,
    [water_credit_applied] VARCHAR(10) NULL,
    [water_credit] FLOAT NULL,
    [call_tag_sent] VARCHAR(2) NULL,
    [call_tag_code] VARCHAR(50) NULL,
    [third_dealer] VARCHAR(6) NULL,
    [close_bluesheet] VARCHAR(1) NULL,
    [alt_open_in_house] VARCHAR(2) NULL,
    [ct_bill_back_freight] VARCHAR(2) NULL,
    [ct_ll_error] VARCHAR(2) NULL,
    [ct_tbd] VARCHAR(2) NULL,
    [rtn_bluesheet] INT NULL,
    [new_prep_no] INT NULL,
    [artran_id] VARCHAR(20) NULL,
    [needs_sample_returned] CHAR(2) NULL,
    [alteration_marked_down] CHAR(2) NULL,
    [liner_2_marked_down] CHAR(2) NULL,
    [wall_lot_number] CHAR(50) NULL,
    [material_rtn_vendor] CHAR(10) NULL,
    [call_tag_code_vendor] VARCHAR(50) NULL,
    [rtn_hold] CHAR(2) NULL,
    [bottom_lot_number] VARCHAR(50) NULL,
    [quality_issue] CHAR(2) NULL,
    [repair] CHAR(2) NULL,
    [liner_1_marked_down] CHAR(2) NULL,
    [recommended_water_allowance] FLOAT NULL,
    [warranty_issue] CHAR(2) NULL,
    [mfg_date] DATE NULL,
    [box_replacement] CHAR(1) NULL,
    [date_label_sent] DATE NULL,
    [email_address_label] CHAR(100) NULL,
    [prep_id_preexisting] INT NULL,
    [no_box_needed] CHAR(2) NULL,
    CONSTRAINT [PK_rtn_bluesheet] PRIMARY KEY ([id])
);
GO

CREATE TABLE [rtn_bluesheet_cm] (
    [rtn_bluesheet_id] INT NOT NULL,
    [artran_id] INT NOT NULL,
    [cm_type] INT NOT NULL,
    CONSTRAINT [PK_rtn_bluesheet_cm] PRIMARY KEY ([rtn_bluesheet_id], [artran_id])
);
GO

CREATE TABLE [rtn_bluesheet_cm_type] (
    [id_no] INT IDENTITY(1,1) NOT NULL,
    [description] VARCHAR(100) NOT NULL,
    [active] CHAR(2) NULL,
    [description_creditmemo] VARCHAR(200) NULL,
    CONSTRAINT [PK_rtn_bluesheet_cm_type] PRIMARY KEY ([id_no])
);
GO

CREATE TABLE [rtn_bluesheet_copy] (
    [id] FLOAT NULL,
    [rtn_number] FLOAT NULL
);
GO

CREATE TABLE [rtn_bluesheet_explanation_history] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [dtl_no] INT NOT NULL,
    [rtn_bluesheet] INT NOT NULL,
    [description] VARCHAR(300) NOT NULL,
    [entry_user] VARCHAR(20) NOT NULL,
    [entry_date] DATE NOT NULL,
    CONSTRAINT [PK_rtn_bluesheet_explanation_history] PRIMARY KEY ([id])
);
GO

CREATE TABLE [rtn_bluesheet_file] (
    [rtn_bluesheet_id] INT NOT NULL,
    [dtl_no] INT NOT NULL,
    [file] VARCHAR(512) NOT NULL,
    [destination_directory] VARCHAR(512) NOT NULL,
    [date_stored] DATE NOT NULL,
    [userid] VARCHAR(50) NOT NULL,
    CONSTRAINT [PK_rtn_bluesheet_file] PRIMARY KEY ([rtn_bluesheet_id], [dtl_no])
);
GO

CREATE TABLE [rtn_bluesheet_promo] (
    [rtn_bluesheet_id] INT NOT NULL,
    [promo_promo_id] INT NOT NULL,
    CONSTRAINT [PK_rtn_bluesheet_promo] PRIMARY KEY ([rtn_bluesheet_id], [promo_promo_id])
);
GO

CREATE TABLE [rtn_bluesheet_retail_address] (
    [id] INT NOT NULL,
    [name_dealer] VARCHAR(255) NULL,
    [addr1] VARCHAR(255) NULL,
    [addr2] VARCHAR(255) NULL,
    [city] VARCHAR(255) NULL,
    [state] CHAR(10) NULL,
    [zip] CHAR(20) NULL,
    [phone] CHAR(30) NULL,
    CONSTRAINT [PK_rtn_bluesheet_retail_address] PRIMARY KEY ([id])
);
GO

CREATE TABLE [rtn_bluesheet_rtn_reason] (
    [id_number] INT IDENTITY(1,1) NOT NULL,
    [description] VARCHAR(300) NOT NULL,
    [created_by] CHAR(100) NULL,
    [created_date] DATE NULL,
    [modified_by] CHAR(100) NULL,
    [modified_date] DATE NULL,
    [active] CHAR(2) NULL,
    [jobtype] CHAR(2) NULL,
    [category_id] INT NULL,
    CONSTRAINT [PK_rtn_bluesheet_rtn_reason] PRIMARY KEY ([id_number])
);
GO

CREATE TABLE [rtn_bluesheet_rtn_reason_category] (
    [id_no] INT IDENTITY(1,1) NOT NULL,
    [description] VARCHAR(25) NOT NULL,
    CONSTRAINT [PK_rtn_bluesheet_rtn_reason_category] PRIMARY KEY ([id_no])
);
GO

CREATE TABLE [rtn_bluesheet_sales_measure_error] (
    [rtn_bluesheet_id] INT NOT NULL,
    [credit_measure_charge_back] CHAR(2) NULL,
    [measure_order] INT NULL,
    [amount_back] FLOAT NULL,
    CONSTRAINT [PK_rtn_bluesheet_sales_measure_error] PRIMARY KEY ([rtn_bluesheet_id])
);
GO

CREATE TABLE [rtn_bluesheet_type_return] (
    [id_number] INT IDENTITY(1,1) NOT NULL,
    [description] VARCHAR(100) NOT NULL,
    [created_by] VARCHAR(20) NULL,
    [created_date] DATE NULL,
    [modified_by] VARCHAR(20) NULL,
    [modified_date] DATE NULL,
    [active] CHAR(2) NULL,
    [jobtype] CHAR(2) NULL,
    CONSTRAINT [PK_rtn_bluesheet_type_return] PRIMARY KEY ([id_number])
);
GO

CREATE TABLE [rtn_location_areas] (
    [location_id] INT IDENTITY(1,1) NOT NULL,
    [description] VARCHAR(50) NOT NULL,
    [active] VARCHAR(1) NOT NULL,
    CONSTRAINT [PK_rtn_location_areas] PRIMARY KEY ([location_id])
);
GO

CREATE TABLE [rtn_location_tracker] (
    [return_no] INT NOT NULL,
    [location_id] INT NOT NULL,
    [last_modified_date] DATE NOT NULL,
    [purge_rtn] CHAR(2) NULL,
    CONSTRAINT [PK_rtn_location_tracker] PRIMARY KEY ([return_no])
);
GO

CREATE TABLE [rtn_no_workdone] (
    [prep_id] INT NOT NULL,
    [printed] CHAR(2) NOT NULL,
    CONSTRAINT [PK_rtn_no_workdone] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [rtn_retail_address] (
    [id] INT NOT NULL,
    [name_retail] VARCHAR(30) NULL,
    [addr1] VARCHAR(100) NULL,
    [addr2] VARCHAR(100) NULL,
    [city] VARCHAR(100) NULL,
    [state] VARCHAR(10) NULL,
    [zip] VARCHAR(20) NULL,
    [phone] VARCHAR(20) NULL,
    CONSTRAINT [PK_rtn_retail_address] PRIMARY KEY ([id])
);
GO

CREATE TABLE [rules] (
    [category] CHAR(10) NOT NULL,
    [type] CHAR(10) NOT NULL,
    [text] VARCHAR(255) NULL,
    [active] CHAR(1) NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    [search_list] CHAR(1) NULL,
    CONSTRAINT [PK_rules] PRIMARY KEY ([category], [type])
);
GO

CREATE TABLE [Sales_call_log] (
    [dealer_code] CHAR(6) NOT NULL,
    [date] DATE NOT NULL,
    [sales_person] VARCHAR(50) NOT NULL,
    [log_entry] VARCHAR(3000) NOT NULL,
    [uploaded] CHAR(1) NOT NULL,
    [call_id] INT NOT NULL,
    [territory] CHAR(2) NULL,
    [call_type] CHAR(2) NULL,
    [additional_comments] VARCHAR(3000) NULL,
    [additional_comments_users] VARCHAR(100) NULL,
    [job_visit_problem] VARCHAR(2) NULL,
    [review_call_made] VARCHAR(2) NULL,
    [review_Call_made_text] VARCHAR(3000) NULL,
    [problem] VARCHAR(2) NULL,
    [resolved] VARCHAR(2) NULL,
    [respond_to_id] INT NULL,
    [respond_to_person] VARCHAR(50) NULL,
    CONSTRAINT [PK_Sales_call_log] PRIMARY KEY ([sales_person], [call_id])
);
GO

CREATE TABLE [sales_call_log_responses] (
    [response_id] INT IDENTITY(1,1) NOT NULL,
    [respond_to_id] INT NOT NULL,
    [respond_to_person] VARCHAR(50) NOT NULL,
    [entry_user] VARCHAR(50) NOT NULL,
    [entry_date] DATE NOT NULL,
    [response_entry] VARCHAR(2000) NULL,
    [sales_person] VARCHAR(50) NULL,
    [call_id] INT NULL,
    CONSTRAINT [PK_sales_call_log_responses] PRIMARY KEY ([response_id])
);
GO

CREATE TABLE [sales_territory_location] (
    [sales_territory] VARCHAR(10) NOT NULL,
    [state] VARCHAR(10) NOT NULL,
    [zip] VARCHAR(10) NOT NULL,
    [zip2] VARCHAR(10) NULL,
    [exclusion_territory] VARCHAR(10) NULL,
    CONSTRAINT [PK_sales_territory_location] PRIMARY KEY ([sales_territory], [state], [zip])
);
GO

CREATE TABLE [ship_rates] (
    [carrier_id] INT NOT NULL,
    [zone] NUMERIC(11,0) NOT NULL,
    [weight] NUMERIC(11,0) NOT NULL,
    [amt] NUMERIC(19,5) NULL,
    CONSTRAINT [PK_ship_rates] PRIMARY KEY ([carrier_id], [zone], [weight])
);
GO

CREATE TABLE [ship_via] (
    [ship_via_id] INT IDENTITY(1,1) NOT NULL,
    [type] CHAR(2) NOT NULL,
    [name] CHAR(35) NOT NULL,
    [group] CHAR(35) NULL,
    [promo_level] SMALLINT NULL,
    [rate_table_id] SMALLINT NULL,
    [cod_fee] NUMERIC(6,2) NULL,
    [free_freight] CHAR(1) NULL,
    [active] CHAR(1) NULL,
    [loading_dock] VARCHAR(2) NULL,
    CONSTRAINT [PK_ship_via] PRIMARY KEY ([ship_via_id])
);
GO

CREATE TABLE [Ship_via_old] (
    [NEW_NUMB] NUMERIC(3,0) NOT NULL,
    [Descrtiption] CHAR(50) NOT NULL,
    [FIELD3] CHAR(6) NOT NULL
);
GO

CREATE TABLE [Ship_via_prep_1] (
    [Total_Preps] NUMERIC(5,0) NOT NULL,
    [Via_desc] CHAR(60) NOT NULL,
    [New_Code] NUMERIC(3,0) NOT NULL
);
GO

CREATE TABLE [ship_via_prep_2] (
    [total_preps] NUMERIC(5,0) NOT NULL,
    [via_desc] CHAR(60) NOT NULL,
    [new_code] NUMERIC(3,0) NOT NULL,
    CONSTRAINT [PK_ship_via_prep_2] PRIMARY KEY ([via_desc])
);
GO

CREATE TABLE [ship_zone] (
    [carrier_id] INT NOT NULL,
    [zipn1] NUMERIC(11,0) NOT NULL,
    [zipn2] NUMERIC(11,0) NOT NULL,
    [ship_zone] NUMERIC(11,0) NOT NULL,
    CONSTRAINT [PK_ship_zone] PRIMARY KEY ([carrier_id], [zipn1])
);
GO

CREATE TABLE [slugs] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [slug] VARCHAR(256) NOT NULL,
    [sitemap] INT NOT NULL,
    [status] INT NOT NULL,
    [entity_id] INT NOT NULL,
    [entity_type] VARCHAR(191) NOT NULL,
    [created_at] DATETIME NULL,
    [updated_at] DATETIME NULL,
    CONSTRAINT [PK_slugs] PRIMARY KEY ([id])
);
GO

CREATE TABLE [special_discount] (
    [identifier] INT IDENTITY(1,1) NOT NULL,
    [description] VARCHAR(100) NULL,
    [discount_type] VARCHAR(10) NOT NULL,
    [increment] INT NOT NULL,
    [discount] VARCHAR(500) NOT NULL,
    [create_user] VARCHAR(500) NOT NULL,
    [active] VARCHAR(2) NOT NULL,
    [create_date] DATE NULL,
    [dealer_code] VARCHAR(10) NULL,
    CONSTRAINT [PK_special_discount] PRIMARY KEY ([identifier])
);
GO

CREATE TABLE [special_discount_detail] (
    [identifier] INT NOT NULL,
    [dtl_no] INT NOT NULL,
    [prep_id] INT NULL,
    [amount] FLOAT NULL,
    CONSTRAINT [PK_special_discount_detail] PRIMARY KEY ([identifier], [dtl_no])
);
GO

CREATE TABLE [special_instructions] (
    [code] CHAR(10) NOT NULL,
    [short_description] CHAR(100) NOT NULL,
    [long_description] CHAR(305) NOT NULL,
    [active] CHAR(1) NOT NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(50) NOT NULL,
    [tech_flag] CHAR(1) NULL,
    [safety_flag] CHAR(1) NULL,
    [warranty_flag] CHAR(1) NULL,
    [charge_for_material] NUMERIC(7,2) NULL,
    [time_for_repair] INT NULL,
    [liner] CHAR(1) NULL,
    [short_description_spanish] VARCHAR(150) NULL,
    [long_description_spanish] VARCHAR(450) NULL,
    [short_description_french] VARCHAR(150) NULL,
    [long_description_french] VARCHAR(450) NULL,
    [short_description_italian] VARCHAR(150) NULL,
    [long_description_italian] VARCHAR(450) NULL,
    [short_description_russian] VARCHAR(150) NULL,
    [long_description_russian] VARCHAR(450) NULL,
    [print_documents] CHAR(2) NULL,
    [highlight_color] INT NULL,
    CONSTRAINT [PK_special_instructions] PRIMARY KEY ([code])
);
GO

CREATE TABLE [standards] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [company] CHAR(50) NOT NULL,
    [shape] CHAR(25) NOT NULL,
    [length] INT NOT NULL,
    [width] INT NOT NULL,
    [plate_no] VARCHAR(25) NOT NULL,
    [picture] VARCHAR(50) NULL,
    [network_path] VARCHAR(100) NULL,
    [company_size] CHAR(100) NOT NULL,
    [description] CHAR(50) NOT NULL,
    [ll_description] CHAR(50) NULL,
    [overlap] INT NOT NULL,
    [a] INT NOT NULL,
    [b] INT NOT NULL,
    [c] INT NOT NULL,
    [radius] INT NOT NULL,
    [material_type] CHAR(1) NULL,
    [object_size] VARCHAR(255) NULL,
    [manf_size] VARCHAR(255) NULL,
    [sq_ft] FLOAT NULL,
    [anch_spring] INT NULL,
    [grid_type] CHAR(10) NULL,
    [is_mesh] CHAR(2) NULL,
    [is_ul] CHAR(2) NULL,
    [is_ul_no_drains] CHAR(2) NULL,
    [anch_spring_solid] INT NULL,
    [average_size] CHAR(2) NULL,
    [extensions] INT NULL,
    [shape_type] VARCHAR(50) NULL,
    [manf_pool_size] VARCHAR(255) NULL,
    [perimeter] INT NULL,
    [manf_shape] VARCHAR(50) NULL,
    [is_og_mesh] CHAR(2) NULL,
    [is_og_ul] CHAR(2) NULL,
    [is_og_ul_no_drains] CHAR(2) NULL,
    [is_short_spring_solid] INT NULL,
    [is_short_spring] INT NULL,
    [stock_id] INT NULL,
    [standards_shape_id_no] INT NULL,
    [pool_step_size_shape] VARCHAR(50) NULL,
    [anch_spring_plus_minus] VARCHAR(5) NULL,
    [comments] VARCHAR(50) NULL,
    [stock_id_mesh] INT NULL,
    [stock_id_ul_no_drains] INT NULL,
    [stock_id_ul_drains] INT NULL,
    [number_pumps] INT NULL,
    [special_rectangle] CHAR(1) NULL,
    [active] CHAR(1) NULL,
    [is_mesh_color] CHAR(2) NULL,
    [is_ul_color] CHAR(2) NULL,
    [is_ul_no_drains_color] CHAR(2) NULL,
    [is_aqua_green] CHAR(2) NULL,
    [is_aqua_color] CHAR(2) NULL,
    [stock_id_aqua] INT NULL,
    CONSTRAINT [PK_standards] PRIMARY KEY ([id])
);
GO

CREATE TABLE [standards_shape] (
    [id_no] INT IDENTITY(1,1) NOT NULL,
    [company_shape_name] VARCHAR(512) NOT NULL,
    [jpg_field] VARCHAR(512) NULL,
    [active] VARCHAR(2) NULL,
    CONSTRAINT [PK_standards_shape] PRIMARY KEY ([id_no])
);
GO

CREATE TABLE [standards_treatment] (
    [plate_no] VARCHAR(25) NOT NULL,
    [treatment_code] CHAR(10) NOT NULL,
    [quantity] INT NOT NULL,
    [id] INT NOT NULL,
    CONSTRAINT [PK_standards_treatment] PRIMARY KEY ([plate_no], [treatment_code], [id])
);
GO

CREATE TABLE [state] (
    [state_code] CHAR(3) NOT NULL,
    [country] CHAR(3) NOT NULL,
    [name] CHAR(35) NULL,
    [phone_format] CHAR(10) NULL,
    [zipcode_format] CHAR(10) NULL,
    [ptfe_thread] CHAR(1) NULL,
    [code_phone] CHAR(3) NULL,
    [active] CHAR(1) NULL,
    [country_name] CHAR(35) NULL,
    [use_metric] CHAR(2) NULL,
    CONSTRAINT [PK_state] PRIMARY KEY ([state_code], [country])
);
GO

CREATE TABLE [state_sales_territory] (
    [state_code] VARCHAR(10) NOT NULL,
    [zip_code1] VARCHAR(10) NOT NULL,
    [zip_code2] VARCHAR(10) NULL,
    [sales_territory] VARCHAR(10) NOT NULL,
    [active] VARCHAR(2) NULL,
    CONSTRAINT [PK_state_sales_territory] PRIMARY KEY ([state_code], [zip_code1])
);
GO

CREATE TABLE [state_tax] (
    [state_code] CHAR(3) NOT NULL,
    [taxcd] CHAR(10) NOT NULL,
    [desc] CHAR(50) NULL,
    [pct] NUMERIC(4,3) NULL,
    [active] CHAR(1) NOT NULL,
    CONSTRAINT [PK_state_tax] PRIMARY KEY ([state_code], [taxcd])
);
GO

CREATE TABLE [state_tax_code_master] (
    [zipcode] VARCHAR(10) NOT NULL,
    [city] VARCHAR(50) NULL,
    [county] VARCHAR(50) NULL,
    [zipcode_type] VARCHAR(10) NOT NULL,
    [tax_code] VARCHAR(10) NULL,
    CONSTRAINT [PK_state_tax_code_master] PRIMARY KEY ([zipcode], [zipcode_type])
);
GO

CREATE TABLE [stock] (
    [serial_no] INT NOT NULL,
    [stock_id] INT NULL,
    [status] CHAR(1) NULL,
    [location] CHAR(5) NULL,
    [pick_id] INT NULL,
    [bleep_status] INT NULL,
    [cutting_tag_print] CHAR(1) NULL,
    [manf_date] DATETIME NULL,
    [prep_id] INT NULL,
    [old_stock] CHAR(1) NULL,
    CONSTRAINT [PK_stock] PRIMARY KEY ([serial_no])
);
GO

CREATE TABLE [stock_backup] (
    [serial_no] FLOAT NULL,
    [stock_id] FLOAT NULL,
    [status] CHAR(1) NULL,
    [location] CHAR(5) NULL,
    [pick_id] FLOAT NULL,
    [bleep_status] FLOAT NULL,
    [cutting_tag_print] CHAR(1) NULL,
    [manf_date] DATETIME NULL,
    [prep_id] FLOAT NULL,
    [old_stock] CHAR(1) NULL
);
GO

CREATE TABLE [stock_copy] (
    [serial_no] INT NOT NULL,
    [stock_id] INT NULL,
    [status] CHAR(1) NULL,
    [location] CHAR(5) NULL,
    [pick_id] INT NULL,
    [bleep_status] INT NULL,
    [cutting_tag_print] CHAR(1) NULL,
    [manf_date] DATE NULL,
    CONSTRAINT [PK_stock_copy] PRIMARY KEY ([serial_no])
);
GO

CREATE TABLE [stock_hardware] (
    [stock_id] INT NOT NULL,
    [hardware_code] CHAR(10) NOT NULL,
    [chargeable] CHAR(1) NOT NULL,
    [per_anchor] CHAR(1) NOT NULL,
    [fixed_amount] INT NOT NULL,
    CONSTRAINT [PK_stock_hardware] PRIMARY KEY ([stock_id], [hardware_code])
);
GO

CREATE TABLE [stock_hardware_option] (
    [stock_id] INT NOT NULL,
    [stock_option] SMALLINT NOT NULL,
    [hardware_code] CHAR(10) NOT NULL,
    [chargeable] CHAR(1) NOT NULL,
    [per_anchor] CHAR(1) NOT NULL,
    [fixed_amount] INT NOT NULL,
    [option_text] CHAR(50) NOT NULL,
    CONSTRAINT [PK_stock_hardware_option] PRIMARY KEY ([stock_id], [stock_option], [hardware_code])
);
GO

CREATE TABLE [stock_history] (
    [serial_no] INT NOT NULL,
    [date_time] DATETIME NOT NULL,
    [user] VARCHAR(15) NOT NULL,
    [action] VARCHAR(100) NOT NULL,
    [action_no] SMALLINT NOT NULL,
    [prep_id] INT NULL
);
GO

CREATE TABLE [stock_history_copy] (
    [serial_no] INT NOT NULL,
    [date_time] DATETIME NOT NULL,
    [user] VARCHAR(15) NOT NULL,
    [action] VARCHAR(100) NOT NULL,
    [action_no] SMALLINT NOT NULL,
    [prep_id] INT NULL
);
GO

CREATE TABLE [stock_its] (
    [its] CHAR(10) NOT NULL,
    [stock_id] INT NOT NULL,
    CONSTRAINT [PK_stock_its] PRIMARY KEY ([its])
);
GO

CREATE TABLE [stock_liner] (
    [stock_liner_id] INT NOT NULL,
    [active] CHAR(2) NULL,
    CONSTRAINT [PK_stock_liner] PRIMARY KEY ([stock_liner_id])
);
GO

CREATE TABLE [stock_linked_id] (
    [id_no] INT IDENTITY(1,1) NOT NULL,
    [stock_id_mesh] INT NULL,
    [stock_id_ul_no_drains] INT NULL,
    [stock_id_ul_drains] INT NULL,
    [stock_id_mesh_color] INT NULL,
    [stock_id_ul_drains_color] INT NULL,
    [stock_id_ul_no_drains_color] INT NULL,
    [solid_drains] INT NULL,
    [solid_pump] INT NULL,
    [stock_id_mesh_color_tan] INT NULL,
    [stock_id_mesh_color_black] INT NULL,
    [stock_id_mesh_color_gray] INT NULL,
    [stock_id_ul_drains_color_tan] INT NULL,
    [stock_id_ul_drains_color_gray] INT NULL,
    [stock_id_ul_no_drains_color_tan] INT NULL,
    [stock_id_ul_no_drains_color_gray] INT NULL,
    [stock_id_aquaxtreme] INT NULL,
    [stock_id_aquaxtreme_navy] INT NULL,
    [stock_id_aquaxtreme_brown] INT NULL,
    [stock_id_aquaxtreme_steel_gray] INT NULL,
    CONSTRAINT [PK_stock_linked_id] PRIMARY KEY ([id_no])
);
GO

CREATE TABLE [stock_linked_id_og] (
    [id_no] INT IDENTITY(1,1) NOT NULL,
    [mesh_green_2] INT NULL,
    [mesh_blue_112] INT NULL,
    [mesh_black_116] INT NULL,
    [mesh_gray_117] INT NULL,
    [mesh_tan_1056] INT NULL,
    CONSTRAINT [PK_stock_linked_id_og] PRIMARY KEY ([id_no])
);
GO

CREATE TABLE [stock_master] (
    [stock_id] INT NOT NULL,
    [product_id] INT NOT NULL,
    [manf_size] VARCHAR(255) NOT NULL,
    [object_size] VARCHAR(255) NOT NULL,
    [shape] VARCHAR(50) NOT NULL,
    [sqft] FLOAT NOT NULL,
    [base_cost] FLOAT NOT NULL,
    [advertised] CHAR(1) NOT NULL,
    [weight] FLOAT NOT NULL,
    [anchor_points] SMALLINT NOT NULL,
    [extensions] SMALLINT NULL,
    [active] CHAR(1) NULL,
    [grid_size] CHAR(10) NULL,
    [cartons] INT NULL,
    [no_bows] INT NULL,
    [bl] NUMERIC(7,2) NULL,
    [cw] NUMERIC(7,2) NULL,
    [cl] NUMERIC(7,2) NULL,
    [s_cw] NUMERIC(7,2) NULL,
    [s_cl] NUMERIC(7,2) NULL,
    [s_off] NUMERIC(7,2) NULL,
    [max_cw] NUMERIC(7,2) NULL,
    [max_cl] NUMERIC(7,2) NULL,
    [min_cw] NUMERIC(7,2) NULL,
    [min_cl] NUMERIC(7,2) NULL,
    [max_sw] NUMERIC(7,2) NULL,
    [max_sl] NUMERIC(7,2) NULL,
    [min_sw] NUMERIC(7,2) NULL,
    [min_sl] NUMERIC(7,2) NULL,
    [max_ol_out] NUMERIC(7,2) NULL,
    [max_ol_in] NUMERIC(7,2) NULL,
    [l_or_r] CHAR(2) NULL,
    [wall_a] NUMERIC(7,2) NULL,
    [wall_c] NUMERIC(7,2) NULL,
    [min_bow] NUMERIC(7,2) NULL,
    [max_bow] NUMERIC(7,2) NULL,
    [tag] CHAR(50) NULL,
    [std_ol] NUMERIC(5,2) NULL,
    [picture] CHAR(20) NULL,
    [qty_on_hand] INT NULL,
    [qty_on_order] INT NULL,
    [poolsize] CHAR(255) NULL,
    [coversize] CHAR(255) NULL,
    [old_shape] CHAR(50) NULL,
    [chafe_length] INT NULL,
    [carton_type] CHAR(10) NULL,
    [base_cost_new] NUMERIC(7,2) NULL,
    [short_springs] SMALLINT NULL,
    [web_category] CHAR(10) NULL,
    [fence_skew_no] INT NULL,
    [pool_wall_a] NUMERIC(7,2) NULL,
    [pool_wall_b] NUMERIC(7,2) NULL,
    [pool_wall_c] NUMERIC(7,2) NULL,
    [web_text] CHAR(100) NULL,
    [create_date] DATE NULL,
    [web_title] CHAR(100) NULL,
    [charge_freight] SMALLINT NULL,
    [undr_cvr_pad] INT NULL,
    [perimeter] INT NULL,
    [link_to_green] INT NULL,
    [label_image] VARCHAR(25) NULL,
    [custom_pricing] VARCHAR(2) NULL,
    [administrator_note] VARCHAR(200) NULL,
    [weight_cover] FLOAT NULL,
    [weight_pump] FLOAT NULL,
    [weight_hardware] FLOAT NULL,
    CONSTRAINT [PK_stock_master] PRIMARY KEY ([stock_id])
);
GO

CREATE TABLE [stock_master_upc] (
    [stock_id] INT NOT NULL,
    [dealer_code] VARCHAR(10) NOT NULL,
    [upc_code] VARCHAR(50) NOT NULL,
    CONSTRAINT [PK_stock_master_upc] PRIMARY KEY ([stock_id], [dealer_code])
);
GO

CREATE TABLE [stock_move] (
    [pick_id] INT NOT NULL,
    [date_rcvd] DATE NOT NULL,
    [location_checkin] CHAR(10) NOT NULL,
    [status] CHAR(1) NOT NULL,
    CONSTRAINT [PK_stock_move] PRIMARY KEY ([pick_id])
);
GO

CREATE TABLE [stock_move_detail] (
    [pick_id] INT NOT NULL,
    [stock_id] INT NOT NULL,
    CONSTRAINT [PK_stock_move_detail] PRIMARY KEY ([pick_id], [stock_id])
);
GO

CREATE TABLE [stock_pick] (
    [pick_id] INT IDENTITY(1,1) NOT NULL,
    [pick_date] DATE NOT NULL,
    [location_to] CHAR(10) NOT NULL,
    [status] CHAR(1) NOT NULL,
    CONSTRAINT [PK_stock_pick] PRIMARY KEY ([pick_id])
);
GO

CREATE TABLE [stock_pick_detail] (
    [pick_id] INT NOT NULL,
    [qty] INT NOT NULL,
    [line_comment] CHAR(50) NULL,
    [starting_stock_id] INT NOT NULL,
    [stock_id] INT NOT NULL,
    CONSTRAINT [PK_stock_pick_detail] PRIMARY KEY ([pick_id], [stock_id])
);
GO

CREATE TABLE [stock_special] (
    [prep_id] INT NOT NULL,
    [used_date] DATE NULL,
    [return_date] DATE NULL,
    [used_reason] VARCHAR(80) NULL,
    [return_reason] VARCHAR(80) NULL,
    [year] INT NOT NULL,
    [type] CHAR(1) NOT NULL,
    [stock_number] INT IDENTITY(1,1) NOT NULL,
    [comments] VARCHAR(80) NULL,
    [comments2] VARCHAR(80) NULL,
    [used_stock] CHAR(1) NULL,
    CONSTRAINT [PK_stock_special] PRIMARY KEY ([year], [type], [stock_number])
);
GO

CREATE TABLE [sub] (
    [subdivisions] INT NOT NULL,
    [weight_less_than] INT NOT NULL,
    [weight_greater_than] INT NOT NULL,
    [ltl_rate] NUMERIC(5,2) NOT NULL,
    [tl_rate] INT NOT NULL,
    [mw_rate] VARCHAR(10) NOT NULL,
    CONSTRAINT [PK_sub] PRIMARY KEY ([subdivisions], [ltl_rate])
);
GO

CREATE TABLE [syscon] (
    [syscon_id] INT NOT NULL,
    [stock_ship_days] SMALLINT NOT NULL,
    [stock_out_ship_days] SMALLINT NOT NULL,
    [custom_ship_days] SMALLINT NOT NULL,
    [custom_deposit_days] SMALLINT NOT NULL,
    [promo_ship_days] SMALLINT NOT NULL,
    [price_effective_date] DATE NOT NULL,
    [business_day_end] TIME NOT NULL,
    [cod_charge] NUMERIC(5,2) NOT NULL,
    [default_non_mf] INT NOT NULL,
    [default_mf] INT NOT NULL,
    [custom_solid_ship_days] SMALLINT NOT NULL,
    [custom_solid_deposit_days] SMALLINT NOT NULL,
    [cpu_tax_rate] NUMERIC(5,3) NULL,
    [bleep_production] CHAR(1) NOT NULL,
    [extra_drop_days] SMALLINT NOT NULL,
    [route_to_person] CHAR(25) NOT NULL,
    [Auto_CFA] CHAR(1) NOT NULL,
    [csrecipient] CHAR(25) NOT NULL,
    [liner_ship_days] SMALLINT NOT NULL,
    [liner_deposit_days] SMALLINT NOT NULL,
    [ship_hardware_weight_tolerance] FLOAT NOT NULL,
    [discount_28_28] FLOAT NOT NULL,
    [discount_28_20] FLOAT NOT NULL,
    [spring_return] INT NOT NULL,
    [alteration_upcharge] FLOAT NULL,
    [free_freight] CHAR(1) NOT NULL,
    [ra_ship_days] SMALLINT NOT NULL,
    [ra_deposit_days] SMALLINT NOT NULL,
    [nc_ship_days] SMALLINT NOT NULL,
    [nc_deposit_days] SMALLINT NOT NULL,
    [alt_ship_days] SMALLINT NOT NULL,
    [alt_deposit_days] SMALLINT NOT NULL,
    [om_discount] CHAR(25) NOT NULL,
    [wt_ship_days] SMALLINT NULL,
    [wt_deposit_days] SMALLINT NULL,
    [discount_20_28] FLOAT NULL,
    [comp_markdown] VARCHAR(1) NULL,
    [enclosure_ship_days] SMALLINT NULL,
    [enclosure_deposit_days] SMALLINT NULL,
    [ln_ag_shipdays] INT NULL,
    [discount_28_28_ag] FLOAT NULL,
    [discount_20_28_ag] FLOAT NULL,
    [discount_28_20_ag] FLOAT NULL,
    [plates_ship] INT NULL,
    [plates_drop] INT NULL,
    [discount_30_30] FLOAT NULL,
    [discount_30_30_ag] FLOAT NULL,
    [custom_deposit_days_foreign] INT NULL,
    [custom_ship_days_foreign] INT NULL,
    [deposit_required_1] FLOAT NULL,
    [deposit_required_2] FLOAT NULL,
    [liner_extended_warranty_silver] FLOAT NULL,
    [liner_extended_warranty_silver_min] FLOAT NULL,
    [liner_extended_warranty_gold] FLOAT NULL,
    [liner_extended_warranty_gold_min] FLOAT NULL,
    [liner_extended_warranty_commercial] FLOAT NULL,
    [deposit_required_2_distributor] FLOAT NULL,
    [cost_signature] FLOAT NULL,
    [cost_liftgate] FLOAT NULL,
    [cost_limited_access] FLOAT NULL,
    [cost_arrival_notification] FLOAT NULL,
    [cost_drop_ups] FLOAT NULL,
    [cost_drop_mf] FLOAT NULL,
    [freight_stock] FLOAT NULL,
    [cost_mf_liner_flat] FLOAT NULL,
    CONSTRAINT [PK_syscon] PRIMARY KEY ([syscon_id])
);
GO

CREATE TABLE [t_dealer] (
    [dealer_id] CHAR(6) NOT NULL,
    [name] CHAR(30) NOT NULL,
    [addr1] CHAR(30) NOT NULL,
    [addr2] CHAR(30) NOT NULL,
    [city] CHAR(30) NOT NULL,
    [state] CHAR(2) NOT NULL,
    [zip] CHAR(11) NOT NULL
);
GO

CREATE TABLE [tan_promo] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [dealer_code] VARCHAR(10) NOT NULL,
    CONSTRAINT [PK_tan_promo] PRIMARY KEY ([id])
);
GO

CREATE TABLE [tbl_products_cover_hardware] (
    [web_id] INT NOT NULL,
    [hardware_code] VARCHAR(10) NOT NULL,
    [web_title] VARCHAR(63) NOT NULL,
    [description] VARCHAR(255) NOT NULL,
    [unit_price] DECIMAL(12,6) NOT NULL,
    [weight_per_unit] FLOAT NOT NULL,
    [sqft] INT NOT NULL,
    [grid_size] VARCHAR(5) NOT NULL,
    CONSTRAINT [PK_tbl_products_cover_hardware] PRIMARY KEY ([web_id])
);
GO

CREATE TABLE [tech_bleep] (
    [prep_id] INT NOT NULL,
    [drafter] CHAR(25) NOT NULL,
    [bleep_time] DATETIME NOT NULL,
    CONSTRAINT [PK_tech_bleep] PRIMARY KEY ([prep_id], [drafter], [bleep_time])
);
GO

CREATE TABLE [tech_error] (
    [prep_id] INT NOT NULL,
    [error_id] INT NOT NULL,
    [checker] CHAR(25) NOT NULL,
    [drafter] CHAR(25) NOT NULL,
    [error_date] DATE NOT NULL,
    [department] CHAR(1) NULL,
    [error_count] INT NULL,
    CONSTRAINT [PK_tech_error] PRIMARY KEY ([prep_id], [error_id], [drafter])
);
GO

CREATE TABLE [tech_hardware] (
    [prep_id] INT NOT NULL,
    [quote_no] INT NOT NULL,
    [create_date] DATETIME NOT NULL,
    [create_user] CHAR(10) NOT NULL,
    [hardware_code] CHAR(10) NOT NULL,
    [qty] SMALLINT NOT NULL,
    CONSTRAINT [PK_tech_hardware] PRIMARY KEY ([prep_id], [quote_no], [create_date], [hardware_code])
);
GO

CREATE TABLE [tech_manf] (
    [prep_id] INT NOT NULL,
    [quote_no] INT NOT NULL,
    [create_date] DATETIME NOT NULL,
    [create_user] CHAR(10) NOT NULL,
    [grid_size] CHAR(10) NOT NULL,
    [qty] SMALLINT NOT NULL,
    [shape] CHAR(10) NOT NULL,
    [object_size] VARCHAR(255) NOT NULL,
    [manf_size] VARCHAR(255) NOT NULL,
    [averaged_flag] CHAR(1) NOT NULL,
    [safe_flag] CHAR(1) NOT NULL,
    [sqft] FLOAT NOT NULL,
    [extensions] SMALLINT NULL,
    [c_end] CHAR(1) NULL,
    [rough_estimate] CHAR(1) NULL,
    [liner_overide] CHAR(5) NULL,
    CONSTRAINT [PK_tech_manf] PRIMARY KEY ([prep_id], [quote_no], [create_date])
);
GO

CREATE TABLE [tech_special_instructions] (
    [prep_id] INT NOT NULL,
    [quote_no] INT NOT NULL,
    [create_date] DATETIME NOT NULL,
    [create_user] CHAR(10) NOT NULL,
    [code] CHAR(10) NOT NULL,
    CONSTRAINT [PK_tech_special_instructions] PRIMARY KEY ([prep_id], [quote_no], [create_date], [code])
);
GO

CREATE TABLE [tech_treat] (
    [cat] CHAR(10) NOT NULL,
    [p_code] CHAR(10) NOT NULL,
    [p_desc] VARCHAR(150) NOT NULL,
    [s_code] CHAR(10) NOT NULL,
    [s_desc] VARCHAR(150) NOT NULL,
    [txt_win] VARCHAR(150) NOT NULL,
    CONSTRAINT [PK_tech_treat] PRIMARY KEY ([txt_win])
);
GO

CREATE TABLE [tech_treatment] (
    [prep_id] INT NOT NULL,
    [quote_no] INT NOT NULL,
    [create_date] DATETIME NOT NULL,
    [create_user] CHAR(10) NOT NULL,
    [treatment_code] CHAR(10) NOT NULL,
    [qty] INT NOT NULL,
    CONSTRAINT [PK_tech_treatment] PRIMARY KEY ([prep_id], [quote_no], [create_date], [treatment_code])
);
GO

CREATE TABLE [terms] (
    [term_id] INT NOT NULL,
    [description] VARCHAR(255) NULL,
    [discount_percent] SMALLINT NULL,
    [discount_days] SMALLINT NULL,
    [net_days] SMALLINT NULL,
    [remittance_slip] CHAR(1) NULL,
    [multi_payments] CHAR(1) NULL,
    [cod_type] CHAR(1) NULL,
    [cod_cash] CHAR(1) NULL,
    [cash_type] CHAR(1) NULL,
    [credit_limit_flag] CHAR(1) NULL,
    [us_funds_message] CHAR(1) NULL,
    [in_advance] CHAR(1) NULL,
    [active] CHAR(1) NULL,
    [description_spanish] CHAR(300) NULL,
    [description_french] CHAR(300) NULL,
    [description_italian] CHAR(300) NULL,
    [description_russian] CHAR(300) NULL,
    CONSTRAINT [PK_terms] PRIMARY KEY ([term_id])
);
GO

CREATE TABLE [terms_payments] (
    [term_id] INT NOT NULL,
    [payment_id] SMALLINT NOT NULL,
    [net_days] SMALLINT NULL,
    CONSTRAINT [PK_terms_payments] PRIMARY KEY ([term_id], [payment_id])
);
GO

CREATE TABLE [treatment_h] (
    [treatment_code] CHAR(10) NOT NULL,
    [description] CHAR(50) NOT NULL,
    [discontinued_date] DATE NULL,
    [unit] CHAR(10) NOT NULL,
    [weight_per_unit] FLOAT NOT NULL,
    [message] VARCHAR(255) NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    [shape_flag] CHAR(1) NULL,
    [active] CHAR(1) NULL,
    [prep_type_list] CHAR(10) NULL,
    [display_repair] CHAR(1) NULL,
    [grid_flag] CHAR(1) NOT NULL,
    [patch_panel] CHAR(5) NOT NULL,
    [material_type_flag] CHAR(1) NULL,
    [link] VARCHAR(10) NULL,
    [visible] CHAR(1) NULL,
    [alteration_upcharge] CHAR(1) NULL,
    [inspection] CHAR(1) NULL,
    [liner_stair_treatment] CHAR(1) NULL,
    [quick_calc] CHAR(1) NULL,
    [online_calculator] VARCHAR(1) NULL,
    [discount_overide] CHAR(25) NULL,
    [display_on_cs_prep] CHAR(1) NULL,
    [description_spanish] CHAR(150) NULL,
    [description_french] CHAR(150) NULL,
    [description_italian] CHAR(150) NULL,
    [description_russian] CHAR(150) NULL,
    [description_metric] CHAR(150) NULL,
    [measure_type] CHAR(2) NULL,
    [is_raised_wall] CHAR(2) NULL,
    [treatment_unavailable] CHAR(2) NULL,
    [difficulty_rating] INT NULL,
    [max_discount] CHAR(25) NULL,
    [highlight_color] INT NULL,
    [is_textured] CHAR(2) NULL,
    CONSTRAINT [PK_treatment_h] PRIMARY KEY ([treatment_code])
);
GO

CREATE TABLE [treatment_h_product] (
    [treatment_code] CHAR(10) NOT NULL,
    [product_id] INT NOT NULL,
    [active] CHAR(1) NOT NULL,
    CONSTRAINT [PK_treatment_h_product] PRIMARY KEY ([treatment_code], [product_id])
);
GO

CREATE TABLE [treatment_price] (
    [treatment_code] CHAR(10) NOT NULL,
    [effective_date] DATE NOT NULL,
    [unit_price] NUMERIC(7,2) NOT NULL,
    [last_modified_date] DATE NULL,
    [last_modified_user] CHAR(15) NULL,
    CONSTRAINT [PK_treatment_price] PRIMARY KEY ([treatment_code], [effective_date])
);
GO

CREATE TABLE [treatment_zone_code] (
    [zone] INT NOT NULL,
    [treatment_code] VARCHAR(10) NOT NULL,
    [treatment_type] VARCHAR(2) NOT NULL,
    [treatment_ms] VARCHAR(10) NULL,
    [id_num] INT IDENTITY(1,1) NOT NULL,
    CONSTRAINT [PK_treatment_zone_code] PRIMARY KEY ([zone], [treatment_code], [treatment_type])
);
GO

CREATE TABLE [treatment_zone_zip] (
    [zone] INT NOT NULL,
    [zipcodes] VARCHAR(15) NOT NULL,
    CONSTRAINT [PK_treatment_zone_zip] PRIMARY KEY ([zone], [zipcodes])
);
GO

CREATE TABLE [universal_sales_territory] (
    [sales_territory] VARCHAR(10) NOT NULL,
    [active] VARCHAR(2) NOT NULL,
    CONSTRAINT [PK_universal_sales_territory] PRIMARY KEY ([sales_territory])
);
GO

CREATE TABLE [up_charge] (
    [hardware_code] CHAR(10) NOT NULL,
    [effective_date] DATE NOT NULL,
    [up_charge] FLOAT NULL,
    [grid_size] CHAR(1) NULL,
    [last_modified_date] DATE NOT NULL,
    [last_modified_user] CHAR(15) NOT NULL,
    CONSTRAINT [PK_up_charge] PRIMARY KEY ([hardware_code], [effective_date])
);
GO

CREATE TABLE [ups_shipping_cost] (
    [date_start] DATE NOT NULL,
    [date_end] DATE NOT NULL,
    [ups_charges] FLOAT NULL,
    [dealer_shipping_charges] FLOAT NULL,
    [promo_count] INT NULL,
    CONSTRAINT [PK_ups_shipping_cost] PRIMARY KEY ([date_start], [date_end])
);
GO

CREATE TABLE [user_productivity] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [user_name] CHAR(25) NOT NULL,
    [job] INT NOT NULL,
    [start_time] DATETIME NOT NULL,
    [end_time] DATETIME NULL,
    [bleep_status] SMALLINT NOT NULL,
    [job_difficulty] NUMERIC(4,2) NULL,
    CONSTRAINT [PK_user_productivity] PRIMARY KEY ([id])
);
GO

CREATE TABLE [vendor] (
    [vendor_code] CHAR(10) NOT NULL,
    [vendor_name] VARCHAR(100) NULL,
    [contact_sales] VARCHAR(100) NULL,
    [attention] VARCHAR(100) NULL,
    [addr1] VARCHAR(100) NULL,
    [addr2] VARCHAR(100) NULL,
    [city] VARCHAR(100) NULL,
    [state] VARCHAR(10) NULL,
    [zipcode] VARCHAR(20) NULL,
    [phone] VARCHAR(50) NULL,
    [fax] VARCHAR(50) NULL,
    [email] VARCHAR(50) NULL,
    [term_id] INT NULL,
    [ship_via_id] INT NULL,
    [fob] INT NULL,
    [active] CHAR(1) NULL,
    [create_date] DATE NULL,
    [create_user] VARCHAR(100) NULL,
    [phone2] VARCHAR(50) NULL,
    [taxcd] VARCHAR(50) NULL,
    [doc] VARCHAR(10) NULL,
    [shop_inventory] VARCHAR(1) NULL,
    [additional_comments] VARCHAR(3000) NULL,
    [fob_text] VARCHAR(100) NULL,
    CONSTRAINT [PK_vendor] PRIMARY KEY ([vendor_code])
);
GO

CREATE TABLE [vendor_po_materials] (
    [vendor_code] CHAR(10) NOT NULL,
    [po_materials_id] INT NOT NULL,
    [active] CHAR(1) NULL,
    CONSTRAINT [PK_vendor_po_materials] PRIMARY KEY ([vendor_code], [po_materials_id])
);
GO

CREATE TABLE [vendor_purchase_orders_delivery2] (
    [po_number] INT NOT NULL,
    [dtl_no] INT NOT NULL,
    [date] DATE NOT NULL,
    [qty] INT NOT NULL,
    [asap] VARCHAR(1) NULL,
    CONSTRAINT [PK_vendor_purchase_orders_delivery2] PRIMARY KEY ([po_number], [dtl_no], [date])
);
GO

CREATE TABLE [vendor_purchases_orders] (
    [po_number] INT NOT NULL,
    [vendor_code] CHAR(10) NOT NULL,
    [req_by] CHAR(50) NULL,
    [fob] CHAR(100) NULL,
    [purchasing_agent] CHAR(100) NULL,
    [create_date] DATE NULL,
    [create_user] CHAR(100) NULL,
    [ship_via_id] INT NULL,
    [term_id] INT NULL,
    [subtotal] FLOAT NULL,
    [tax] FLOAT NULL,
    [bal_due] FLOAT NULL,
    [active] CHAR(1) NULL,
    [freight] FLOAT NULL,
    [taxcd] VARCHAR(50) NULL,
    [doc] VARCHAR(10) NULL,
    [rev] VARCHAR(1) NULL,
    [additional_information] VARCHAR(1000) NULL,
    [autocreate_po] VARCHAR(1) NULL,
    [price_overide] VARCHAR(1) NULL,
    [term_description] VARCHAR(100) NULL,
    [attention_to] VARCHAR(100) NULL,
    [cancel] VARCHAR(2) NULL,
    [discount_percentage] FLOAT NULL,
    [discount_amount] FLOAT NULL,
    CONSTRAINT [PK_vendor_purchases_orders] PRIMARY KEY ([po_number])
);
GO

CREATE TABLE [vendor_purchases_orders_delivery] (
    [po_number] INT NOT NULL,
    [dtl_no] INT NOT NULL,
    [date1] DATE NULL,
    [qty1] INT NULL,
    [date2] DATE NULL,
    [qty2] INT NULL,
    [date3] DATE NULL,
    [qty3] INT NULL,
    [date4] DATE NULL,
    [qty4] INT NULL,
    [date5] DATE NULL,
    [qty5] INT NULL,
    [date6] DATE NULL,
    [qty6] INT NULL,
    [date7] DATE NULL,
    [qty7] INT NULL,
    [date8] DATE NULL,
    [qty8] INT NULL,
    [date9] DATE NULL,
    [qty9] INT NULL,
    [date10] DATE NULL,
    [qty10] INT NULL,
    [date11] DATE NULL,
    [qty11] INT NULL,
    [date12] DATE NULL,
    [qty12] INT NULL,
    CONSTRAINT [PK_vendor_purchases_orders_delivery] PRIMARY KEY ([po_number], [dtl_no])
);
GO

CREATE TABLE [vendor_purchases_orders_details] (
    [po_number] INT NOT NULL,
    [dtl_no] INT NOT NULL,
    [id] INT NULL,
    [description] VARCHAR(50) NULL,
    [unit_price] FLOAT NULL,
    [qty] INT NULL,
    [unit] VARCHAR(10) NULL,
    [asap] VARCHAR(1) NULL,
    [delivery_days] INT NULL,
    [price_overide_price] DECIMAL(20,6) NULL,
    [will_advise] CHAR(1) NULL,
    [additional_information] VARCHAR(1000) NULL,
    [is_promo] VARCHAR(2) NULL,
    CONSTRAINT [PK_vendor_purchases_orders_details] PRIMARY KEY ([po_number], [dtl_no])
);
GO

CREATE TABLE [warr1] (
    [namea] VARCHAR(4) NULL,
    [first] VARCHAR(10) NULL,
    [last] VARCHAR(15) NULL,
    [orderno] FLOAT NULL,
    [address] VARCHAR(25) NULL,
    [city] VARCHAR(15) NULL,
    [state] VARCHAR(6) NULL,
    [zip] VARCHAR(10) NULL,
    [installed] VARCHAR(30) NULL,
    [date] DATETIME NULL,
    [comments] VARCHAR(50) NULL,
    [comments2] VARCHAR(50) NULL,
    [onea] VARCHAR(1) NULL,
    [oneae] VARCHAR(10) NULL,
    [oneb] VARCHAR(1) NULL,
    [onebl] VARCHAR(10) NULL,
    [twoa] VARCHAR(1) NULL,
    [twob] VARCHAR(1) NULL,
    [twoc] VARCHAR(1) NULL,
    [twod] VARCHAR(1) NULL,
    [twoe] VARCHAR(1) NULL,
    [three] VARCHAR(1) NULL,
    [threeb] VARCHAR(1) NULL,
    [threec] VARCHAR(1) NULL,
    [foura] VARCHAR(1) NULL,
    [fourb] VARCHAR(1) NULL,
    [fourb1] VARCHAR(10) NULL,
    [fourc] VARCHAR(1) NULL,
    [fourc1] VARCHAR(10) NULL,
    [five] VARCHAR(40) NULL,
    [six] VARCHAR(1) NULL,
    [seven] VARCHAR(1) NULL,
    [seveny1] VARCHAR(2) NULL,
    [seveny2] VARCHAR(2) NULL,
    [seveny3] VARCHAR(2) NULL,
    [seveny4] VARCHAR(2) NULL,
    [sevena] VARCHAR(1) NULL,
    [sevenay] VARCHAR(15) NULL,
    [eight] VARCHAR(1) NULL,
    [eighte] VARCHAR(15) NULL,
    [nine] VARCHAR(1) NULL,
    [ten] VARCHAR(1) NULL,
    [eleven] VARCHAR(1) NULL,
    [twelve] VARCHAR(1) NULL,
    [twelven] VARCHAR(35) NULL,
    [thirteen] VARCHAR(1) NULL,
    [label] FLOAT NULL
);
GO

CREATE TABLE [warranty_answer_master] (
    [question_id] CHAR(10) NOT NULL,
    [answer] CHAR(255) NOT NULL,
    [active_year] INT NOT NULL,
    CONSTRAINT [PK_warranty_answer_master] PRIMARY KEY ([question_id], [answer])
);
GO

CREATE TABLE [warranty_claims_address] (
    [id_no] INT IDENTITY(1,1) NOT NULL,
    [company_name] VARCHAR(50) NULL,
    [address] VARCHAR(100) NULL,
    [city] VARCHAR(100) NULL,
    [state] VARCHAR(2) NULL,
    [zip_code] VARCHAR(15) NULL,
    [attention] VARCHAR(50) NULL,
    [warranty_type_id] INT NULL,
    [created_user] VARCHAR(20) NULL,
    [created_date] DATE NULL,
    [all_fabric] CHAR(2) NULL,
    [mesh_green] INT NULL,
    [solid_green] INT NULL,
    [mesh_color] INT NULL,
    [solid_color] INT NULL,
    [vinyl] INT NULL,
    CONSTRAINT [PK_warranty_claims_address] PRIMARY KEY ([id_no])
);
GO

CREATE TABLE [warranty_claims_type] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [warranty_type_code] VARCHAR(30) NOT NULL,
    [warranty_type_description] VARCHAR(100) NOT NULL,
    CONSTRAINT [PK_warranty_claims_type] PRIMARY KEY ([id])
);
GO

CREATE TABLE [warranty_detail] (
    [warranty_id] INT NOT NULL,
    [question_id] CHAR(10) NOT NULL,
    [answer] CHAR(255) NOT NULL,
    [modified_user] CHAR(255) NOT NULL,
    [modified_date] DATE NOT NULL,
    CONSTRAINT [PK_warranty_detail] PRIMARY KEY ([warranty_id], [question_id])
);
GO

CREATE TABLE [warranty_header] (
    [warranty_id] INT IDENTITY(1,1) NOT NULL,
    [order_no] INT NOT NULL,
    [ho_last_name] CHAR(50) NULL,
    [ho_middle_int] CHAR(50) NULL,
    [ho_first_name] CHAR(50) NULL,
    [ho_title] CHAR(10) NULL,
    [ho_address] CHAR(60) NULL,
    [ho_city] CHAR(50) NULL,
    [ho_state] CHAR(30) NULL,
    [ho_zip] CHAR(30) NULL,
    [installed_by] CHAR(50) NULL,
    [installed_date] DATE NULL,
    [comments] CHAR(250) NULL,
    [active] CHAR(1) NULL,
    [type] CHAR(1) NULL,
    [response_date] DATE NULL,
    [online] CHAR(1) NULL,
    [email] VARCHAR(50) NULL,
    [liner_extended_warranty] VARCHAR(2) NULL,
    [prep_id] INT NULL,
    [liner_extended_warranty_type] VARCHAR(10) NULL,
    [cancel_warranty] VARCHAR(1) NULL,
    [created_by] VARCHAR(25) NULL,
    [modified_by] VARCHAR(25) NULL,
    [date_created] DATE NULL,
    [date_modified] DATE NULL,
    [lew_amount] FLOAT NULL,
    [sent_consumer_letter] CHAR(2) NULL,
    CONSTRAINT [PK_warranty_header] PRIMARY KEY ([warranty_id])
);
GO

CREATE TABLE [warranty_header_preinvoiced] (
    [prep_id] INT NOT NULL,
    [ho_last_name] CHAR(50) NULL,
    [ho_middle_int] CHAR(50) NULL,
    [ho_first_name] CHAR(50) NULL,
    [ho_title] CHAR(10) NULL,
    [ho_address] CHAR(60) NULL,
    [ho_city] CHAR(50) NULL,
    [ho_state] CHAR(30) NULL,
    [ho_zip] CHAR(30) NULL,
    [type] CHAR(1) NULL,
    [active] CHAR(1) NULL,
    [email_address] CHAR(50) NULL,
    CONSTRAINT [PK_warranty_header_preinvoiced] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [warranty_question_master] (
    [question_id] CHAR(10) NOT NULL,
    [question_text] CHAR(255) NOT NULL,
    [active_year] INT NOT NULL,
    CONSTRAINT [PK_warranty_question_master] PRIMARY KEY ([question_id])
);
GO

CREATE TABLE [Warranty_Reasons] (
    [warranty_id] INT NOT NULL,
    [warranty_reason] CHAR(100) NOT NULL,
    [print_on_forms] INT NOT NULL,
    [active] INT NOT NULL,
    CONSTRAINT [PK_Warranty_Reasons] PRIMARY KEY ([warranty_id])
);
GO

CREATE TABLE [web] (
    [stock_id] FLOAT NULL,
    [product_id] FLOAT NULL,
    [description] CHAR(50) NULL,
    [manf_size] CHAR(255) NULL,
    [web_text] CHAR(100) NULL,
    [shape] CHAR(50) NULL,
    [sqft] FLOAT NULL,
    [base_cost] FLOAT NULL,
    [anchor_points] FLOAT NULL,
    [extensions] FLOAT NULL,
    [no_bows] FLOAT NULL,
    [bl] NUMERIC(16,2) NULL,
    [s_cw] NUMERIC(16,2) NULL,
    [s_cl] NUMERIC(16,2) NULL,
    [s_off] NUMERIC(16,2) NULL,
    [l_or_r] CHAR(2) NULL,
    [wall_a] NUMERIC(16,2) NULL,
    [wall_c] NUMERIC(16,2) NULL,
    [web_category] CHAR(10) NULL,
    [fence_skew_no] FLOAT NULL,
    [pool_wall_a] NUMERIC(16,2) NULL,
    [pool_wall_b] NUMERIC(16,2) NULL,
    [pool_wall_c] NUMERIC(16,2) NULL,
    [cw] NUMERIC(16,2) NULL,
    [cl] NUMERIC(16,2) NULL
);
GO

CREATE TABLE [web_deposit] (
    [id_number] INT IDENTITY(1,1) NOT NULL,
    [amount] FLOAT NOT NULL,
    [transaction_id] BIGINT NOT NULL,
    [approval_code] VARCHAR(100) NOT NULL,
    [prep_id] INT NULL,
    CONSTRAINT [PK_web_deposit] PRIMARY KEY ([id_number])
);
GO

CREATE TABLE [worksheet_que] (
    [id] INT IDENTITY(1,1) NOT NULL,
    [prep_id] FLOAT NULL,
    [entry_date] DATE NULL,
    [entry_time] TIME NULL,
    [print_date] DATE NULL,
    [print_time] TIME NULL,
    [print_log] CHAR(20) NULL,
    [printed] CHAR(1) NULL,
    CONSTRAINT [PK_worksheet_que] PRIMARY KEY ([id])
);
GO

CREATE TABLE [worksheet_que_custom] (
    [prep_id] INT NOT NULL,
    [print_date] DATE NULL,
    [print_time] TIME NULL,
    [printed] CHAR(2) NULL,
    [print_user] VARCHAR(20) NULL,
    [reviewed_job] VARCHAR(2) NULL,
    CONSTRAINT [PK_worksheet_que_custom] PRIMARY KEY ([prep_id])
);
GO

CREATE TABLE [wt_description] (
    [wt_id] INT NOT NULL,
    [description] VARCHAR(100) NOT NULL,
    CONSTRAINT [PK_wt_description] PRIMARY KEY ([wt_id], [description])
);
GO

CREATE TABLE [zip_Code_zone] (
    [id_number] INT NOT NULL,
    [zone_name] VARCHAR(200) NOT NULL,
    CONSTRAINT [PK_zip_Code_zone] PRIMARY KEY ([id_number])
);
GO

