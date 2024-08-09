CREATE TABLE profesores1 (
	idProfesor INT,
    nombre VARCHAR(25),
    apellido VARCHAR(25),
    escuela VARCHAR(50),
    fecha_contratacion DATE,
    sueldo DOUBLE
);

CREATE TABLE profesores2 (
	idProfesor INT NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    escuela VARCHAR(50) NOT NULL,
    fecha_contratacion DATE,
    sueldo DOUBLE
);

CREATE TABLE profesores3 (
	idProfesor INT AUTO_INCREMENT,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    escuela VARCHAR(50) NOT NULL,
    fecha_contratacion DATE,
    sueldo DOUBLE,
    PRIMARY KEY(idProfesor)
);

CREATE TABLE profesores4 (
	idProfesor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    escuela VARCHAR(50) NOT NULL,
    fecha_contratacion DATE,
    sueldo DOUBLE,
    UNIQUE(idProfesor)
);

CREATE TABLE profesores (
	idProfesor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    escuela VARCHAR(50) NOT NULL,
    fecha_contratacion DATE,
    sueldo DOUBLE NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(idProfesor),
    CHECK(sueldo >= 500000)
);

CREATE TABLE profesores5 (idProfesor INT PRIMARY KEY AUTO_INCREMENT, nombre VARCHAR(25) NOT NULL, apellido VARCHAR(25) NOT NULL, escuela VARCHAR(50) NOT NULL, fecha_contratacion DATE, sueldo DOUBLE, UNIQUE(idProfesor));