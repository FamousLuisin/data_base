use data_base;

-- Mostra apenas as instancias que possuem relacionamentos com a outra tabela
SELECT u.id as uid, u.first_name, p.id as pid, p.bio
FROM users as u
INNER JOIN profiles p 
ON u.id = p.user_id 
WHERE u.first_name LIKE '%a'
ORDER BY u.first_name ASC
LIMIT 5;

-- Mostra todas as instancias da tabela mais a esquerda mesmo se ela não possuir relacionamnetos com a outra tabela
SELECT u.id as uid, u.first_name, p.id as pid, p.bio
FROM users as u
LEFT JOIN profiles p 
ON u.id = p.user_id
WHERE p.id IS NULL;

-- Mostra todas as instancias da tabela mais a direita mesmo se ela não possuir relacionamnetos com a outra tabela
SELECT u.id as uid, u.first_name, p.id as pid, p.bio
FROM users as u
RIGHT JOIN profiles p 
ON u.id = p.user_id;
