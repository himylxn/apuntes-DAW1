create database Academia_Dylan2;
go
use Academia_Dylan2;

-- Tabla EMPLEADO
CREATE TABLE EMPLEADO(
codigo tinyint NOT NULL, -- numero entero más pequeño
telefono1 char(9) NULL,
telefono2 char (9) NULL,
telefono3 char (9) NULL,
num_doc varchar (15) NOT NULL,
tipo_doc char(5) NOT NULL,
fecha_contrato date NOT NULL CONSTRAINT DF_empleado_fecha_contrato DEFAULT (getdate()), -- Si no se indica un valor específico para el campo fecha_contrato de la entidad EMPLEADO, éste tomará el valor de la fecha actual.

CONSTRAINT CHK_empleado_tipo_doc CHECK (tipo_doc IN ('NIF', 'NIE', 'PASAP', 'DocUE')), --  El campo tipo_doc del empleado sólo podrá tomar uno de estos valores: NIF, NIE, PASAP ó DOCUE. 
CONSTRAINT CHK_empleado_fecha_contrato_minima CHECK (fecha_contrato > '1/3/2000'), -- La academia se fundó el 1/3/2000 y por lo tanto no se pudo haber contratado a nadie antes.
CONSTRAINT CHK_empleado_fecha_contrato CHECK (fecha_contrato between '1/3/2000' and getdate()),
CONSTRAINT PK_EMPLEADO_CODIGO PRIMARY KEY (codigo),
);



-- Tabla EDICION
CREATE TABLE EDICION(
numero smallint NOT NULL, -- numero entero más pequeño que admite nulos
fecha_hora_inicio datetime, -- datetime coge dia y hora
cod_empleado tinyint NOT NULL, -- ***FORANEA DE EMPLEADO PORQUE AL SER 1:N la 1 pasa para la N***
cod_curso tinyint NOT NULL
CONSTRAINT PK_EMPLEADO_NUMERO PRIMARY KEY (numero)
);


-- Tabla CURSO
CREATE TABLE CURSO(
codigo tinyint NOT NULL, -- clave primaria
titulo varchar (80) NOT NULL, -- unique
num_horas tinyint,


CONSTRAINT PK_CURSO_CODIGO PRIMARY KEY (codigo), -- Definimos la clave primaria
CONSTRAINT UQ_CURSO_TITULO UNIQUE (titulo) -- Definimos que titulo en unique
);

-- Tabla Prerrequisito
CREATE TABLE PRERREQUISITO(
tipo char(1)NULL,
cod_curso_es_prerrequisito_de tinyint NOT NULL, -- *** Fk ***
cod_curso_tiene_por_prerrequisito_a tinyint NOT NULL, -- *** Fk ***



CONSTRAINT CHK_curso_valor_tipo CHECK (tipo IN ('R', 'O')),
CONSTRAINT PK_PRERREQUISITO_cod_curso_es_prerrequisito_de PRIMARY KEY (cod_curso_es_prerrequisito_de),
CONSTRAINT UQ_PRERREQUISITO_cod_curso_tiene_por_prerrequisito_a UNIQUE (cod_curso_tiene_por_prerrequisito_a)
);





-- FORANEAS

-- TABLA EDCION
ALTER TABLE EDICION
ADD
CONSTRAINT FK_EDICION_EMPLEADO_cod_empleado
FOREIGN KEY (cod_empleado)
REFERENCES EMPLEADO (codigo)
ON UPDATE CASCADE,

CONSTRAINT FK_EDICION_CURSO_cod_curso
FOREIGN KEY (cod_curso)
REFERENCES CURSO (codigo)
ON UPDATE CASCADE;

-- TABLA PRERREQUISITOS
ALTER TABLE PRERREQUISITO
ADD
CONSTRAINT FK_CURSO_PRERREQUISITO_cod_curso_es_prerrequisito_de
FOREIGN KEY (cod_curso_es_prerrequisito_de)
REFERENCES CURSO (codigo)
ON UPDATE CASCADE

use master
--drop database Academia_Dylan

