SELECT id, UPPER(name) AS name_upper, name FROM users;

SELECT id, LOWER(name) AS name_lower, name FROM users;

SELECT id, LENGTH(name) AS name_length, name FROM users;


SELECT name, SUBSTRING(name, 1, 3), POSITION(' ', in name) FROM users;


-- +1 para que no tome el espacio
SELECT
    name,
    SUBSTRING(name, 0,POSITION(' ' IN name)) AS first_name,
    SUBSTRING(name, POSITION(' ' IN name) +1) AS last_name FROM users;


UPDATE users SET first_name = SUBSTRING(name, 0, POSITION(' ' IN name)),
                 last_name = SUBSTRING(name, POSITION(' ' IN name) +1);