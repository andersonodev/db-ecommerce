
-- Recuperações simples
SELECT * FROM Produto;
SELECT Pnome, Endereço FROM Cliente;

-- Filtros
SELECT * FROM Pedido WHERE Frete > 5.0;
SELECT * FROM Produto WHERE Categoria = 'Eletrônico';

-- Atributo derivado
SELECT Pnome, Sobrenome, YEAR(CURDATE()) - YEAR(`Data de Nascimento`) AS Idade FROM Cliente;

-- Ordenação
SELECT * FROM Pedido ORDER BY `Frete` DESC;

-- HAVING
SELECT Cliente_idCliente, COUNT(*) AS TotalPedidos
FROM Pedido
GROUP BY Cliente_idCliente
HAVING COUNT(*) > 1;

-- JOINs
SELECT F.`Razão Social`, P.`Descrição`
FROM Fornecedor F
JOIN `Disponibilizando um produto` DP ON F.idFornecedor = DP.Fornecedor_idFornecedor
JOIN Produto P ON DP.Produto_idProduto = P.idProduto;

SELECT C.Pnome, FP.Tipo
FROM Cliente C
JOIN Pedido P ON C.idCliente = P.Cliente_idCliente
JOIN FormaPagamento FP ON P.FormaPagamento_idFormaPagamento = FP.idFormaPagamento;

SELECT PR.Descrição, E.Local, PE.Quantidade
FROM Produto PR
JOIN Produto_has_Estoque PE ON PR.idProduto = PE.Produto_idProduto
JOIN Estoque E ON PE.Estoque_idEstoque = E.idEstoque;

SELECT V.`RazÃo Social` AS Vendedor, P.Descrição AS Produto
FROM `Terceiro - Vendedor` V
JOIN `Produtos por Vendedor(Terceiro)` PV ON V.`idTerceiro - Vendedor` = PV.`Terceiro - Vendedor_idTerceiro - Vendedor`
JOIN Produto P ON P.idProduto = PV.Produto_idProduto;
