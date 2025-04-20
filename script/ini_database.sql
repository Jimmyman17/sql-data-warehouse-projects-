/*
Create Database and Schemas
===================================================
Script Purpose :
    This script creates a database called 'DataWareHouse' after checking if it already exist.
    if the database existed it will be droped and a new one will be recreated. Additionally,
    the script setup three different schema within the database namely: 'Bronze', 'Silver', 
    and 'Gold'.

WARNING:
    Running this script will drop the entire DataWareHouse databasee if it exists.
    All data in the database will be permanently deleted.Proceed with caution and 
    ensure you have proper backups before running this script
*/
USE master;
GO 
-- Drop and recreate the 'DataWareHouse'
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWareHouse')
BEGIN
  ALTER DATABASE DateWareHouse SET SINGLE_USER WITH ROLLEBACK IMMEDIATE;
  DROP DATABASE DataWareHouse;
END
  GO

  --create the 'DataWareHouse' database 
CREATE DATABASE DataWareHouse;
GO 

USE DataWareHouse;
GO 

--create schema 
CREATE SCHEMA Bronze ;
GO

CREATE SCHEMA silver;
GO 

CREATE SCHEMA gold;
GO 
