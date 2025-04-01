use ImportadoraAutos;

--select * from Autos;

--- obtener el año promedio de todos los autos --
select avg(Año) as 'Año promedio' from Autos;

--- obtener autos más actuales de acuerdo al año promedio
select Marca, Modelo, Año from Autos where Año > (select avg(Año) from Autos);

---- obtener autos anteriores al año promedio
select Marca, Modelo, Año from Autos where Año < (select avg(Año) from Autos);

--- obtener tabla servicios
--select * from Servicios;

--clasificar el costo de servicio: barato, intermedio, caro
select NombreServicio, Costo,
case
	when Costo <= 1000 then 'Barato'
	when Costo <= 2000 then 'Intermedio'
	when Costo > 2000 then 'Caro'
end as 'Clasificación costo'
from Servicios;


