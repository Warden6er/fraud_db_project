CREATE TABLE IF NOT EXISTS staging_fraud(
	transaction_id INT,
	user_id INT,
	amount DECIMAL,
	transaction_type VARCHAR(20),
	merchant_category VARCHAR(50),
	country VARCHAR(10),
	hour INT,
	device_risk_score DECIMAL,
	ip_risk_score DECIMAL,
	is_fraud BOOL
);

\copy staging_fraud(transaction_id, user_id, amount, transaction_type, merchant_category, country, hour, device_risk_score, ip_risk_score, is_fraud) 
FROM 'C"/Users/eboig/sql_project/synthetic_fraud_dataset.csv' 
DELIMITER ',' 
CSV HEADER;