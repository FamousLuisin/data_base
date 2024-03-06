-- Selecionar a base de dados, caso ela não esteja definida como padrão
use data_base;

-- Select todas colunas
select * from users u;

-- Selecionar colunas especificas e colocar um apelido na tabela
SELECT u.id, u.email, u.first_name from users u;

-- Selecionar usando where(Filtrar registros)
SELECT * from users WHERE id=10;

-- buscar por string
SELECT users.id, users.first_name from users WHERE first_name="Brittany";

-- Maior igual
SELECT * from users WHERE id>=8;

-- Diferente pode usar != tbm
SELECT * from users WHERE id<>8;

-- Usando and e or
SELECT * from users WHERE id<>3 and first_name="Ferris";
SELECT * from users WHERE id=3 or first_name="Aspen";