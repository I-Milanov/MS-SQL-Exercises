Use [Geography]
Select [CountryName],[CountryCode],
CASE
WHEN CurrencyCode = 'EUR' THEN 'Euro'
ELSE 'Not Euro'
END AS Currency
FROM [dbo].[Countries]
ORDER BY CountryName