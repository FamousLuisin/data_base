use data_base;

SELECT u.first_name, p.bio  FROM users u 
inner join profiles as p 
on p.user_id = u.id 
WHERE u.first_name = 'katelyn';

-- Atualizar registros usando join
update users as u
inner join profiles as p 
on p.user_id = u.id 
set p.bio = CONCAT(p.bio, ' atualizado') 
WHERE u.first_name = 'katelyn';

-- Deletar registros com o join (Pode usar a abreviação para apagar a tabela que deseja, caso tenha mais de uma)
DELETE P FROM users u 
inner join profiles as p 
on p.user_id = u.id 
WHERE u.first_name = 'katelyn';