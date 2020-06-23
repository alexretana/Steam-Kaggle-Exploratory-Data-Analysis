CREATE VIEW Played_Steam_Data AS
SELECT "user-id" AS userid, "game-title" AS gametitle, "behavior-name" AS behaviorname, value
FROM 'steam-200k'
WHERE behaviorname = 'play';

SELECT *
FROM Played_Steam_Data