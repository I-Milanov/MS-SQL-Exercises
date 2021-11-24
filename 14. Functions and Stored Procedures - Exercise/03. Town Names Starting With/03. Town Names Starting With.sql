CREATE PROCEDURE usp_GetTownsStartingWith (@StartChar NVARCHAR(50)) 
AS
SELECT [Name]
FROM Towns
WHERE [Name] LIKE @StartChar+'%'

EXEC usp_GetTownsStartingWith b