-- Selecionar a base de dados, caso ela não esteja definida como padrão
use base_de_dados;

-- Select todas colunas
select * from users u;

-- Selecionar colunas especificas e colocar um apelido na tabela
SELECT u.id, u.email, u.first_name from users u;

-- Selecionar usando where(Filtrar registros)
SELECT * from users WHERE id=10;

-- buscar por string
SELECT users.id, users.first_name from users WHERE first_name="Ronoroa";

-- Maior igual
SELECT * from users WHERE id>=8;

-- Diferente pode usar != tbm
SELECT * from users WHERE id<>8;

-- Usando and e or
SELECT * from users WHERE id<>10 and first_name="Noki";
SELECT * from users WHERE id<>10 or first_name="Giorno";