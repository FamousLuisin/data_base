use data_base;

-- Exercicio 01
INSERT INTO users 
(first_name, last_name, email, password_hash, salary)
VALUES
('Jotaro', 'Joestar', 'jojo@email.com', 'jotaro_hash', 3500.55);

INSERT INTO users 
(first_name, last_name, email, password_hash, salary)
VALUES
('Josuke', 'Higashikata', 'higashikata@email.com', 'josuke_hash', 9500.55),
('Giorno', 'Giovana', 'giorno@email.com', 'giorno_hash', 30500.55),
('Jolyne', 'kujo', 'jolyne@email.com', 'jolyne_hash', 9000.55),
('Joseph', 'Joestar', 'joseph@email.com', 'joseph_hash', 6500.55);

-- Exercicio 02
INSERT INTO profiles
(bio, description, user_id)
SELECT CONCAT('Bio do ', first_name), CONCAT('Description do ', first_name), id from users
WHERE id BETWEEN 101 and 105;

-- Exercicio 03
INSERT INTO users_roles
(user_id, role_id)
VALUES
(101, 3);

INSERT INTO users_roles
(user_id, role_id)
SELECT u.id, (SELECT id from roles order by rand() limit 1) 
FROM users as u
WHERE id BETWEEN 102 and 105;

-- Exercicio 04
SELECT * FROM users
ORDER BY id DESC 
LIMIT 5;

-- Exercicio 05
UPDATE users SET password_hash = 'joseph_hash_update'
WHERE id = 105; 

-- Exercicio 06
DELETE FROM users_roles 
WHERE user_id = 90 and role_id = 3;

-- Exercicio 07
DELETE FROM users_roles 
WHERE user_id=95 and role_id=1;

-- Exercicio 08
SELECT u.id, u.first_name, ur.role_id, p.bio  FROM users as u
INNER JOIN users_roles ur ON u.id = ur.user_id
INNER JOIN profiles p  ON u.id = p.user_id 
;

-- Exercicio 09
SELECT u.id, u.first_name, ur.role_id, p.bio  FROM users as u
LEFT JOIN users_roles ur ON u.id = ur.user_id
INNER JOIN profiles p  ON u.id = p.user_id 
;

SELECT u.id, u.first_name, ur.role_id, p.bio  FROM users as u
LEFT JOIN users_roles ur ON u.id = ur.user_id
LEFT JOIN profiles p  ON u.id = p.user_id 
;

-- Exercicio 10
SELECT u.id, u.first_name, ur.role_id, p.bio, u.salary  FROM users as u
INNER JOIN users_roles ur ON u.id = ur.user_id
INNER JOIN profiles p  ON u.id = p.user_id 
ORDER BY u.salary ASC 
;