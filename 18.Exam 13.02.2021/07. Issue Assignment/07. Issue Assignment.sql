SELECT i.[Id], CONCAT_WS(' : ',u.Username,i.Title) AS IssueAssignee
FROM Issues AS i
JOIN Users AS u ON u.ID=i.AssigneeId
Order BY i.Id DESC, IssueAssignee