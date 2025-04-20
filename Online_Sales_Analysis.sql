CREATE DATABASE online_sales_analysis;

-- Create Table

CREATE TABLE online_sales
			(
				Transaction_ID INT PRIMARY KEY,
                Date DATE,
                Product_Category VARCHAR(100),
                Product_Name VARCHAR(100),
                Units_Sold INT,
                Unit_Price FLOAT,
                Total_Revenue FLOAT,
                Region VARCHAR(100),
                Payment_Method VARCHAR(20)
            );

SELECT * FROM online_sales;

-- Monthly Sales Trend Analysis
SELECT 
    EXTRACT(YEAR FROM `DATE`) AS year,
    EXTRACT(MONTH FROM `DATE`) AS month,
    SUM(Total_Revenue) AS total_revenue,
    COUNT(DISTINCT Transaction_ID) AS total_orders
FROM 
    online_sales
GROUP BY 
    EXTRACT(YEAR FROM `DATE`), EXTRACT(MONTH FROM `DATE`)
ORDER BY 
    year, month;
    
-- Top Product Categories by Revenue
SELECT 
	Product_Category,
    ROUND(SUM(Total_Revenue), 2) AS total_revenue,
    SUM(Units_Sold) AS total_units
FROM
	online_sales
GROUP BY 
	Product_Category
ORDER BY 
	total_revenue DESC;

-- Region-wise Revenue
SELECT
	Region,
    ROUND(SUM(Total_Revenue), 2) AS total_revenue,
    COUNT(DISTINCT Transaction_ID) AS total_order
FROM
	online_sales
GROUP BY 
	Region
ORDER BY
	total_order;

-- Monthly Average Order Value (AOV)
SELECT 
    EXTRACT(YEAR FROM DATE) AS year,
    EXTRACT(MONTH FROM DATE) AS month,
    SUM(Total_Revenue) AS total_revenue,
    COUNT(DISTINCT Transaction_ID) AS total_orders,
    ROUND(SUM(Total_Revenue) * 1.0 / COUNT(DISTINCT Transaction_ID), 2) AS AOV
FROM 
    online_sales
GROUP BY 
    EXTRACT(YEAR FROM DATE), EXTRACT(MONTH FROM DATE)
ORDER BY 
    year, month;
    
-- Top 5 Best-Selling Products by Units Sold
SELECT
	Product_Name,
    SUM(Units_Sold) AS total_unit_sold,
    SUm(Total_Revenue) AS total_revenue
FROM	
	online_sales
GROUP BY 
	Product_Name
ORDER BY
	total_unit_sold
LIMIT 5;


-- Month-over-Month Revenue Growth (%)
WITH monthly_revenue AS (
    SELECT 
        EXTRACT(YEAR FROM `DATE`) AS year,
        EXTRACT(MONTH FROM `DATE`) AS month,
        SUM(Total_Revenue) AS revenue
    FROM 
        online_sales
    GROUP BY 
        EXTRACT(YEAR FROM `DATE`), EXTRACT(MONTH FROM `DATE`)
)
SELECT 
    year,
    month,
    revenue,
    LAG(revenue) OVER (ORDER BY year, month) AS prev_revenue,
    ROUND(
        100.0 * (revenue - LAG(revenue) OVER (ORDER BY year, month)) 
        / NULLIF(LAG(revenue) OVER (ORDER BY year, month), 0), 2
    ) AS mom_growth_percent
FROM 
    monthly_revenue;

-- Payment Method Preferences Across Regions
SELECT
	Region,
    Payment_Method,
    SUM(Total_Revenue) AS total_revenue,
    COUNT(DISTINCT Transaction_ID) AS total_order
FROM
	online_sales
GROUP BY
	Region, Payment_Method
ORDER BY
	Region, total_order DESC;

-- Top 5 Products by Revenue per Unit Sold (High-Margin)
SELECT	
	Product_Name,
    SUM(Units_Sold) AS total_units_sold,
    ROUND(SUM(Total_Revenue), 2) AS total_revenue,
    ROUND(SUM(Total_Revenue) / SUM(Units_Sold), 2) AS revenue_per_unit
    
FROM	
	online_sales
GROUP BY
	Product_Name
HAVING 
    SUM(Units_Sold) > 0
ORDER BY
	total_revenue 
LIMIT 5;







































