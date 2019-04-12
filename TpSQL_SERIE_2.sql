--2. Consultas b�sicas con Where
use editorial
go
--2.1. Listar los t�tulos pertenecientes al editor 1389. Por cada fila, listar el t�tulo, el tipo y la
--fecha de publicaci�n.
select titulos.titulo, titulos.genero, titulos.fecha_publicacion
from titulos
where titulos.editorial_id = 1389
--2.2. Tomando las ventas mostrar el id de t�tulo, el t�tulo y el total de ventas que se obtiene
--de multiplicar la cantidad por precio. Renombrar a la columna calculada como �Total
--de venta�.
select ventas.titulo_id, titulos.titulo , 'Total de Venta' = ventas.cantidad * titulos.precio
from ventas, titulos
where ventas.titulo_id = titulos.titulo_id
--2.3. Listar los id de almac�n, n�meros de orden y la cantidad para las ventas que realizo el
--t�tulo �Prolonged Data Deprivation: Four Case Studies� el d�a 29 de mayo de 2013.
select ventas.almacen_id, ventas.numero_orden, ventas.cantidad, ventas.fecha_orden
from  titulos, ventas
Where titulos.titulo = 'Prolonged Data Deprivation: Four Case Studies'
and ventas.fecha_orden = '20130529'
--2.4. Listar el nombre, la inicial del segundo nombre y el apellido de los empleados de las
--editoriales �Lucerne Publishing� y �New Moon Books�
select empleados.nombre, empleados.inicial_segundo_nombre, empleados.apellido
from editoriales, empleados
Where empleados.editorial_id = editoriales.editorial_id and (editorial_nombre = 'Lucerne Publishing' or editoriales.editorial_nombre = 'New Moon Books')
--2.5. Mostrar los t�tulos que no sean de la editorial �Algodata Infosystems�. Informar titulo
--y Editorial.
select titulos.titulo, editoriales.editorial_nombre
from titulos, editoriales
where titulos.editorial_id = editoriales.editorial_id and editorial_nombre <> 'Algodata Infosystems'

--2.6. Listar los t�tulos que tengan m�s regal�as que cualquier otro t�tulo.
--NO ENTIENDO LA CONSIGNA ****!"#!%!#&!"#$!"%!"%#!%
select *
from titulos
--2.7. Informar los empleados contratados en febrero, junio y agosto de cualquier a�o.
--Mostrar apellido, nombre y fecha de contrataci�n y ordenar por mes empezando por
--los de febrero.
select empleados.nombre, empleados.apellido , empleados.fecha_contratacion
from empleados
Where MONTH(fecha_contratacion)=2 or MONTH(fecha_contratacion)=6 or MONTH(fecha_contratacion)=8
order by Month(fecha_contratacion) 
--2.8. Informar las ventas de los siguientes t�tulos: 'Cooking with Computers: Surreptitious Balance Sheets',
--  'The Psychology of Computer Cooking', 'Emotional Security: A New Algorithm'. Mostrar titulo, nombre de almac�n, fecha de orden, n�mero de orden y
--cantidad. Ordenar por t�tulos.
select titulos.titulo , almacenes.almacen_nombre, ventas.fecha_orden , ventas.numero_orden, ventas.cantidad
from ventas, titulos,almacenes
where (ventas.titulo_id = titulos.titulo_id and ventas.almacen_id = almacenes.almacen_id) and 
(titulos.titulo = 'Cooking with Computers: Surreptitious Balance Sheets' or titulos.titulo ='The Psychology of Computer Cooking' or
 titulos.titulo ='Emotional Security: A New Algorithm')
order by titulos.titulo

--2.9. Informar las publicaciones del a�o 2011 exceptuando las de los g�neros business,
--psychology y trad_cook. Mostrar titulo y g�nero. Ordenar por g�nero y titulo.
select titulos.titulo, titulos.genero
from titulos
where year(titulos.fecha_publicacion) = 2011 and (titulos.genero <> 'business' and titulos.genero <> 'psychology' and titulos.genero <> 'trad_cook') 
order by titulos.titulo, titulos.genero
