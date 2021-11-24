CREATE PROCEDURE usp_GetEmployeesFromTown (@townName NVARCHAR(50))
AS
SELECT FirstName AS [First Name],LastName AS [Last Name]
FROM Employees AS e
JOIN Addresses AS a  ON a.AddressID=e.AddressID
JOIN Towns AS t ON t.TownID=a.TownID
WHERE t.Name=@townName 

EXECUTE usp_GetEmployeesFromTown 'Sofia'