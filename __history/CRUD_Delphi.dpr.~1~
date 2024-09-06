program CRUD_Delphi;

uses
  Vcl.Forms,
  Produto.View in 'Produto.View.pas' {frmProduto},
  Produto.Model in 'Produto.Model.pas',
  Produto.ViewModel in 'Produto.ViewModel.pas',
  Produto.FormAuxiliar.ViewModel in 'Produto.FormAuxiliar.ViewModel.pas',
  Produto.FormAuxiliar.Model in 'Produto.FormAuxiliar.Model.pas',
  Produto.FormAuxiliar.View in 'Produto.FormAuxiliar.View.pas' {Form1},
  ProdutoDAO in 'ProdutoDAO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmProduto, frmProduto);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
