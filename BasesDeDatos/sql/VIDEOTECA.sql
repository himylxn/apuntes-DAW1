use master 
go
create database VIDEOTECA_1
go
use VIDEOTECA_1
go


create table PRODUCTORA(
identificador smallint NOT NULL, -- CLAVE PRIMARIA
nombre varchar(100) NOT NULL, -- UNIQUE

CONSTRAINT PK_PRODUCTORA_identificador PRIMARY KEY (identificador),
CONSTRAINT UQ_PRODUCTORA_nombre UNIQUE (nombre),
);




create table PELICULA(
codigo int NOT NULL, -- CLAVE PRIMARIA
id_productora smallint NOT NULL, -- CLAVE FORANEA que viene de productora por ser 1:N *********
titulo varchar (150) NOT NULL, -- UNIQUE
fecha_estreno date NULL,


CONSTRAINT PK_PELICULA_codigo PRIMARY KEY (codigo),
CONSTRAINT UQ_PELICULA_titulo UNIQUE (titulo),
CONSTRAINT CHK_PELICULA_fecha_estreno CHECK (fecha_estreno <= getdate())
);




create table COPIA (
cod_pelicula int NOT NULL, -- CLAVE PRIMARIA que viene de pelicula por der en ID ************
numero int NOT NULL, -- CLAVE PRIMARIA
formato char(1) NOT NULL, 
num_caja tinyint NOT NULL, -- CLAVE FORANEA que viene de CAJA ***********

CONSTRAINT PK_COPIA_cod_pelicula_numero PRIMARY KEY (cod_pelicula,numero),
CONSTRAINT UQ_COPIA_num_caja UNIQUE (num_caja),
CONSTRAINT CHK_COPIA_formato CHECK (formato IN ('D','V','S'))

);



create table CAJA (
numero tinyint NOT NULL, --CLAVE PRIMARIA
estanteria int NOT NULL,
balda tinyint NOT NULL DEFAULT 0,

CONSTRAINT PK_CAJA_numero PRIMARY KEY (numero),

);


create table ALQUILA(
cod_pelicula int NOT NULL, -- CLAVE PRIMARIA que viene de COPIA *********
num_copia int NOT NULL, -- CLAVE PRIMARIA que viene de COPIA **********
cod_socio int NOT NULL, -- CLAVE PRIMARIA que viene de SOCIO ***********

CONSTRAINT PK_ALQUILA_cod_pelicula_numero_cod_socio PRIMARY KEY (cod_pelicula,num_copia,cod_socio)
);


create table PERSONA (
codigo int NOT NULL, -- CLAVE PRIAMRIA
tipo_doc char(5) NOT NULL, -- UNIQUE
num_doc varchar(15) NOT NULL, -- UNIQUE
nombre varchar(30) NOT NULL,
apellido1 varchar(30) NOT NULL,
apellido2 varchar(30) NULL,
tipo char(3) NOT NULL,


CONSTRAINT PK_PERSONA_codigo PRIMARY KEY (codigo),
CONSTRAINT UQ_PERSONA_doc_id UNIQUE (tipo_doc,num_doc),
CONSTRAINT CHK_PERSONA_tipo_cliente_o_socio CHECK (tipo IN ('EMP','SOC'))
);


create table SOCIO (
cod_socio int NOT NULL,

CONSTRAINT PK_SOCIO_cod_socio PRIMARY KEY (cod_socio),
);


create table EMPLEADOS (
cod_empleados int NOT NULL,

CONSTRAINT PK_EMPLEADOS_cod_empleados PRIMARY KEY (cod_empleados),
);


create table MANDA_EN (
supervisa_a int NOT NULL, -- CLAVE PRIAMRIA **********
es_supervisado_por int NOT NULL, -- CLAVE ALTERNATIVA **********


CONSTRAINT PK_MANDA_EN_SUPERVISA_A PRIMARY KEY (supervisa_a),
CONSTRAINT UQ_MANDA_EN_es_supervisado_por UNIQUE (es_supervisado_por)
);



-- ***CLAVES FORANEAS***
alter table PELICULA
ADD
CONSTRAINT FK_PELICULA_id_productora FOREIGN KEY (id_productora)
REFERENCES PRODUCTORA (identificador)
on delete no action
on update cascade




alter table COPIA 
ADD
CONSTRAINT FK_COPIA_cod_pelicula FOREIGN KEY (cod_pelicula)
REFERENCES PELICULA (codigo)
on delete no action
on update cascade,
CONSTRAINT FK_COPIA_num_caja FOREIGN KEY (num_caja)
REFERENCES CAJA (numero)
on delete no action
on update cascade





alter table ALQUILA
ADD
CONSTRAINT FK_ALQUILA_cod_pelicula FOREIGN KEY (cod_pelicula, num_copia)
REFERENCES COPIA (cod_pelicula,numero)
on delete no action
on update cascade,

CONSTRAINT FK_ALQUILA_cod_socio FOREIGN KEY (cod_socio)
REFERENCES SOCIO (cod_socio)
on delete no action
on update cascade





alter table SOCIO
ADD
CONSTRAINT FK_SOCIO_cod_empleados FOREIGN KEY (cod_socio)
REFERENCES PERSONA (codigo)
on delete no action
on update cascade



alter table EMPLEADOS
ADD
CONSTRAINT FK_EMPLEADO_cod_empleados FOREIGN KEY (cod_empleados)
REFERENCES PERSONA (codigo)
on update cascade
on delete no action






alter table MANDA_EN
ADD
CONSTRAINT FK_MANDA_EN_supervisa_a FOREIGN KEY (supervisa_a)
REFERENCES EMPLEADOS (cod_empleados)
on delete no action
on update no action,

CONSTRAINT FK_MANDA_EN_es_supervisado_por FOREIGN KEY (es_supervisado_por)
REFERENCES EMPLEADOS (cod_empleados)
on delete no action
on update cascade






