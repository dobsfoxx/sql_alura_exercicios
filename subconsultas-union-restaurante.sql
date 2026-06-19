SELECT nome, rua, bairro, cidade, estado, cep FROM colaboradores
UNION ALL
SELECT nome, rua, bairro, cidade, estado, cep FROM fornecedores;

SELECT nome, rua FROM colaboradores		/*O operador EXCEPT é usado para retornar todas as linhas que estão presentes na primeira consulta 
										(conjunto A) e não estão presentes na segunda consulta (conjunto B). Em outras palavras, ele subtrai o conjunto B do conjunto A*/
EXCEPT
SELECT nome, rua FROM fornecedores;

SELECT nome, rua FROM colaboradores /*O operador INTERSECT é usado para retornar todas as linhas que estão presentes tanto na primeira consulta 
									(conjunto A) quanto na segunda consulta (conjunto B). Em outras palavras, ele retorna a interseção dos dois conjuntos.*/
INTERSECT 
SELECT nome, rua FROM fornecedores;

SELECT nome, telefone 
FROM clientes 
WHERE id=(
  SELECT id_cliente 
  FROM pedidos 
  WHERE data_hora_pedido = '2026-06-14 12:20:00');

  
SELECT * FROM produtos;
SELECT AVG(preco) FROM produtos;

SELECT nome, preco FROM produtos GROUP by nome, preco
HAVING preco > (
  SELECT AVG(preco) 
  FROM produtos);
  
SELECT nome, telefone FROM clientes WHERE id IN (
  SELECT id
  FROM pedidos
  WHERE status = 'Entregue');

SELECT * FROM pedidos