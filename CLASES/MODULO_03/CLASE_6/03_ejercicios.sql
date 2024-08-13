/*
    Utilizando la BBDD world, crea la consulta que
    permita obtener una lista con todos los países
    de Sudamérica y sus respectivas ciudades.
*/
SELECT country.Name AS Pais, city.Name AS Ciudad
FROM country
INNER JOIN city
ON country.Code = city.CountryCode
WHERE country.Continent = 'South America';

SELECT co.Name Pais, ci.Name Ciudad
FROM country co
JOIN city ci
ON co.Code = ci.CountryCode
WHERE co.Continent = 'South America';
--

/*
    Crea una consulta que retorne el nombre de
    cada País y el idioma oficial que lo representa.
*/
SELECT country.Name AS Pais, countrylanguage.Language AS Lenguaje
FROM country
INNER JOIN countrylanguage
ON country.Code = countrylanguage.CountryCode
WHERE countrylanguage.IsOfficial = 'T';

SELECT c.Name Pais, cl.Language Lenguaje
FROM country c
JOIN countrylanguage cl
ON c.Code = cl.CountryCode
WHERE cl.IsOfficial = 'T';
--

/*
    Utilizando la BBDD sakila, crea una tabla que
    muestre el nombre de todas las películas, el
    idioma en que se encuentra y la categoría a la
    que pertenece.
*/
SELECT film.title AS Titulo, language.name AS Lenguaje, category.name AS Categoría
FROM film
INNER JOIN language
ON film.language_id = language.language_id
INNER JOIN film_category
ON film.film_id = film_category.film_id
INNER JOIN category
ON film_category.category_id = category.category_id;

SELECT f.title Titulo, l.name Lenguaje, c.name Categoría
FROM film f
JOIN language l 
ON f.language_id = l.language_id
JOIN film_category fc
ON f.film_id = fc.film_id
JOIN category c
ON fc.category_id = c.category_id;