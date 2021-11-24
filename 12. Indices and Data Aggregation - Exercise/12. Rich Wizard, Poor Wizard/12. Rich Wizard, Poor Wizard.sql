USE Gringotts
  SELECT Guest.Id ,
  Guest.FirstName AS [Host Wizard],
  Guest.DepositAmount AS [Host Wizard Deposit],
  Host.Id ,
  Host.FirstName  AS [Guest Wizard],
  Host.DepositAmount AS [Guest Wizard Deposit],
  Guest.DepositAmount-Host.DepositAmount AS [Difference]
  FROM WizzardDeposits As Guest
  JOIN WizzardDeposits AS Host ON Guest.Id+1=Host.Id


  SELECT 
  SUM(Guest.DepositAmount-Host.DepositAmount) AS [SumDifference]
  FROM WizzardDeposits As Guest
  JOIN WizzardDeposits AS Host ON Guest.Id+1=Host.Id