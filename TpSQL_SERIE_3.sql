use editorial
go
--3. Manejo de valores nulos
--3.1. Mostrar aquellos libros que tienen el precio en nulo. Mostrar id de t�tulo, nombre y nombre del editor.
select titulos.titulo_id,titulos.titulo, editoriales.editorial_nombre
from titulos, editoriales
where titulos.editorial_id = editoriales.editorial_id and titulos.precio is null
--3.2. Mostrar todos los libros. Mostrar id de t�tulo, nombre y nombre del editor y el precio.Aquellos que tienen el precio en nulo cambiarlo por 0.
select titulos.titulo_id, titulos.titulo,editoriales.editorial_nombre, ISNULL(titulos.precio,0)
from titulos, editoriales
where titulos.editorial_id = editoriales.editorial_id
--3.3. Mostrar los descuentos que tengan una cantidad m�nima establecida. Informar tipo descuento, cantidad m�nima y descuento
select descuentos.tipo_descuento, descuentos.cantidad_minima, descuentos.descuento
from descuentos
where cantidad_minima is not null
--3.4. Mostrar los t�tulos y el adelanto que le corresponde a cada uno, si este valor fuera nulo informar le valor predeterminado de 1000 pesos.
select titulos.titulo, adelanstos = isnull(titulos.adelanto, 1000)
from titulos

