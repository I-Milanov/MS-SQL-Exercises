CREATE FUNCTION ufn_CalculateFutureValue (@sum DECIMAL(15,2), @interestRate FLOAT , @years INT)
RETURNS DECIMAL(15,4)
AS
BEGIN
	DECLARE @Result DECIMAL(15,4)
	SET @Result = (@sum*POWER((1+@interestRate), @years))
	RETURN @Result
END

SELECT dbo.ufn_CalculateFutureValue(1000, 0.1, 5)