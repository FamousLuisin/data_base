use data_base;

-- Adicionar salarios aleatorios (ROUND, numero de casas decimais, rand numero aleatorio até 0,99)
UPDATE users set salary = ROUND(RAND() * 10000, 2);

SELECT first_name, salary from users WHERE 
salary BETWEEN 100 and 1500
ORDER BY salary asc;