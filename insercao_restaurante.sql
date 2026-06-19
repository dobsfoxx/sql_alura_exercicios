USE RESTAURANTE;
SELECT * FROM produtos

INSERT INTO produtos (id, nome, descricao, preco, categoria) VALUES
(1, 'Hambúrguer Clássico', 'Pão, carne bovina e queijo', 24.90, 'Lanches'),
(2, 'X-Bacon', 'Hambúrguer com bacon crocante', 29.90, 'Lanches'),
(3, 'Batata Frita Média', 'Porção média de batatas fritas', 12.50, 'Acompanhamentos'),
(4, 'Refrigerante Lata', 'Refrigerante 350ml', 6.50, 'Bebidas'),
(5, 'Suco Natural', 'Suco de laranja 500ml', 8.90, 'Bebidas'),
(6, 'Pizza Calabresa', 'Pizza grande de calabresa', 49.90, 'Pizzas'),
(7, 'Pizza Marguerita', 'Pizza grande marguerita', 47.50, 'Pizzas'),
(8, 'Sorvete Chocolate', 'Taça de sorvete sabor chocolate', 9.90, 'Sobremesas'),
(9,'Refrigerante Lata','350ml',6.50,'Bebidas'),
(10,'Refrigerante 600ml','600ml',9.90,'Bebidas'),
(11,'Suco Laranja','Natural',8.90,'Bebidas'),
(12,'Suco Limão','Natural',8.90,'Bebidas'),
(13,'Água Mineral','500ml',4.50,'Bebidas'),
(14,'Pizza Calabresa','Pizza grande',59.90,'Pizzas'),
(15,'Pizza Marguerita','Pizza grande',57.90,'Pizzas'),
(16,'Pizza Portuguesa','Pizza grande',64.90,'Pizzas'),
(17,'Pizza Frango Catupiry','Pizza grande',69.90,'Pizzas'),
(18,'Pizza Quatro Queijos','Pizza grande',72.90,'Pizzas'),
(19,'Sorvete Chocolate','Taça',11.90,'Sobremesas'),
(20,'Sorvete Morango','Taça',11.90,'Sobremesas'),
(21,'Petit Gateau','Com sorvete',18.90,'Sobremesas'),
(22,'Brownie','Chocolate',12.90,'Sobremesas'),
(23,'Açaí 300ml','Tradicional',15.90,'Sobremesas'),
(24,'Açaí 500ml','Tradicional',22.90,'Sobremesas'),
(25,'Wrap Frango','Frango grelhado',26.90,'Lanches'),
(26,'Wrap Vegano','Legumes e tofu',28.90,'Lanches'),
(27,'Café Expresso','Dose única',5.50,'Bebidas'),
(28,'Capuccino','300ml',9.50,'Bebidas'),
(29,'Milk Shake Chocolate','400ml',17.90,'Bebidas'),
(30,'Milk Shake Morango','400ml',17.90,'Bebidas');

