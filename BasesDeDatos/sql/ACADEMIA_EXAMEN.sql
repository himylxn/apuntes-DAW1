use master
go
create database ACADEMIA_EXAMEN
go
use ACADEMIA_EXAMEN
go


create table EMPLEADO (
codigo tinyint NOT NULL, -- CLAVE PRIMARIA
fecha_contrato date NOT NULL DEFAULT getdate(), -- con esto ponemos que la fecha por defecto sea la de hoy 
tipo_doc char(5) NOT NULL,
num_doc varchar (15) NOT NULL,
telefono1 varchar (9) NULL,
telefono2 varchar (9) NULL,
telefono3 varchar (9) NULL,


CONSTRAINT PK_EMPLEADO_codigo PRIMARY KEY (codigo),
CONSTRAINT CHK_EMPLEADO_tipo_doc CHECK (tipo_doc IN ('NIF','NIE','PASAP','DOCUE')), -- con esto ponemos que solo estas opciones son validas
CONSTRAINT CHK_EMPLEADO_fechas_validas CHECK (fecha_contrato between '1-3-2000' and getdate()) -- con esto ponemos que la fecha del contrato solo puede estar entre estas fechas
);





create table EDICION (
numero smallint NOT NULL, -- CLAVE PRIAMARIA
cod_curso tinyint NOT NULL, -- CLAVE PRIMARIA que viene de curso
fecha_hora_inicio datetime NOT NULL,
cod_empleado tinyint NOT NULL, -- CLAVE FORANEA DE EMPLEADO

CONSTRAINT PK_EDICION_numero_cod_curso PRIMARY KEY (numero,cod_curso),
);






create table CURSO (
codigo tinyint NOT NULL, -- CLAVE PRIMARIA
titulo varchar (80) NOT NULL,
num_horas tinyint NOT NULL,


CONSTRAINT PK_CURSO_codigo PRIMARY KEY (codigo),
);




create table PRERREQUISITO (
tipo char(1),
es_prerrequisito_de tinyint NOT NULL, -- CLAVE PRIMARIA
tiene_por_prerrequisito_a tinyint NOT NULL, -- CLAVE ALTERNATIVA / UNIQUE


CONSTRAINT PK_PRERREQUISITO_es_prerrequisito_de PRIMARY KEY (es_prerrequisito_de),
CONSTRAINT UQ_PRERREQUISITO_tiene_por_prerrequisito_a UNIQUE (tiene_por_prerrequisito_a),
CONSTRAINT CHK_PRERREQUISITO_tipos CHECK (tipo IN ('R','O'))

);


-- ***CLAVES FORANEAS***

alter table EDICION
ADD
CONSTRAINT FK_EDICION_CURSO_cod_curso FOREIGN KEY (cod_curso)
REFERENCES CURSO (codigo)
on delete no action
on update no action,

CONSTRAINT FK_EDICION_EMPLEADO_cod_empleado FOREIGN KEY (cod_empleado)
REFERENCES EMPLEADO (codigo)
on delete no action
on update cascade


alter table PRERREQUISITO
ADD
CONSTRAINT FK_PRERREQUISITO_CURSO_es_prerrequisito_de FOREIGN KEY (es_prerrequisito_de)
REFERENCES CURSO (codigo)
on delete no action
on update no action,

CONSTRAINT FK_PRERREQUISITO_CURSO_tiene_por_prerrequisito_a FOREIGN KEY (tiene_por_prerrequisito_a)
REFERENCES CURSO (codigo)
on delete no action
on update no action,