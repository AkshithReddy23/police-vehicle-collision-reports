/*
====================================================================================
CREATE DATABASE AND SCHEMAS
====================================================================================
This script creates a database name "VehicleCollisionReports" after checking if
it already exists. If the database exists, it will drop and recreates it. 
additionally, it creates 2 schemas within the database : 'bronze', 'silver', 'gold
*/


USE master;
GO

IF EXISTS( SELECT 1 FROM sys.databases WHERE name = 'VechileCollisionReports')
BEGIN 
	ALTER DATABASE VechileCollisionReports SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE VechileCollisionReports;
END;
GO

CREATE DATABASE VechileCollisionReports;

USE VechileCollisionReports;

CREATE SCHEMA bronze; /*this creates a bronze layer schema*/
GO
CREATE SCHEMA silver; /*this creates a silver layer schema*/
GO
CREATE SCHEMA gold; /*this creates a gold layer schema*/
