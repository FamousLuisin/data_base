use wm;

delete from wm.estados
where sigla = "MN";

select * from wm.estados;

delete from wm.estados
where id >= 1000;