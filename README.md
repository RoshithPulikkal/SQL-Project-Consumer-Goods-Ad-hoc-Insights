# SQL Project: Consumer Goods - Ad-hoc Insights for AtliQ Hardwares

This repository contains SQL queries and analysis developed as part of the Codebasics Data Analytics Bootcamp. The project focuses on providing ad-hoc business intelligence to **AtliQ Hardwares**, a rapidly growing global FMCG (Fast-Moving Consumer Goods) company.

## Project Goal
The primary goal of this project is to leverage SQL (MySQL) to extract actionable insights from AtliQ Hardwares' sales, product, and customer data. These insights aim to help the company make data-driven decisions related to market performance, product strategy, customer behavior, and overall sales optimization.

## Data Source
The dataset used for this project is a hypothetical consumer goods database provided by Codebasics, named `gdb023` (or `atliq_hardware_db`).

## Database Schema (gdb023 / atliq_hardware_db)

The database consists of six main tables. Here's a brief overview and key columns:

### 1. `dim_customer`
* **Purpose:** Contains customer-related demographic and channel data.
* **Key Columns:** `customer_code`, `customer`, `platform`, `channel`, `market`, `region`, `sub_zone`

### 2. `dim_product`
* **Purpose:** Stores product master data, including categorization.
* **Key Columns:** `product_code`, `division`, `segment`, `category`, `product`, `variant`

### 3. `fact_gross_price`
* **Purpose:** Holds the original selling price of each product before any deductions.
* **Key Columns:** `product_code`, `fiscal_year` (AtliQ Hardware's fiscal year starts in September), `gross_price`

### 4. `fact_manufacturing_cost`
* **Purpose:** Details the production cost for each product.
* **Key Columns:** `product_code`, `cost_year`, `manufacturing_cost`

### 5. `fact_pre_invoice_deductions`
* **Purpose:** Records discounts applied to products before invoice generation.
* **Key Columns:** `customer_code`, `fiscal_year`, `pre_invoice_discount_pct`

### 6. `fact_sales_monthly`
* **Purpose:** Contains monthly sales transaction data.
* **Key Columns:** `date` (monthly format), `product_code`, `customer_code`, `sold_quantity`, `fiscal_year`

## Problem Statements Addressed
This project aims to answer the following business questions for AtliQ Hardwares:

1.  List of markets where "Atliq Exclusive" operates in the APAC region.
2.  Percentage increase of unique products in 2021 vs. 2020.
3.  Report of unique product counts for each segment, sorted by product counts (descending).
4.  Segment with the most increase in unique products in 2021 vs 2020.
5.  Products with the highest and lowest manufacturing costs.
6.  Top 5 customers with average high pre-invoice discount percentage for FY2021 in the Indian market.
7.  Complete report of Gross sales amount for "Atliq Exclusive" for each month.
8.  Quarter of 2020 with the maximum total sold quantity.
9.  Channel contribution to gross sales in FY2021 and its percentage.
10. Top 3 products in each division by total sold quantity in FY2021.

## Technologies Used
* **Database:** MySQL
* **Data Analysis & Visualization:** Power BI
* **Presentation:** Microsoft PowerPoint

## Repository Structure
* `sql_queries/` : This directory will contain all the SQL query files, organized by problem statement.
    * `req1.sql`
    * `req2.sql`
    * ... (and so on for all 10 queries)
* `output_csv_files/` : This directory will contain screenshots of the SQL queries and their results.
* `README.md` : This file provides an overview of the project.

## How to Use / Run Queries
To execute these queries, you will need a MySQL client connected to a database loaded with the `gdb023` (or `atliq_hardware_db`) schema and data. Each `.sql` file in the `sql_queries/` directory contains a standalone query designed to answer its respective problem statement.

---

## Project Presentation
The insights derived from this project is presented through:
* **Visualizations:** Using Power BI.
* **Presentation Deck:** A PowerPoint presentation summarizing the key findings and recommendations.


This comprehensive approach aims to clearly demonstrate the data analysis process from raw data to actionable business intelligence.

---

## Author
* Roshith Pulikkal
    * [Project Portfolio website] [https://codebasics.io/portfolio/ROSHITH-PULIKKAL]
    * [LinkedIn Profile] [https://www.linkedin.com/in/roshith-pulikkal-9a173a332/]
