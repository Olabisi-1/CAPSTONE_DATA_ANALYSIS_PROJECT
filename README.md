# CUSTOMER_DATA_ANALYSIS

##Project Documentation for Sales Performance Analysis and Customer Segmentation
Project 1: Sales Performance Analysis for a Retail Store


1.## Project Objective
•	Analyze sales data to identify top-selling products, regional performance, and monthly sales trends.
•	Develop an interactive Power BI dashboard summarizing sales metrics.


2. ##Dataset
•	File Name: SalesData
•	Key Columns: Product, Region, OrderDate, Quantity, UnitPrice
•	Data Notes: The dataset provides product-specific sales details across regions and timeframes.


3. ##Tools Used
•	Excel: For data exploration, summary reports, and calculations.
•	MYSQL Server: Data querying and insight extraction.
•	Power BI: Visualization of findings.


4. ##Methodology and Steps
•	Excel Analysis:

o	Utilized pivot tables to calculate total sales by product, region, and month.

o	Used formulas to compute metrics like average sales per product and total regional revenue.

o	Added a Power Query column to categorize sales volume as Low (1–20 units), Medium (21–50), or High (>50) based on the [Unit Sold] column, as provided in the attachment instructions (LITA CAPSTONE DATASET_S…).


•	###MYSQL Analysis:

o	After importing the dataset into MYSQL Server, the following queries were run to generate insights:

o	Total Sales by Product Category:


###Code:

SELECT Product, SUM (Quantity * UnitPrice) AS TotalSales FROM SalesData GROUP BY Product;

o	Sales Transactions by Region:

######Code:
SELECT Region, COUNT(OrderID) AS SalesTransactions FROM SalesData GROUP BY Region;
o	Highest-Selling Product by Total Sales:

###Code:

SELECT Product, SUM (Quantity * UnitPrice) AS TotalSales FROM SalesData GROUP BY Product ORDER BY TotalSales DESC LIMIT 1;

o	Monthly Sales for Current Year:

###Code:
SELECT MONTH(OrderDate) AS Month, SUM (Quantity * UnitPrice) AS MonthlySales FROM SalesData WHERE YEAR(OrderDate) = 2023 GROUP BY Month;
o	Top 5 Customers by Purchase Amount:
Code:
SELECT CustomerId, SUM (Quantity * UnitPrice) AS TotalPurchase FROM SalesData GROUP BY CustomerId ORDER BY TotalPurchase DESC LIMIT 5;
o	Products with No Sales in the Last Quarter:
Code:
SELECT Product FROM InventoryData WHERE Product NOT IN (SELECT DISTINCT Product FROM SalesData WHERE OrderDate >= '2023-07-01' AND OrderDate <= '2023-09-30');
•	Power BI Dashboard:
o	Visualized insights from Excel and SQL analysis to include:
	Sales overview
	Top-performing products
	Regional sales distribution
	Monthly sales trends
6. Key Insights from Sales Performance Analysis
•	Top-Selling Product: Shoes had the highest sales at $3,087,500.
•	Regional Sales Contribution: The South region contributed the largest percentage of total sales at 44.16%.
•	Monthly Sales Trends: Highest monthly sales were recorded in February.
•	Top Customers: Customer Cus1488 had the highest purchase amount at $29,340.
________________________________________


