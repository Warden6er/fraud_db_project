-- ALTER TABLE fraud_tb
-- ADD COLUMN IF NOT EXISTS user_key INT,
-- ADD COLUMN IF NOT EXISTS transaction_key INT;


-- ALTER TABLE fraud_tb
-- ADD FOREIGN KEY (transaction_key) REFERENCES dim_transaction(transaction_key);


-- ALTER TABLE fraud_tb
-- ADD FOREIGN KEY (user_key) REFERENCES dim_user(user_key);
