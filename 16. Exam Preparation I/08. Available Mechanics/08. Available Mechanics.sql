SELECT  CONCAT_WS(' ', FirstName,LastName) AS Available
FROM Mechanics AS m
LEFT JOIN Jobs AS j ON j.MechanicId=m.MechanicId
WHERE j.JobId IS NULL OR 
(SELECT COUNT(JobId) FROM Jobs
WHERE [Status] <> 'Finished' AND MechanicId=m.MechanicId
GROUP BY MechanicId, [Status]) IS NULL

GROUP BY m.MechanicId, CONCAT_WS(' ', FirstName,LastName

