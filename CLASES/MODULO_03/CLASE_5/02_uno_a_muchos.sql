CREATE TABLE empresa (
	id_empresa INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

ALTER TABLE usuario
ADD fk_id_empresa INT;

ALTER TABLE usuario
ADD CONSTRAINT fk_id_empresa
FOREIGN KEY(fk_id_empresa) REFERENCES empresa(id_empresa);