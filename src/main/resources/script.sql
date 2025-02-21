-- Crear base de datos
CREATE DATABASE IF NOT EXISTS base_proyecto;
-- Seleccionar base de datos
USE base_proyecto;
-- Crear tabla
CREATE TABLE IF NOT EXISTS libro (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    isbn VARCHAR(50) UNIQUE NOT NULL,
    publicacion DATE,
    descripcion TEXT
);

-- Insertar datos
INSERT INTO libro (titulo, autor, isbn, publicacion, descripcion)
VALUES
    ('Cien Años de Soledad', 'Gabriel García Márquez', '9788437604947', '1967-05-30', 'Una novela emblemática del realismo mágico.'),
    ('Don Quijote de la Mancha', 'Miguel de Cervantes', '9788467031409', '1605-01-16', 'Una de las obras más importantes de la literatura española.'),
    ('La Sombra del Viento', 'Carlos Ruiz Zafón', '9788408172177', '2001-04-01', 'Un misterio literario ambientado en la Barcelona de posguerra.'),
    ('El Principito', 'Antoine de Saint-Exupéry', '9780156012195', '1943-04-06', 'Una fábula poética que explora la naturaleza humana.'),
    ('1984', 'George Orwell', '9780451524935', '1949-06-08', 'Una novela distópica que alerta sobre el totalitarismo.'),
    ('La Comunidad del Anillo', 'J.R.R. Tolkien', '9780261103573', '1954-07-29', 'El inicio de la épica trilogía de El Señor de los Anillos.'),
    ('Harry Potter y la Piedra Filosofal', 'J.K. Rowling', '9780747532743', '1997-06-26', 'El comienzo de la famosa saga del joven mago.'),
    ('El Código Da Vinci', 'Dan Brown', '9780307474278', '2003-03-18', 'Un thriller que combina arte, religión y misterio.'),
    ('Matar a un Ruiseñor', 'Harper Lee', '9780061120084', '1960-07-11', 'Una novela sobre la injusticia racial en el sur de Estados Unidos.'),
    ('El Alquimista', 'Paulo Coelho', '9780061122415', '1988-05-01', 'Una fábula sobre seguir los sueños y descubrir el destino.');

/*
INSERT INTO libro (titulo, autor, isbn, publicacion, descripcion)
VALUES
    ('Fahrenheit 451', 'Ray Bradbury', '9781451673319', '1953-10-19', 'Una novela distópica sobre la censura y la quema de libros.'),
    ('El Señor de las Moscas', 'William Golding', '9780399501487', '1954-09-17', 'Una novela que explora la naturaleza humana y la violencia en un grupo de jóvenes varados.'),
    ('La Metamorfosis', 'Franz Kafka', '9780142437163', '1915-10-25', 'Una historia surrealista sobre la transformación y el aislamiento de un hombre.'),
    ('Orgullo y Prejuicio', 'Jane Austen', '9781503290563', '1813-01-28', 'Una novela clásica que aborda el amor, la sociedad y las convenciones sociales.'),
    ('El Perfume', 'Patrick Süskind', '9780375725842', '1985-05-01', 'Una narrativa obsesiva sobre la búsqueda del aroma perfecto en la Francia del siglo XVIII.');
*/