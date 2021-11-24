SELECT*
FROM(SELECT [EmployeeID],[FirstName],[LastName],[Salary], DENSE_RANK() OVER (PARTITION BY Salary Order By EmployeeID) AS [Rank]
FROM Employees
WHERE Salary>=10000 AND Salary<=50000
) AS Result
WHERE [Rank]=2
ORDER BY Salary DESC