-- like (parecido), nesse caso qualquer nome q termina com "is"
select * from users
where first_name like '%is';
-- obs: % == Qualquer coisa 

-- like (parecido), nesse caso qualquer nome q começa com "he"
select * from users
where first_name like 'he%';

-- like (parecido), nesse caso qualquer nome q no meio da palavra tenha "mo"
select * from users
where first_name like '%mo%';

-- like (parecido), nesse caso qualquer nome tenha "mo" mas antes tenha 5 letras(_)
select * from users
where first_name like '_____mo';
-- obs: _ == tantas letras

-- like (parecido), nesse caso qualquer nome tenha 5 letras(_)
select * from users
where first_name like '_____';