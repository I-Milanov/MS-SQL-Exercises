USE Geography
SELECT  c.CountryCode, COUNT(*) AS MountainRanges
FROM Countries as c
JOIN MountainsCountries AS mc ON mc.CountryCode=c.CountryCode
WHERE c.CountryCode IN('BG','RU','US')
GROUP BY c.CountryCode