USE SoftUni
GO
CREATE VIEW V_EmployeeNameJobTitle AS
SELECT   CONCAT(FirstName,' ', ISNULL(MiddleName,''),' ', LastName) AS [Full Name] ,JobTitle
FROM Employees
GO
SELECT*FROM V_EmployeeNameJobTitle