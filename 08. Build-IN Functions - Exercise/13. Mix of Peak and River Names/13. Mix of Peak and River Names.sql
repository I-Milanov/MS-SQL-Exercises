USE Geography
SELECT PeakName, RiverName, LOWER(CONCAT(LEFT(PeakName,LEN(PeakName)-1),RiverName)) AS Mix
FROM Peaks, Rivers
WHERE Right(PeakName,1)=LEFT (RiverName,1)
ORDER BY Mix