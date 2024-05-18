SELECT * FROM wm.estados;

-- Inserir cidades usando o id
INSERT INTO wm.cidades 
    (nome, area, estado_id)
VALUES
    ('Campinas', 795, 27);

INSERT INTO wm.cidades 
    (nome, area, estado_id)
VALUES
    ('Niteroi', 133.9, 21);

-- Inserir cidades usando um select para pegar o id
INSERT INTO wm.cidades 
    (nome, area, estado_id)
VALUES
    ('Caruaru', 920.6, (select id from wm.estados where sigla = 'PE'));

INSERT INTO wm.cidades 
    (nome, area, estado_id)
VALUES
    ('Juazeiro do Norte', 248.2, (select id from wm.estados where sigla = 'CE'));

select * FROM wm.cidades;