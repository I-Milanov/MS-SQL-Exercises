SELECT COUNT(*)
FROM Countries AS c
LEFT JOIN MountainsCountries AS mc ON mc.CountryCode=c.ContinentCode
WHERE mc.MountainId IS NULL