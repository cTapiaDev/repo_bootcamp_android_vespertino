/* Find the name and role of all employees who
have not been assigned to a building */
SELECT name, role, building
FROM employees
WHERE building IS NULL;


/* Find the names of the buildings that hold
no employees */
SELECT b.building_name, e.role
FROM buildings b
LEFT JOIN employees e
ON b.building_name = e.building
WHERE e.role IS NULL;