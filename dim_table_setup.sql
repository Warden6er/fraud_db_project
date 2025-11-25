CREATE TABLE IF NOT EXISTS dim_transaction(
	transaction_key SERIAL PRIMARY KEY,
	transaction_id INT,
	transaction_type VARCHAR(20),
	merchant_category VARCHAR(50),
    hour INT,
	is_fraud BOOL
);

INSERT INTO dim_transaction(transaction_id, transaction_type, merchant_category, hour, is_fraud)
SELECT DISTINCT a.transaction_id, a.transaction_type, a.merchant_category, a.hour, a.is_fraud
FROM staging_fraud as a;



CREATE TABLE dim_user AS
SELECT DISTINCT ON (user_id) 
    user_id,
    country
FROM staging_fraud
ORDER BY user_id, country;

ALTER TABLE dim_user
ADD COLUMN user_key SERIAL PRIMARY KEY;
