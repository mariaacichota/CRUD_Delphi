CREATE TABLE Produtos (
    ProdutoID INT IDENTITY(1,1) PRIMARY KEY, -- Chave prim�ria com auto-incremento
    Nome NVARCHAR(100) NOT NULL,            -- Nome do produto
    Preco DECIMAL(10, 2) NOT NULL,          -- Pre�o unit�rio do produto
    DataCadastro DATETIME DEFAULT GETDATE() -- Data de cadastro do produto
);

CREATE TABLE Estoque (
    EstoqueID INT IDENTITY(1,1) PRIMARY KEY, -- Chave prim�ria com auto-incremento
    ProdutoID INT NOT NULL,                 -- Chave estrangeira referenciando Produtos
    Quantidade INT NOT NULL,                -- Quantidade dispon�vel no estoque
    CONSTRAINT FK_ProdutoID FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);
