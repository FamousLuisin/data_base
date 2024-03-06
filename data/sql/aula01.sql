-- Selecionar a base de dados, caso ela não esteja definida como padrão
use data_base;

-- ver as tabelas da base de dados
show tables;

-- descreve as colunas da tabela
describe users;

-- Inserir registros
insert into users 
(first_name, last_name, email, password_hash) values
("Josuke", "Higashigata", "jojo_perfect@email.com", "jojo_hash_jojo");

-- Inserir mais de um valor
insert into users 
(first_name, last_name, email, password_hash) values
("Monkey", "D. Luffy", "luffy@email.com", "luffy_hash"),
("Ronoroa", "Zoro", "zoro@email.com", "zoro_hash"),
("Giorno", "Giovanna", "Giorno@email.com", "giorno_jojo_hash");