use wm;

-- Selecionar todas as instancias;
select * from wm.estados;

-- Selecionar todas as instancias, mas apenas as colunas ...;
select nome, sigla from wm.estados;

-- Selecionar todas as instancias quando a regiao for ...;
select sigla, nome as 'Nome do Estado' from wm.estados
where regiao = 'Sul';

-- selecionar todas as intancias quando a populaçao for ... e ordenar por ... ascendente;
select nome, regiao from wm.estados 
where populacao >= 10
order by populacao;

-- selecionar todas as intancias quando a populaçao for ... e ordenar por ... descrescente;
select nome, regiao from wm.estados 
where populacao >= 10
order by populacao desc;