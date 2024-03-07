use data_base;

-- mandar uma lista de valores e buscar baseado nela
select * from users
where id=70 or id=80 or id=90;

-- mandar uma lista de valores e buscar baseado nela, usando o "IN"
select * from users
where id in (70, 80, 90, 100)
and
first_name in ('Evelyn', 'Arthur');