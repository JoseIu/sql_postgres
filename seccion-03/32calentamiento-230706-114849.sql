-- Nombre, apellido e IP, donde la última conexión se dió de 221.XXX.XXX.XXX

SELECT first_name, last_name, last_connection AS ip FROM users WHERE last_connection LIKE '221.%';

-- Nombre, apellido y seguidores(followers) de todos a los que lo siguen más de 4600 personas

SELECT first_name, last_name, followers FROM users WHERE followers > 4600;

-- AVG para hcer un promedio de followers
SELECT 
COUNT(*) AS total_users,
MIN(followers) AS min_followers,
MAX(followers) AS max_followers,
ROUND(AVG(followers), 2) AS avg_followers,
 
FROM users;
