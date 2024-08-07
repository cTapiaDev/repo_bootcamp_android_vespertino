SELECT *
FROM country
WHERE NOT Continent = 'South America';

SELECT *
FROM country
WHERE Continent = 'South America'
OR Continent = 'North America'
ORDER BY LifeExpectancy DESC;

SELECT *
FROM country
WHERE Continent = 'Oceania'
AND Region = 'Polynesia'
ORDER BY LifeExpectancy DESC;