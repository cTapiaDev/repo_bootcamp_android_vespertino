/*
    Crea una consulta que nos muestre el nombre
    y el apellido del actor en una sola columna,
    además, todas las películas en las que ha
    participado y la duración de cada una de
    ellas. Ordena los actores alfabéticamente.
*/
SELECT CONCAT(actor.first_name, ' ', actor.last_name) AS Nombre, film.title AS Pelicula, film.length AS Duración
FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON actor.actor_id = film_actor.actor_id
ORDER BY Nombre ASC;

SELECT CONCAT(a.first_name, ' ', a.last_name) Nombre, f.title Pelicula, f.length Duración
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON a.actor_id = fa.actor_id
ORDER BY Nombre;
--

/*
    Modifica la consulta anterior y muestra una
    pequeña tabla de dos columnas. La primera
    va a mantener el nombre y apellido del actor,
    pero la segunda ahora debe mostrar la
    cantidad de películas en las que participó. La
    tabla debe mostrar primero al actor que ha
    participado en la mayor cantidad de
    películas.
*/
SELECT CONCAT(actor.first_name, ' ', actor.last_name) AS Nombre, COUNT(film.title) AS Total
FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON actor.actor_id = film_actor.actor_id
GROUP BY Nombre
ORDER BY Total DESC;

SELECT CONCAT(a.first_name, ' ', a.last_name) Nombre, COUNT(f.title) Total
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON a.actor_id = fa.actor_id
GROUP BY Nombre
ORDER BY Total DESC;