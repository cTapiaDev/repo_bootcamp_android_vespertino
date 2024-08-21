/* List all movies and their combined sales in
millions of dollars */
SELECT title, (domestic_sales + international_sales) / 1000000 AS ventas_en_millones
FROM movies
JOIN boxoffice
ON movies.id = boxoffice.movie_id;

/* List all movies and their ratings in percent */
SELECT title, rating * 10 AS rating_porcentaje
FROM movies
JOIN boxoffice
ON movies.id = boxoffice.movie_id
ORDER BY boxoffice.rating DESC;


/* List all movies that were released on even
number years */
SELECT title, year
FROM movies
WHERE year % 2 = 0;