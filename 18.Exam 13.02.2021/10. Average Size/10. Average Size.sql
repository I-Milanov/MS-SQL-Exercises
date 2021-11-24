Select Username, AVG(f.Size) AS Size
From Users AS u
JOIN Commits AS c ON c.ContributorId=u.Id
JOIN RepositoriesContributors AS rc ON rc.ContributorId=u.Id
JOIN Repositories AS r ON r.Id=rc.RepositoryId
JOIN Files AS f ON f.CommitId=c.Id
GROUP BY Username 
ORDER BY Size DESC, Username
