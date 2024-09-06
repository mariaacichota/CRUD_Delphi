-- Relatório Produto x Estoque

SELECT
  SUM(QuantidadeEmEstoque) AS TotalProdutosEstoque,
  SUM(QuantidadeEmEstoque * Preco) AS ValorTotalEstoque
FROM Produtos;
