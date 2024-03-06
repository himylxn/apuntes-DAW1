create database LIGA_Dylan
GO

use LIGA_Dylan
GO

-- Tabla Equipo
CREATE TABLE EQUIPO(
identificador int NOT NULL,
cif char(9) NOT NULL,   -- max 9 min 9 ACABAR...
nombre varchar (30) NOT NULL,
presupuesto decimal (12,2) NOT NULL, --Número con 12 cifras en la parte entera y 2 decimales ACABAR...
cod_division int NOT NULL, -- CLAVE FORANEA QUE VIENE DE  DIVISION
num_campo int NOT NULL, -- CLAVE FORANEA QUE VIENE DE CAMPO



CONSTRAINT PK_EQUIPO_identificador PRIMARY KEY (identificador),
CONSTRAINT UQ_EQUIPO_nombre UNIQUE (nombre),
CONSTRAINT UQ_EQUIPO_cif UNIQUE (cif),
CONSTRAINT UQ_CAMPO_num_campo UNIQUE (num_campo)
);



-- Tabla CAMPO
CREATE TABLE CAMPO(
numero int NOT NULL,
nombre varchar (100) NOT NULL,
capacidad int NOT NULL,

CONSTRAINT PK_CAMPO_numero PRIMARY KEY (numero),
CONSTRAINT UQ_CAMPO_nombre UNIQUE (nombre)
);



-- Tabla DIVISION
CREATE TABLE DIVISION(
codigo int NOT NULL,
nombre varchar (70) NOT NULL,
categoria char NULL

CONSTRAINT PK_DIVISION_codigo PRIMARY KEY (codigo),
CONSTRAINT UQ_DIVISION_nombre UNIQUE (nombre)
);


-- Tabla PARTIDO
CREATE TABLE PARTIDO(
fechahora datetime NOT NULL,
observaciones varchar(150) NULL,
id_equipo_local int NOT NULL -- CLAVE FORANEA QUE VIENE DE EQUIPO

CONSTRAINT PK_PARTIDO_fechahora PRIMARY KEY (fechahora)

);




-- CLAVES FORANEAS


ALTER TABLE EQUIPO
ADD
CONSTRAINT FK_DIVISION_cod_division
FOREIGN KEY (cod_division)
REFERENCES DIVISION (codigo)
ON UPDATE CASCADE,

CONSTRAINT FK_CAMPO_num_campo
FOREIGN KEY (num_campo)
REFERENCES CAMPO (numero)
ON UPDATE CASCADE



ALTER TABLE PARTIDO
ADD
CONSTRAINT FK_EQUIPO_id_equipo_local
FOREIGN KEY (id_equipo_local)
REFERENCES EQUIPO (identificador)
ON UPDATE CASCADE
