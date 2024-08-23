DELIMITER //
CREATE PROCEDURE lenguajes_con_letra (IN letra CHAR)
BEGIN
	SELECT *
    FROM lenguajes
    WHERE nombre LIKE CONCAT('%', letra, '%');
END //
DELIMITER ;

CALL lenguajes_con_letra('i');

DROP PROCEDURE lenguajes_con_letra;

DELIMITER //
CREATE PROCEDURE usuarios_con_letra(IN letra CHAR, OUT numero INT)
BEGIN
	SELECT COUNT(*) INTO numero
    FROM usuarios
    WHERE nombre LIKE CONCAT('%', letra, '%');
END //
DELIMITER ;

CALL usuarios_con_letra('w', @cantidad_w);
CALL usuarios_con_letra('e', @cantidad_e);
CALL usuarios_con_letra('a', @cantidad_a);

SELECT @cantidad_w, @cantidad_e, @cantidad_a;