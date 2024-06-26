use wm;

-- Criar tabela cidades
CREATE TABLE IF NOT EXISTS cidades (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    estado_id int unsigned NOT NULL,
    area DECIMAL(10,2),
    PRIMARY KEY (id),
    foreign key (estado_id) references estados (id)
);