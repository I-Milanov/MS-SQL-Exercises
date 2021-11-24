Select j.JobId, ISNULL(SUM(p.Price*op.Quantity),0) as Total
FROM Jobs AS j
LEFT join Orders As o ON o.JobId=j.JobId
LEFT join OrderParts As op ON op.OrderId=o.OrderId
LEFT join Parts AS p ON p.PartId=op.PartId
Where  ([Status] = 'Finished')
GROUP BY j.JobId
Order By Total DESC, JobId 