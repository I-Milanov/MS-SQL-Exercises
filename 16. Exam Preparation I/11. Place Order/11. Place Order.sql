CREATE PROCEDURE usp_PlaceOrder 
(
@jobID INT, 
@serialNumber VARCHAR(50),
@qty int)
AS
DECLARE @status VArCHAR(10)= (SELECT [Status] From Jobs WHERE @jobID=1)
DECLARE @partID VArCHAR(10)= (SELECT PartId From Parts WHERE SerialNumber=@serialNumber)


IF (@qty<=0)
THROW 50012, 'Part quantity must be more than zero!',1
Else IF(@status IS NULL)
THROW 50013, 'Job not found!',1
Else IF(@status='FInished')
THROW 50011, 'This job is not active!',1
ELSE IF(@partID IS NULL)
THROW 50014 , 'Part not found!',1

DECLARE @orderId INT=(SELECT OrderId From Orders Where JobId=@jobID)

IF (@orderId IS NULL)
BEGIN
	INsert INTO Orders (JobId,IssueDate) VALUES
	(@jobID,NULL)

	SET @orderId =(SELECT OrderId From Orders Where JobId=@jobID)
	INSERT INTO OrderParts(OrderId,PartId) VALUES
	(@orderID,@partID)
END
 
ELSE
BEGIN
	DECLARE @issueDate Date=(Select*From Orders Where OrderId=@orderId)
	if(@issueDate IS NULL)
	Insert INTO OrderParts (OrderId, PartId,Quantity) VALUES
	(@orderId,@partID,@qty)
	ELSE
	UPDATE OrderParts
	Set Quantity+=@qty
	WHERE OrderId=@orderId AND PartId=@partID
END
