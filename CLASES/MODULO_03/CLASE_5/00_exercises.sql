INSERT INTO peliculas (nombre, director, anio, duracion)
VALUES ("Bichos", "John Lasseter", 1998, 95),
("Ratatoulille", "Brad Bird", 2007, 115),
("Monsters University", "Dan Scanlon", 2013, 110),
("Valiente", "Brendan Chapman", 2012, 102),
("Toy Story 3", "Lee Unkrich", 2010, 103),
("Buscando a Nemo", "Andrew Stanton", 2003, 107),
("Los Increibles", "Brad Bird", 2004, 116),
("Toy Story", "John Lasseter", 1995, 81),
("Cars", "John Lasseter", 2006, 117),
("Toy Story 2", "John Lasseter", 1999, 93),
("Cars 2", "John Lasseter", 2011, 120),
("Monster, Inc.", "Pete Docter", 2001, 92),
("WALL-E", "Andrew Stanton", 2008, 104),
("Up", "Pete Docter", 2009, 101);

-- SELECTS

SELECT * FROM peliculas;

SELECT nombre FROM peliculas;

SELECT DISTINCT director FROM peliculas;

SELECT nombre, director FROM peliculas;

SELECT nombre, anio FROM peliculas;

SELECT *
FROM peliculas
WHERE id = 6;

SELECT * 
FROM peliculas
WHERE anio 
BETWEEN 2000 AND 2010
ORDER BY anio;

SELECT * FROM peliculas
WHERE NOT anio
BETWEEN 2000 AND 2010
ORDER BY anio;

SELECT nombre, anio
FROM peliculas
LIMIT 5;

SELECT nombre, anio
FROM peliculas
WHERE id < 6;

SELECT *
FROM peliculas
WHERE nombre LIKE 'Toy Story%';

SELECT *
FROM peliculas
WHERE director = 'John Lasseter';

SELECT *
FROM peliculas
WHERE director IN('John Lasseter');

SELECT *
FROM peliculas
WHERE NOT director = 'John Lasseter';

SELECT *
FROM peliculas
WHERE nombre LIKE 'WALL-%';

SELECT *
FROM peliculas
WHERE nombre LIKE 'WALL-_';

SELECT DISTINCT director
FROM peliculas
ORDER BY director ASC;

SELECT nombre, anio
FROM peliculas
ORDER BY anio DESC 
LIMIT 4;

SELECT *
FROM peliculas
ORDER BY nombre
LIMIT 5;

SELECT *
FROM peliculas
LIMIT 5, 5;

SELECT *
FROM peliculas
LIMIT 5 OFFSET 5;