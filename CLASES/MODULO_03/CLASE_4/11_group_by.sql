SELECT IndepYear, COUNT(IndepYear) Total
FROM country
GROUP BY IndepYear
ORDER BY IndepYear DESC;