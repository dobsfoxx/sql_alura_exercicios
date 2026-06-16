SELECT * FROM HistoricoEmprego 
WHERE datatermino NOTNULL
ORDER BY salario DESC 
LIMIT 5;

SELECT * FROM Treinamento WHERE curso LIKE 'O poder%';  /*A porcentagem indica que ainda há texto após o final*/
SELECT * FROM Treinamento WHERE curso LIKE '%realizar%'; /*Se a palavra está no meio, devemos colocar a palavra entre o simbolo*/
SELECT * FROM Colaboradores WHERE nome LIKE 'Isadora%';

SELECT * FROM HistoricoEmprego WHERE cargo = 'Professor' AND datatermino NOTNULL;
SELECT * FROM HistoricoEmprego WHERE cargo = 'Oftalmologista' OR cargo = 'Dermatologista';
SELECT * FROM HistoricoEmprego WHERE cargo IN ('Oftalmologista','Dermatologista','Professor'); 
SELECT * FROM HistoricoEmprego WHERE cargo NOT IN ('Oftalmologista','Dermatologista','Professor') AND datatermino is NOT NULL;

SELECT * FROM Treinamento WHERE (curso LIKE 'O Direito%' AND instituicao = 'da Rocha') or (curso LIKE 'O conforto%' AND instituicao = 'das Neves');

SELECT mes, MAX(faturamento_bruto) FROM faturamento;
SELECT mes, MIN(faturamento_bruto) FROM faturamento;
SELECT SUM(numero_novos_clientes) as 'Novos Clientes 2023' FROM  faturamento WHERE mes LIKE '%2023'
SELECT AVG(despesas) FROM faturamento;
SELECT AVG(lucro_liquido) FROM faturamento;
SELECT COUNT(*) FROM HistoricoEmprego WHERE datatermino is NOT NULL;
SELECT COUNT(*) FROM Licencas WHERE tipolicenca = 'férias';

SELECT parentesco, COUNT(*) FROM Dependentes GROUP BY parentesco;
SELECT instituicao, COUNT(curso) FROM Treinamento GROUP BY instituicao HAVING COUNT(curso) > 2; /*HAVING É UTILIZADO COM GROUP BY POIS WHERE SÓ FUNCIONA COM REGITROS UNICOS*/ 
SELECT cargo, COUNT(*) qtd FROM HistoricoEmprego GROUP BY cargo HAVING qtd >=2;

						/*----------------FUNÕES DE STRING------------------*/

SELECT COUNT(*) colabs, LENGTH(cpf) qtd FROM Colaboradores WHERE qtd = 11;
select UPPER('A pessoa colaboradora ' || nome || ' de CPF: ' || cpf || ' possui o seguinte endereço: ' || endereco) AS texto FROM Colaboradores;
select LOWER('A pessoa colaboradora ' || nome || ' de CPF: ' || cpf || ' possui o seguinte endereço: ' || endereco) AS texto FROM Colaboradores;
SELECT TRIM(nome) FROM Colaboradores;
SELECT INSTR(nome, 'Al') FROM Colaboradores; /*Retorna a posição da substring indicada*/
SELECT REPLACE (nome, 'Ana', 'Banana') FROM Colaboradores;
SELECT SUBSTR(nome, 1, 3) FROM Colaboradores; /*rETORNA A SUBSTRING COM AS POSIÇÕES INDICADAS.*/


									/*------------------FUNÇÕES DE DATA------------------*/

SELECT * FROM Licencas;
SELECT id_colaborador, STRFTIME('%Y/%m', datainicio) from Licencas;
SELECT id_colaborador, JULIANDAY(datatermino) - JULIANDAY(datacontratacao) FROM HistoricoEmprego WHERE datatermino IS NOT NULL;
SELECT DATE('now');
SELECT DATE('now', '-10 days');
SELECT TIME('now');
SELECT DATETIME('now');
SELECT JULIANDAY('now') - JULIANDAY('2023-04-01');


