use wm;

select * from wm.cidades cid
inner join wm.prefeitos p
on cid.id = p.cidade_id;

select * from wm.cidades cid
left join wm.prefeitos p
on cid.id = p.cidade_id;

select * from wm.cidades cid
right join wm.prefeitos p
on cid.id = p.cidade_id;

-- full join
select * from wm.cidades cid
left join wm.prefeitos p
on cid.id = p.cidade_id
union
select * from wm.cidades cid
right join wm.prefeitos p
on cid.id = p.cidade_id;