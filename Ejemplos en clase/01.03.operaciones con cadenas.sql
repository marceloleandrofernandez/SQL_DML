select *
from cargos
where cargo_descripcion LIKE 'director%'

select *
from cargos
where cargo_descripcion LIKE '%es'

select *
from cargos
where cargo_descripcion LIKE '%de%'

select *
from cargos
where cargo_descripcion LIKE '%en%'

select *
from cargos
where cargo_descripcion LIKE '% en %'

select *
from cargos
where cargo_descripcion LIKE '%p_blicas%'

select *
from cargos
where cargo_descripcion LIKE '%de_re%'

select *
from cargos
where cargo_descripcion LIKE '%p[u,ú]blicas%'

select *
from cargos
where cargo_descripcion LIKE '%p[^u]blicas%'

select *
from cargos
where cargo_descripcion LIKE '[D,G][I,E]R%'

select *
from titulos
where genero LIKE '%/_%' ESCAPE '/'

select *
from empleados
where apellido  like '[r-t]%'

select *
from empleados
where apellido  like '[r-t,R-T]%'

select *
from empleados
where apellido  like '[^r-t]%'

select *
from empleados
where apellido  like '[^r,t]%'
