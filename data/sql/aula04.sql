use data_base;

-- Fazer uma seleção
select * from users
where 
created_at >= '2019-12-29 01:46:33' 
and
created_at <= '2020-02-19 15:33:39'
order by created_at;

-- Fazer uma seleção com between por data de criação e id
select * from users
where
created_at between '2019-12-29 01:46:33' and '2020-02-19 15:33:39'
and
id BETWEEN 55 and 71;