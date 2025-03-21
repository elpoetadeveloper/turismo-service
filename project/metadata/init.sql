-- Create users table for MySQL
CREATE TABLE IF NOT EXISTS `bxy_users` (
    `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
    `email` VARCHAR(255) NOT NULL UNIQUE,
    `password` VARCHAR(255) NOT NULL,
    `isAdmin` BOOLEAN DEFAULT FALSE
);

-- Insert default user if it doesn't exist
INSERT IGNORE INTO `bxy_users` (`email`, `password`, `isAdmin`) VALUES ('browxyteam@gmail.com', 'browxyteam', true);


-- Project tables Model

-- Create table paquete
CREATE TABLE IF NOT EXISTS `paquete` (
    `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
    `nombre` VARCHAR(250),
    `visitas` VARCHAR(250),
    `duracion` VARCHAR(250),
    `descripcion` TEXT,
    `precio` FLOAT,
    `imagen` TEXT,
    `fecha` DATE
);

-- You can paste your exported database here.
INSERT IGNORE INTO paquete (descripcion, precio, duracion, imagen, id, nombre, visitas, fecha) VALUES ('La vida nocturna en Perú, principalmente en Lima y en populares ciudades como Cusco, se da en muchas de las calles, pudiendo encontrarse con gran cantidad de discotecas, bares, pubs y clubes nocturnos, no siendo todos de gran reputación. El alojamiento en Perú es también muy variado, pero sobre todo barato, pudiendo encontrar desde imponentes hoteles de cinco estrellas hasta habitaciones simples en las que se puede descansar cómodamente.', '3333.0', '6 dias, 7 noches', 'https://images.unsplash.com/photo-1526392060635-9d6019884377?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '1', 'Peru', 'Lima, Machu Pichu', '2025-02-26');
-- Paste the following statements at the end of the init.sql file located in the project/metadata directory of the downloaded zip file.

INSERT IGNORE INTO paquete (descripcion, precio, duracion, imagen, id, nombre, visitas, fecha) VALUES ('La gastronomía de Francia destaca por su refinado gusto y minuciosidad en la preparación. Sus vinos y quesos son de los mejores del mundo. La ciudad de Francia posee una gran variedad de locales donde se logra disfrutar toda la noche, tales como: cafés, bares, restaurantes, pubs o discotecas con música variada. En Francia puedes tener el turismo más increíble, paseando por París, como también puedes recorrer varios de sus castillos y revivir épocas medievales. Entre los principales productos de Francia destacan los perfumes y la alta costura que marca tendencias de moda; también están sus refinados vinos.', '8907.8', '10 dias, 9 noches', 'https://images.unsplash.com/photo-1431274172761-fca41d930114?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '2', 'Francia', 'Paris, Marsella', '2025-03-18');
-- Paste the following statements at the end of the init.sql file located in the project/metadata directory of the downloaded zip file.

INSERT IGNORE INTO paquete (descripcion, precio, duracion, imagen, id, nombre, visitas, fecha) VALUES ('La aventura: Australia es uno de los mejores lugares para recorres debido a sus enormes paisajes y su gran variedad de animales. Los animales: El país es conocido por tener una enorme y variada fauna que solo puede ser encontrado en Australia. Las Playas: Las playas de Australia son sumamente conocidas por su belleza y su arena blanca, además de la pluralidad de flora y fauna. Sus Paisajes y cultura: Los paisajes de Australia parecen sacadas de una postal, además podrás conocer a los aborígenes australianos sus costumbres y tradiciones.', '4678.9', '8 dias, 9 noches', 'https://images.unsplash.com/photo-1624138784614-87fd1b6528f8?q=80&w=1933&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '3', 'Australia', 'Sidney, Melbourne', '2025-04-15');
-- Paste the following statements at the end of the init.sql file located in the project/metadata directory of the downloaded zip file.

INSERT IGNORE INTO paquete (descripcion, precio, duracion, imagen, id, nombre, visitas, fecha) VALUES ('Empezando por la capital, Tokio, con su sobredosis de rascacielos, neones, karaokes e izakayas pero también con su alma más tradicional, nuestra querida Asakusa. Y continuando con el Japón más rural, el de los pueblos de los Alpes Japoneses o de los caminos de peregrinación. Y luego están los onsen, los famosos baños termales donde purificar cuerpo y alma. Los templos, el sushi, lo moderno y lo antiguo.', '11900.0', '9 dias, 9 noches', 'https://images.unsplash.com/photo-1549693578-a094e577de3f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '4', 'Japon', 'Tokio', '2025-05-14');

