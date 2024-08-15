  
											--SAMPLE QUERIES

SELECT * FROM Movies
WHERE genre_id='2' --brings all action movies

SELECT * FROM Movies as m
LEFT JOIN Directors as d
ON m.director_id=d.id
WHERE director_id=3 --brings Quentin Tarantino movies

SELECT title as [Movie Name],imdb_rating as [imdb]
FROM Movies
ORDER BY imdb_rating DESC --lists all movies based on imdb_rating(highest rated movie would be on top)

SELECT * FROM Users as U
RIGHT JOIN Favorites as F
ON F.user_id=U.id
WHERE username='aaa' --which movies did the user aaa add their favorites?

SELECT DISTINCT m2.title, m2.genre_id
FROM Movies m1
JOIN Favorites f ON m1.id = f.movie_id
JOIN Movies m2 ON m1.genre_id = m2.genre_id
WHERE f.user_id = 1 
AND m2.id NOT IN (SELECT movie_id FROM Favorites WHERE user_id = 0); --recommend a new movie with the same genre as the user already added

SELECT m.title, COUNT(f.movie_id) AS favorite_count
FROM Favorites f
JOIN Movies m ON f.movie_id = m.id
GROUP BY f.movie_id, m.title
ORDER BY favorite_count DESC --in order to see which movie has been added to favorites by users

--CRUD Options
--Create: Adding new records.
--Read: Listing favorites/movies etc.
--Update: Updating movie infos.
--Delete: Deleting movie/favorite infos.









