-- Inserción en PELICULAS
INSERT INTO PELICULAS (ID_PELICULAS, TITULO, ESTRENO, DURACION, DESCRIPCION, ID_SAGA)
VALUES 
('P006', 'Titanic', 1997, 195, 'Una historia de amor en el trágico viaje del Titanic.', NULL),
('P007', 'The Lord of the Rings: The Fellowship of the Ring', 2001, 178, 'El inicio de una épica aventura en la Tierra Media.', 5),
('P008', 'Star Wars: A New Hope', 1977, 121, 'Un joven granjero se convierte en héroe intergaláctico.', 6);

-- Inserción en CATEGORIAS
INSERT INTO CATEGORIAS (ID_CATEGORIAS, NOMBRE_CATEGORIA)
VALUES 
('C006', 'Romance'),
('C007', 'Ficción Épica'),
('C008', 'Space Opera');

-- Inserción en USUARIOS
INSERT INTO USUARIOS (NOMBRE, CORREO, CONTRASEÑA, FECHA_REGISTRO)
VALUES 
('Mario Ruiz', 'mario.ruiz@email.com', 'securemario12', '2025-03-17'),
('Clara Gómez', 'clara.gomez@email.com', 'clarapass34', '2025-03-16');

-- Inserción en PELICULAS_CATEGORIAS
INSERT INTO PELICULAS_CATEGORIAS (ID_PELICULAS, ID_CATEGORIAS)
VALUES 
('P006', 'C006'),
('P007', 'C007'),
('P008', 'C008');

-- Inserción en SAGAS
INSERT INTO SAGAS (ID_SAGA, NOMBRE, DESCRIPCION)
VALUES 
(5, 'The Lord of the Rings', 'La batalla entre el bien y el mal en la Tierra Media.'),
(6, 'Star Wars Original Trilogy', 'La lucha de la rebelión contra el imperio.');

-- Inserción en ACTORES
INSERT INTO ACTORES (NOMBRE, NACIONALIDAD, FECHA_NACIMIENTO)
VALUES 
('Kate Winslet', 'Británica', '1975-10-05'),
('Elijah Wood', 'Americana', '1981-01-28'),
('Mark Hamill', 'Americana', '1951-09-25');

-- Inserción en ACTORES_PELICULAS
INSERT INTO ACTORES_PELICULAS (ID_PELICULAS, ID_ACTORES)
VALUES 
('P006', 1),
('P007', 2),
('P008', 3);

-- Inserción en FAVORITOS
INSERT INTO FAVORITOS (ID_PELICULAS, ID_USUARIOS)
VALUES 
('P006', 1),
('P007', 2),
('P008', 3);
