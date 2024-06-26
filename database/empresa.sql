use wm;

CREATE TABLE IF NOT EXISTS empresas (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cnpj int unsigned,
    primary key (id),
    UNIQUE KEY (id)
);

-- cidades_empresas
CREATE TABLE IF NOT EXISTS empresas_unidades(
	empresa_id INT UNSIGNED NOT NULL,
    cidade_id INT UNSIGNED NOT NULL,
    sede TINYINT(1) NOT NULL,
    PRIMARY KEY (empresa_id, cidade_id)
);

-- Alterar cnpj 
ALTER TABLE empresas MODIFY cnpj VARCHAR(14);