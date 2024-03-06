--1.1. BD EMPRESA. (2 puntos)
--Consulta con 4 columnas: el número identificador, el nombre completo (apellido 1
--apellido2, nombre), los días que lleva contratado en la empresa y la cuota de ventas, de
--cada uno de los empleados que están asignados a algún cliente. Si algún vendedor no
--tiene cuota asignada deberá aparecer un 0 en su lugar.
--En el resultado deben aparecer primero los empleados que lleven menos días contratados.
--IMPORTANTE: No puedes usar ningún tipo de join ni tampoco una consulta compuesta.

use EMPRESA_Dylan;

SELECT e.numero, rtrim(e.ape1 + ' ' + isnull(e.ape2, ' ')) + ', ' + e.nome as nome_completo, datediff (day, e.data_contrato, getdate()) as dias_contratado, isnull(e.cota_de_vendas, 0) as ventas_a_alcanzar
FROM EMPREGADO e
WHERE e.numero in	(select c.num_empregado_asignado
					from CLIENTE c)
ORDER BY dias_contratado;



--1.2. BD EMPRESA. (1’5 puntos)
--Consulta que devuelva la lista de los pedidos que hace más de 50 meses y menos de 60
--meses que se han realizado.
--IMPORTANTE: Para hacer la comprobación de los meses que hace que se ha realizado el
--pedido no puedes usar ni la cláusula IN, ni OR ni tampoco los operadores >=, >, <, <=, !=, =
--<>.
--En el resultado deberá aparecer el número del pedido y en una segunda columna la
--fecha del pedido con formato dd-mm-aaaa (Fíjate que se separan con guiones y llámale
--FechaPed).
--Deben aparecer los pedidos más recientes primero. Asegúrate que aparecen bien
--ordenados.

use EMPRESA_Dylan;

SELECT p.numero, CONVERT(char(10), p.data_pedido, 105) as FechaPed
FROM PEDIDO p
WHERE DATEDIFF(month,p.data_pedido,getdate()) between 109 and 115
ORDER BY FechaPed desc




--1.3. BD EMPRESA. (1’5 puntos)
--Utiliza una consulta compuesta para obtener el código de los productos de los que no se
--han hecho pedidos. En el resultado deben aparecer el identificador del fabricante y el del
--producto en una única columna de nombre PRODUCTOS SIN PEDIDO, por ejemplo
--aparecerá ASUAK47A. El resultado deberá aparecer ordenado alfabéticamente.
--IMPORTANTE: El nombre

use EMPRESA_Dylan;

SELECT p.cod_fabricante + p.identificador as "PRODUCTOS SIN PEDIDOS"
FROM PRODUTO p
EXCEPT
SELECT pe.cod_fabricante+pe.id_produto
FROM PEDIDO pe
ORDER BY "PRODUCTOS SIN PEDIDOS"






--1.4. BD EMPRESA. (2’75 puntos)
--Consulta que devuelva el nombre de cada uno de los empleados de la BD, su fecha de
--contrato con formato dd/mm/aaaa y en otra tercera columna el importe medio de los
--pedidos del empleado (o llamado también vendedor).
--Si existiese algún vendedor (empleado) que no ha vendido nada, en la columna del
--importe medio deberá aparecer la frase ‘ESTE EMPLEADO NO TIENE PEDIDOS’.
--Sólo se mostrarán los empleados cuyo pedido más caro no supere los 20000€ de
--importe y que además, hayan sido contratados un día 1, 6 ó 26 de cualquier mes y de
--cualquier año.
--En la columna del importe medio se deberán mostrar los importes con 8 dígitos como
--máximo en la parte entera y 2 decimales.
--Deberán aparecer primero en el resultado los empleados con mayor importe medio. En
--caso de que hubiese varios empleados con el mismo importe medio, deberán aparecer
--primero los que tienen mayor antigüedad en la empresa. Asegúrate que aparecen bien
--ordenados.

use EMPRESA_Dylan;

SELECT e.nome, CONVERT(char(10), e.data_contrato, 103) as FechaContrato, 
isnull(convert(varchar(30), convert(numeric(10,2),AVG(pe.cantidade*pr.prezo))), 'ESTE EMPLEADO NO TIENE PEDIDOS') as MediaPedidos
FROM EMPREGADO e LEFT JOIN PEDIDO pe on e.numero=pe.num_empregado
	 LEFT JOIN PRODUTO pr on pe.cod_fabricante=pr.cod_fabricante and pe.id_produto=pr.identificador
WHERE day(e.data_contrato) in (1,6,26)
GROUP BY e.numero, e.nome, e.data_contrato
HAVING isnull(max(pe.cantidade*pr.prezo),0)<=20000
ORDER BY avg (pe.cantidade*pr.prezo) DESC, e.data_contrato


--Consulta que devuelva el 50% de los socios cuyo nombre de pila tiene por segunda letra
--una A y que pagan cuotas cuyo importe sea mayor o igual que 29 y menor o igual que 100.
--La consulta mostrará en 5 columnas el número de socio, el nombre de pila, el primer
--apellido, el número de caracteres del primer apellido, el nombre del mes en que nació y el
--importe de la cuota que paga. El nombre del mes en que nació y el importe de la cuota
--aparecerán en una única columna separados por un guión (-). Esta columna se llamará
--MesNac-Cuota (con un guión medio).
--El resultado deberá aparecer ordenado por mes de nacimiento, es decir, los de enero
--aparecerán antes que los de febrero, los de febrero antes que los de marzo, y así
--sucesivamente.
use SOCIEDADE_CULTURAL_Dylan;

SELECT TOP 50 PERCENT s.numero, s.nome, s.ape1, LEN(s.ape1) as long_ape1, DATENAME(MONTH,s.data_nac) + '-' +CONVERT( varchar(10), c.importe) as "SOCIEDADE CULTURAL"
FROM SOCIO s inner join COTA c on s.cod_cota=c.codigo
WHERE SUBSTRING(s.nome,2,1)='A' and c.importe between 29 and 100
ORDER BY MONTH(s.data_nac)


