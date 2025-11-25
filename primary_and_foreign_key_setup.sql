ALTER TABLE dim_transaction
ADD COLUMN transaction_key SERIAL PRIMARY KEY;


ALTER TABLE dim_user
ADD COLUMN user_key SERIAL PRIMARY KEY;


ALTER TABLE fraud_tb
ADD COLUMN IF NOT EXISTS user_key SERIAL,
ADD COLUMN IF NOT EXISTS transaction_key SERIAL;


ALTER TABLE fraud_tb
ADD FOREIGN KEY (transaction_key) REFERENCES dim_transaction(transaction_key);


ALTER TABLE fraud_tb
ADD FOREIGN KEY (user_key) REFERENCES dim_user(user_key);