INSERT INTO clientes (id, nome, telefone, email, endereco) VALUES
(1, 'João Silva', '(34)99999-1111', 'joao@email.com', 'Rua das Flores, 100'),
(2, 'Maria Oliveira', '(34)99999-2222', 'maria@email.com', 'Av. Brasil, 250'),
(3, 'Carlos Santos', '(34)99999-3333', 'carlos@email.com', 'Rua Goiás, 500'),
(4, 'Ana Pereira', '(34)99999-4444', 'ana@email.com', 'Rua Paraná, 80'),
(5, 'Fernanda Costa', '(34)99999-5555', 'fernanda@email.com', 'Av. Rondon Pacheco, 900'),
(6,'Ricardo Alves','34999990006','ricardo@email.com','Rua F, 105'),
(7,'Patricia Gomes','34999990007','patricia@email.com','Rua G, 106'),
(8,'Marcos Souza','34999990008','marcos@email.com','Rua H, 107'),
(9,'Juliana Rocha','34999990009','juliana@email.com','Rua I, 108'),
(10,'Gabriel Lima','34999990010','gabriel@email.com','Rua J, 109'),
(11,'Larissa Mendes','34999990011','larissa@email.com','Rua K, 110'),
(12,'Eduardo Castro','34999990012','eduardo@email.com','Rua L, 111'),
(13,'Bianca Freitas','34999990013','bianca@email.com','Rua M, 112'),
(14,'Lucas Martins','34999990014','lucas@email.com','Rua N, 113'),
(15,'Amanda Ribeiro','34999990015','amanda@email.com','Rua O, 114'),
(16,'Felipe Andrade','34999990016','felipe@email.com','Rua P, 115'),
(17,'Camila Duarte','34999990017','camila@email.com','Rua Q, 116'),
(18,'Rodrigo Melo','34999990018','rodrigo@email.com','Rua R, 117'),
(19,'Vanessa Nunes','34999990019','vanessa@email.com','Rua S, 118'),
(20,'Bruno Teixeira','34999990020','bruno@email.com','Rua T, 119');

SELECT * FROM clientes


INSERT INTO pedidos (id, id_cliente, data_hora_pedido, status) VALUES
(1, 1, '2026-06-10 19:30:00', 'Entregue'),
(2, 2, '2026-06-11 20:15:00', 'Entregue'),
(3, 3, '2026-06-12 18:45:00', 'Preparando'),
(4, 1, '2026-06-13 21:10:00', 'Entregue'),
(5, 4, '2026-06-14 12:20:00', 'Cancelado'),
(6, 5, '2026-06-15 19:55:00', 'Em entrega'),
(7,7,'2026-06-03 18:00:00','Entregue'),
(8,8,'2026-06-03 19:05:00','Entregue'),
(9,9,'2026-06-03 21:10:00','Entregue'),
(10,10,'2026-06-04 18:15:00','Entregue'),
(11,11,'2026-06-04 19:40:00','Preparando'),
(12,12,'2026-06-04 20:25:00','Entregue'),
(13,13,'2026-06-05 18:30:00','Entregue'),
(14,14,'2026-06-05 19:50:00','Entregue'),
(15,15,'2026-06-05 20:15:00','Em entrega'),
(16,16,'2026-06-06 18:20:00','Entregue'),
(17,17,'2026-06-06 19:00:00','Entregue'),
(18,18,'2026-06-06 20:40:00','Entregue'),
(19,19,'2026-06-07 18:00:00','Entregue'),
(20,20,'2026-06-07 19:00:00','Entregue'),
(21,1,'2026-06-07 20:00:00','Entregue'),
(22,2,'2026-06-08 18:00:00','Entregue'),
(23,3,'2026-06-08 19:00:00','Entregue'),
(24,4,'2026-06-08 20:00:00','Entregue'),
(25,5,'2026-06-09 18:00:00','Entregue'),
(26,6,'2026-06-09 19:00:00','Entregue'),
(27,7,'2026-06-09 20:00:00','Entregue'),
(28,8,'2026-06-10 18:00:00','Entregue'),
(29,9,'2026-06-10 19:00:00','Entregue'),
(30,10,'2026-06-10 20:00:00','Entregue'),
(31,11,'2026-06-11 18:00:00','Entregue'),
(32,12,'2026-06-11 19:00:00','Entregue'),
(33,13,'2026-06-11 20:00:00','Entregue'),
(34,14,'2026-06-12 18:00:00','Entregue'),
(35,15,'2026-06-12 19:00:00','Entregue'),
(36,16,'2026-06-12 20:00:00','Entregue'),
(37,17,'2026-06-13 18:00:00','Entregue'),
(38,18,'2026-06-13 19:00:00','Entregue'),
(39,19,'2026-06-13 20:00:00','Entregue'),
(40,20,'2026-06-14 20:30:00','Em entrega');

