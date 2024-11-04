SELECT * FROM capstoneproject.salesdata_lita;
SELECT Product, sum(Quantity * UnitPrice) AS TotalSales
FROM salesdata_lita
GROUP BY Product;

SELECT Region, COUNT(OrderID) AS SalesTransactions
FROM salesdata_lita
GROUP BY Region;

SELECT Product, SUM(Quantity * UnitPrice) AS TotalSales
FROM salesdata_lita
GROUP BY Product
ORDER BY TotalSales DESC
LIMIT 1;

SELECT Product, SUM(Quantity * UnitPrice) AS TotalSales
FROM salesdata_lita
GROUP BY Product
ORDER BY TotalSales DESC;

SELECT MONTH(OrderDate) AS Month, SUM(Quantity * UnitPrice) AS MonthlySales
FROM salesdata_lita
WHERE YEAR(OrderDate) = 2023
GROUP BY Month;

SELECT `Customer Id`, SUM(Quantity * UnitPrice) AS TotalSales
FROM salesdata_lita
GROUP BY `Customer Id`
ORDER BY TotalSales DESC
LIMIT 5;

SELECT Region, (SUM(Quantity * UnitPrice) / (SELECT SUM(Quantity * UnitPrice) FROM salesdata_lita) * 100) AS SalesPercentage
FROM salesdata_lita
GROUP BY Region;

SELECT Region, Concat(round(SUM(Quantity * UnitPrice) / (SELECT SUM(Quantity * UnitPrice) FROM salesdata_lita) * 100, 2), '%') AS SalesPercentage
FROM salesdata_lita
GROUP BY Region;

SELECT Region, (SUM(Quantity * UnitPrice) / (SELECT SUM(Quantity * UnitPrice) FROM salesdata_lita) * 100) AS SalesPercentage
FROM salesdata_lita
GROUP BY Region;

