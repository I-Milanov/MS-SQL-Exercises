SELECT Id,[Name],CONCAT(Size,'KB')AS Size
FROM Files
WHERE Id Not IN (Select DISTINCT ParentId From Files)
ORDER BY Files.Size DESC

SELECT Id,[Name],CONCAT(Size,'KB')AS Size
FROM Files
WHERE Id Not IN (1,2,3,4,5,7,8,9,10,11,13,14,15,16,20,21,22,24,25,26,27,28,30,47)
ORDER BY Id, Files.Size DESC
