SELECT * FROM Authors a
JOIN Books b
ON a.ID = b.AuthorId;
GO

SELECT * FROM Authors a
LEFT JOIN Books b
ON a.Id = b.AuthorId;
GO

SELECT * FROM Authors a
RIGHT JOIN Books b
ON a.Id = b.AuthorId;
GO

SELECT * FROM Authors a
FULL JOIN Books b
ON a.Id = b.AuthorId;
GO

SELECT * FROM Authors a
CROSS JOIN Books b;
GO

SELECT p.Lname, c.Name, ISNULL(t.Wins, 0) Wins
FROM Players p
CROSS JOIN Courts c
LEFT JOIN
(SELECT ps.PlayerID, COUNT(ps.Win) Wins, m.CourtID
FROM PlayerStats ps
JOIN Matches m
ON ps.MatchId = m.Id AND ps.Win = 1
GROUP BY ps.PlayerId, m.CourtId) t
ON t.PlayerId = p.ID AND t.CourtId = c.Id
ORDER BY p.LName;
GO







