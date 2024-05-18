use wm;

-- Consultar cidades e seus respectivos estados (usando where)
select cid.nome as cidade, est.nome as estado, est.sigla, est.regiao, cid.area from wm.estados est, wm.cidades cid
where est.id = cid.estado_id;

-- Consultar cidades e seus respectivos estados (usando join)
select cid.nome as cidade, est.nome as estado, est.sigla, est.regiao, cid.area 
from wm.estados est
inner join wm.cidades cid on est.id = cid.estado_id;