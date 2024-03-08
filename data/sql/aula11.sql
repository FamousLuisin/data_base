use data_base;

-- Mostra apenas as instancias que possuem relacionamentos com a outra tabela
SELECT u.id as uid, u.first_name, p.id as pid, p.bio
FROM users as u, profiles as p
WHERE u.id = p.user_id;