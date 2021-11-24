
CREATE PROCEDURE usp_GetEmployeesSalaryAboveNumber (@inputSalary DECIMAL(18,4))
AS 
SELECT FirstName AS [First Name], LastName AS [Last Name]
FROM Employees
WHERE Salary>=@inputSalary

EXEC usp_GetEmployeesSalaryAboveNumber 48100 