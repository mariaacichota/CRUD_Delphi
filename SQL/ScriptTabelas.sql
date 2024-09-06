CREATE TABLE Produtos (
    ProdutoID INT IDENTITY(1,1) PRIMARY KEY, -- Chave primária com auto-incremento
    Nome NVARCHAR(100) NOT NULL,            -- Nome do produto
    Preco DECIMAL(10, 2) NOT NULL,          -- Preço unitário do produto
    DataCadastro DATETIME DEFAULT GETDATE() -- Data de cadastro do produto
);

CREATE TABLE Estoque (
    EstoqueID INT IDENTITY(1,1) PRIMARY KEY, -- Chave primária com auto-incremento
    ProdutoID INT NOT NULL,                 -- Chave estrangeira referenciando Produtos
    Quantidade INT NOT NULL,                -- Quantidade disponível no estoque
    CONSTRAINT FK_ProdutoID FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);
