USE Alura

SELECT * FROM disciplinas
SELECT * FROM Notas
SELECT AVG(valor_nota) AS Média_História FROM Notas WHERE ID_Disciplina = 2 
SELECT nome_aluno FROM alunos WHERE nome_aluno LIKE 'A%';
SELECT * FROM alunos;

SELECT id_aluno, CASE
WHEN valor_nota >= 6 THEN 'Aprovado'
ELSE 'Reprovado'
END AS 'Situaçao Acadêmica'
FROM Notas;




