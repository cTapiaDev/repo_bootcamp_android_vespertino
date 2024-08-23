CREATE VIEW vista_usuarios AS
SELECT nombre, apellido, edad
FROM usuarios;

SELECT * FROM vista_usuarios;

CREATE VIEW vistas_usuarios_lenguajes AS
SELECT CONCAT(u.nombre, ' ', u.apellido) AS Nombre, l.nombre AS Lenguaje
FROM usuarios_lenguajes AS ul
INNER JOIN usuarios AS u
ON ul.fk_id_usuario = u.id_usuario
INNER JOIN lenguajes AS l
ON ul.fk_id_lenguaje = l.id_lenguaje;

SELECT * FROM vistas_usuarios_lenguajes;