# Online_Sales_Analysis_USING_SQL
An end-to-end SQL-based analysis of e-commerce sales data to uncover monthly trends, revenue patterns, and customer behavior. Includes aggregations, AOV, regional insights, and bonus business intelligence metrics to highlight data storytelling and analytical depth.

# 📊 Sales Trend Analysis – Data Analyst Internship (Task 6)

## 🚀 Objective

To analyze monthly sales trends from an e-commerce dataset and extract actionable business insights using SQL. The task focuses on aggregations and time-based groupings, with additional bonus and advanced analyses to demonstrate deeper analytical thinking.

---

## 🧠 Tools & Technologies

- SQL Workbench / PostgreSQL
- Python (Pandas for validation)
- GitHub for version control and submission

---

## 📁 Dataset Overview

The dataset represents transactional records from an online store. Key columns include:

- `Transaction ID` – Unique identifier per order  
- `Date` – Order date  
- `Product Name`, `Product Category` – Item details  
- `Units Sold`, `Unit Price`, `Total Revenue` – Sales metrics  
- `Region` – Customer region  
- `Payment Method` – Mode of transaction  

---

## ✅ Core Task: Monthly Sales Trend

Grouped data by `year` and `month` to compute:

- `Total Revenue` → `SUM(Total Revenue)`  
- `Total Orders` → `COUNT(DISTINCT Transaction ID)`

📂 Output: [`monthly_sales_trend.csv`](./monthly_sales_trend.csv)

---

## 🔍 Bonus Analyses

These analyses go beyond the task to uncover business-critical insights:

### 🏆 1. Top Product Categories
Highest revenue generators by category.

📂 [`top_product_categories.csv`](./top_product_categories.csv)

---

### 🥇 2. Top 5 Best-Selling Products
Based on total units sold — reveals customer favorites.

📂 *Included in SQL results*

---

### 🌍 3. Region-wise Revenue Breakdown
Compare sales across North America, Europe, and Asia.

📂 [`region_revenue.csv`](./region_revenue.csv)

---

### 💰 4. Monthly Average Order Value (AOV)
Indicates revenue efficiency per order.

📂 [`monthly_aov.csv`](./monthly_aov.csv)

---

### 📉 5. Month-over-Month Growth
Track sales momentum with dynamic percentage change.

📂 *Included in SQL output*

---

### 💳 6. Payment Preferences by Region
Understand how customers choose to pay across geographies.

📂 *Included in SQL output*

---

### 🧮 7. Revenue per Unit Sold
Highlights high-margin products with premium pricing.

📂 *Included in SQL output*

---

### 📆 8. Weekday vs Weekend Sales
Identifies peak performance windows for campaigns.

📂 [`weekday_vs_weekend.csv`](./weekday_vs_weekend.csv)

---

## 💡 Advanced Business Insights

These analyses simulate real-world business strategy use cases.

### 🛍️ Average Units per Order  
Helps understand customer buying behavior – bulk vs. single-item.

### 🛒 Product Category-wise AOV  
Shows which categories bring in the highest order value.

### 🌎 Product Preferences by Region  
Helps tailor regional marketing and inventory strategies.

📂 *Available via SQL output*

---

## 📤 Submission Contents

- ✅ `sales_analysis.sql` – All SQL scripts  
- ✅ All supporting CSVs (analysis outputs)  
- ✅ `README.md` – This file  
- ✅ GitHub repository structure (for easy review and navigation)

---

## 🧩 Key Learnings

- Effective use of **aggregations** and **grouping** in SQL  
- Applying **window functions** for time series trends  
- Creating **insight-driven** dashboards using raw sales data  
- Demonstrating **business impact** through clear communication

---

## 🙌 Final Notes

This task not only fulfills the core requirements but also delivers a deeper, real-world perspective on what data analysts do: convert raw numbers into stories that help drive decisions.

Thanks for reviewing!

