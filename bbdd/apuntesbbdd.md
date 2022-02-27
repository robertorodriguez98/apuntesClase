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
* MySQL:
```sql
SELECT MAX(edad) AS edad_maxima
FROM alumnos;
SELECT MIN(edad) AS edad_minima
from alumnos;
```
### Contar columnas
* MySQL:
```sql
SELECT COUNT(*)
FROM clientes;
```
### Media
* MySQL:
```sql
SELECT AVG(porcentaje) AS mediaporcentaje
FROM lenguas
WHERE (porcentaje>50.0);
```
### Total
* MySQL:
```sql
SELECT SUM(superficie) as superficietotal
FROM paises;
```
## Union simple
### Union con las filas de las dos tablas
* MySQL:
```sql
TABLE jugadores_nuevos
UNION ALL
TABLE jugadores_antiguos
ORDER BY nombre_jugador;
```
### Union de select
* MySQL:
```sql
SELECT nombre_alum
FROM curso0708
WHERE ciclo = 'ESI'
UNION
SELECT nombre_alum
FROM curso0809
WHERE ciclo = 'ESI';
```
## Unión de múltiples tablas (join)
### Producto cartesiano
* MySQL:
```sql
SELECT nombre_equipo, COUNT(id_jugador)
FROM jugadores, equipos
WHERE jugadores.id_equipo=equipos.id_equipo;
```
### Inner join (similar al anterior)
* MySQL:
```sql
SELECT nombre_equipo, COUNT(id_jugador)
FROM jugadores INNER JOIN equipos
ON jugadores.id_equipo = equipos.id_equipo;
```
### Left join
Aparecen todos los registros de la tabla izquierda (jugadores) aunque no se correspondan con ningún registro de la derecha (aunque no jueguen en ningún equipo)
* MySQL:
```sql
SELECT *
FROM jugadores LEFT JOIN equipos
ON jugadores.id_equipo = equipos.id_equipo;
```
### Right join
Aparecen todos los registros de la tabla derecha (equipos), aunque no se correspondan con ningún registro de la izquierda (aunque no tengan ningún jugador)
* MySQL:
```sql
SELECT *
FROM empleados RIGHT JOIN oficina
ON empleados.oficina = oficinas.oficina;
```
## Seleccionar registros distintos
### Select (general)
* MySQL:
```sql
SELECT dni,nombre
FROM clientes
WHERE dni='2234432' OR dni = '24231231';

SELECT * FROM PEDIDOS;
```
### Listado de todos los nombres de clientes distintos
* MySQL:
```sql
SELECT DISTINCT nombre FROM clientes;
```
## Subconsultas
* MySQL:
```sql
SELECT nombre_equipo
FROM equipos
WHERE (id_equipo = (SELECT DISTINCT id_equipo
                   FROM jugadores
                   WHERE numero_goles > 0));
```
## Subconsultas con Any, in y some
### ANY o IN
es true si la condición se cumple con cualquiera de los valores de la subconsulta
* MySQL:
```sql
SELECT s1
FROM t1
WHERE s1 > ANY (SELECT s1 FROM t2);
```
### ALL
Es true si la condición se cumple con todos los valores devueltos por la subconsulta
* MySQL:
```sql
SELECT s1
FROM t1
WHERE s1 > ALL (SELECT s1 FROM t2);
```
## Subconsultas con Exists y Not exists
### Exists
ejemplo que selecciona paises con una o más ciudades
* MySQL:
```sql
SELECT DISTINCT nombre
FROM paises
WHERE EXISTS (SELECT *
             FROM ciudades
             WHERE ciudades.cod_pais = paises.cod_pais);
```
### Not exists
ejemplo que busca que paises no tienen una o más ciudades
* MySQL:
```sql
SELECT DISTINCT nombre
FROM paises
WHERE NOT EXISTS (SELECT *
                 FROM ciudades
                 WHERE ciudades.cod_pais = paises.cod_pais);
```
## Subconsultas en From
* MySQL:
```sql
--ES OBLIGATORIO EL AS DENTRO DE LA SUBCONSULTA
SELECT AVG(porcentmayor)
FROM (SELECT Porcentaje as porcentmayor
     FROM lenguas
     WHERE porcentaje > 50.0);
```
## Ordenar registros
* MySQL:
```sql
SELECT nombre, edad
FROM amigos
ORDER BY edad DESC;
```
## Cálculo con fechas
* MySQL:
```sql
SELECT CURRENT_DATE(YEAR(CURRENT_DATE)-YEAR(fechanac)) AS time_diff
FROM amigos;
```
## Selección con carácteres comodín
* MySQL:
```sql
SELECT *
FROM clientes
WHERE nombre LIKE "Jua%";
```
## Agrupamientos (group by)
* MySQL:
```sql
SELECT id_equipo, COUNT(*)
FROM jugadores
GROUP BY id_equipos;
```
## Condiciones con having
* MySQL:
```sql
SELECT id_proveedor, MAX(precio,compra)
FROM compras
GROUP BY id_profesor
HAVING MAX(precio_compra)>100;
```
## EXPRESIONES REGULARES
* MySQL:
```sql
SELECT productname
FROM products
WHERE productname REGEXP '^(A|B|C)'
ORDER BY productname;
```
# TIPOS DE DATOS

| Descripción | ORACLE   | MySQL   | POSTGRE |
|-------------|----------|---------|---------|
| numerico    | NUMBER   | DECIMAL |         |
| caracteres  | VARCHAR2 | VARCHAR |         |
| fecha       | DATE     | DATE    |         |

