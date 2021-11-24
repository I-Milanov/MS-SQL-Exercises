CREATE FUNCTION udf_AllUserCommits (@username VARCHAR(50))
RETURNS INT AS
BEGIN
DECLARE @commitCount INT = (SELECT COUNT(c.Id) 
FROM Users AS u
JOIN Commits AS c ON c.ContributorId = u.Id
WHERE @username = u.Username);
RETURN @commitCount
END