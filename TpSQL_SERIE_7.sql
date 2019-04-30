--Funciones agregadas con agrupaci�n. Renombrar las columnas obtenidas por funci�n agregada.
--7.1. Informar cuantos t�tulos tiene cada autor. Mostrar c�digo de autor y cantidad de libros.
select titulo_autor.autor_id, 'Cantidad de Titulos'=count(titulo_autor.titulo_id)
from titulo_autor
group by autor_id

--select *
--from titulo_autor
--7.2. Informar el total de unidades vendidas por n�mero de orden del al-mac�n 7131. Mostrar n�mero de orden y total vendido.
select ventas.numero_orden, 'total vendido'= sum(ventas.cantidad)
from almacenes ,ventas
where almacenes.almacen_id = 7131 and almacenes.almacen_id=ventas.almacen_id
group by ventas.numero_orden

--select *
--from almacenes ,ventas
--where almacenes.almacen_id = 7131 and almacenes.almacen_id=ventas.almacen_id
--7.3. Informar la �ltima orden generada por cada almac�n con forma de pago a 30 d�as y 60 d�as. Mostrar c�digo de almac�n, fecha de la orden y forma de pago. Ordenar por
--fecha de orden.
select   almacenes.almacen_id,ventas.fecha_orden,ventas.forma_pago
from almacenes, ventas
where almacenes.almacen_id = ventas.almacen_id and ventas.forma_pago = '60 d�as' or ventas.forma_pago = '30 d�as'
order by ventas.fecha_orden desc

--7.4. Informar el nivel de cargo m�s alto alcanzado por alg�n empleado de cada editorial. Mostrar Nombre de la editorial y nivel de cargo. Ordenar por nivel de cargo m�ximo
--empezando por el mayor
select editoriales.editorial_nombre, empleados.nivel_cargo
from empleados,editoriales
where editoriales.editorial_id = empleados.editorial_id 
order by empleados.nivel_cargo desc
--7.5. Mostrar los tres primeros g�neros m�s vendidos. Mostrar g�nero y total de ventas
--ordenado por mayor total de venta.
--7.6. Informar aquellos t�tulos que tengan m�s de un autor. Mostrar c�digo de t�tulo y
--cantidad de autores.
--7.7. Informar el total de regal�as obtenidas por cada t�tulo que haya tenido 40 o m�s
--unidades vendidas. Mostrar el t�tulo y el monto en pesos de las regal�as y ordenar por
--mayor regal�a primero.
--7.8. Informar los autores que hayan escrito varios g�neros de t�tulos. Mostrar nombre y
--cantidad de g�neros ordenados por esta �ltima columna empezando por el mayor.