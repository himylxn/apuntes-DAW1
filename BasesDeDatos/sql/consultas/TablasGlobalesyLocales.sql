use SOCIEDADE_CULTURAL_Dylan;

select * into actividade2 -- Tabla permanente creada
from ACTIVIDADE;
select * from ACTIVIDADE;
select * from actividade2;

-- Las tablas temporales se borran cuando se cierra sesion o se borre manualmente.

select * into #actividade3 -- Tabla temporal local (solo se puede acceder desde aqui)
from ACTIVIDADE;

select * from #actividade3;


select * into ##actividade3 -- Tabla temporal global (se puede acceder desde cualquier lado)
from ACTIVIDADE;

select * from ##actividade3;









-- 2. Creación de táboas novas a partires de consultas (SELECT…INTO)

-- Consulta de exemplo 2: Crearase unha táboa temporal local de nome SOCIO_MOROSO
-- co nif e nome completo dos socios que deben algunha actividade. Ao rematar
-- eliminarase a táboa nova coa cláusula DROP TABLE para non modificar o deseño
-- orixinal da BD.

select DISTINCT s.nif, s.nome, s.ape1, isnull (s.ape2, '') as ape2
	into #consulta2
from SOCIO s inner join SOCIO_REALIZA_ACTI sra
	on s.numero=sra.num_socio
where sra.pagada='N';

select * from #consulta2












-- 3. Inserción de filas novas (INSERT)

-- Consulta de exemplo 3: Engadiranse dúas novas cotas de balde, unha con código 20 e
-- nome COTA GRATIS, e a outra con código 30 e nome OUTRA GRATIS. Antes e despois
-- do INSERT faremos a consulta que nos amosa a información da táboa en cada
-- momento.
select * from cota;

insert into cota (codigo, nome, importe)
values (20, 'COTA GRATIS', 0),
	   (30, 'OUTRA GRATIS', 0);

-- Consulta de exemplo 4: Engadiranse na táboa COTA unha nova de nome NOVA e
-- código 80 co mesmo importe que a cota de nome HABITUAL. Antes e despois do
-- INSERT faremos a consulta que nos amosa a información da táboa en cada momento

select * from cota;

insert into cota (codigo, nome, importe)
select 80, 'NOVA', importe
from cota
where nome = 'HABITUAL';













-- 4. Eliminación de filas (DELETE e TRUNCATE TABLE)

select * from cota;

delete from cota
where codigo in (20,30,80)

-- Consulta de exemplo 6: Para facer esta consulta primeiro crearemos unha táboa
-- temporal local SOCIO2 copia da táboa SOCIO empregando a sentenza SELECT...INTO.
-- Despois teranse que eliminar os socios da táboa SOCIO2 que deben algunha actividade.
-- A eliminación farase de dous xeitos, nunha primeira solución empregando unha
-- consulta subordinada e, nunha segunda cunha combinación interna. 

select * into #SOCIO2
from SOCIO;

-- consulta subordinada

delete from #SOCIO2
where numero in (select sra.num_socio
				from SOCIO_REALIZA_ACTI sra
				where sra.pagada= 'N')

select * from #SOCIO2


drop table #SOCIO2


-- consulta de combinacion interna

select * into #SOCIO2 --creamos nueva tabla temporal
from SOCIO;

select * from #SOCIO2;

delete from #SOCIO2 -- borramos lo que nos pide
from #SOCIO2 s inner join SOCIO_REALIZA_ACTI sra
	on s.numero = sra.num_socio
where sra.pagada='N';

select * from #SOCIO2;



-- VALOR AUTONUMERICO
create table t1(
id int identity (10,15), -- valor autonumerico, el primer numero es COMO EMPIEZA y el segundo es DE CUANTO EN CUANTO VA A IR en este caso 15
saludo varchar(10) not null
);

select * from t1;

insert into t1 (saludo) -- el campo identity al crearse automaticamente no hace falta ponerlo aqui
values	('hola'),
		('bos dias');

drop table t1;











-- 4.2. Sentenza TRUNCATE TABLE
-- (Lo que borramos con trucate table se borra todo y no hay manera de recuperarlo)


-- Consulta de exemplo 7: Para facer esta consulta primeiro crearase unha táboa
-- EMPREGADO2, copia da táboa EMPREGADO coas mesmas filas e columnas. A
-- continuación eliminaremos todas as filas da táboa nova do xeito máis rápido e eficiente
-- posible. Antes e despois do borrado faremos a consulta que nos amosa o número de da
-- táboa EMPREGADO2 en cada momento. Ao rematar eliminarase a táboa nova coa
-- cláusula DROP TABLE para non modificar o deseño orixinal da BD.

select * into EMPREGADO2 
from EMPREGADO;

truncate table EMPREGADO2; -- borramos todos los campos

select * from EMPREGADO2;

drop table EMPREGADO2;













-- 5. Modificación de contido das filas (UPDATE)
-- Consulta de exemplo 8: Nesta consulta incrementarase o prezo das actividades en 4
-- euros. Para deixar os datos orixinais da BD, faremos unha segunda modificación de
-- redución do prezo en 4 euros. Faremos unha consulta antes e despois do incremento
-- do prezo.

select * from ACTIVIDADE;

update ACTIVIDADE
set prezo = prezo + 4;

select * from ACTIVIDADE;


-- Consulta de exemplo 9: Nesta consulta incrementarase en 7 o número de prazas da
-- actividade con número 10, o seu nome pasará a ser CURSO TENIS e aumentarase o seu
-- prezo en 5'14%. Para deixar os datos orixinais da BD, faremos unha segunda
-- modificación e a táboa quedará como estaba antes da modificación. Faremos unha
-- consulta antes e despois da modificación para comprobar os cambios.

select *
from ACTIVIDADE
where identificador= 10;

update ACTIVIDADE
set num_prazas = num_prazas + 7,
	nome = 'TENIS PARA PRINCIPIENTES',
	prezo = prezo * 1.0514
where identificador = 10;

select *
from ACTIVIDADE
where identificador= 10;


-- Consulta de exemplo 10: Modificarase o prezo das cotas gratis co valor do prezo máis
-- alto das actividades. Para deixar os datos orixinais da BD, faremos unha segunda
-- modificación e a táboa quedará como estaba antes da modificación. Faremos unha
-- consulta antes e despois da modificación para comprobar os cambios.

select * from cota;

update cota
set importe = (select max (prezo) from ACTIVIDADE)
where importe = 0

select * from cota;


-- Consulta de exemplo 11: Poránselle como pagadas todas as actividades aos socios que
-- teñan abonada a cota anual. Para deixar os datos orixinais da BD, faremos unha
-- segunda modificación e a táboa quedará como estaba antes da modificación. Faremos
-- unha consulta antes e despois da modificación para comprobar os cambios.

select * from SOCIO_REALIZA_ACTI
select * from SOCIO;

update SOCIO_REALIZA_ACTI
set pagada='S'
from socio s inner join SOCIO_REALIZA_ACTI sra
	on s.numero = sra.num_socio
where s.abonada='S';


