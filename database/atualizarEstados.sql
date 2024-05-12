use wm;

update wm.estados
set nome = 'Maranhão'
where sigla = 'MA';

select est.nome from wm.estados est where sigla = "MA";

update wm.estados
set nome = 'Paraná', populacao = 11.32
where sigla = 'PR';

select est.nome from wm.estados est where sigla = "PR";