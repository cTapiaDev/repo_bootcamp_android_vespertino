/* Find the number of Artist in the studio
(without a HAVING clause) */
SELECT role, COUNT(*) as Cantidad_de_artistas
FROM employees
WHERE role = "Artist";

/* Find the number of Employees of each role in
the studio */
SELECT role, COUNT(*)
FROM employees
GROUP BY role;

/* Find the total number of years employed by all
Engineers */
SELECT role, SUM(years_employed) AS "Años"
FROM employees
WHERE role = "Engineer"

SELECT role, SUM(years_employed) as años
FROM employees
GROUP BY role
HAVING role = "Engineer";