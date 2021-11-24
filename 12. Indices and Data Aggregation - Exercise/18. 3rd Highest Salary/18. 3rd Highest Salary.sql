USE SoftUni 
SELECT DISTINCT Result.DepartmentID,Result.Salary
FROM (
SELECT DepartmentID, Salary, DENSE_RANK() OVER(PARTITION BY DepartmentID ORDER BY SALARY DESC) AS Ranked 
FROM Employees ) AS Result 
WHERE Result.Ranked=3

