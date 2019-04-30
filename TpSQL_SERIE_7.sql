--Funciones agregadas con agrupación. Renombrar las columnas obtenidas por función agregada.
--7.1. Informar cuantos títulos tiene cada autor. Mostrar código de autor y cantidad de libros.
select titulo_autor.autor_id, 'Cantidad de Titulos'=count(titulo_autor.titulo_id)
from titulo_autor
group by autor_id

--select *
--from titulo_autor
--7.2. Informar el total de unidades vendidas por número de orden del al-macén 7131. Mostrar número de orden y total vendido.
select ventas.numero_orden, 'total vendido'= sum(ventas.cantidad)
from almacenes ,ventas
where almacenes.almacen_id = 7131 and almacenes.almacen_id=ventas.almacen_id
group by ventas.numero_orden

--select *
--from almacenes ,ventas
--where almacenes.almacen_id = 7131 and almacenes.almacen_id=ventas.almacen_id
--7.3. Informar la última orden generada por cada almacén con forma de pago a 30 días y 60 días. Mostrar código de almacén, fecha de la orden y forma de pago. Ordenar por
--fecha de orden.
select   almacenes.almacen_id,ventas.fecha_orden,ventas.forma_pago
from almacenes, ventas
where almacenes.almacen_id = ventas.almacen_id and ventas.forma_pago = '60 días' or ventas.forma_pago = '30 días'
order by ventas.fecha_orden desc

--7.4. Informar el nivel de cargo más alto alcanzado por algún empleado de cada editorial. Mostrar Nombre de la editorial y nivel de cargo. Ordenar por nivel de cargo máximo
--empezando por el mayor
select editoriales.editorial_nombre, empleados.nivel_cargo
from empleados,editoriales
where editoriales.editorial_id = empleados.editorial_id 
order by empleados.nivel_cargo desc
--7.5. Mostrar los tres primeros géneros más vendidos. Mostrar género y total de ventas
--ordenado por mayor total de venta.
--7.6. Informar aquellos títulos que tengan más de un autor. Mostrar código de título y
--cantidad de autores.
--7.7. Informar el total de regalías obtenidas por cada título que haya tenido 40 o más
--unidades vendidas. Mostrar el título y el monto en pesos de las regalías y ordenar por
--mayor regalía primero.
--7.8. Informar los autores que hayan escrito varios géneros de títulos. Mostrar nombre y
--cantidad de géneros ordenados por esta última columna empezando por el mayor.