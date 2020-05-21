SELECT Name FROM Customers
UNION 
SELECT Fullname FROM Suppliers
GO

SELECT ID, Name FROM Customers
UNION
SELECT Id, Fullname FROM Suppliers;
GO

SELECT Name, Mobile, Email FROM Customers
UNION
SELECT FullName, Phone, 'No Email' FROM Suppliers;
GO

SELECT Name, Mobile, Email FROM Customers
UNION 
SELECT Fullname, Phone, Address + ', ' + City FROM Suppliers;
GO

SELECT Name FROM Customers
UNION ALL
SELECT FullName FROM Suppliers;
GO

SELECT Name FROM Customers
INTERSECT
SELECT FullName FROM Suppliers;
GO


(SELECT Name FROM Customers
EXCEPT
SELECT FullName FROM Suppliers)
GO