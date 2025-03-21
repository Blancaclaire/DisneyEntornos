CREATE TABLE IF NOT EXISTS SAGAS (
    ID_SAGA INT AUTO_INCREMENT PRIMARY KEY,
    NOMBRE VARCHAR(100) NOT NULL,
    DESCRIPCION VARCHAR(500) NOT NULL
);

CREATE TABLE IF NOT EXISTS PELICULAS (
    ID_PELICULAS VARCHAR(15) PRIMARY KEY,
    TITULO VARCHAR(100) NOT NULL,
    ESTRENO INT NOT NULL,
    DURACION INT NOT NULL,
    DESCRIPCION VARCHAR(500),
    ID_SAGA INT,
    CONSTRAINT FK_ID_SAGA FOREIGN KEY (ID_SAGA) REFERENCES SAGAS(ID_SAGA) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS CATEGORIAS(
    ID_CATEGORIAS VARCHAR(15) PRIMARY KEY,
    NOMBRE_CATEGORIA VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS ACTORES(
    ID_ACTORES INT AUTO_INCREMENT PRIMARY KEY,
    NOMBRE VARCHAR(100) NOT NULL,
    NACIONALIDAD VARCHAR(100) NOT NULL,
    FECHA_NACIMIENTO DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS PELICULAS_CATEGORIAS(
    ID_PELICULAS VARCHAR(15) NOT NULL,
    ID_CATEGORIAS VARCHAR(15) NOT NULL,
    PRIMARY KEY (ID_PELICULAS, ID_CATEGORIAS),
    FOREIGN KEY (ID_PELICULAS) REFERENCES PELICULAS(ID_PELICULAS) ON DELETE SET NULL,
    FOREIGN KEY (ID_CATEGORIAS) REFERENCES CATEGORIAS(ID_CATEGORIAS) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS ACTORES_PELICULAS(
    ID_PELICULAS VARCHAR(15) NOT NULL,
    ID_ACTORES INT NOT NULL,
    PRIMARY KEY(ID_PELICULAS, ID_ACTORES),
    FOREIGN KEY (ID_PELICULAS) REFERENCES PELICULAS(ID_PELICULAS) ON DELETE SET NULL,
    FOREIGN KEY (ID_ACTORES) REFERENCES ACTORES(ID_ACTORES) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS USUARIOS(
    ID_USUARIOS INT AUTO_INCREMENT PRIMARY KEY,
    NOMBRE VARCHAR(100) NOT NULL,
    CORREO VARCHAR(100) NOT NULL,
    CONTRASEÑA VARCHAR(100) NOT NULL,
    FECHA_REGISTRO DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS FAVORITOS(
    ID_FAVORITOS INT AUTO_INCREMENT PRIMARY KEY,
    ID_PELICULAS VARCHAR(15) NOT NULL,
    ID_USUARIOS INT NOT NULL,
    FOREIGN KEY (ID_PELICULAS) REFERENCES PELICULAS(ID_PELICULAS) ON DELETE SET NULL,
    FOREIGN KEY (ID_USUARIOS) REFERENCES USUARIOS(ID_USUARIOS) ON DELETE SET NULL
);

