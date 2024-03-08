use data_base;

-- Select e Join com varias tabelas (Mó trampo explicar)
SELECT 
u.id as uid, u.first_name, p.id as pid, p.bio, ur.role_id, r.name as role_name 
FROM users as u
LEFT JOIN profiles as p ON u.id = p.user_id
INNER JOIN users_roles as ur ON u.id = ur.user_id  
INNER JOIN roles as r ON ur.role_id = r.id
WHERE u.id = 90
ORDER  BY uid asc
LIMIT 1 offset 1;