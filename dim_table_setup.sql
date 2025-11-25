CREATE TABLE IF NOT EXISTS dim_transaction(
	transaction_id INT,
	transaction_type VARCHAR(20),
	is_fraud BOOL
);

INSERT INTO dim_transaction(transaction_id, transaction_type, is_fraud)
SELECT a.transaction_id, a.transaction_type, a.is_fraud
FROM fraud_tb as a;


CREATE TABLE IF NOT EXISTS dim_user(
	user_id INT,
	merchant_category VARCHAR(50),
	country VARCHAR(10)
);

INSERT INTO dim_user(user_id, merchant_category, country)
SELECT b.user_id, b.merchant_category, b.country
FROM fraud_tb AS b;


ALTER TABLE dim_transaction
ADD COLUMN IF NOT EXISTS hour INT;

INSERT INTO dim_transaction(hour)
SELECT d.hour
FROM fraud_tb as d;