
-- ============================================================
-- Load Bronze Layer
-- ============================================================
-- Script Purpose:
--     This script loads data from the source CSV files into
--     the Bronze layer tables and verifies the row counts.
--
-- MySQL Adaptation:
--     CSV ingestion is handled separately from the
--     bronze.load_bronze() stored procedure.
--
-- IMPORTANT:
--     Replace <PROJECT_PATH> below with the local path to
--     the project directory on your computer.
--
-- Example:
--     C:/Users/YourName/Documents/sql-data-warehouse-project
-- ============================================================


-- ============================================================
-- CRM: Customer Information
-- ============================================================

LOAD DATA LOCAL INFILE '<PROJECT_PATH>/datasets/raw/cust_info.csv'
INTO TABLE bronze.crm_cust_info
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT COUNT(*) AS crm_cust_info_count
FROM bronze.crm_cust_info;


-- ============================================================
-- CRM: Product Information
-- ============================================================

LOAD DATA LOCAL INFILE '<PROJECT_PATH>/datasets/raw/PRD_INFO.csv'
INTO TABLE bronze.crm_prd_info
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT COUNT(*) AS crm_prd_info_count
FROM bronze.crm_prd_info;


-- ============================================================
-- CRM: Sales Details
-- ============================================================

LOAD DATA LOCAL INFILE '<PROJECT_PATH>/datasets/raw/SALES_DETAILS.csv'
INTO TABLE bronze.crm_sales_details
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT COUNT(*) AS crm_sales_details_count
FROM bronze.crm_sales_details;


-- ============================================================
-- ERP: Location
-- ============================================================

LOAD DATA LOCAL INFILE '<PROJECT_PATH>/datasets/raw/LOC_A101.csv'
INTO TABLE bronze.erp_loc_a101
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT COUNT(*) AS erp_loc_a101_count
FROM bronze.erp_loc_a101;


-- ============================================================
-- ERP: Customer
-- ============================================================

LOAD DATA LOCAL INFILE '<PROJECT_PATH>/datasets/raw/CUST_AZ12.csv'
INTO TABLE bronze.erp_cust_az12
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT COUNT(*) AS erp_cust_az12_count
FROM bronze.erp_cust_az12;


-- ============================================================
-- ERP: Product Category
-- ============================================================

LOAD DATA LOCAL INFILE '<PROJECT_PATH>/datasets/raw/PX_CAT_G1V2.csv'
INTO TABLE bronze.erp_px_cat_g1v2
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT COUNT(*) AS erp_px_cat_g1v2_count
FROM bronze.erp_px_cat_g1v2;

