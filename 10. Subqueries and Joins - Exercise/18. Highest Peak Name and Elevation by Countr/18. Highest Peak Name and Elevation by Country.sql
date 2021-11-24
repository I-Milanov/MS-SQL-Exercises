SELECT TOP(5) Country, [Highest Peak Name],[Highest Peak Elevation],Mountain
FROM (
SELECT  c.CountryName AS Country,
ISNULL(p.PeakName,'(no mountain)') AS [Highest Peak Name] ,
ISNULL(MAX(p.Elevation),'0') AS [Highest Peak Elevation],
DENSE_RANK() OVER (PARTITION BY CountryName Order BY MAX(p.Elevation) DESC) AS Ranked,
ISNULL(m.MountainRange,'(no highest peak)') AS Mountain

FROM Countries AS C
LEFT JOIN MountainsCountries AS mc ON mc.CountryCode=c.CountryCode 
LEFT JOIN Mountains AS m ON m.Id = mc.MountainId
LEFT JOIN Peaks AS p ON p.MountainId=m.Id

GROUP BY CountryName, p.PeakName,p.Elevation, m.MountainRange ) AS k
WHERE Ranked = 1 


