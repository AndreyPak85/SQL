SELECT * FROM Employees;

GO
SELECT TOP 10 * FROM Employees;

GO

SELECT * FROM Employees ORDER BY LName;
GO

SELECT * FROM Employees ORDER BY BirthDate DESC;
GO

SELECT Lname, Salary
INTO EmpSalaries FROM Employees;
GO
