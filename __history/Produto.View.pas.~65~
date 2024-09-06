unit Produto.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Produto.ViewModel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Phys.MSSQL, FireDAC.Phys.ODBCWrapper,
  ProdutoDAO, ACBrNFe, ACBrNFeDANFEClass, ACBrNFeNotas, ACBrNFeDANFCEClass;

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
    ACBrNFe1: TACBrNFe;
    FDConnection1: TFDConnection;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure btnGerarNFeClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
  private
    FProdutoViewModel: TProdutoViewModel;
    FProdutoDAO: TProdutoDAO;
    procedure LimparCampos;
    procedure ConfigurarConexaoSQLServer;
    procedure ConfigurarACBrNFe;
    procedure GerarXMLNF_e;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  frmProduto: TfrmProduto;

implementation

{$R *.dfm}

{ TfrmProduto }

constructor TfrmProduto.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ConfigurarConexaoSQLServer;
  FProdutoDAO := TProdutoDAO.Create(FDConnection1);
  FProdutoViewModel := TProdutoViewModel.Create(FProdutoDAO);
end;

destructor TfrmProduto.Destroy;
begin
  FProdutoViewModel.Free;
  FProdutoDAO.Free;
  inherited;
end;

procedure TfrmProduto.ConfigurarACBrNFe;
begin
  ACBrNFe1.Configuracoes.Geral.SSLLib := sslNone;
  ACBrNFe1.Configuracoes.Geral.SSLCertificado := 'C:\Certificado\certificado.pfx';
  ACBrNFe1.Configuracoes.WebServices.UF := ufSP;
  ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao;
end;

procedure TfrmProduto.GerarXMLNF_e;
begin
  ACBrNFe1.NotasFiscais.Add;
  with ACBrNFe1.NotasFiscais[0] do
  begin
    Identificacao.Numero := 1;
    Identificacao.Serie := 1;
    Identificacao.TipoEmissao := teNormal;
  end;

  try
    ACBrNFe1.NotasFiscais[0].GerarNFe;
    ACBrNFe1.NotasFiscais[0].SalvarXML('C:\NF-e\XML\NF-e.xml');
    ShowMessage('NF-e gerada com sucesso!');
  except
    on E: Exception do
      ShowMessage('Erro ao gerar NF-e: ' + E.Message);
  end;
end;

procedure TfrmProduto.ConfigurarConexaoSQLServer;
begin
  if not FDConnection1.Connected then
  begin
      FDConnection1.DriverName := 'MSSQL';
      FDConnection1.Params.Database := 'CRUD';
      FDConnection1.Params.Add('Server=DESKTOP-LQTA0BU\SQLEXPRESS');
      FDConnection1.Params.Add('Trusted_Connection=yes');
      FDConnection1.LoginPrompt := False;
    try
      FDConnection1.Connected := True;
      ShowMessage('Conexão com o banco de dados bem-sucedida!');
    except
      on E: Exception do
        ShowMessage('Erro ao conectar ao banco de dados: ' + E.Message);
    end;
  end;
end;

procedure TfrmProduto.btnAdicionarClick(Sender: TObject);
var
  nome: string;
  preco: Currency;
  estoque: integer;
begin
  nome := edtNomeProduto.Text;
  preco := StrToCurr(edtPrecoProduto.Text);
  estoque := StrToInt(edtQtdEstoqueProduto.Text);

  if FProdutoViewModel.InserirProduto(nome, preco, estoque) then
    ShowMessage('Produto cadastrado com sucesso!')
  else
    ShowMessage('Erro ao cadastrar o produto.');
end;

procedure TfrmProduto.btnExcluirClick(Sender: TObject);
begin
  if edtIDProduto.Text <> '' then
  begin
    FProdutoViewModel.ExcluirProduto(StrToInt(edtIDProduto.Text));
    btnBuscarClick(nil); // Atualiza a lista
  end;
end;

procedure TfrmProduto.btnGerarNFeClick(Sender: TObject);
begin
  ConfigurarACBrNFe;
  GerarXMLNF_e;
end;

procedure TfrmProduto.btnRelatorioClick(Sender: TObject);
begin
  // Criar e mostrar relatório utilizando SQL Server
end;

procedure TfrmProduto.btnSalvarClick(Sender: TObject);
begin
  if edtIDProduto.Text <> '' then
  begin
    FProdutoViewModel.AtualizarProduto(StrToInt(edtIDProduto.Text), edtNomeProduto.Text, StrToCurr(edtPrecoProduto.Text), StrToInt(edtQtdEstoqueProduto.Text));
  end
  else
  begin
    FProdutoViewModel.InserirProduto(edtNomeProduto.Text, StrToCurr(edtPrecoProduto.Text), StrToInt(edtQtdEstoqueProduto.Text));
  end;
  btnBuscarClick(nil); // Atualiza a lista
end;

procedure TfrmProduto.btnBuscarClick(Sender: TObject);
var
  ds: TDataSet;
begin
  ds := FProdutoViewModel.ListarProdutos(StrToIntDef(edtIDProduto.Text, 0), edtNomeProduto.Text);
  dsProdutos.DataSet := ds;
end;

procedure TfrmProduto.LimparCampos;
begin
  edtIDProduto.Clear;
  edtNomeProduto.Clear;
  edtPrecoProduto.Clear;
  edtQtdEstoqueProduto.Clear;
end;

end.

