/* Find the domestic and international sales for
each movie */
SELECT m.Title, b.Domestic_sales, b.International_sales 
FROM movies m
INNER JOIN boxoffice b
ON m.id = b.movie_id

/* Show the sales numbers for each movie that
did better internationally rather than
domestically */
SELECT m.title, b.domestic_sales, b.international_sales
FROM movies m
JOIN boxoffice b
ON m.id = b.movie_id
WHERE b.international_sales > b.domestic_sales

/* List all the movies by their ratings 
in descending order */
SELECT m.title, b.rating
FROM movies m
JOIN boxoffice b
ON m.id = b.movie_id
ORDER BY rating DESC;