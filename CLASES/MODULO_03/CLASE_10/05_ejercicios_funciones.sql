/* Find the longest time that an employee has
been at the studio */
SELECT MAX(years_employed), name, role 
FROM employees;

/* For each role, find the average number of
year employed by employees in that role */
SELECT role, name, AVG(years_employed) AS Promedio_Anio 
FROM employees
GROUP BY role;


/* Find the total number of employee years
worked in each building */
SELECT building, SUM(years_employed) AS total_anios_trabajados
FROM employees
GROUP BY building;