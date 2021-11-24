SELECT p.PartId,
	p.[Description], 
	pn.Quantity As [Required],
	p.StockQty AS [In Stock] , 
	IIF(o.Delivered=0,op.Quantity,0) AS Ordered

From Parts AS p
LEFT JOIN PartsNeeded AS pn ON pn.PartId=p.PartId
Left JOIN OrderParts As op ON op.[PartId] = p.PartId
LEFT JOIN Jobs As j ON j.JobId=pn.JobId
LEFT JOIN Orders AS o ON o.OrderId= op.OrderId
Where j.[Status]!='Finished' AND p.StockQty+ IIF(o.Delivered=0,op.Quantity,0)<pn.Quantity

Order BY p.PartId