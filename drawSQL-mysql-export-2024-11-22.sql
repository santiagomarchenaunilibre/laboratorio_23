-- Herramientas: https://drawsql.app/diagrams // https://www.mycompiler.io/es/new/mysql

CREATE TABLE `empleados`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nombres` VARCHAR(255) NOT NULL,
    `apellidos` VARCHAR(255) NOT NULL,
    `puesto` VARCHAR(255) NOT NULL,
    `salario` FLOAT(53) NOT NULL,
    `edad` INT NOT NULL,
    `celular` DOUBLE NOT NULL,
    `direccion` VARCHAR(255) NOT NULL
);

-- Insertar 10 registros
INSERT INTO empleados VALUES (1, 'PABLO ENRIQUE', 'GARCIA ROA', 'docente', 50000, 42, 301201301, 'CALLE 174 # 19-4, BOGOTA');
INSERT INTO empleados VALUES (2, 'MARIA FERNANDA', 'LOPEZ PEREZ', 'administrativa', 60000, 35, 302303302, 'CARRERA 45 # 20-15, MEDELLIN');
INSERT INTO empleados VALUES (3, 'JUAN CARLOS', 'RAMIREZ CASTRO', 'coordinador', 70000, 50, 303404303, 'AVENIDA 68 # 10-8, CALI');
INSERT INTO empleados VALUES (4, 'LUISA MARCELA', 'TORRES GOMEZ', 'docente', 52000, 29, 304505304, 'CARRERA 7 # 45-20, BOGOTA');
INSERT INTO empleados VALUES (5, 'CARLOS ANDRES', 'SUAREZ MORALES', 'tecnico', 45000, 40, 305606305, 'CALLE 23 # 12-5, BUCARAMANGA');
INSERT INTO empleados VALUES (6, 'ANDREA PAOLA', 'MARTINEZ HERRERA', 'directora', 80000, 48, 306707306, 'CARRERA 30 # 15-30, BARRANQUILLA');
INSERT INTO empleados VALUES (7, 'DIEGO ALEJANDRO', 'CASTILLO RIVERA', 'asistente', 35000, 27, 307808307, 'CALLE 100 # 20-50, CARTAGENA');
INSERT INTO empleados VALUES (8, 'ANGELA MARIA', 'MEJIA LUNA', 'docente', 53000, 33, 308909308, 'CARRERA 50 # 18-10, PEREIRA');
INSERT INTO empleados VALUES (9, 'RICARDO ANTONIO', 'ORTIZ RUIZ', 'coordinador', 71000, 45, 309010309, 'AVENIDA AMERICAS # 22-5, MANIZALES');
INSERT INTO empleados VALUES (10, 'SOFIA VALENTINA', 'HERRERA DIAZ', 'docente', 55000, 31, 310111310, 'CALLE 10 # 5-12, IBAGUE');
-- Consultar datos
SELECT * FROM empleados;
SELECT nombre FROM empleados WHERE salario > 45000;
SELECT nombres,puesto FROM empleados WHERE edad > 30;
SELECT nombres,puesto FROM empleados WHERE edad < 30;
-- Actualizar datos del 2 y 6
UPDATE empleados SET salario = 100 WHERE id = 2;
UPDATE empleados SET salario = 200 WHERE id = 6;
SELECT * FROM empleados;
SELECT * FROM empleados WHERE id = 2;