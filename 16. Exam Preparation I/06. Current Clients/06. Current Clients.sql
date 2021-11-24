Select  CONCAT_WS(' ',[FirstName] ,[LastName]) AS Client, DATEDIFF(DAY,IssueDate,'2017-04-24') AS [Days going], j.Status
FROM Clients AS c
JOIN [dbo].[Jobs] AS j on j.[ClientId]=c.[ClientId]
Where j.[Status]<>'Finished'
ORDER BY [Days going] DESC, c.ClientId
