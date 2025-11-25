CREATE TABLE fact_fraud AS
SELECT
    dt.transaction_key,
    du.user_key,
    sf.amount,
    sf.device_risk_score,
    sf.ip_risk_score
FROM staging_fraud AS sf
JOIN dim_transaction AS dt
    ON sf.transaction_id = dt.transaction_id
JOIN dim_user AS du
    ON sf.user_id = du.user_id;