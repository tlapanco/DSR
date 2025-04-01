use ImportadoraAutos;

--select * from Autos;

--- obtener el a�o promedio de todos los autos --
select avg(A�o) as 'A�o promedio' from Autos;

--- obtener autos m�s actuales de acuerdo al a�o promedio
select Marca, Modelo, A�o from Autos where A�o > (select avg(A�o) from Autos);

---- obtener autos anteriores al a�o promedio
select Marca, Modelo, A�o from Autos where A�o < (select avg(A�o) from Autos);

--- obtener tabla servicios
--select * from Servicios;

--clasificar el costo de servicio: barato, intermedio, caro
select NombreServicio, Costo,
case
	when Costo <= 1000 then 'Barato'
	when Costo <= 2000 then 'Intermedio'
	when Costo > 2000 then 'Caro'
end as 'Clasificaci�n costo'
from Servicios;


