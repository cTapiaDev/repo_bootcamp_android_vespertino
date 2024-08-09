SELECT Name, Continent, LifeExpectancy
FROM country
WHERE Continent LIKE '% America'
ORDER BY LifeExpectancy DESC;

SELECT Name, Region, LifeExpectancy
FROM country
WHERE Region LIKE '% and %'
ORDER BY LifeExpectancy DESC;