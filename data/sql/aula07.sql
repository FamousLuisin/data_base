use data_base;

-- order by = ordenar por ... (sempre prioriza o primeiro comando)
SELECT id, first_name, email, created_at  as uemail
from users
WHERE id BETWEEN 50 and 100
ORDER BY created_at asc;
-- asc = crescente e desc

-- limit = limita a quantidade de valores
SELECT id, first_name, email, created_at  as uemail
from users
WHERE id BETWEEN 50 and 100
ORDER BY id asc
LIMIT 10;

-- offset = desloca o cursor um numero "n" de casas para frente (Usado em paginação)
SELECT id, first_name, email, created_at  as uemail
from users
WHERE id BETWEEN 50 and 100
ORDER BY id asc
LIMIT 10 offset 10;