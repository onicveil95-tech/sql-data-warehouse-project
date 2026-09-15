-- ============================================================
-- Stored Procedure: Load Bronze Layer
-- ============================================================
-- Script Purpose:
--     This stored procedure prepares the Bronze layer for data
--     loading by truncating the Bronze tables.
--     It also records load durations and handles SQL errors.
--
-- MySQL Adaptation:
--     MySQL does not allow LOAD DATA LOCAL INFILE inside stored
--     procedures. Therefore, CSV ingestion is handled separately
--     in load_bronze.sql.
--
-- Procedure:
--     bronze.load_bronze
--
-- Usage:
--     CALL bronze.load_bronze();
-- ============================================================

DELIMITER $$

DROP PROCEDURE IF EXISTS bronze.load_bronze $$

CREATE PROCEDURE bronze.load_bronze()
BEGIN

    DECLARE batch_start_time DATETIME;
    DECLARE batch_end_time DATETIME;
    DECLARE start_time DATETIME;
    DECLARE end_time DATETIME;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        GET DIAGNOSTICS CONDITION 1
            @error_message = MESSAGE_TEXT,
            @error_number = MYSQL_ERRNO;

        SELECT
            @error_number AS error_number,
            @error_message AS error_message;
    END;

    SET batch_start_time = NOW();

    SELECT 'Truncating table: bronze.crm_cust_info' AS message;

    SET start_time = NOW();

    TRUNCATE TABLE bronze.crm_cust_info;

    SET end_time = NOW();

    SELECT TIMESTAMPDIFF(SECOND, start_time, end_time)
        AS load_duration_seconds;

    #------------------------------------------------------------------------------------

    SELECT 'Truncating table: bronze.crm_prd_info' AS message;

    SET start_time = NOW();

    TRUNCATE TABLE bronze.crm_prd_info;

    SET end_time = NOW();

    SELECT TIMESTAMPDIFF(SECOND, start_time, end_time)
        AS load_duration_seconds;

    #------------------------------------------------------------------------------------

    SELECT 'Truncating table: bronze.crm_sales_details' AS message;

    SET start_time = NOW();

    TRUNCATE TABLE bronze.crm_sales_details;

    SET end_time = NOW();

    SELECT TIMESTAMPDIFF(SECOND, start_time, end_time)
        AS load_duration_seconds;

    #------------------------------------------------------------------------------------

    SELECT 'Truncating table: bronze.erp_loc_a101' AS message;

    SET start_time = NOW();

    TRUNCATE TABLE bronze.erp_loc_a101;

    SET end_time = NOW();

    SELECT TIMESTAMPDIFF(SECOND, start_time, end_time)
        AS load_duration_seconds;

    #------------------------------------------------------------------------------------

    SELECT 'Truncating table: bronze.erp_cust_az12' AS message;

    SET start_time = NOW();

    TRUNCATE TABLE bronze.erp_cust_az12;

    SET end_time = NOW();

    SELECT TIMESTAMPDIFF(SECOND, start_time, end_time)
        AS load_duration_seconds;

    #------------------------------------------------------------------------------------

    SELECT 'Truncating table: bronze.erp_px_cat_g1v2' AS message;

    SET start_time = NOW();

    TRUNCATE TABLE bronze.erp_px_cat_g1v2;

    SET end_time = NOW();

    SELECT TIMESTAMPDIFF(SECOND, start_time, end_time)
        AS load_duration_seconds;

    SET batch_end_time = NOW();

    SELECT TIMESTAMPDIFF(SECOND, batch_start_time, batch_end_time)
        AS total_load_duration_seconds;

END $$

DELIMITER ;


-- ============================================================
-- Execute Stored Procedure
-- ============================================================

CALL bronze.load_bronze();
