# Fraud Detection Database Project

## Project Overview
This project implements a **star-schema database** to manage and analyze synthetic fraud transaction data. The design ensures efficient storage, query performance, and data integrity, supporting analytics and reporting for fraud detection.

## Architecture
- **Staging Table**: Raw data imported from CSV, used for cleaning and transformation.
- **Dimension Tables**: 
  - `dim_user` – unique users with surrogate key `user_key`.
  - `dim_transaction` – unique transactions with surrogate key `transaction_key`.
- **Fact Table**: `fact_fraud` stores transaction metrics linked to dimensions through foreign keys.

## ETL Workflow
1. Load raw data into staging.
2. Deduplicate and populate dimension tables.
3. Populate fact table with proper foreign keys.
4. Validate uniqueness and referential integrity.
5. Drop staging after verification.

## Key Features
- **Star schema** for analytics.
- **Surrogate keys** for simplified joins.
- **Referential integrity** enforced via foreign keys.
- **Scalable, reproducible ETL** for large datasets.

## Outcome
A professional, clean, and normalized database ready for fraud analysis, reporting, or integration with BI tools.