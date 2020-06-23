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

SELECT *
FROM steam_user_aggregate_data_viasql