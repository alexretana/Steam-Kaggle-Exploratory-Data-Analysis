# Kaggle Steam Purchase and Playtime Data Exploration

This repository is a quick project to explore this simple dataset provided by Kaggle user Tamber. Link to the Kaggle page/datase is [here](https://www.kaggle.com/tamber/steam-video-games/data)

The initially data manipulation is done in both Python using pandas data managing package and in SQL using a small SQLite server.
The executed SQL queries were posted as individual files. Although the two code should yield the same result, SQLite was limited in some of its aggregate function, and I didn't clean up the null values from the SQL generated CSV.

The SQLite server was spun up and interacted with using [DB Browser for SQLite](https://sqlitebrowser.org/)

I've decided to spin this into a Machine Learning project as well. Recommendation systems were building using different techiniques and methods, which also yielded different value.

The first Machine Learning solution built was a collaborative filtering method using cosine similarity and a sparse matrix of games played/purchased with all users as the rows, and all games as columns. Custom rating scores were experimented with, but in the end, the best result yielded out of 0-1 encoding of games played/purchased or not.

The second Machine learning solution built was a content based method utilizing countvectorization, tdidfvectorization, and cosine simularity. The final model was a hybrid of the two models averaged. Expected results of matching games with "same discription" together checked out.

The third Machine Learning solution built was a collaborative filtering method that utilizes a Deep Neural Network which takes user, and game as inputs, and outputs a prediciton of likeihood to play. Models were designed using Keras with Tensorflow backend. Various models were made and played around.

The final Machine Learning solution leveraged the modeling techniques used in notebook 5. It follows up the encoding method by investigating the transfromed respesentation of games and users, but using a clustering method, followed by Prinicipal Component Analysis.

# Notebooks

1.Steam-Exploratory-Data-Analysis-Reformat
2.Steam-Exploratory-Data-Analysis-Visualization
3.Steam-Exploratory-Data-Analysis-Collaborative-Filtering
4.Steam-Exploratory-Data-Analysis-Add-Data-From-Web-API
5.Collaborative-Filtering-with-Deep-Learning
6.Visualizing-Encoder-Using-PCA-and-Clustering

# Conclusion

Using this Steam dataset found on kaggle as well as some other additional APIs, Aggregate metrics were investigated and used to tell story. Following the data exploration, various prediction methods were used to create prototype recommendation system. Models can be evaultuated using train-test split, however, different models still derive different value and it is not a bad idea to utilize more than one recommendation system.s