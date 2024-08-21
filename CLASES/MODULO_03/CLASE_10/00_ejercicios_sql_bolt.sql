-- List all the Canadian cities and their populations
SELECT city, population
FROM north_american_cities
WHERE country = 'Canada'

/* Order all the cities in the United State
by their latitude from north to south */
SELECT city, latitude
FROM north_american_cities
WHERE country = "United States"
ORDER BY latitude DESC;

/* List all the cities west of Chicago, ordered from
west to eas */
SELECT city, longitude
FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude;

SELECT city, longitude
FROM north_american_cities
WHERE longitude < (SELECT longitude FROM north_american_cities WHERE city = 'Chicago')
ORDER BY longitude ASC;

/* List the two largest cities in Mexico 
(by population) */
SELECT city, population
FROM north_american_cities
WHERE country = 'Mexico'
ORDER BY population DESC
LIMIT 2;

/* List the third and fourth largest cities
(by population) in the United States and their
population */
SELECT city, population
FROM north_american_cities
WHERE country = 'United States'
ORDER BY population DESC
LIMIT 2, 2;

SELECT city, population
FROM north_american_cities
WHERE country = 'United States'
ORDER BY population DESC
LIMIT 2 OFFSET 2;