/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates the Bronze, Silver, and Gold databases
    used to organize the data warehouse layers.

    In MySQL, databases and schemas are equivalent.

WARNING:
    Running this script will permanently delete the Bronze,
    Silver, and Gold databases if they already exist.
=============================================================
*/

DROP DATABASE IF EXISTS bronze;
DROP DATABASE IF EXISTS silver;
DROP DATABASE IF EXISTS gold;

CREATE DATABASE bronze;
CREATE DATABASE silver;
CREATE DATABASE gold;
