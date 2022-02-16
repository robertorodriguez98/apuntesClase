---
title: "Práctica obligatoria UD 4"
keywords:
  - BBDD
  - Markdown
...

\begin{center}
\begin{Huge}
\vspace*{\fill}

\textbf{Práctica obligatoria UD 4}

\vspace*{\fill}
\end{Huge}

\vfill

\LARGE{Roberto Rodríguez Márquez 1º ASIR}
\end{center}


\newpage

# Índice
- [Creación de tablas\dotfill 3](#id-section1)
- [Resolución\dotfill 4](#id-section2)

\newpage
<div id='id-section1'/>
# Creación de tablas

### hay que crear la siguiente estructura
$\\$

![](tablas_enunciado.png)


1. Tabla Pilotos

```sql
CREATE TABLE Pilotos
(
codigo VARCHAR2(3),
nombre VARCHAR2(15),
nacionalidad VARCHAR2(15),
fechaNacimiento DATE,
carreraDebut VARCHAR2(20),
CONSTRAINT PK_Centros PRIMARY KEY (codigo)
CONSTRAINT CK_Centros_nacionalidad CHECK (nacionalidad IN ('Brasileña','Española','Inglesa','Alemana'))
);
```
2. Tabla Circuitos

```sql
CREATE TABLE Circuitos
(
nombre VARCHAR2(15),
pais VARCHAR2(15),
tipo VARCHAR2(15),
longitud NUMBER(5,1),
disenador VARCHAR2(20),
CONSTRAINT PK_Circuitos PRIMARY KEY (nombre),
CONSTRAINT C_Centros_longitud CHECK (longitud > 2400)
);
```
3. Tabla Carreras

```sql
CREATE TABLE Carreras
(
nombreGP VARCHAR2(15),
anio VARCHAR2(15),
fechaHoraInicio DATE,
nombreCircuito VARCHAR2(15),
CONSTRAINT PK_Circuitos PRIMARY KEY (nombreGP,anio)
);
```
4. Tabla Resultados

```sql

```

\newpage
<div id='id-section2'/>
# Resolución

---


