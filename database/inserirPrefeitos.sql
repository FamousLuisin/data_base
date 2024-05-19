use wm;

SELECT * FROM wm.cidades;

INSERT INTO wm.prefeitos
    (nome, cidade_id)
VALUES
    ("Rodrigo neves", 2),
    ("Raquel Lyra", 3),
    ("Zenaldo Coutinho", null);

INSERT INTO wm.prefeitos
    (nome, cidade_id)
VALUES
    ("Rafael Greca", null);
