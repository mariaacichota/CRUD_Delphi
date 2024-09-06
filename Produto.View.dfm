object frmProduto: TfrmProduto
  Left = 0
  Top = 0
  Caption = 'frmProduto'
  ClientHeight = 714
  ClientWidth = 1183
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Visible = True
  WindowState = wsMaximized
  TextHeight = 15
  object pnlProdutosTop: TPanel
    Left = 0
    Top = 0
    Width = 1183
    Height = 137
    Align = alTop
    TabOrder = 0
    object pnlProdutosBotoes: TPanel
      Left = 1
      Top = 1
      Width = 1181
      Height = 41
      Align = alTop
      TabOrder = 0
      object btnAdicionar: TButton
        Left = 8
        Top = 10
        Width = 75
        Height = 25
        Caption = 'Adicionar'
        TabOrder = 0
        OnClick = btnAdicionarClick
      end
      object btnSalvar: TButton
        Left = 214
        Top = 9
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 1
        OnClick = btnSalvarClick
      end
      object btnGerarNFe: TButton
        Left = 512
        Top = 10
        Width = 105
        Height = 25
        Caption = 'Gerar NF-e'
        TabOrder = 2
        OnClick = btnGerarNFeClick
      end
      object btnRelatorio: TButton
        Left = 656
        Top = 9
        Width = 105
        Height = 25
        Caption = 'Gerar Relat'#243'rio'
        TabOrder = 3
        OnClick = btnRelatorioClick
      end
      object btnExcluir: TButton
        Left = 318
        Top = 10
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 4
        OnClick = btnExcluirClick
      end
      object btnBuscar: TButton
        Left = 110
        Top = 10
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 5
        OnClick = btnBuscarClick
      end
    end
    object pnlProdutosCampos: TPanel
      Left = 1
      Top = 42
      Width = 1181
      Height = 94
      Align = alClient
      TabOrder = 1
      object lblIDProduto: TLabel
        Left = 24
        Top = 17
        Width = 48
        Height = 17
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPrecoProduto: TLabel
        Left = 228
        Top = 17
        Width = 38
        Height = 17
        Caption = 'Pre'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblQtdEstoqueProduto: TLabel
        Left = 415
        Top = 17
        Width = 107
        Height = 17
        Caption = 'Qtd. em Estoque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNomeProduto: TLabel
        Left = 8
        Top = 61
        Width = 63
        Height = 17
        Caption = 'Descri'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtIDProduto: TEdit
        Left = 78
        Top = 16
        Width = 121
        Height = 23
        TabOrder = 0
      end
      object edtNomeProduto: TEdit
        Left = 77
        Top = 58
        Width = 572
        Height = 23
        TabOrder = 1
      end
      object edtPrecoProduto: TEdit
        Left = 272
        Top = 16
        Width = 121
        Height = 23
        TabOrder = 2
      end
      object edtQtdEstoqueProduto: TEdit
        Left = 528
        Top = 16
        Width = 121
        Height = 23
        TabOrder = 3
      end
    end
  end
  object pnlProdutosGeral: TPanel
    Left = 0
    Top = 137
    Width = 1183
    Height = 577
    Align = alClient
    TabOrder = 1
    object gridProdutos: TDBGrid
      Left = 1
      Top = 1
      Width = 1181
      Height = 575
      Align = alClient
      DataSource = dsProdutos
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object dsProdutos: TDataSource
    Left = 872
    Top = 465
  end
  object FDConnection1: TFDConnection
    Left = 664
    Top = 288
  end
end
