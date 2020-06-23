CREATE VIEW Most_Played_Game_per_User AS

SELECT userid, max(value) AS most_hours, gametitle AS mostplayed_gametitle
FROM Played_Steam_Data
GROUP BY userid;

SELECT *
FROM Most_Played_Game_per_User