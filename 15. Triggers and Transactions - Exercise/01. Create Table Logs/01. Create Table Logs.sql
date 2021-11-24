CREATE TRIGGER tr_InsertAccountInfo ON Accounts FOR UPDATE
AS
DECLARE @newSum DECIMAL (15,2) = (SELECT Balance FROM inserted)
DECLARE @oldSum DECIMAL (15,2) = (SELECT Balance FROM deleted)
DECLARE @accountId INT = (SELECT Id FROM deleted)

INSERT INTO Logs(AccountId,NewSum,OldSum) VALUES
(@accountId,@newSum,@oldSum)

UPDATE Accounts
SET Balance+=10
WHERE Id=1


SELECT * FROM Accounts WHERE ID =1

--CREATE TABLE Logs 
--(
--LogId INT IDENTITY,
--AccountId INT,
--OldSum DECIMAL(15,2),
--NewSum DECIMAL(15,2)
--CONSTRAINT PK_Logs PRIMARY KEY,
--CONSTRAINT FK_Peaks_Accounts FOREIGN KEY (AccountId)REFERENCES dbo.Accounts(Id)
--)

