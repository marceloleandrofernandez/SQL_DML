--Unidad 01 � SQL DML � Practica
--Dado el siguiente modelo relacional correspondiente a un sistema de editorial:
--Se piden realizar las siguientes operaciones en Sql-DML:

--1. Consultas b�sicas
use editorial
go
--1.1. Listar los cargos.
select *
from cargos

--1.2. Listar todas las columnas de empleados y la descripci�n del cargo que tienen.

select empleados.*, cargos.cargo_descripcion 
from empleados, cargos
Where empleados.cargo_id = cargos.cargo_id

--1.3. Listar la tabla empleados y reemplazar los nombres de columnas que tengan guion bajo por espacio
select * 
from empleados

--1.4. Calcular A = (pi * r)^2   donde r = 10 y la funci�n Pi() para  pi
select POWER((PI() * 10),2)
--select PI() * 10 
--1.5. Mostrar por cada t�tulo su nombre y cuanto corresponde de regal�as por cada 1000 t�tulos vendidos. 
--Esta columna se debe mostrar como �Regal�as x cada 1000
--unidades�. Titulo.regal�as es un porcentaje.
select  titulos.titulo , 'Regal�as x cada 1000 unidades' = (titulos.precio * titulos.regalias / 100)*1000 
 
from titulos


--1.6. Listar los nombres de autores sin repetirlos.
select distinct autores.autor_nombre
from autores
--1.7. Listar los pa�ses de las editoriales sin repetirlos.
select distinct editoriales.pais
from editoriales
--1.8. Listar los nombres de almac�n que hayan tenido ventas sin repetirlos.
select distinct almacenes.almacen_nombre
from almacenes,ventas
where almacenes.almacen_id=ventas.almacen_id
--1.9. Listar las primeras 5 ventas.
select top 5 *
from ventas
order by ventas.fecha_orden

