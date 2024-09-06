unit Produto.Model;

interface

type
  TProduto = class
  private
    FProdutoID: Integer;
    FNome: string;
    FPreco: Currency;
    FQuantidadeEmEstoque: Integer;
  public
    property ProdutoID: Integer read FProdutoID write FProdutoID;
    property Nome: string read FNome write FNome;
    property Preco: Currency read FPreco write FPreco;
    property QuantidadeEmEstoque: Integer read FQuantidadeEmEstoque write FQuantidadeEmEstoque;
  end;

implementation

end.

