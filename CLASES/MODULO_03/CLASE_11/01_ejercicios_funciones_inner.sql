/* Find the number of movies each director has
directed */
SELECT director, COUNT(id) AS Num_peliculas_dirigidas
FROM movies
GROUP BY director
ORDER BY Num_peliculas_dirigidas DESC;

/* Find the total domestic and international sales
that can be attributed to each director */
SELECT m.director, SUM(b.domestic_sales) + SUM(b.international_sales) AS "Total de Ventas"
FROM movies m
JOIN boxoffice b
ON m.id = b.movie_id
GROUP BY director
ORDER BY "Total de Ventas" DESC;