SELECT Id, LName, Salary,

CASE
	WHEN Salary >= 8000 THEN 'chief'
	WHEN Salary >= 5000 THEN 'manager'
	WHEN Salary IS NULL THEN 'unknown'
	ELSE 'worker'
END AS Position,

CASE
	WHEN Salary >= 8000 THEN 'chief'
	WHEN Salary >= 5000 THEN 'manager'
	WHEN Salary IS NULL THEN 'unknown'
END AS Position2

FROM Employees 
GO


SELECT Department FROM Employees
GROUP BY Department
HAVING Department LIKE 'L%';