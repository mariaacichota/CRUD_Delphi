unit Produto.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Produto.ViewModel;

type
  TfrmProduto = class(TForm)
    pnlProdutosTop: TPanel;
    pnlProdutosGeral: TPanel;
    gridProdutos: TDBGrid;
    pnlProdutosBotoes: TPanel;
    btnAdicionar: TButton;
    btnSalvar: TButton;
    btnGerarNFe: TButton;
    btnRelatorio: TButton;
    pnlProdutosCampos: TPanel;
    btnExcluir: TButton;
    edtIDProduto: TEdit;
    edtNomeProduto: TEdit;
    edtPrecoProduto: TEdit;
    edtQtdEstoqueProduto: TEdit;
    lblIDProduto: TLabel;
    lblPrecoProduto: TLabel;
    lblQtdEstoqueProduto: TLabel;
    lblNomeProduto: TLabel;
    btnBuscar: TButton;
    dsProdutos: TDataSource;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure btnGerarNFeClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
  private
    FProdutoViewModel: TProdutoViewModel;
    procedure LimparCampos;
  public
    constructor Create(AOwner: TComponent; AProdutoViewModel: TProdutoViewModel); reintroduce;
  end;

var
  frmProduto: TfrmProduto;

implementation

{$R *.dfm}

{ TfrmProduto }

procedure TfrmProduto.btnAdicionarClick(Sender: TObject);
var
  nome: string;
  preco: Currency;
begin
  LimparCampos;
  nome := edtNomeProduto.Text;
  preco := StrToCurr(edtPrecoProduto.Text);

  if FProdutoViewModel.InserirProduto(nome, preco) then
    ShowMessage('Produto cadastrado com sucesso!')
  else
    ShowMessage('Erro ao cadastrar o produto.');
end;

procedure TfrmProduto.btnBuscarClick(Sender: TObject);
var
  idProduto: integer;
  nome: string;
begin
  dsProdutos.DataSet := FProdutoViewModel.ListarProdutos(idProduto, nome);
end;

procedure TfrmProduto.btnExcluirClick(Sender: TObject);
var
  idProduto: integer;
begin
  idProduto := StrToInt(edtIDProduto.Text);

  if FProdutoViewModel.ExcluirProduto(idProduto) then
    ShowMessage('Produto exclu�do com sucesso!')
  else
    ShowMessage('Erro ao excluir o produto.');
end;

procedure TfrmProduto.btnGerarNFeClick(Sender: TObject);
begin
//  if FProdutoViewModel.GerarNFe then
//    ShowMessage('NF-e gerada com sucesso!')
//  else
//    ShowMessage('Erro ao gerar NF-e.');
end;

procedure TfrmProduto.btnRelatorioClick(Sender: TObject);
begin
//  if FProdutoViewModel.GerarRelatorio then
//    ShowMessage('Relat�rio gerado com sucesso!')
//  else
//    ShowMessage('Erro ao gerar relat�rio.');
end;

procedure TfrmProduto.btnSalvarClick(Sender: TObject);
var
  nome: string;
  preco: Currency;
  estoque: integer;
begin
  if FProdutoViewModel.AtualizarProduto(nome, preco, estoque) then
    ShowMessage('Produto alterado com sucesso!')
  else
    ShowMessage('Erro ao alterar o produto.');
end;

constructor TfrmProduto.Create(AOwner: TComponent;
  AProdutoViewModel: TProdutoViewModel);
var
  idProduto: integer;
  nome: string;
begin
  inherited Create(AOwner);
  FProdutoViewModel := AProdutoViewModel;
  idProduto := StrToInt(edtIDProduto.Text);
  nome := edtNomeProduto.Text;
  dsProdutos.DataSet := FProdutoViewModel.ListarProdutos(idProduto, nome);
end;

procedure TfrmProduto.LimparCampos;
begin
  edtIDProduto.Text := '';
  edtNomeProduto.Text := '';
  edtPrecoProduto.Text := '';
  edtQtdEstoqueProduto.Text := '';
end;

end.
