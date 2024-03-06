create database VIDEOTECA_dylan
go
use database VIDEOTECA_dylan


-- TABLA PRODUCTORA
create table PRODUCTORA(
identificador smallint NOT NULL, -- PRIAMRY KEY | ENTERO MAS PEQUEÑO QUE ADMITE NULOS
nombre varchar(100) NOT NULL,

CONSTRAINT PK_PRODUCTORA_identificador PRIMARY KEY (identificador),
CONSTRAINT UQ_PRODUCTORA_nombre UNIQUE (nombre),


);


-- TABLA PELICULA
CREATE TABLE PELICULA(
codigo int NOT NULL, -- PRIMARY KEY
titulo varchar(150) NOT NULL, -- MAXIMO DE 150 CARACTERES
fecha_estreno date NULL,
id_productora tinyint NOT NULL, -- FOREIGN JEY DE PRODUCTORA PORQUE ES 1:N

CONSTRAINT PK_PELICULA_codigo PRIMARY KEY (codigo),
CONSTRAINT UQ_PELICULA_titulo UNIQUE (titulo),

);

-- TABLA COPIA
CREATE TABLE COPIA(
numero int NOT NULL,
formato char(1) NOT NULL,
cod_pelicula int NOT NULL, -- FOREIGN KEY DE PELICULA
num_caja tinyint NOT NULL, -- FOREIGN KEY DE CAJA

CONSTRAINT PK_COPIA_numero_cod_pelicula PRIMARY KEY (numero,cod_pelicula), --(ES EN IDENTIFICACION ASI QUE LA PRIMARY KEY SON LOS 2 )
CONSTRAINT UQ_COPIA_formato UNIQUE (formato),

);

-- TABLA CAJA
CREATE TABLE CAJA(
numero tinyint NOT NULL,
estanteria int NOT NULL,
balda tinyint NOT NULL,

CONSTRAINT PK_CAJA_numero PRIMARY KEY (numero),


);

-- TABLA ALQUILA
CREATE TABLE ALQUILA(
num_copia_cod_pelicula int NOT NULL, -- FORANEA DE COPIA
cod_socio int NOT NULL, -- FORANEA DE SOCIO

CONSTRAINT PK_ALQUILA_cod_socio_num_copia_cod_pelicula PRIMARY KEY (num_copia_cod_pelicula),
);


-- TABLA PERSONA
CREATE TABLE PERSONA(
codigo int NOT NULL,
docId varchar (5),
nombre varchar (30),
ape1 varchar (30),
ape2 varchar (30),
tipo_doc char (5),
num_doc varchar (15),

CONSTRAINT PK_PERSONA_
);









