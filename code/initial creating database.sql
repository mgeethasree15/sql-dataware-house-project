/*
-----------------------------------------------
Creating databases and schemas:
-----------------------------------------------
script: This creates new database "Datawarehouse"  after checking it is dropped entirely
or not if it needs to drop use DROP DATABASE datewarehouse and create a database with three schemas 
Bronze, silver and gold.
------------------------------------------------
warning : this script will drop everything and data will be deleted permanently so make sure  of everything 
before running this code.
------------------------------------------------
*/


# Here iam using MYSQL WORKBENCH for my code:

# Dropping a database named "Datawarehouse" if EXISTS and creating a new database called "Datawarehouse"

DROP DATABASE Datawarehouse;
CREATE DATABASE Datawarehouse;
USE Datawarehouse;

# Here we are creating schema for our database "Datawarehouse"  (# as creating another three databases)

    DROP IF SCHEMAS EXISTS:
    DROP SCHEMA bronze;
    DROP SCHEMA silver;
    DROP SCHEMA gold;

# CREATING NEW SCHEMAS:
    CREATE SCHEMA bronze;
    CREATE SCHEMA silver;
    CREATE SCHEMA gold;
