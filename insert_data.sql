
-- Inserção de dados de teste

INSERT INTO Fornecedor VALUES (1, 'Fornecedor A', '00.000.000/0001-00');
INSERT INTO Fornecedor VALUES (2, 'Fornecedor B', '11.111.111/0001-11');

INSERT INTO Produto VALUES (1, 'Eletrônico', 'Celular', '1500.00');
INSERT INTO Produto VALUES (2, 'Livro', 'Livro de SQL', '90.00');

INSERT INTO Estoque VALUES (1, 'Centro');
INSERT INTO Produto_has_Estoque VALUES (1, 1, 10);
INSERT INTO Produto_has_Estoque VALUES (2, 1, 20);

INSERT INTO ClientePF VALUES (1, '123.456.789-00');
INSERT INTO Cliente VALUES (1, 'João', 'Rua A', 1, NULL, 'Silva', 'Carlos', '1990-05-10', '123.456.789-00');

INSERT INTO FormaPagamento VALUES (1, 'Cartão', 'Visa');
INSERT INTO FormaPagamento VALUES (2, 'Boleto', 'Banco do Brasil');

INSERT INTO Pedido VALUES (1, 'Enviado', 'Compra online', 1, 10.00, 1);

INSERT INTO Entrega VALUES (1, 'Em transporte', 'BR1234567890', 1, 1, 1);
