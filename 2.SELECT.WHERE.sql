SELECT * FROM Employees WHERE Salary = 10000;
GO

SELECT * FROM Employees Where Department='sales'
go

SELECT * FROM Employees Where BirthDate > '19900101';
go

SELECT * FROM Employees WHERE Department = 'sales' OR Department = 'supply';
GO

SELECT * FROM Employees
WHERE Department IN ('sales', 'law', 'supply');
GO

SELECT * FROM Employees
WHERE BirthDate BETWEEN '19900101' AND '19930101';
GO

SELECT * FROM Employees
WHERE Phone LIKE '063%';
GO

SELECT * FROM Employees
WHERE Salary IS NULL;
GO



