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

---

## Borrar BD, Tablas y campos