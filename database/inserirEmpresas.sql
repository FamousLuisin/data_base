use wm;

INSERT INTO empresas
    (nome, cnpj)
VALUES
    ("Bradesco", 95694186000132),
    ("Vale", 2788718000146),
    ("Cielo", 01598317000134);

-- Descrever uma tabela
desc empresas;

SELECT * FROM empresas;
SELECT * FROM cidades;

INSERT INTO empresas_unidades
    (empresa_id, cidade_id, sede)
VALUES
    (1, 1, 1),
    (1, 2, 0),
    (2, 1, 0),
    (2, 2, 1);