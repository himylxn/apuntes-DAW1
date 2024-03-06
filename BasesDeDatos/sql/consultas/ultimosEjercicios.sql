--UD5. RECUPERAR INFORMACIÓN DE LA BASE DE DATOS (DML).
--SENTENCIAS SQL CON AGRUPAMIENTO (DML)
--RECOMENDACIONES:

--▪ Las soluciones deberán guardarse en un script SQL se nombre
--ud5_SentenciasConAgrupamientoSQL_DML.sql. Dentro de este script utiliza comentarios para indicar
--dónde empieza cada tarea y los apartados de cada una de ellas.



--▪ Aunque no se te indique explícitamente, a la hora de hacer las consultas recuerda que todos los
--campos resultantes deben tener un nombre que identifique su contenido.
-- TAREA 1: Resuelve las siguientes consultas en la BD EMPLEADOS usando T-SQL. Aunque en esta
--práctica se trata de repasar sentencias con agrupamiento, deberás decidir si es necesario usarlo o no
--en las consultas que se te plantean.

use EMPLEADOS;

select * from OFICINA


--1.1. Media de ventas de todas las oficinas.
use EMPLEADOS;

SELECT avg(VENTAS) as "Media Ventas"
FROM OFICINA

--1.2. Gasto total realizado por el cliente "ACME MFG."
use EMPLEADOS;

SELECT sum(p.IMPORTE) as importe_total
FROM CLIENTE c inner join PEDIDO p 
		on c.NUM_CLIE = p.CLIE
WHERE c.EMPRESA = 'ACME MFG.'


--1.3. Gasto total realizado por cada cliente. En el resultado aparecerá el nombre de la empresa cliente y
--en una segunda columna el importe del gasto en pedidos que lleva realizado el cliente hasta ahora.
--En el resultado deberán aparecer primero los clientes con mayor gasto.
use EMPLEADOS;

SELECT c.EMPRESA, isnull(sum(p.IMPORTE),0) as importe_total
FROM CLIENTE c left join PEDIDO p 
		on c.NUM_CLIE = p.CLIE
group by c.NUM_CLIE,c.EMPRESA
order by importe_total DESC;


--1.4. Realiza de nuevo la consulta anterior, pero ahora sólo deberán aparecer los clientes que hayan
--realizado más de 10000 euros de gasto total.
use EMPLEADOS;

SELECT c.EMPRESA, sum(p.IMPORTE) as importe_total
FROM CLIENTE c inner join PEDIDO p 
		on c.NUM_CLIE = p.CLIE
group by c.NUM_CLIE,c.EMPRESA
HAVING sum(p.IMPORTE)>10000
order by importe_total DESC;



--1.5. Realiza de nuevo la consulta anterior, pero ahora sólo deberán aparecer los clientes que hayan
--realizado más de 10000 euros de gasto total y además hayan hecho más de 2 pedidos.
use EMPLEADOS;

SELECT c.EMPRESA, sum(p.IMPORTE) as importe_total
FROM CLIENTE c inner join PEDIDO p 
		on c.NUM_CLIE = p.CLIE
group by c.NUM_CLIE,c.EMPRESA
HAVING sum(p.IMPORTE)>10000 and COUNT(p.NUM_PEDIDO)>2
order by importe_total DESC;




--1.6. Nombre de aquellos clientes cuyo límite de crédito supera el límite de crédito medio.
SELECT c.EMPRESA
FROM CLIENTE c
WHERE c.LIMITE_CREDITO > (	select AVG(cl.LIMITE_CREDITO)
							FROM CLIENTE cl)



--1.7. Código y descripción del producto o productos con el precio menor.
SELECT pr.ID_FAB,pr.ID_PRODUCTO,pr.DESCRIPCION
FROM PRODUCTO pr
WHERE PRECIO = (SELECT min(PRECIO)
				FROM PRODUCTO)



--1.8. Número total de pedidos que se han realizado del producto con descripción ARTICULO TIPO 2.
SELECT count(p.NUM_PEDIDO) as total
FROM PRODUCTO pr inner join pedido p
		on pr.ID_FAB= p.FAB and
		pr.ID_PRODUCTO= p.PRODUCTO
WHERE pr.DESCRIPCION= 'ARTICULO TIPO 2'




--1.9. Número total de pedidos que se han realizado del producto con descripción ARTICULO TIPO 2 cuyo
--importe supera los 800 euros.





--1.10. Número total de pedidos de cada producto. En el resultado aparecerá la clave de cada producto, la
--descripción y el número de pedidos que se han realizado de ese producto.




--1.11. Número de títulos diferentes que tienen los representantes de ventas.





--1.12. Nombre de los empleados que son directores de más de una oficina.




--1.13. Nombre de los vendedores que han realizado más de 3 pedidos.




--1.14. Número de oficinas que hay por región. Aparecerá el nombre de la región y en la misma columna
--separada por un guión, la cantidad de oficinas situadas en esa región.





--1.15. Número total de empleados que hay en cada oficina. Aparecerá la ciudad de la oficina y en una
--segunda columna la cantidad de empleados que trabajan en la misma.