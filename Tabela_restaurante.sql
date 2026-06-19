USE RESTAURANTE;

CREATE TABLE produtos(id INT PRIMARY KEY,
                      nome VARCHAR(150),
                      descricao TEXT,
                      preco DECIMAL(4,2),
                      categoria VARCHAR(100));

CREATE TABLE clientes (id INT PRIMARY KEY NOT NULL,
                       nome VARCHAR(255),
                       telefone VARCHAR(80) DEFAULT 'Sem telefone',
                       email VARCHAR(100) DEFAULT 'Sem email',
                       endereco VARCHAR(255));
                       
CREATE TABLE pedidos (id INT PRIMARY KEY NOT NULL,
                      id_cliente INT,
                      data_hora_pedido DATETIME,
                      status VARCHAR(30),
                      FOREIGN KEY (id_cliente) REFERENCES clientes (id) ON DELETE CASCADE);
                      
CREATE TABLE itens_pedido (id_pedido INT,
                           id_produto INT,
                           quantidade INT,
                           preco_unitario DECIMAL(10,2),
                           PRIMARY KEY (id_pedido, id_produto),
                           FOREIGN KEY (id_pedido) REFERENCES pedidos (id) ON DELETE CASCADE,
                           FOREIGN KEY (id_produto) REFERENCES produtos (id) ON DELETE CASCADE);
                           
CREATE TABLE colaboradores(id INT PRIMARY KEY NOT NULL,
                           nome VARCHAR(255),
                           cargo VARCHAR(60),
                           data_contratacao DATE,
                           telefone VARCHAR(80) DEFAULT 'Sem telefone',
                           email VARCHAR(80) DEFAULT 'Sem email',
                           rua VARCHAR(100) NOT NULL,
                           bairro VARCHAR(100) not NULL,
                           cidade VARCHAR(100) NOT NULL,
                           estado VARCHAR(100) not NULL,
                           cep VARCHAR(8) NOT NULL);
                           
CREATE TABLE fornecedores(id INT PRIMARY KEY NOT NULL,
                          nome VARCHAR(255),
                          contato VARCHAR(255),
                          telefone VARCHAR(80) DEFAULT 'Sem telefone',
                          email VARCHAR(80) DEFAULT 'Sem email',
                          rua VARCHAR(100) NOT NULL,
                          bairro VARCHAR(100) not NULL,
                          cidade VARCHAR(100) NOT NULL,
                          estado VARCHAR(100) not NULL,
                          cep VARCHAR(8) NOT NULL);


DROP TABLE produtos