-- Tabla Empresas
INSERT INTO empresas (nombre)
VALUES ('CornerShop'), ('Betterfly');

-- Tabla Usuarios
INSERT INTO usuarios (nombre, apellido, edad, email, fk_id_empresa)
VALUES ('Walter', 'White', 50, 'walterwhite@gmail.com', 1),
('Tony', 'Soprano', 45, 'tonysoprano@gmail.com', 2),
('Eleven', 'Hopper', 20, 'elevenhopper@gmail.com', 1),
('Dexter', 'Morgan', 35, 'dextermorgan@gmail.com', 1);

-- Tabla Rut
INSERT INTO rut (rut, fk_id_usuario)
VALUES (1234567689, 3),
(234567890, 4),
(345678901, 1),
(456789012, 2);

-- Tabla Lenguajes
INSERT INTO lenguajes (nombre)
VALUES ('Java'),
('Kotlin'),
('JavaScript'),
('Python'),
('C++');

-- Tabla Usuarios_Lenguajes
INSERT INTO usuarios_lenguajes (fk_id_usuario, fk_id_lenguaje)
VALUES (1, 1), (1, 2),
(2, 4),
(3, 2), (3, 3), (3, 4),
(4, 5), (4, 4);