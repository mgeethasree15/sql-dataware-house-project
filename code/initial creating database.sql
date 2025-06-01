Here iam using MYSQL WORKBENCH for my code:

# Dropping a database named "Datawarehouse" if EXISTS and creating a new database called "Datawarehouse"

DROP DATABASE Datawarehouse;
CREATE DATABASE Datawarehouse;
USE Datawarehouse;

Here we are creating schema for our database "Datawarehouse"  (# as creating another three databases)
DROP IF SCHEMAS EXISTS:
    DROP SCHEMA bronze;
    DROP SCHEMA silver;
    DROP SCHEMA gold;

CREATING NEW SCHEMAS:
    CREATE SCHEMA bronze;
    CREATE SCHEMA silver;
    CREATE SCHEMA gold;
