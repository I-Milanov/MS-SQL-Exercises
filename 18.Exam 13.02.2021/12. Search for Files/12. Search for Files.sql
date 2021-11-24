CREATE PROC usp_SearchForFiles(@fileExtension VARCHAR(10))
AS
SELECT Id,[Name],concat(Size,'KB') FROM Files
WHERE [Name] like '%'+@fileExtension
ORDER BY id,[Name],Size DESC