INSERT INTO dbo.pedidos (id, id_cliente, data_hora_pedido, status) VALUES
(1, 1, '20260610 19:30:00', 'Entregue'),
(2, 2, '20260611 20:15:00', 'Entregue'),
(3, 3, '20260612 18:45:00', 'Preparando'),
(4, 1, '20260613 21:10:00', 'Entregue'),
(5, 4, '20260614 12:20:00', 'Cancelado'),
(6, 5, '20260615 19:55:00', 'Em entrega');

SELECT * FROM pedidos

INSERT INTO dbo.pedidos (id, id_cliente, data_hora_pedido, status) VALUES
(7,7,'20260603 18:00:00','Entregue'),
(8,8,'20260603 19:05:00','Entregue'),
(9,9,'20260603 21:10:00','Entregue'),
(10,10,'20260604 18:15:00','Entregue'),
(11,11,'20260604 19:40:00','Preparando'),
(12,12,'20260604 20:25:00','Entregue'),
(13,13,'20260605 18:30:00','Entregue'),
(14,14,'20260605 19:50:00','Entregue'),
(15,15,'20260605 20:15:00','Em entrega'),
(16,16,'20260606 18:20:00','Entregue'),
(17,17,'20260606 19:00:00','Entregue'),
(18,18,'20260606 20:40:00','Entregue'),
(19,19,'20260607 18:00:00','Entregue'),
(20,20,'20260607 19:00:00','Entregue'),
(21,1,'20260607 20:00:00','Entregue'),
(22,2,'20260608 18:00:00','Entregue'),
(23,3,'20260608 19:00:00','Entregue'),
(24,4,'20260608 20:00:00','Entregue'),
(25,5,'20260609 18:00:00','Entregue'),
(26,6,'20260609 19:00:00','Entregue'),
(27,7,'20260609 20:00:00','Entregue'),
(28,8,'20260610 18:00:00','Entregue'),
(29,9,'20260610 19:00:00','Entregue'),
(30,10,'20260610 20:00:00','Entregue'),
(31,11,'20260611 18:00:00','Entregue'),
(32,12,'20260611 19:00:00','Entregue'),
(33,13,'20260611 20:00:00','Entregue'),
(34,14,'20260612 18:00:00','Entregue'),
(35,15,'20260612 19:00:00','Entregue'),
(36,16,'20260612 20:00:00','Entregue'),
(37,17,'20260613 18:00:00','Entregue'),
(38,18,'20260613 19:00:00','Entregue'),
(39,19,'20260613 20:00:00','Entregue'),
(40,20,'20260614 20:30:00','Em entrega');

INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 2, 24.90),
(1, 3, 1, 12.50),
(1, 4, 2, 6.50),

(2, 6, 1, 49.90),
(2, 4, 2, 6.50),

(3, 2, 1, 29.90),
(3, 3, 2, 12.50),
(3, 5, 1, 8.90),

(4, 7, 1, 47.50),
(4, 8, 2, 9.90),

(5, 1, 1, 24.90),
(5, 4, 1, 6.50),

(6, 2, 2, 29.90),
(6, 3, 1, 12.50),
(6, 5, 2, 8.90);

INSERT INTO colaboradores
(id, nome, cargo, data_contratacao, telefone, email, rua, bairro, cidade, estado, cep)
VALUES
(1, 'Pedro Almeida', 'Gerente', '2021-03-15', '(34)99988-1111', 'pedro@empresa.com',
 'Rua A', 'Centro', 'Uberlândia', 'MG', '38400001'),

(2, 'Juliana Rocha', 'Atendente', '2023-01-10', '(34)99988-2222', 'juliana@empresa.com',
 'Rua B', 'Martins', 'Uberlândia', 'MG', '38400002'),
 (3, 'Lucas Ferreira', 'Cozinheiro', '2022-08-20', '(34)99988-3333', 'lucas@empresa.com',
 'Rua C', 'Tibery', 'Uberlândia', 'MG', '38400003'),

