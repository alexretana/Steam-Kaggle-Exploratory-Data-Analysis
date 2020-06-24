--Collects table data associated to purchases
CREATE VIEW Purchased_Steam_Data AS

SELECT "user-id" AS userid, "game-title" AS gametitle, "behavior-name" AS behaviorname, value
FROM 'steam-200k'
WHERE behaviorname = 'purchase';


--Collects table data associated to purchases
CREATE VIEW Played_Steam_Data AS
SELECT "user-id" AS userid, "game-title" AS gametitle, "behavior-name" AS behaviorname, value
FROM 'steam-200k'
WHERE behaviorname = 'play';


--Creates table that will act as subquery in the next query
CREATE VIEW Most_Played_Game_per_User AS

SELECT userid, max(value) AS most_hours, gametitle AS mostplayed_gametitle
FROM Played_Steam_Data
GROUP BY userid;


--Replicates the table created by the Python Script with limitations of SQLite
CREATE VIEW steam_user_aggregate_data_viasql AS

SELECT  purch.userid,
		count(purch.value) AS purchasedGameCount,
		count(played.value) AS playedGameCount, 
		sum(played.value) AS playedHoursCount, 
		count(played.value) / count(purch.value) AS percentLibraryPlayed,
		avg(played.value) AS playedHoursAvg,
		group_concat(purch.gametitle) AS purchasedGameTitlesList,
		group_concat(played.gametitle) AS playedGameTitlesList,
		mostplayed.mostplayed_gametitle AS mostPlayedGame,
		mostplayed.most_hours AS hoursOnMostPlayedGame
FROM Purchased_Steam_Data AS purch
LEFT JOIN Played_Steam_Data AS played
	ON purch.userid = played.userid
LEFT JOIN Most_Played_Game_per_User	AS mostplayed
	ON mostplayed.userid = purch.userid
GROUP BY purch.userid;

--Display final table
SELECT *
FROM steam_user_aggregate_data_viasql;