USE SoftUni
SELECT TOP(10)FirstName, LastName, DepartmentID
FROM Employees AS emp
WHERE Salary>(	Select  AVG(Salary)
				From Employees
				WHERE DepartmentID=emp.DepartmentID
				GROUP BY DepartmentID)
ORDER BY DepartmentID