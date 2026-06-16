SELECT * FROM tabelapedidos;
SELECT * FROM tabelafornecedores WHERE 	pa_s_de_origem = 'China';
SELECT DISTINCT cliente FROM tabelapedidos;
SELECT cliente FROM tabelapedidos WHERE data_do_pedido > '06-01-2023';

CREATE TABLE tabelaclientes (id_cliente INT PRIMARY KEY, 
                             nome_cliente VARCHAR(250),
                             info_contato VARCHAR(200));
SELECT * FROM tabelaclientes;
ALTER TABLE tabelaclientes ADD endereco VARCHAR(250);
DROP TABLE tabelaclientes;

CREATE TABLE tabelacategorias (id_categoria INT PRIMARY KEY,
                               nome_categoria VARCHAR(250),
                               descricao_categoria VARCHAR(250));
                               
CREATE TABLE tabelaprodutos (id_produto INT PRIMARY KEY,
                             nome_produto VARCHAR(250),
                             descricao_produto VARCHAR(250),
                             categoria INT,
                             preco_compra DECIMAL(10,2),
                             unidade VARCHAR(50),
                             fornecedor INT,
                             data_inclusao DATE,
                             FOREIGN KEY (categoria) REFERENCES tabelacategorias (id_categoria),
                             FOREIGN KEY (fornecedor) REFERENCES tabelafornecedores (id)
                             );

CREATE TABLE tabelapedidosgold (id_gold INT, 
                                data_do_pedido_gold DATE, 
                                status_gold VARCHAR(20), 
                                total_do_pedido_gold DECIMAL (10,2), 
                                cliente_gold VARCHAR (200), 
                                data_de_envio_es_gold DATE,
                                FOREIGN KEY (cliente_gold) REFERENCES tabelaclientes (id_cliente)
                                );
                               
INSERT INTO tabelapedidosgold (id_gold, data_do_pedido_gold, status_gold, total_do_pedido_gold, cliente_gold, data_de_envio_es_gold) 
SELECT id, data_do_pedido, status, total_do_pedido, cliente, data_de_envio_es FROM tabelapedidos WHERE total_do_pedido >= 400;

SELECT * FROM tabelapedidosgold

                             
