SELECT * FROM Matches
WHERE TournamentId = 
(SELECT ID FROM Tournaments WHERE Name = 'Wimbeldon');
GO

SELECT * FROM Matches
WHERE BirthDate = 
(SELECT MIN(BirthDate) FROM PlayerInfos)
GO

SELECT * FROM Courts
WHERE ID != ALL (SELECT CourtID FROM Matches);
GO

SELECT ID,
(SELECT Date FROM Matches m WHERE m.ID =ps.MatchID) Date,
(SELECT Lname FROM Players p WHERE p.ID = ps.PlayerID) Player,
Aces FROM PlayerStats ps;
GO

SELECT * FROM Players p
WHERE NOT EXISTS (SELECT * FROM PlayerStats ps WHERE ps.PlayerId = p.ID);

