SELECT title, description, length
FROM film
WHERE length = (
	SELECT MAX(length)
    FROM film);