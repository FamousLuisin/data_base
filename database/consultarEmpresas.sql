use wm;

select e.nome as "empresa", c.nome as "cidade" 
from  empresas e, empresas_unidades eu, cidades c
where e.id = eu.empresa_id 
and c.id = eu.cidade_id 
and sede;