CREATE DATABASE superstore_db;
USE superstore_db;
CREATE TABLE superstore (
    row_id INT,
    order_id VARCHAR(20),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(10),
    region VARCHAR(20),
    product_id VARCHAR(20),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(200),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(4,2),
    profit DECIMAL(10,2)
);
SELECT COUNT(*) FROM superstore;
SELECT * FROM superstore LIMIT 10;
SELECT COUNT(DISTINCT order_id) FROM superstore;
TRUNCATE TABLE superstore;

SELECT COUNT(*) FROM superstore;

SELECT COUNT(DISTINCT order_id) AS total_orders
FROM superstore;


SELECT 
    category,
    ROUND(SUM(sales), 2) AS total_sales
FROM superstore
GROUP BY category
ORDER BY total_sales DESC;


SELECT 
    region,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY region
ORDER BY total_profit DESC;

SELECT SUM(sales) FROM superstore;


SELECT category, SUM(sales)
FROM superstore
GROUP BY category;


