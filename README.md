# SQLMovies
In this SQL project that I worked on, you can add new movies, directors, genres, users, and favorites. 
With the SQL query file, you can get an idea of which SQL queries might be used with this database. I also used dbdiagram.io to visually create a database diagram, which you can view. Additionally, I've included an Excel file to help you better understand the table structures.

Table Data Types:

Directors: id(int)
           name(varchar(100))
Favorites: id(int)
	   user_id(int)
	   movie_id(int)		

Genres:  id(int)
	 name (varchar(100))	
Movies: id(int)
	title(varchar(50))
	director_id(int)
	release_year(int)
	genre_id(int)
	imdb_rating(float)
	description(text)

Users:  id(int)
	username(varchar(10))
	email(varchar(255))
	password(varchar(255))

Relationships:

Movies/id(Primary Key),director_id(Foreign Key-Directors),genre_id(Foreign Key-Genres)
Genres/id(PK)
Directors/id(PK)
Users/id(PK)
Favorites/id(PK),user_id(FK-users),movie_id(FK-movies)
Movies-Directors -->One to Many
Movies-Genres-->One to Many
Users-Favorites-->Many to many
