use data_base;

-- insert select = insere valores em uma tabela usando outra
insert into profiles 
(bio, description, user_id)
select CONCAT('Bio de ', first_name) , CONCAT('Description de ', first_name) , id 
from users;