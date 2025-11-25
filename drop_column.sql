ALTER TABLE fraud_tb
DROP COLUMN transaction_id, 
DROP COLUMN transaction_type, 
DROP COLUMN is_fraud, 
DROP COLUMN hour;


ALTER TABLE fraud_tb
DROP COLUMN user_id, 
DROP COLUMN merchant_category, 
DROP COLUMN country; 
