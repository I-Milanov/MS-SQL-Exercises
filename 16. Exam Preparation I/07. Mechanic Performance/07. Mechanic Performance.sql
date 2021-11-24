Select   CONCAT_WS(' ',[FirstName] ,[LastName]) AS Mechanic, AVG(DATEDIFF(DAY,IssueDate,FinishDate)) AS [Days]
FROM Mechanics AS m
Join Jobs AS j ON j.MechanicId=m.MechanicId
Where j.[Status]='Finished'
GROUP BY j.MechanicId,CONCAT_WS(' ',[FirstName] ,[LastName])
Order BY j.MechanicId
