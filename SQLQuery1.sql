
CREATE DATABASE TiendaZapatosDB;

USE TiendaZapatosDB;

CREATE TABLE Categorias (
    CategoriaId INT PRIMARY KEY IDENTITY,
    Nombre NVARCHAR(100) NOT NULL
);

CREATE TABLE Productos (
    ProductoId INT PRIMARY KEY IDENTITY,
    Nombre NVARCHAR(100) NOT NULL,
    Descripcion NVARCHAR(500),
    Precio DECIMAL(18, 2) NOT NULL,
    NombreImagen NVARCHAR(200),
    CategoriaId INT,
    NumeroZapato NVARCHAR(10),
    Color NVARCHAR(50),
    Material NVARCHAR(100),
    Stock INT,
    FOREIGN KEY (CategoriaId) REFERENCES Categorias(CategoriaId)
);

-- Insertar datos iniciales en la tabla de categorías
INSERT INTO Categorias (Nombre) VALUES
('Mujer'),
('Hombre'),
('Niño'),
('Niña');

-- Insertar datos iniciales en la tabla de productos
INSERT INTO Productos (Nombre, Descripcion, Precio, NombreImagen, CategoriaId, NumeroZapato, Color, Material, Stock) VALUES
('Zapato Deportivo Mujer Running', 'Zapato deportivo para mujer, diseñado para proporcionar comodidad y soporte durante las carreras y entrenamientos intensos.', 1149.99, 'imagen1', 1, '25', 'Negro', 'Cuero', 10),
('Zapato Casual Hombre Urban', 'Zapato casual para hombre, perfecto para el uso diario y combina con cualquier atuendo urbano.', 1159.99, 'imagen2', 2, '28', 'Cafe', 'Sintético', 15),
('Zapato Escolar Niño Confort', 'Zapato escolar para niño, fabricado con materiales resistentes para soportar el uso diario en la escuela.', 1129.99, 'imagen3', 3, '20', 'Negro', 'Tela', 20),
('Zapato de Fiesta Niña Brillante', 'Zapato elegante para niña, ideal para eventos especiales y fiestas, con un diseño brillante y atractivo.', 1239.99, 'imagen4', 4, '18', 'Rosa', 'Satén', 5),
('Zapato Formal Mujer Clásico', 'Zapato formal para mujer, ideal para oficinas y eventos importantes, diseñado con un estilo clásico y elegante.', 1569.99, 'imagen5', 1, '26', 'Negro', 'Cuero', 8),
('Bota Casual Hombre Invierno', 'Bota casual para hombre, perfecta para mantener los pies calientes durante el invierno.', 1679.99, 'imagen6', 2, '29', 'Marrón', 'Cuero', 12),
('Zapato Deportivo Niño Active', 'Zapato deportivo para niño, diseñado para brindar comodidad durante las actividades físicas y deportes.', 1134.99, 'imagen7', 3, '21', 'Azul', 'Sintético', 18),
('Sandalia de Verano Niña', 'Sandalia para niña, perfecta para los días calurosos de verano, con un diseño fresco y colorido.', 2124.99, 'imagen8', 4, '19', 'Amarillo', 'Goma', 10),
('Zapato Deportivo Mujer Fitness', 'Zapato deportivo para mujer, ideal para sesiones de gimnasio y actividades fitness, proporcionando un gran soporte.', 3154.99, 'imagen9', 1, '27', 'Rosa', 'Malla', 7),
('Mocasín Casual Hombre', 'Mocasín casual para hombre, adecuado para un look relajado pero elegante, con gran comodidad.', 2449.99, 'imagen10', 2, '27', 'Negro', 'Cuero', 10),
('Zapato Escolar Niño Adventure', 'Zapato escolar para niño, hecho para soportar aventuras y actividades intensas, con gran durabilidad.', 1132.99, 'imagen11', 3, '22', 'Gris', 'Cuero', 15),
('Zapato de Fiesta Niña Princesa', 'Zapato elegante para niña, con un diseño inspirado en princesas, ideal para eventos especiales.', 2144.99, 'imagen12', 4, '20', 'Blanco', 'Satén', 6),
('Zapato Deportivo Mujer Running Pro', 'Zapato deportivo avanzado para mujer, diseñado para corredoras profesionales, proporcionando máximo rendimiento.', 79.99, 'imagen13', 1, '28', 'Rojo', 'Cuero', 5),
('Bota de Trabajo Hombre', 'Bota resistente para hombre, diseñada para trabajos pesados y condiciones extremas, con gran durabilidad.', 1589.99, 'imagen14', 2, '30', 'Negro', 'Cuero', 10),
('Zapato Deportivo Niño Runner', 'Zapato deportivo para niño, perfecto para correr y jugar, con gran soporte y comodidad.', 1937.99, 'imagen15', 3, '23', 'Verde', 'Sintético', 12),
('Sandalia Elegante Niña', 'Sandalia elegante para niña, perfecta para ocasiones especiales, con un diseño delicado y atractivo.', 2529.99, 'imagen16', 4, '21', 'Plata', 'Goma', 8),
('Zapato Casual Mujer Elegance', 'Zapato casual para mujer, con un diseño elegante que se adapta a cualquier ocasión.', 3559.99, 'imagen17', 1, '24', 'Beige', 'Cuero', 9),
('Botín Casual Hombre', 'Botín casual para hombre, ideal para un look moderno y sofisticado, con gran comodidad.', 1169.99, 'imagen18', 2, '26', 'Gris', 'Cuero', 11),
('Zapato Deportivo Niño Explorer', 'Zapato deportivo para niño, diseñado para exploradores jóvenes, con gran durabilidad y comodidad.', 2339.99, 'imagen19', 3, '24', 'Rojo', 'Tela', 13),
('Zapato de Fiesta Niña Glamour', 'Zapato de fiesta para niña, con un diseño glamuroso y brillante, perfecto para eventos importantes.', 1049.99, 'imagen20', 4, '22', 'Dorado', 'Satén', 7);




SELECT * FROM Productos;
