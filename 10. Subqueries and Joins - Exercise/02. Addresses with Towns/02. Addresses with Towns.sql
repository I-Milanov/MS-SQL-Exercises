SELECT TOP(50) e.FirstName,e.LastName,[t].[Name] AS Town, AddressText
FROM Employees AS e
INNER JOIN Addresses AS a ON a.AddressID=e.AddressID
INNER JOIN Towns AS t ON t.TownID=a.TownID
ORDER BY  FirstName 
