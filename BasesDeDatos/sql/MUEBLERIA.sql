use master;
go
create database MUEBLERIA;
go
use MUEBLERIA;
go




create table EMPLEADO(
numero int NOT NULL, -- CLAVE PRIMARIA
nif char(9) NOT NULL, -- UNIQUE
nombre varchar(30) NOT NULL,
apellido1 varchar(30) NOT NULL,
apellido2 varchar(30) NULL,
telefono1 char(9) NULL,
telefono2 char(9) NULL,
salario numeric (5,2) NOT NULL,
ccc_entidad char(4) NOT NULL,
ccc_oficina char(4) NOT NULL,
ccc_dc char(2) NOT NULL,
ccc_num_cuenta char(10) NOT NULL,
dietas as (salario*0.10),
cargo char(3) NOT NULL,


CONSTRAINT PK_EMPLEADO_numero PRIMARY KEY (numero),
CONSTRAINT PK_EMPLEADO_nif UNIQUE (nif),
CONSTRAINT CHK_EMPLEADO_cargo CHECK (cargo IN ('PAP','MON','REP'))
);






create table PERSONAL_AP(
num_personal_ap int NOT NULL, -- CLAVE PRIMARIA *********
objetivos_ventas numeric (8,3) NOT NULL DEFAULT 0,
fucion char(3) NOT NULL,

CONSTRAINT PK_PERSONAL_AP_num_personal_ap PRIMARY KEY (num_personal_ap),
);





create table VENDEDOR(
num_vendedor int NOT NULL, -- CLAVE PRIMARIA ***********

CONSTRAINT PK_VENDEDOR_num_vendedor PRIMARY KEY (num_vendedor),
);





create table VIGILA(
vendedor_vigila int NOT NULL, -- PRIMARIA **********
vendedor_es_vigilado_por int NOT NULL, --UNIQUE **************

CONSTRAINT PK_VIGILA_vendedor_vigila PRIMARY KEY (vendedor_vigila),
CONSTRAINT UQ_VIGILA_vendedor_es_vigilado_por UNIQUE (vendedor_es_vigilado_por),
);






create table MONTADOR(
num_montador int NOT NULL, -- CLAVE PRIMARIA ***********

CONSTRAINT PK_MONTADOR_num_montador PRIMARY KEY (num_montador),
);


create table REPARTIDOR(
num_repartidor int NOT NULL, -- CLAVE PRIMARIA ***********


CONSTRAINT PK_REPARTIDOR_num_repartidor PRIMARY KEY (num_repartidor),
);



create table ENTREGA(
fecha_hora_entrega datetime NOT NULL, -- CLAVE PRIMARIA
num_repartidor int NOT NULL, -- CLAVE PRIMARIA **********
id_mueble smallint NOT NULL, -- CLAVE PRIMARIA ***********
fecha_hora_devolucion datetime NULL,

CONSTRAINT PK_ENTREGA_fecha_hora_entrega_num_repartidor_id_mueble PRIMARY KEY (fecha_hora_entrega,num_repartidor,id_mueble),
CONSTRAINT CHK_ENTREGA_comprobar_fecha_devolucion CHECK (fecha_hora_devolucion>fecha_hora_entrega),
CONSTRAINT CHK_ENTREGA_control_fechas CHECK (fecha_hora_entrega>getdate())
);


create table MUEBLE(
identificador smallint NOT NULL, -- CLAVE PRIMARIA
precio numeric (7,2) NOT NULL,
marca varchar(50) NOT NULL,
fecha_fabricacion date NULL,
num_montador int NOT NULL, --CLAVE FORANEA *******

CONSTRAINT PK_MUEBLE_identificador PRIMARY KEY (identificador),
CONSTRAINT CHK_MUEBLE_precio CHECK (precio between 0 and 20000.55),
CONSTRAINT CHK_MUEBLE_fecha_fabricacion_minima CHECK (fecha_fabricacion >= '01-01-2000')
);


-- ***CLAVES FORANEAS***
alter table PERSONAL_AP
ADD
CONSTRAINT FK_PERSONAL_AP_num_personal_ap FOREIGN KEY (num_personal_ap)
REFERENCES EMPLEADO (numero)




alter table VENDEDOR
ADD
CONSTRAINT FK_VENDEDOR_num_vendedor FOREIGN KEY (num_vendedor)
REFERENCES PERSONAL_AP (num_personal_ap)



alter table VIGILA
ADD
CONSTRAINT FK_VIGILA_vendedor_vigila FOREIGN KEY (vendedor_vigila)
REFERENCES VENDEDOR (num_vendedor),

CONSTRAINT FK_VIGILA_vendedor_es_vigilado_por FOREIGN KEY (vendedor_es_vigilado_por)
REFERENCES VENDEDOR (num_vendedor)




alter table MONTADOR 
ADD
CONSTRAINT FK_MONTADOR_num_montador FOREIGN KEY (num_montador)
REFERENCES EMPLEADO (numero)



alter table REPARTIDOR
ADD
CONSTRAINT FK_REPARTIDOR_num_repartidor FOREIGN KEY (num_repartidor)
REFERENCES EMPLEADO (numero)



alter table ENTREGA
ADD
CONSTRAINT FK_ENTREGA_num_repartidor FOREIGN KEY (num_repartidor)
REFERENCES REPARTIDOR (num_repartidor),
CONSTRAINT FK_ENTREGA_id_mueble FOREIGN KEY (id_mueble)
REFERENCES MUEBLE (identificador)




alter table MUEBLE
ADD
CONSTRAINT FK_MUEBLE_num_montador FOREIGN KEY (num_montador)
REFERENCES MONTADOR (num_montador)

