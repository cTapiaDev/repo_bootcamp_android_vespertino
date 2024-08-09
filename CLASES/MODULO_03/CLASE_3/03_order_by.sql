SELECT Name
FROM city
WHERE CountryCode = 'CHL'
ORDER BY Name ASC;

SELECT Name
FROM city
WHERE CountryCode = 'CHL'
ORDER BY Name DESC;

SELECT Name, LifeExpectancy
FROM country
WHERE Continent = 'South America'
ORDER BY LifeExpectancy DESC;