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

