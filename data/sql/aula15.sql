use data_base;

INSERT INTO users_roles (user_id, role_id)
VALUES (12, 1);

SELECT user_id, role_id from users_roles WHERE 
user_id = 12 and role_id = 1;

-- Order by rand() seleciona os id das roles de maneira aleatoria
SELECT u.id,
(SELECT id from roles order by rand() limit 1)
from users u;

-- Inserir varios valores (No caso para cada usuario, esta sendo atribuido uma role aleatorio)
INSERT INTO users_roles (user_id, role_id)
SELECT u.id,
(SELECT id from roles order by rand() limit 1)
from users u;

-- Inserir varios valores (No caso para cada usuario escolhido de manira aleatoria, esta sendo atribuido uma role aleatorio)
INSERT ignore INTO users_roles (user_id, role_id)
SELECT u.id,
(SELECT id from roles order by rand() limit 1)
from users u order by rand() limit 5;
-- O ignore serve para ignorar erros e continuar a excecução