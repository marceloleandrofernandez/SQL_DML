
use editorial
go

--Ordenación
--5.1. Listar los empleados ordenados por apellido, por nombre y por inicial del segundo  nombre.
select * 
from empleados
order by empleados.apellido , empleados.nombre, empleados.inicial_segundo_nombre

--5.2. Listar los títulos pertenecientes al género ‘business’. Por cada fila, listar el id, el título y el precio. 
--Ordenar los datos por precio en forma descendente e id de artículo en forma ascendente.
select titulos.titulo_id , titulos.titulo, titulos.precio
from titulos
order by titulos.precio desc, titulos.titulo_id asc

--5.3. Informar la venta más importante con forma de pago a 60 días. Mostrar el almacén, el número de orden, la fecha de la factura y el título.
--ASDJIAHSDUIGASGDIADI!!!!!!!**************
select  almacenes.almacen_nombre, ventas.numero_orden , ventas.fecha_orden, titulos.titulo
from ventas, almacenes, titulos
where ventas.almacen_id = almacenes.almacen_id and ventas.titulo_id = titulos.titulo_id and ventas.forma_pago = '60 días'
order by ventas.cantidad desc

select *
from ventas

