/*
- 2025-03-22
- Create a new database named 'DataWarehouse' (if exists, drop table and recreate)
- Create 3 schemas bronze, silber, gold
*/

USE master;

-- Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO


CREATE DATABASE DataWarehouse;
GO

USE DataWareHouse;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO


