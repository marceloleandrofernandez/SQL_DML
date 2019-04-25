use editorial
go
--Funciones agregadas. No olvidar renombrar las columnas obtenidas por función agregada.
--6.1. Mostrar el promedio de venta anual de todos los títulos
select 'promedio anual' = avg(titulos.venta_anual)
from titulos
--6.2. Mostrar el máximo de adelanto de todos los títulos
select 'Adelanto Maximo' = max(titulos.adelanto)
from titulos
--6.3. Informar cuantos planes de regalías tiene el título MC3021
select 'Total Regalias' = count(plan_regalias.regalias)
from titulos,plan_regalias
where titulos.titulo_id = plan_regalias.titulo_id and titulos.titulo_id = 'MC3021'
--6.4. Obtener el total de ventas realizadas a 30 días en el año 2014
select 'total de ventas realizadas a 30 días en el año 2014' = count(ventas.cantidad)
from ventas
where ventas.forma_pago = '30 días' and year(ventas.fecha_orden) = 2014
--6.5. Informar cuantas formas de pago existen

select 'Formas de Pago Existentes '= count(distinct ventas.forma_pago) 
from ventas