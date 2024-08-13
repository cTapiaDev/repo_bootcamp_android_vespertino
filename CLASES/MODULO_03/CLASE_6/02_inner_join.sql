-- INNER JOIN

-- 1:1
SELECT * FROM usuarios
INNER JOIN rut
ON usuarios.id_usuario = rut.fk_id_usuario;

SELECT nombre, rut
FROM usuarios
JOIN rut
ON usuarios.id_usuario = rut.fk_id_usuario;

SELECT nombre, rut FROM usuarios AS u
JOIN rut AS r
ON u.id_usuario = r.fk_id_usuario;
--

-- 1:N
SELECT empresas.nombre AS Empresa, usuarios.nombre AS Usuario
FROM usuarios
INNER JOIN empresas
ON usuarios.fk_id_empresa = empresas.id_empresa; 

SELECT e.nombre Empresa, u.nombre Usuario
FROM usuarios u
INNER JOIN empresas e
ON u.fk_id_empresa = e.id_empresa;
--

-- N:M
SELECT usuarios.nombre AS Usuario, lenguajes.nombre AS Lenguaje
FROM usuarios_lenguajes
INNER JOIN usuarios
ON usuarios_lenguajes.fk_id_usuario = usuarios.id_usuario
INNER JOIN lenguajes
ON usuarios_lenguajes.fk_id_lenguaje = lenguajes.id_lenguaje;

SELECT u.nombre Usuario, l.nombre Lenguaje
FROM usuarios_lenguajes ul
INNER JOIN usuarios u
ON ul.fk_id_usuario = u.id_usuario
INNER JOIN lenguajes l
ON ul.fk_id_lenguaje = l.id_lenguaje;
--