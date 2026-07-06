USE churn_analysis;

CREATE TABLE customers (
    RowNumber INT,
    CustomerId BIGINT,
    Surname VARCHAR(100),
    CreditScore INT,
    Geography VARCHAR(50),
    Gender VARCHAR(20),
    Age INT,
    Tenure INT,
    Balance DECIMAL(15,2),
    NumOfProducts INT,
    HasCrCard INT,
    IsActiveMember INT,
    EstimatedSalary DECIMAL(15,2),
    Exited INT
);
SELECT * FROM customers
LIMIT 10;

SELECT COUNT(*) AS total_customers
FROM customers;

SELECT 
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate
FROM customers;

SELECT 
    Geography,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers
FROM customers
GROUP BY Geography;

SELECT 
    Gender,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers
FROM customers
GROUP BY Gender;

SELECT 
    IsActiveMember,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers
FROM customers
GROUP BY IsActiveMember;

SELECT 
    Age,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers
FROM customers
GROUP BY Age
ORDER BY churned_customers DESC;

select user,host from mysql.user;
