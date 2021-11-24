USE Gringotts
SELECT DISTINCT Left(FirstName,1) as FirtstLetter
FROM WizzardDeposits
WHERE DepositGroup='Troll Chest'
ORDER BY FirtstLetter