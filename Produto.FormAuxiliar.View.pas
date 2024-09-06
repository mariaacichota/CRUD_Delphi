unit Produto.FormAuxiliar.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    pnlInformacoesNFeProdutos: TPanel;
    pnlInformacoesNFeTop: TPanel;
    pnlInformacoesNFeGeral: TPanel;
    PageControl1: TPageControl;
    tabInformacoesNFe: TTabSheet;
    tabRelatorios: TTabSheet;
    pnlRelatoriosGeral: TPanel;
    rbGroupRelatorios: TRadioGroup;
    pnlRelatorioTipos: TPanel;
    pnlRelatorioBottom: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    dsProdutoNFe: TDataSource;
    PageControl2: TPageControl;
    tabEmitente: TTabSheet;
    tabDestinatario: TTabSheet;
    edtRazaoEmitente: TEdit;
    edtCGCEmitente: TEdit;
    edtRuaEmitente: TEdit;
    edtNumeroEmitente: TEdit;
    edtBairroEmitente: TEdit;
    edtCidadeEmitente: TEdit;
    edtUFEmitente: TEdit;
    Edit8: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edtNumeroDestinatario: TEdit;
    edtRuaDestinatario: TEdit;
    edtCGCDestinatario: TEdit;
    edtRazaoDestinatario: TEdit;
    edtInscrEstadualDestinatario: TEdit;
    edtUFDestinatario: TEdit;
    edtCidadeDestinatario: TEdit;
    edtBairroDestinatario: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
