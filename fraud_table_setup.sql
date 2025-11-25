CREATE TABLE IF NOT EXISTS fraud_tb(
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

COPY fraud_tb(transaction_id, user_id, amount, transaction_type, merchant_category, country, hour, device_risk_score, ip_risk_score, is_fraud)
FROM 'Downloads/synthetic_fraud_dataset.csv'
DELIMITER ','
CSV HEADER;