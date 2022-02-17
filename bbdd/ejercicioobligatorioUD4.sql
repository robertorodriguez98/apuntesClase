CREATE TABLE Pilotos
(
codigo VARCHAR2(3),
nombre VARCHAR2(15),
nacionalidad VARCHAR2(15),
fechaNacimiento DATE,
carreraDebut VARCHAR2(20),
CONSTRAINT PK_Pilotos PRIMARY KEY (codigo),
CONSTRAINT MAY_nombre CHECK (nombre = INITCAP(nombre)),
CONSTRAINT C_carreraDebut CHECK (SUBSTR(carreraDebut,-1,4) BETWEEN 1990 AND 2010),
CONSTRAINT C_nacionalidad CHECK (nacionalidad IN ('Brasileña','Española','Inglesa','Alemana'))
);

CREATE TABLE Circuitos
(
nombre VARCHAR2(15),
pais VARCHAR2(15),
tipo VARCHAR2(15),
longitud NUMBER(5,1),
disenador VARCHAR2(20),
CONSTRAINT PK_Circuitos PRIMARY KEY (nombre),
CONSTRAINT MAYUS_nombre CHECK (nombre = UPPER(nombre))
CONSTRAINT C_Centros_longitud CHECK (longitud > 2400)
);

CREATE TABLE Carreras
(
nombreGP VARCHAR2(15),
anio VARCHAR2(15),
fechaHoraInicio DATE,
nombreCircuito VARCHAR2(15),
CONSTRAINT PK_Circuitos PRIMARY KEY (nombreGP,anio)
);

CREATE TABLE Resultados
(
nombreGP VARCHAR2(15),
anio VARCHAR2(4),
codPiloto VARCHAR2(4),
puesto NUMBER(2),
distanciaGanador VARCHAR2(9),
CoNSTRAINT PK_Resultados PRIMARY KEY (nombreGP,anio,codPiloto)
);