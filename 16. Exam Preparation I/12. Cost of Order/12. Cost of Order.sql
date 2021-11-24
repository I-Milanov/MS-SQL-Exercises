CREATE FUNCTION udf_GetCost (@jobID INT)
RETURNS DECIMAL (15,2)
AS 
BEGIN
DECLARE @result DECIMAL(15,2)
SET @result=(
SElECT Sum(p.Price=op.Quantity) AS totalSym
FRom Jobs as j
Join ORDERS AS o ON o.JobId=j.JobId
JOIN OrderParts As op ON op.OrderId= o.OrderId
JOIN Parts As p ON p.PartId=op.PartId
Where j.JobId=@jobID
Group BY j.JobId)

IF(@result IS NULL)
SET @result=0
RETURN @result
END