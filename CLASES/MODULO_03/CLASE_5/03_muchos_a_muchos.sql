CREATE TABLE lenguajes (
	id_lenguaje INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE usuario_lenguajes (
	id_usuarios_lenguajes INT AUTO_INCREMENT PRIMARY KEY,
    fk_id_usuario INT,
    fk_id_lenguaje INT,
    FOREIGN KEY(fk_id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY(fk_id_lenguaje) REFERENCES lenguajes(id_lenguaje),
    UNIQUE(fk_id_usuario, fk_id_lenguaje)
);