CREATE PROCEDURE usp_GetHoldersWithBalanceHigherThan (@value DECIMAL(18,2))
AS
SELECT FirstName, LastName 
FROM AccountHolders AS ah
JOIN Accounts AS a ON a.AccountHolderId=ah.Id
GROUP BY ah.FirstName, ah.LastName
HAVING SUM(Balance)>@value
ORDER BY FirstName, LastName
