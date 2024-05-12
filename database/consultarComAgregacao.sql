-- Agrupando estados por região e fazendo a soma de sua população
select regiao as "Região", sum(populacao) as Total
from wm.estados
group by regiao
order by Total desc;

-- Selecionar o total da população de todos os estados
select sum(populacao) as Total from estados;