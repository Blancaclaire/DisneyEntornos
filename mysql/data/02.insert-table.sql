
INSERT INTO PELICULAS (ID_PELICULAS, TITULO, ESTRENO, DURACION, DESCRIPCION)
VALUES 
('P006', 'Titanic', 1997, 195, 'Una historia de amor en el trágico viaje del Titanic.'),
('P007', 'The Lord of the Rings: The Fellowship of the Ring', 2001, 178, 'El inicio de una épica aventura en la Tierra Media.'),
('P008', 'Star Wars: A New Hope', 1977, 121, 'Un joven granjero se convierte en héroe intergaláctico.');


INSERT INTO CATEGORIAS (ID_CATEGORIAS, NOMBRE_CATEGORIA)
VALUES 
('C006', 'Romance'),
('C007', 'Ficción Épica'),
('C008', 'Space Opera');


INSERT INTO USUARIOS (NOMBRE, CORREO, CONTASEÑA, FECHA_REGISTRO)
VALUES 
('Mario Ruiz', 'mario.ruiz@email.com', 'securemario12', '2025-03-17'),
('Clara Gómez', 'clara.gomez@email.com', 'clarapass34', '2025-03-16');


INSERT INTO PELICULAS_CATEGORIAS (ID_PELICULAS, ID_CATEGORIAS)
VALUES 
('P006', 'C006'),
('P007', 'C007'),
('P008', 'C008');


INSERT INTO SAGAS (ID_SAGAS, NOMBRE, DESCRIPCION)
VALUES 
(5, 'The Lord of the Rings', 'La batalla entre el bien y el mal en la Tierra Media.'),
(6, 'Star Wars Original Trilogy', 'La lucha de la rebelión contra el imperio.');


INSERT INTO ACTORES (NOMBRE, NACIONALIDAD, FECHA_NACIMIENTO)
VALUES 
('Kate Winslet', 'Británica', '1975-10-05'),
('Elijah Wood', 'Americana', '1981-01-28'),
('Mark Hamill', 'Americana', '1951-09-25');


INSERT INTO ACTORES_PELICULAS (ID_PELICULAS, ID_ACTORES)
VALUES 
('P006', 6),
('P007', 7),
('P008', 8);


INSERT INTO FAVORITOS (ID_PELICULAS, ID_USUARIOS)
VALUES 
('P006', 4),
('P007', 5),
('P008', 3);
