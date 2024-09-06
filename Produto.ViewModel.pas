unit Produto.ViewModel;

interface

uses
  Produto.Model, ProdutoDAO, Data.DB, System.Classes;

type
  TProdutoViewModel = class
  private
    FProduto: TProduto;
    FProdutoDAO: TProdutoDAO;
  public
    constructor Create(AProdutoDAO: TProdutoDAO);
    function InserirProduto(nome: string; preco: Currency): Boolean;
    function ListarProdutos(idProduto: integer; nome: string): TDataSet;
    function ExcluirProduto(idProduto: integer): Boolean;
    function AtualizarProduto(nome: string; preco: Currency; estoque: integer): Boolean;
    property Produto: TProduto read FProduto;
  end;

implementation

{ TProdutoViewModel }

function TProdutoViewModel.AtualizarProduto(nome: string; preco: Currency;
  estoque: integer): Boolean;
begin
  FProduto.Nome := nome;
  FProduto.Preco := preco;
  FProduto.QuantidadeEmEstoque := estoque;
  Result := FProdutoDAO.AtualizarProduto(FProduto);
end;

constructor TProdutoViewModel.Create(AProdutoDAO: TProdutoDAO);
begin
  FProdutoDAO := AProdutoDAO;
  FProduto := TProduto.Create;
end;

function TProdutoViewModel.ExcluirProduto(idProduto: integer): Boolean;
begin
  Result := FProdutoDAO.ExcluirProduto(idProduto);
end;

function TProdutoViewModel.InserirProduto(nome: string;
  preco: Currency): Boolean;
begin
  FProduto.Nome := nome;
  FProduto.Preco := preco;
  Result := FProdutoDAO.InserirProduto(FProduto);
end;

function TProdutoViewModel.ListarProdutos(idProduto: integer;
  nome: string): TDataSet;
begin
  FProduto.ProdutoID := idProduto;
  FProduto.Nome := nome;
  Result := FProdutoDAO.ListarProdutos(FProduto);
end;

end.
