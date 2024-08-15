START TRANSACTION;

INSERT INTO profesores (nombre, apellido, escuela, sueldo)
VALUES ('Juanito', 'Araya', 'Escuela D-25', 800000),
('Camila', 'Gaete', 'Escuela Z001', 1200000);

SELECT * FROM profesores;

COMMIT; -- Nos aseguramos que la transacción es valida.

--
START TRANSACTION;

INSERT INTO profesores (nombre, apellido, escuela, sueldo)
VALUES ('Javiera', 'Gallardo', 'Escuela 13', 700000);

ROLLBACK; -- Elimina todos los cambios realizados dentro de la transacción.

SELECT * FROM profesores;

--
START TRANSACTION;

DELETE FROM profesores 
WHERE idProfesor = 14;

DELETE FROM profesores 
WHERE idProfesor = 8;

SELECT * FROM profesores;

ROLLBACK;

SELECT * FROM profesores;