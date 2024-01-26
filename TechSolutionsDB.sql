DROP DATABASE tech_solutions

Create Database tech_solutions;
Use tech_solutions;

Create Table tb_cargos
(
id_cargo INT PRIMARY KEY AUTO_INCREMENT,
nombre_cargo VARCHAR(25)

);

Create Table tb_departamentos
(
id_departamento INT PRIMARY KEY AUTO_INCREMENT,
nombre_departamento VARCHAR(25)
);

Create Table tb_proyectos
(
id_proyecto INT PRIMARY KEY AUTO_INCREMENT,
nombre_proyecto VARCHAR(25)
);

Create Table tb_empleados
(
id_empleado INT PRIMARY KEY AUTO_INCREMENT,

nombre_empleado VARCHAR(25),
apellido_empleado VARCHAR(25),
salario_empleado DECIMAL,
fecha_inicio_empleado DATE,

id_departamento INT,
id_cargo INT,

CONSTRAINT fk_departamento_empleado FOREIGN KEY (id_departamento)
REFERENCES tb_departamentos(id_departamento),

CONSTRAINT fk_cargo_empleado FOREIGN KEY (id_cargo)
REFERENCES tb_cargos(id_cargo)
);

Create Table tb_empleados_asignaciones_proyectos
(
id_empleado_asignacion_proyecto INT PRIMARY KEY AUTO_INCREMENT,

id_proyecto INT,
id_empleado INT,

CONSTRAINT fk_proyecto_asignado
FOREIGN KEY (id_proyecto)
REFERENCES tb_proyectos(id_proyecto),

CONSTRAINT fk_empelado_asignado
FOREIGN KEY (id_empleado)
REFERENCES tb_empleados(id_empleado)
);

SHOW TABLES