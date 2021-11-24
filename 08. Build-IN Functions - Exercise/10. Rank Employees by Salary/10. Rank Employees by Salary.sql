SELECT [EmployeeID],[FirstName],[LastName],[Salary], DENSE_RANK() OVER (PARTITION BY Salary Order By EmployeeID) AS [Rank]
FROM Employees
WHERE Salary>=10000 AND Salary<=50000
ORDER BY Salary DESC