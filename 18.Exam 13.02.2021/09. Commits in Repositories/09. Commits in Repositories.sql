SELECT TOP(5) r.Id,[Name], COUNT(*) AS CommitsCount FROM RepositoriesContributors AS rc
JOIN Repositories AS r ON rc.RepositoryId=r.Id
JOIN Commits AS c ON r.Id=c.RepositoryId
GROUP BY [Name], r.Id
ORDER BY CommitsCount DESC, r.Id, r.[Name]

Select *
FROM Commits
Select *
FROM Repositories
Select *
FROM RepositoriesContributors
Select *
FROM issues