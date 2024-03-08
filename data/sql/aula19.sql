use data_base;

SELECT 
MAX(salary) as max_salary,
MIN(salary) as min_salary,
ROUND(AVG(salary), 2) as avg_salary,
SUM(salary) as sum_salary,
COUNT(salary) as conut_salary 
FROM users
-- WHERE first_name = 'GHOOOOST'
;


SELECT 
u.first_name,
MAX(u.salary) as max_salary,
MIN(u.salary) as min_salary,
ROUND(AVG(u.salary), 2) as avg_salary,
SUM(u.salary) as sum_salary,
COUNT(u.id) as total 
FROM users u 
inner join profiles as p 
on p.user_id = u.id 
WHERE u.first_name = 'GHOOOOST'
GROUP BY first_name 
ORDER BY total DESC
LIMIT 5;

SELECT 
u.first_name,
MAX(u.salary) as max_salary,
MIN(u.salary) as min_salary,
ROUND(AVG(u.salary), 2) as avg_salary,
SUM(u.salary) as sum_salary,
COUNT(u.id) as total 
FROM users u 
inner join profiles as p 
on p.user_id = u.id 
GROUP BY first_name 
ORDER BY total DESC
LIMIT 10;