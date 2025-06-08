
/*
--------------------------------------------------------------------------------------------------
    DDL - Data definition Language - with DDL we create the bronze layers.
    This script will run the following code and will create the tables for the bronze layer.
    and drops the tables if already exists.
--------------------------------------------------------------------------------------------------
*/

-- Stored procedure for bronze layer
DROP PROCEDURE IF EXISTS bronze.load_info;

DELIMITER $$

CREATE PROCEDURE bronze.load_info()
BEGIN

DROP TABLE IF EXISTS bronze.crm_cust_info;
CREATE TABLE IF NOT EXISTS bronze.crm_cust_info (
    cst_id INT,
    cst_key VARCHAR(100),
    cst_firstname VARCHAR(100),
    cst_lastname VARCHAR(100),
    cst_martial_status VARCHAR(100),
    cst_gndr VARCHAR(100),
    cst_create_date DATE
);

DROP TABLE IF EXISTS bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info (
    prd_id INT,
    prd_key VARCHAR(100),
    prd_nm VARCHAR(100),
    prd_cost INT,
    prd_line VARCHAR(100),
    prd_start_dt DATE,
    prd_end_dt DATE
);           

DROP TABLE IF EXISTS bronze.crm_sales_details;
CREATE TABLE bronze.crm_sales_details (
    sls_ord_num VARCHAR(100),
    sls_prd_key VARCHAR(100),
    sls_cust_id INT,
    sls_order_dt INT,
    sls_ship_dt INT,
    sls_due_dt INT,
    sls_sales INT,
    sls_quantity INT,
    sls_price INT
);

DROP TABLE IF EXISTS bronze.erp_cust_az12;
CREATE TABLE bronze.erp_cust_az12 (
    CID VARCHAR(100),
    BDATE DATE,
    GEN VARCHAR(100)
);

DROP TABLE IF EXISTS bronze.erp_px_cat_g1v2;
CREATE TABLE bronze.erp_px_cat_g1v2 (
    ID VARCHAR(100),
    CAT VARCHAR(100),
    SUBCAT VARCHAR(100),
    MAINTENANCE VARCHAR(100)
);
                      
DROP TABLE IF EXISTS bronze.erp_loc_a101;
CREATE TABLE bronze.erp_loc_a101(
    CID VARCHAR(100),
    CNTRY VARCHAR(100)
);

END $$

  


