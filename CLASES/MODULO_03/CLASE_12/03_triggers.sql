DELIMITER //
CREATE TRIGGER log_tabla_usuarios AFTER INSERT ON usuarios
FOR EACH ROW
BEGIN
	INSERT INTO acciones(accion)
    VALUES ("Nuevo usuario creado");
END //
DELIMITER ;

DROP TRIGGER log_tabla_usuarios;

DELIMITER //
CREATE TRIGGER log_tabla_usuarios AFTER INSERT ON usuarios
FOR EACH ROW
BEGIN
	INSERT INTO acciones(accion)
    VALUES (CONCAT("Usuario creado: ", NEW.nombre, " ", NEW.apellido, " - Edad: ", NEW.edad));
END //
DELIMITER ;