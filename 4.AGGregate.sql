SELECT ProductID FROM ORDERS
GROUP BY ProductID;
GO

SELECT COUNT(City) FROM ORDERS;
GO

SELECT COUNT(ID), SUM(Qty), SUM(Price*Qty) AS Total SUM
MIN(Price) AS Minimum Price, 
MAX(Price) AS Maximum Price,
AVG(Price) AS Average Price
FROM Orders
WHERE City IS NOT NULL
GROUP BY ProductID;

SELECT City, AVG(Qty*Price) AS AVG_Sales 
FROM Orders
GROUP BY City;