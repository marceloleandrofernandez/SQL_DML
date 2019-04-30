select 'Hello World'

-- establece la base de datos actual
use editorial
go

-- todas las filas y todas las columnas de autores
select *
from autores

-- todas las filas y las columnas especificadas de autores
select autor_nombre, autor_apellido, autor_id
from autores

-- todas las filas que contengan el apellido especificado y las columnas especificadas de autores
select autor_nombre, autor_apellido, autor_id
from autores
where autor_apellido = 'Ann'


-- todas las filas que contengan la ciudad especificada y las columnas especificadas de autores
select autor_nombre, autor_apellido, autor_id
from autores
where ciudad = 'Oakland'

-- todas las filas que contengan la ciudad especificada y las columnas especificadas de autores y titulo_autor
select autor_nombre, autor_apellido, titulo_autor.autor_id
from autores, titulo_autor
where autores.autor_id = titulo_autor.autor_id
and ciudad = 'Oakland'

-- todas las filas que contengan la ciudades especificadas y las columnas especificadas de autores y titulo_autor
select autor_nombre, autor_apellido, titulo_autor.autor_id
from autores, titulo_autor
where autores.autor_id = titulo_autor.autor_id
and (ciudad = 'Oakland' or ciudad = 'Nashville')

-- idem anterior renombrando las columnas
select autor_nombre as nombre, apellido=autor_apellido, titulo_autor.autor_id id
from autores, titulo_autor
where autores.autor_id = titulo_autor.autor_id
and (ciudad = 'Oakland' or ciudad = 'Nashville')

-- calcular el total vendido de titulos
select almacen_id, numero_orden, fecha_orden, cantidad, precio,
	total=precio*cantidad, titulo
from ventas, titulos
where ventas.titulo_id = titulos.titulo_id

-- idem anterior con únicamente las ventas mayores a $500
select almacen_id, numero_orden, fecha_orden, cantidad, precio,
	total=precio*cantidad, titulo
from ventas, titulos
where ventas.titulo_id = titulos.titulo_id
and precio*cantidad > 500

