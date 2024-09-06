unit ProdutoDAO;

interface

uses
  System.SysUtils, Data.DB, FireDAC.Comp.Client, Produto.Model;

type
  TProdutoDAO = class
  private
    FConnection: TFDConnection;
  public
    constructor Create(AConnection: TFDConnection);
    function InserirProduto(AProduto: TProduto): Boolean;
    function AtualizarProduto(AProduto: TProduto): Boolean;
    function ExcluirProduto(ProdutoID: Integer): Boolean;
    function ListarProdutos(AProduto: TProduto): TDataSet;
  end;

implementation

{ TProdutoDAO }

function TProdutoDAO.AtualizarProduto(AProduto: TProduto): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FConnection;
    Query.SQL.Text := 'UPDATE Produtos SET Nome = :Nome, Preco = :Preco, QuantidadeEmEstoque = :QuantidadeEmEstoque ' +
                      'WHERE Id = :ProdutoID';
    Query.ParamByName('ProdutoID').AsInteger := AProduto.ProdutoID;
    Query.ParamByName('Nome').AsString := AProduto.Nome;
    Query.ParamByName('Preco').AsFloat := AProduto.Preco;
    Query.ParamByName('QuantidadeEmEstoque').AsInteger := AProduto.QuantidadeEmEstoque;
    Query.ExecSQL;
    Result := True;
  finally
    Query.Free;
  end;
end;

constructor TProdutoDAO.Create(AConnection: TFDConnection);
begin
  FConnection := AConnection;
end;

function TProdutoDAO.ExcluirProduto(ProdutoID: Integer): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FConnection;
    Query.SQL.Text := 'DELETE FROM Produtos WHERE Id = :ProdutoID';
    Query.ParamByName('ProdutoID').AsInteger := ProdutoID;
    Query.ExecSQL;
    Result := True;
  finally
    Query.Free;
  end;
end;

function TProdutoDAO.InserirProduto(AProduto: TProduto): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FConnection;
    Query.SQL.Text := 'INSERT INTO Produtos (Nome, Preco) VALUES (:Nome, :Preco)';
    Query.ParamByName('Nome').AsString := AProduto.Nome;
    Query.ParamByName('Preco').AsCurrency := AProduto.Preco;
    Query.ExecSQL;
    Result := True;
  finally
    Query.Free;
  end;
end;

function TProdutoDAO.ListarProdutos(AProduto: TProduto): TDataSet;
var
  Query: TFDQuery;
  SQL: string;
begin
  SQL := EmptyStr;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FConnection;
    SQL := 'SELECT ID, Nome, Preco, Quantidade FROM Produtos WHERE 1=1 ';

    if AProduto.Nome <> '' then
      SQL := SQL + '  AND Nome LIKE ''%:Nome%'' ';

    if AProduto.ProdutoID > 0 then
      SQL := SQL + '  AND Id = :ProdutoID ';

    Query.SQL.Text := SQL;

    if AProduto.Nome <> '' then
      Query.ParamByName('Nome').AsString := AProduto.Nome;

    if AProduto.ProdutoID > 0 then
      Query.ParamByName('ProdutoID').AsInteger := AProduto.ProdutoID;

    Query.Open;

    Result := Query;
  except
    Query.Free;
    raise;
  end;
end;

end.
