/* Find the list of all buildings that have
employees */
SELECT DISTINCT building 
FROM employees;

/* Find the list of all buildings and their capacity */
SELECT building_name, capacity
FROM buildings;


/* List all buildings and the distinct employee
roles in each building (including empty
buildings) */
SELECT DISTINCT b.building_name, e.role 
FROM buildings b
LEFT JOIN employees e
ON b.building_name = e.building;