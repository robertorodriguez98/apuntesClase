---
title: "APUNTES todo BBDD"
keywords:
  - BBDD
  - MySQL
  - oracle
  - Postgre
  - markdown
---
# DDL
<!-- AQUI SE DISEÑAN LAS BBDD -->
## Línea de comandos
### MySQL
**Iniciar**
```bash
mysql -u user -p
```
**Ejecutar un fichero bach**
```bash
mysql -u user -p < batch_file
```

## Mostrar información de tablas y BD
**Seleccionar una BD:**
```sql
USE database;
```
**Listar las BD existentes:**
```sql
SHOW databases;
```
**Mostrar las tablas de una BD**
```sql
SHOW TABLES;
```
**Mostrar/Describir el formato/diseño de una tabla:**
```sql
DESCRIBE table;
```

## Crear BD y tablas
**Crear una BD:**
```sql
CREATE DATABASE db_name;
```
**Crear una tabla:**
```sql
CREATE TABLE pet(
    name VARCHAR(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sex CHAR(1),
    birth DATE,
    age INT(2),
    raza ENUM('salchica','pastor alemán')
);
```
## Insertar/Modificar/Eliminar campos
### Añadir una columna:
* MySQL:
```sql
ALTER TABLE clientes
ADD COLUMN direccion VARCHAR(40)
AFTER apellido2;
```
### Modificar una columna:
* MySQL:
```sql
ALTER TABLE clientes
CHANGE dni nif VARCHAR(10);
```
### Eliminar una columna:
* MySQL:
```sql
ALTER TABLE clientes
DROP COLUMN dni;
```
## Borrar BD, Tablas y campos
### Eliminar DB:
* MySQL:
```sql
DROP DATABASE nombre_bd;
```
### Eliminar tabla:
* MySQL:
```sql
DROP TABLE nombre_tabla;
```
### Eliminar un campo:
* MySQL:
```sql
ALTER TABLE nombre_tabla DROP COLUMN col;
```
## Cambiar nombres
### Renombrar tabla:
* MySQL:
```sql
RENAME TABLE clientes TO clientes2009;
```
### Renombrar campo:
* MySQL:
```sql
ALTER TABLE clientes
CHANGE dni nif VARCHAR(10);
```
## Crear/Eliminar llave primaria y ajena
### Crear llave primaria
* MySQL:
```sql
ALTER TABLE jugadores
ADD PRIMARY KEY(id_equipo);
```
### Crear llave ajena
* MySQL:
```sql
ALTER TABLE jugadores
ADD FOREIGN KEY (id_equipo)
REFERENCES equipo(id_equipo);
```
### Eliminar llave primaria
* MySQL:
```sql
ALTER TABLE nombretabla
DROP PRIMARY KEY;
```
### Eliminar llave ajena
* MySQL:
```sql
ALTER TABLE nombretabla
DROP FOREIGN KEY nombre_fk;
```
# DML 1
<!-- trabajar con datos -->
## Cargar/Insertar datos
### Insertar un registro:
* MySQL:
```sql
INSERT INTO clinetes
VALUES ('Pío Pérez','Gran Plaza 12','2002-08-31',NULL);
```
### Actualizar datos:
* MySQL:
```sql
UPDATE clientes
SET dni = '2603232'
WHERE nombre = 'Pedro' AND ape1 = 'Pérez';
```
### Eliminar datos:
* MySQL:
```sql
DELETE FROM clientes
WHERE sexo = 'v';
--PARA BORRAR TODO:
TRUNCATE TABLE clientes;
```
# DML 2
<!-- CONSULTAS -->
## Funciones
### Valor máximo y mínimo
