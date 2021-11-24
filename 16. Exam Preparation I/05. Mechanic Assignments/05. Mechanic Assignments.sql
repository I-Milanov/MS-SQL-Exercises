SELECT CONCAT_WS(' ',[FirstName] ,[LastName]) AS Mechanic,j.Status,j.IssueDate
FROM Mechanics AS m
JOIN Jobs as j on j.MechanicID = m.MechanicId
ORDER BY m.MechanicId, j.IssueDate,j.JobId