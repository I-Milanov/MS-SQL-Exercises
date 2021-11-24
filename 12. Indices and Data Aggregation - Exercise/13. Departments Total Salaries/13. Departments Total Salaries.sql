USE SoftUni

SELECT DepartmentID, Sum(Salary)
FROM Employees
GROUP BY DepartmentID