unit Produto.FormAuxiliar.Model;

interface

type
  TNFe = class
  private
    FCliente: string;
    FProdutoID: Integer;
    FQuantidade: Integer;
    FPrecoUnitario: Double;
    FTotal: Double;
  public
    property Cliente: string read FCliente write FCliente;
    property ProdutoID: Integer read FProdutoID write FProdutoID;
    property Quantidade: Integer read FQuantidade write FQuantidade;
    property PrecoUnitario: Double read FPrecoUnitario write FPrecoUnitario;
    property Total: Double read FTotal write FTotal;

    procedure CalcularTotal;
  end;

implementation

{ TNFe }

procedure TNFe.CalcularTotal;
begin
  FTotal := FQuantidade * FPrecoUnitario;
end;

end.
