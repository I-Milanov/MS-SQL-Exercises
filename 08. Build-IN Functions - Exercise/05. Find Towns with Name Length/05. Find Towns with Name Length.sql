USE SoftUni
SELECT *
FROM Towns
WHERE LEN([Name]) IN(5,6) 
ORDER BY [Name]