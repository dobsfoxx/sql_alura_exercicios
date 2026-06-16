CREATE TABLE funcionarios(id INT PRIMARY KEY,
                          nome VARCHAR (80),
                          cargo VARCHAR (40),
                          departamenTo VARCHAR(40),
                          data_contratacao DATE,
                          salario DECIMAL (10,2)
                          );
                          
INSERT INTO funcionarios (id, nome, cargo, departamento, data_contratacao, salario) VALUES 
(1, 'Jonice', 'piranha', 'telesexo algar', '01-02-2026', 2800.00);

SELECT * FROM funcionarios