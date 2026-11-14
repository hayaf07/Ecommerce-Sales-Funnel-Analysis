# E-commerce Sales Funnel Analysis

## Project Overview

This project uses SQL to analyze e-commerce event data and explore customer purchasing behavior, marketing channel performance, and revenue metrics.

The goal is to understand how users interact with an e-commerce platform throughout their purchasing journey, identify differences between traffic sources, and evaluate selected revenue measures.

## Objectives

- Analyze customer activity across different stages of the purchasing funnel.
- Evaluate marketing channel performance using customer counts and conversion rates.
- Calculate key revenue-related metrics.
- Develop a better understanding of customer behavior through SQL-based analysis.

## Analysis

### 1. Customer Funnel Analysis

Examines the number of unique users who performed each of the following events:

- Page View
- Add to Cart
- Checkout Start
- Payment Information
- Purchase

This analysis provides an overview of customer participation at different stages of the purchasing journey.

### 2. Marketing Channel Analysis

Evaluates the performance of different traffic sources by examining:

- Total Viewers
- Total Purchasing Customers
- View-to-Purchase Conversion Rate

This helps compare how effectively different marketing channels attract visitors who eventually make purchases.

### 3. Revenue Analysis

Examines revenue performance using the following metrics:

- Revenue per Channel
- Revenue per Distinct Product
- Revenue per Purchasing Customer

These metrics provide an overview of revenue distribution and average revenue across selected dimensions.

## Tools & Technologies

- **SQL** – Data querying and analysis
- **PostgreSQL** – Database management
- **Supabase** – Database hosting and SQL environment
- **GitHub** – Project documentation and version control

## Repository Structure

```text
ecommerce-sales-funnel-analysis/
│
├── SQL/
│   ├── 01_customer_funnel.sql
│   ├── 02_marketing_channel_analysis.sql
│   └── 03_revenue_analysis.sql
│
├── Documentation/
│   ├── project_overview.md
│   └── data_dictionary.md
│
└── README.md
```

## Project Learning Outcomes

Through this project, I practiced:

- Writing SQL queries for analytical purposes.
- Using aggregate functions and conditional aggregation.
- Counting distinct users.
- Applying Common Table Expressions (CTEs).
- Calculating conversion rates and revenue metrics.
- Translating business questions into SQL queries.

## Author

An independent data analytics learning project developed to strengthen practical SQL and business data analysis skills.
