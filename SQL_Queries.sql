# Create Database

CREATE DATABASE ecommerce_sales;

USE ecommerce_sales;


# View Dataset

SELECT * FROM superstore LIMIT 10;


# Total Sales Analysis

SELECT 
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore;


# Total Profit Analysis

SELECT 
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore;


# Region-wise Sales Analysis

SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;


# Category-wise Sales Analysis

SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;


# Top 10 Products by Sales

SELECT 
    `Product Name`,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;


# Monthly Sales Trend Analysis

SELECT 
    YEAR(STR_TO_DATE(`Order Date`, '%d/%m/%Y')) AS Order_Year,
    MONTH(STR_TO_DATE(`Order Date`, '%d/%m/%Y')) AS Order_Month,
    ROUND(SUM(Sales), 2) AS Monthly_Sales
FROM superstore
GROUP BY Order_Year, Order_Month
ORDER BY Order_Year, Order_Month;


# Top 10 Customers by Sales

SELECT 
    `Customer Name`,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;


# Profit by Category Analysis

SELECT 
    Category,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;