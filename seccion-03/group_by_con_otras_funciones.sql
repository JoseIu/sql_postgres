--Seleccionar todos los emeails, pero solodel @ en adelante

SELECT email, SUBSTRING(email , POSITION('@'IN email) +1) AS domain FROM users;


--Seleccionar todos lso emails, agrupoando por dominio OJO que si se repite el subdominio, se agrupan

SELECT COUNT(*), SUBSTRING(email, POSITION('@' IN email)+1) AS domain FROM users

GROUP BY SUBSTRING(email, POSITION('@' IN email)+1);

--Lo mismo que antes pero ahora solo mostrar los dominios que tienen mas de 1 ocurrencia

SELECT COUNT(*), SUBSTRING(email, POSITION('@' IN email) +1) AS domain FROM users
GROUP BY SUBSTRING(email, POSITION('@' IN email)+1)
HAVING COUNT(*) > 1;
