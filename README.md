# SQL Data Warehouse Project

A modern **SQL Server data warehouse** built using the **Medallion Architecture** to integrate ERP and CRM data, transform raw source data into an analytical data model, and generate SQL-based business insights.

---

## 📌 Project Overview

This project demonstrates the development of a modern data warehouse designed to consolidate sales data from multiple source systems and make it accessible for analytical reporting and business decision-making.

The project covers the complete data warehousing workflow, from **raw data ingestion and data cleansing to dimensional modeling and analytical reporting**.

### Key Areas

* **Data Architecture** — Designing a modern data warehouse using the **Medallion Architecture**, consisting of Bronze, Silver, and Gold layers.
* **ETL Pipelines** — Extracting, transforming, and loading data from source systems into the data warehouse.
* **Data Modeling** — Developing fact and dimension tables optimized for analytical queries.
* **Analytics & Reporting** — Creating SQL-based analyses and reports to generate actionable business insights.

---

## 🎯 Objective

Develop a modern data warehouse using **SQL Server** to consolidate sales data from multiple source systems, enabling reliable analytical reporting and informed business decision-making.

---

## 🏗️ Data Architecture

The warehouse follows a **Medallion Architecture** consisting of three layers:

| Layer         | Purpose                                                                                |
| ------------- | -------------------------------------------------------------------------------------- |
| 🥉 **Bronze** | Stores raw data imported directly from the source systems with minimal transformation. |
| 🥈 **Silver** | Cleans, standardizes, and integrates data from the different source systems.           |
| 🥇 **Gold**   | Contains business-ready data models designed for analytics and reporting.              |

**Data Flow:**

`ERP / CRM CSV Files → Bronze → Silver → Gold → Analytics & Reporting`

---

## 📂 Data Sources

The project uses two source systems provided as CSV files:

* **ERP (Enterprise Resource Planning)** — Contains business and operational data.
* **CRM (Customer Relationship Management)** — Contains customer-related data.

The data from both systems is integrated into a single analytical data model.

---

## 🔄 ETL & Data Engineering

The ETL process includes:

1. **Extract** data from the ERP and CRM CSV files.
2. **Load** the raw data into the Bronze layer.
3. **Clean and transform** the data in the Silver layer.
4. **Integrate** data from both source systems.
5. **Model** the transformed data into analytical fact and dimension tables.
6. **Load** the final business-ready data into the Gold layer.

---

## 🧩 Data Modeling

The Gold layer uses a **dimensional data model** designed to support analytical queries.

The model includes:

* **Fact tables** containing measurable business events and metrics.
* **Dimension tables** providing descriptive context for analysis.
* Relationships between facts and dimensions designed to simplify analytical querying.

The resulting model provides a user-friendly structure for reporting and business analysis.

---

## 🧹 Data Quality

Data quality issues are identified and resolved before the data is used for analysis.

This includes tasks such as:

* Handling missing or invalid values
* Standardizing data formats
* Removing duplicate records
* Resolving inconsistent values
* Validating relationships between datasets
* Ensuring appropriate data types

---

## 📊 Analytics & Reporting

Once the data warehouse is populated, SQL-based analytics are developed to generate business insights across several areas.

### Customer Behavior

Analyze customer activity and purchasing patterns to better understand customer behavior.

### Product Performance

Evaluate product sales and performance to identify high-performing and underperforming products.

### Sales Trends

Analyze sales patterns over time to identify trends and changes in business performance.

These analyses provide stakeholders with key business metrics that can support **strategic decision-making**.

---

## 📋 Project Scope

* Focus on the **latest available dataset**.
* Historical data tracking and historization are **outside the scope** of this project.
* Data originates from ERP and CRM CSV source files.
* SQL Server is used as the primary data warehouse platform.
* The final data model is designed primarily for analytical workloads.

---

## 📚 Documentation

The project includes documentation covering:

* Data architecture
* ETL processes
* Data transformations
* Data quality rules
* Data model and relationships
* Analytical queries
* Business insights

The goal is to make the warehouse understandable and usable for both **business stakeholders and analytics teams**.

---



---

## 🚀 Project Status

**In Development**

This project is being developed incrementally, beginning with source-data exploration and ingestion before progressing through the Bronze, Silver, and Gold layers and finally into analytics and reporting.
                              |
