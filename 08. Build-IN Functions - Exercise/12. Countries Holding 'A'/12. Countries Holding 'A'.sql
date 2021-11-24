USE Geography
SELECT [CountryName] AS [Country Name], IsoCode AS [ISO Code]
FROM [dbo].[Countries]
WHERE CountryName LIKE('%a%a%a%')
ORDER BY [ISO Code]