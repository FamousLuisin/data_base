use data_base;

SELECT first_name, COUNT(id) as total  FROM users 
GROUP BY first_name 
ORDER BY total DESC;

SELECT u.first_name, COUNT(u.id) as total  FROM users u 
inner join profiles as p 
on p.user_id = u.id 
WHERE u.first_name = 'GHOOOOST'
GROUP BY first_name 
ORDER BY total DESC
LIMIT 5;