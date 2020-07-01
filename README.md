# Kaggle Steam Purchase and Playtime Data Exploration

This repository is a quick project to explore this simple dataset provided by Kaggle user Tamber. Link to the Kaggle page/datase is [here](https://www.kaggle.com/tamber/steam-video-games/data)

The initially data manipulation is done in both Python using pandas data managing package and in SQL using a small SQLite server.
The executed SQL queries were posted as individual files. Although the two code should yield the same result, SQLite was limited in some of its aggregate function, and I didn't clean up the null values from the SQL generated CSV.

The SQLite server was spun up and interacted with using [DB Browser for SQLite](https://sqlitebrowser.org/)

I've decided to spin this into a Machine Learning project as well. I'm plan to make an game recommender given a list of owned games. But due to the scarce information from the kaggle dataset, I'm going to create model features by tapping into the steam WEB API to extract details about games. 

This two seperate apis were are going to be used, the [first](https://stackoverflow.com/questions/57441606/how-to-get-the-steam-appid-by-appname-in-steam-webapi) to retrive the appid of games, follow by this [second api](https://wiki.teamfortress.com/wiki/User:RJackson/StorefrontAPI) to get the details about the games.