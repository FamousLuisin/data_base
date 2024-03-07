use data_base;

-- delete = Deletar registros
-- Delete sempre é necessario o uso de where (Mesmo where do select)
delete from users WHERE id=5
-- OBS: Sempre deletado ou usado o update não tem volta
-- OBS: É mais segura e facil usar a pk da tabela

-- Pode usar o between tbm ("Tudo" do select funciona no delete)
DELETE FROM users WHERE id BETWEEN 1 and 5;