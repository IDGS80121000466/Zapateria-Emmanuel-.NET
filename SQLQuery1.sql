
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

-- Insertar datos iniciales en la tabla de categor�as
INSERT INTO Categorias (Nombre) VALUES
('Mujer'),
('Hombre'),
('Ni�o'),
('Ni�a');

-- Insertar datos iniciales en la tabla de productos
INSERT INTO Productos (Nombre, Descripcion, Precio, NombreImagen, CategoriaId, NumeroZapato, Color, Material, Stock) VALUES
('Zapato Deportivo Mujer Running', 'Zapato deportivo para mujer, dise�ado para proporcionar comodidad y soporte durante las carreras y entrenamientos intensos.', 1149.99, 'imagen1', 1, '25', 'Negro', 'Cuero', 10),
('Zapato Casual Hombre Urban', 'Zapato casual para hombre, perfecto para el uso diario y combina con cualquier atuendo urbano.', 1159.99, 'imagen2', 2, '28', 'Cafe', 'Sint�tico', 15),
('Zapato Escolar Ni�o Confort', 'Zapato escolar para ni�o, fabricado con materiales resistentes para soportar el uso diario en la escuela.', 1129.99, 'imagen3', 3, '20', 'Negro', 'Tela', 20),
('Zapato de Fiesta Ni�a Brillante', 'Zapato elegante para ni�a, ideal para eventos especiales y fiestas, con un dise�o brillante y atractivo.', 1239.99, 'imagen4', 4, '18', 'Rosa', 'Sat�n', 5),
('Zapato Formal Mujer Cl�sico', 'Zapato formal para mujer, ideal para oficinas y eventos importantes, dise�ado con un estilo cl�sico y elegante.', 1569.99, 'imagen5', 1, '26', 'Negro', 'Cuero', 8),
('Bota Casual Hombre Invierno', 'Bota casual para hombre, perfecta para mantener los pies calientes durante el invierno.', 1679.99, 'imagen6', 2, '29', 'Marr�n', 'Cuero', 12),
('Zapato Deportivo Ni�o Active', 'Zapato deportivo para ni�o, dise�ado para brindar comodidad durante las actividades f�sicas y deportes.', 1134.99, 'imagen7', 3, '21', 'Azul', 'Sint�tico', 18),
('Sandalia de Verano Ni�a', 'Sandalia para ni�a, perfecta para los d�as calurosos de verano, con un dise�o fresco y colorido.', 2124.99, 'imagen8', 4, '19', 'Amarillo', 'Goma', 10),
('Zapato Deportivo Mujer Fitness', 'Zapato deportivo para mujer, ideal para sesiones de gimnasio y actividades fitness, proporcionando un gran soporte.', 3154.99, 'imagen9', 1, '27', 'Rosa', 'Malla', 7),
('Mocas�n Casual Hombre', 'Mocas�n casual para hombre, adecuado para un look relajado pero elegante, con gran comodidad.', 2449.99, 'imagen10', 2, '27', 'Negro', 'Cuero', 10),
('Zapato Escolar Ni�o Adventure', 'Zapato escolar para ni�o, hecho para soportar aventuras y actividades intensas, con gran durabilidad.', 1132.99, 'imagen11', 3, '22', 'Gris', 'Cuero', 15),
('Zapato de Fiesta Ni�a Princesa', 'Zapato elegante para ni�a, con un dise�o inspirado en princesas, ideal para eventos especiales.', 2144.99, 'imagen12', 4, '20', 'Blanco', 'Sat�n', 6),
('Zapato Deportivo Mujer Running Pro', 'Zapato deportivo avanzado para mujer, dise�ado para corredoras profesionales, proporcionando m�ximo rendimiento.', 79.99, 'imagen13', 1, '28', 'Rojo', 'Cuero', 5),
('Bota de Trabajo Hombre', 'Bota resistente para hombre, dise�ada para trabajos pesados y condiciones extremas, con gran durabilidad.', 1589.99, 'imagen14', 2, '30', 'Negro', 'Cuero', 10),
('Zapato Deportivo Ni�o Runner', 'Zapato deportivo para ni�o, perfecto para correr y jugar, con gran soporte y comodidad.', 1937.99, 'imagen15', 3, '23', 'Verde', 'Sint�tico', 12),
('Sandalia Elegante Ni�a', 'Sandalia elegante para ni�a, perfecta para ocasiones especiales, con un dise�o delicado y atractivo.', 2529.99, 'imagen16', 4, '21', 'Plata', 'Goma', 8),
('Zapato Casual Mujer Elegance', 'Zapato casual para mujer, con un dise�o elegante que se adapta a cualquier ocasi�n.', 3559.99, 'imagen17', 1, '24', 'Beige', 'Cuero', 9),
('Bot�n Casual Hombre', 'Bot�n casual para hombre, ideal para un look moderno y sofisticado, con gran comodidad.', 1169.99, 'imagen18', 2, '26', 'Gris', 'Cuero', 11),
('Zapato Deportivo Ni�o Explorer', 'Zapato deportivo para ni�o, dise�ado para exploradores j�venes, con gran durabilidad y comodidad.', 2339.99, 'imagen19', 3, '24', 'Rojo', 'Tela', 13),
('Zapato de Fiesta Ni�a Glamour', 'Zapato de fiesta para ni�a, con un dise�o glamuroso y brillante, perfecto para eventos importantes.', 1049.99, 'imagen20', 4, '22', 'Dorado', 'Sat�n', 7);




SELECT * FROM Productos;
