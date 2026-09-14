/*
=============================================================
Create Database
=============================================================
Script Purpose:
    This script creates the 'datawarehouse' database used by
    the SQL Data Warehouse project.

    MySQL does not require separate schemas for the Bronze,
    Silver, and Gold layers because a MySQL database is
    equivalent to a schema.

WARNING:
    Running the DROP DATABASE statement will permanently delete
    the entire database and all data contained within it.

    Do not run this script against a database containing data
    you want to keep.
=============================================================
*/

-- Drop and recreate the database
DROP DATABASE IF EXISTS datawarehouse;

CREATE DATABASE datawarehouse;

-- Select the database
USE datawarehouse;
