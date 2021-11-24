CREATE FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4)) 
RETURNS VARCHAR(50)
AS
BEGIN
DECLARE @result VARCHAR(50)
IF(@salary<30000)
 SET @result='Low'
ELSE IF (@salary>=30000 AND @salary<=50000  )
SET @result='Average'
ELSE
SET @result='High'

RETURN @result;
END


SELECT ufn_GetSalaryLevel(Salary) 
FROM Employees