-- ============================================================
-- CUSTOMER CHURN ANALYSIS
-- Tools: MySQL + Power BI
-- ============================================================

USE customer_churn;


-- 1. Total Customers
SELECT
    COUNT(*) AS total_customers
FROM customers;


-- 2. Total Churned Customers
SELECT
    COUNT(*) AS churned_customers
FROM customers
WHERE Churn = 'Yes';


-- 3. Overall Churn Rate
SELECT
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM customers;


-- 4. Churn Rate by Contract
SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY Contract
ORDER BY churn_rate DESC;


-- 5. Churn Rate by Tenure
SELECT
    CASE
        WHEN tenure <= 12 THEN '0–12 months'
        WHEN tenure <= 24 THEN '13–24 months'
        WHEN tenure <= 48 THEN '25–48 months'
        ELSE '49–72 months'
    END AS tenure_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY tenure_group
ORDER BY
    CASE tenure_group
        WHEN '0–12 months' THEN 1
        WHEN '13–24 months' THEN 2
        WHEN '25–48 months' THEN 3
        WHEN '49–72 months' THEN 4
    END;


-- 6. Churn Rate by Monthly Charges
SELECT
    CASE
        WHEN MonthlyCharges < 30 THEN 'Low (< ₹30)'
        WHEN MonthlyCharges <= 70 THEN 'Medium (₹30–₹70)'
        ELSE 'High (> ₹70)'
    END AS monthly_charges_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY monthly_charges_group
ORDER BY churn_rate DESC;


-- 7. Churn Rate by Gender
SELECT
    gender,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY gender;


-- 8. Churn Rate by Payment Method
SELECT
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;


-- 9. Churn Rate by Online Security
SELECT
    OnlineSecurity,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY OnlineSecurity
ORDER BY churn_rate DESC;


-- 10. Churn Rate by Tech Support
SELECT
    TechSupport,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY TechSupport
ORDER BY churn_rate DESC;


-- 11. Churn Rate by Online Backup
SELECT
    OnlineBackup,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY OnlineBackup
ORDER BY churn_rate DESC;


-- 12. Churn Rate by Device Protection
SELECT
    DeviceProtection,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY DeviceProtection
ORDER BY churn_rate DESC;


-- 13. Churn Rate by Multiple Lines
SELECT
    MultipleLines,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY MultipleLines
ORDER BY churn_rate DESC;


-- 14. Churn Rate by Internet Service
SELECT
    InternetService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY InternetService
ORDER BY churn_rate DESC;
