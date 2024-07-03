CREATE TABLE users (

    name VARCHAR(10) UNIQUE
);

INSERT INTO users (name)
VALUES ('Sara'), ('Vincent'), ('Pedro'),('Katerino');

UPDATE users SET name = 'Katerino2' WHERE name = 'Katerino';


SELECT * FROM users LIMIT 2;


SELECT * FROM users WHERE name LIKE '_elissa%';



-- auto commit;