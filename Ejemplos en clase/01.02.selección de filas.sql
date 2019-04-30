-- mostrar los nombres de los empleados
-- sin repetirlos
select distinct nombre
from empleados

-- informar los cargos que tienen empleados
-- sin repetirlos
select distinct cargo_descripcion
from cargos, empleados
where cargos.cargo_id = empleados.cargo_id

/* Listar los paises donde hay editoriales */
select *
from editoriales

--- mostrar los primeros 5 empleados
select top 5 *
from empleados

/* mostrar los 3 primers cargos según el nivel máximo */
select top 3 *
from cargos
order by nivel_maximo desc

-- obtener los titulos publicados el 12 de junio del 2011
select *
from titulos
where fecha_publicacion = '20110612'

-- obtener los titulos publicados 
-- en el mes de octubre de cualquier año
select *
from titulos
where month(fecha_publicacion) = 10

-- obtener los titulos publicados entre 2014 y 2018
select *
from titulos
where year( fecha_publicacion) between 2014 and 2018

-- obtener los titulos publicados 
-- antes del 2014 y despues del 2018
select *
from titulos
where year( fecha_publicacion) not between 2014 and 2018

-- listar los libros sin precio establecido
select *
from titulos
where precio is null

-- listar los libros con precio establecido
select *
from titulos
where precio is not null


-- renombrando tablas
select t.titulo, almacen_id, numero_orden, fecha_orden, cantidad, precio,
	total=precio*cantidad, titulo
from ventas as v, titulos as t
where v.titulo_id = t.titulo_id
and precio*cantidad > 500



