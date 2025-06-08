/*
---------------------------------------------------------------
Stored Procedure : Load the data into bronze layer.
---------------------------------------------------------------
Script: This store procedure stores the loaded data in it.
        Data will be imported from csv files.
        perfomed TRUNCATE before inserting the data.
        copys the path file to import the data into tables.
        using "LOAD DATA FILE" Query.
Calling store procedure using function CALL bronze.load_info();
-----------------------------------------------------------------
*/
-- Start time
SET @start_time = NOW();

-- Load cust_info
TRUNCATE TABLE bronze.crm_cust_info;
LOAD DATA LOCAL INFILE '/Users/geetha/Documents/datawarehouse-project/data/cust_info.csv'
INTO TABLE bronze.crm_cust_info
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Load prd_info
TRUNCATE TABLE bronze.crm_prd_info;
LOAD DATA LOCAL INFILE '/Users/geetha/Documents/datawarehouse-project/data/prd_info.csv'
INTO TABLE bronze.crm_prd_info
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Load sales_details
TRUNCATE TABLE bronze.crm_sales_details;
LOAD DATA LOCAL INFILE '/Users/geetha/Documents/datawarehouse-project/data/sales_details.csv'
INTO TABLE bronze.crm_sales_details
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Load erp_cust_az12
TRUNCATE TABLE bronze.erp_cust_az12;
LOAD DATA LOCAL INFILE '/Users/geetha/Documents/datawarehouse-project/data/CUST_AZ12.csv'
INTO TABLE bronze.erp_cust_az12
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Load erp_loc_a101
TRUNCATE TABLE bronze.erp_loc_a101;
LOAD DATA LOCAL INFILE '/Users/geetha/Documents/datawarehouse-project/data/LOC_A101.csv'
INTO TABLE bronze.erp_loc_a101
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Load erp_px_cat_g1v2
TRUNCATE TABLE bronze.erp_px_cat_g1v2;
LOAD DATA LOCAL INFILE '/Users/geetha/Documents/datawarehouse-project/data/PX_CAT_G1V2.csv'
INTO TABLE bronze.erp_px_cat_g1v2
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- End time
SET @end_time = NOW();

-- Show duration
SELECT CONCAT('>> Load Duration: ', TIMESTAMPDIFF(SECOND, @start_time, @end_time), ' seconds') AS message;



CALL bronze.load_info();
