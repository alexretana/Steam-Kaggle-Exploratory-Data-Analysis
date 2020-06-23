CREATE VIEW Purchased_Steam_Data AS

SELECT "user-id" AS userid, "game-title" AS gametitle, "behavior-name" AS behaviorname, value
FROM 'steam-200k'
WHERE behaviorname = 'purchase';

SELECT *
FROM Purchased_Steam_Data