(4, 'Camila Souza', 'Entregadora', '2024-02-05', '(34)99988-4444', 'camila@empresa.com',
 'Rua D', 'Santa Mônica', 'Uberlândia', 'MG', '38400004'),
(5,'Marina Alves','Atendente','2022-10-11','34988880005','marina@empresa.com','Rua 5','Centro','Uberlandia','MG','38400005'),
(6,'Diego Santos','Cozinheiro','2021-07-08','34988880006','diego@empresa.com','Rua 6','Centro','Uberlandia','MG','38400006'),
(7,'Rafael Costa','Entregador','2024-01-05','34988880007','rafael@empresa.com','Rua 7','Centro','Uberlandia','MG','38400007'),
(8,'Leticia Ramos','Caixa','2023-08-01','34988880008','leticia@empresa.com','Rua 8','Centro','Uberlandia','MG','38400008'),
(9,'Thiago Lima','Supervisor','2020-11-01','34988880009','thiago@empresa.com','Rua 9','Centro','Uberlandia','MG','38400009'),
(10,'Paula Mendes','RH','2021-09-15','34988880010','paula@empresa.com','Rua 10','Centro','Uberlandia','MG','38400010'),
(11,'Bruna Silva','Marketing','2022-04-22','34988880011','bruna@empresa.com','Rua 11','Centro','Uberlandia','MG','38400011'),
(12,'Gustavo Freitas','Financeiro','2020-06-18','34988880012','gustavo@empresa.com','Rua 12','Centro','Uberlandia','MG','38400012'),
(13,'Renata Castro','Atendente','2023-05-12','34988880013','renata@empresa.com','Rua 13','Centro','Uberlandia','MG','38400013'),
(14,'Anderson Melo','Entregador','2024-03-08','34988880014','anderson@empresa.com','Rua 14','Centro','Uberlandia','MG','38400014'),
(15,'Tatiane Lopes','Caixa','2022-12-02','34988880015','tatiane@empresa.com','Rua 15','Centro','Uberlandia','MG','38400015');

 
INSERT INTO fornecedores
(id, nome, contato, telefone, email, rua, bairro, cidade, estado, cep)
VALUES
(1, 'Distribuidora Alimentos Gerais', 'Marcos Lima',
 '(34)3333-1111', 'contato@dag.com.br',
 'Rua Industrial, 100', 'Distrito Industrial',
 'Uberlândia', 'MG', '38400010'),

(2, 'Bebidas Brasil', 'Patrícia Gomes',
 '(34)3333-2222', 'vendas@bebidasbrasil.com.br',
 'Av. Comercial, 200', 'Centro',
 'Uberlândia', 'MG', '38400020'),

(3, 'Laticínios Minas', 'Roberto Alves',
 '(34)3333-3333', 'atendimento@laticiniosminas.com.br',
 'Rua do Leite, 50', 'Custódio Pereira',
 'Uberlândia', 'MG', '38400030'),
(4,'Carnes Premium','Carlos Rocha','3433331004','contato@carnes.com','Rua D','Industrial','Uberlandia','MG','38410004'),
(5,'Hortifruti Verde','Ana Souza','3433331005','contato@hortifruti.com','Rua E','Industrial','Uberlandia','MG','38410005'),
(6,'Embalagens União','José Lima','3433331006','contato@embalagens.com','Rua F','Industrial','Uberlandia','MG','38410006'),
(7,'Massas Brasil','Fernanda Costa','3433331007','contato@massas.com','Rua G','Industrial','Uberlandia','MG','38410007'),
(8,'Doces Mineiros','Lucas Melo','3433331008','contato@doces.com','Rua H','Industrial','Uberlandia','MG','38410008'),
(9,'Café do Cerrado','Bianca Ramos','3433331009','contato@cafe.com','Rua I','Industrial','Uberlandia','MG','38410009'),
(10,'Congelados Sul','Paulo Freitas','3433331010','contato@congelados.com','Rua J','Industrial','Uberlandia','MG','38410010');