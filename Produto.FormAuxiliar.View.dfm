object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 695
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 695
    Height = 441
    ActivePage = tabInformacoesNFe
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 624
    object tabInformacoesNFe: TTabSheet
      Caption = 'Informa'#231#245'es NF-e'
      object pnlInformacoesNFeGeral: TPanel
        Left = 0
        Top = 0
        Width = 687
        Height = 411
        Align = alClient
        Caption = 'Panel3'
        TabOrder = 0
        ExplicitWidth = 616
        object pnlInformacoesNFeProdutos: TPanel
          Left = 1
          Top = 169
          Width = 685
          Height = 241
          Align = alClient
          TabOrder = 0
          ExplicitTop = 127
          ExplicitWidth = 614
          ExplicitHeight = 289
          object DBGrid1: TDBGrid
            Left = 1
            Top = 1
            Width = 683
            Height = 239
            Align = alClient
            DataSource = dsProdutoNFe
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
          end
        end
        object pnlInformacoesNFeTop: TPanel
          Left = 1
          Top = 1
          Width = 685
          Height = 168
          Align = alTop
          TabOrder = 1
          object PageControl2: TPageControl
            Left = 1
            Top = 1
            Width = 683
            Height = 166
            ActivePage = tabEmitente
            Align = alClient
            TabOrder = 0
            object tabEmitente: TTabSheet
              Caption = 'Emitente'
              object Label1: TLabel
                Left = 8
                Top = 11
                Width = 71
                Height = 15
                Caption = 'Raz'#227'o Social:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 24
                Top = 42
                Width = 55
                Height = 15
                Caption = 'CPF/CNPJ:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 55
                Top = 71
                Width = 24
                Height = 15
                Caption = 'Rua:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 455
                Top = 71
                Width = 49
                Height = 15
                Caption = 'N'#250'mero:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 42
                Top = 100
                Width = 37
                Height = 15
                Caption = 'Bairro:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 353
                Top = 100
                Width = 40
                Height = 15
                Caption = 'Cidade:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 559
                Top = 42
                Width = 18
                Height = 15
                Caption = 'UF:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 278
                Top = 42
                Width = 80
                Height = 15
                Caption = 'Inscr. Estadual:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object edtRazaoEmitente: TEdit
                Left = 85
                Top = 8
                Width = 563
                Height = 25
                TabOrder = 0
              end
              object edtCGCEmitente: TEdit
                Left = 85
                Top = 39
                Width = 167
                Height = 23
                TabOrder = 1
              end
              object edtRuaEmitente: TEdit
                Left = 85
                Top = 68
                Width = 348
                Height = 23
                TabOrder = 2
              end
              object edtNumeroEmitente: TEdit
                Left = 510
                Top = 68
                Width = 67
                Height = 23
                TabOrder = 3
              end
              object edtBairroEmitente: TEdit
                Left = 85
                Top = 97
                Width = 252
                Height = 23
                TabOrder = 4
              end
              object edtCidadeEmitente: TEdit
                Left = 399
                Top = 97
                Width = 249
                Height = 23
                TabOrder = 5
              end
              object edtUFEmitente: TEdit
                Left = 583
                Top = 39
                Width = 65
                Height = 23
                TabOrder = 6
              end
              object Edit8: TEdit
                Left = 364
                Top = 39
                Width = 167
                Height = 23
                TabOrder = 7
              end
            end
            object tabDestinatario: TTabSheet
              Caption = 'Destinat'#225'rio'
              ImageIndex = 1
              object Label9: TLabel
                Left = 455
                Top = 66
                Width = 49
                Height = 15
                Caption = 'N'#250'mero:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 55
                Top = 66
                Width = 24
                Height = 15
                Caption = 'Rua:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 24
                Top = 37
                Width = 55
                Height = 15
                Caption = 'CPF/CNPJ:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 8
                Top = 6
                Width = 71
                Height = 15
                Caption = 'Raz'#227'o Social:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 278
                Top = 37
                Width = 80
                Height = 15
                Caption = 'Inscr. Estadual:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label14: TLabel
                Left = 559
                Top = 37
                Width = 18
                Height = 15
                Caption = 'UF:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 353
                Top = 95
                Width = 40
                Height = 15
                Caption = 'Cidade:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label16: TLabel
                Left = 42
                Top = 95
                Width = 37
                Height = 15
                Caption = 'Bairro:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object edtNumeroDestinatario: TEdit
                Left = 510
                Top = 63
                Width = 67
                Height = 23
                TabOrder = 0
              end
              object edtRuaDestinatario: TEdit
                Left = 85
                Top = 63
                Width = 348
                Height = 23
                TabOrder = 1
              end
              object edtCGCDestinatario: TEdit
                Left = 85
                Top = 34
                Width = 167
                Height = 23
                TabOrder = 2
              end
              object edtRazaoDestinatario: TEdit
                Left = 85
                Top = 3
                Width = 563
                Height = 25
                TabOrder = 3
              end
              object edtInscrEstadualDestinatario: TEdit
                Left = 364
                Top = 34
                Width = 167
                Height = 23
                TabOrder = 4
              end
              object edtUFDestinatario: TEdit
                Left = 583
                Top = 34
                Width = 65
                Height = 23
                TabOrder = 5
              end
              object edtCidadeDestinatario: TEdit
                Left = 399
                Top = 92
                Width = 249
                Height = 23
                TabOrder = 6
              end
              object edtBairroDestinatario: TEdit
                Left = 85
                Top = 92
                Width = 252
                Height = 23
                TabOrder = 7
              end
            end
          end
        end
      end
    end
    object tabRelatorios: TTabSheet
      Caption = 'Relat'#243'rios'
      ImageIndex = 1
      object pnlRelatoriosGeral: TPanel
        Left = 0
        Top = 0
        Width = 687
        Height = 411
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 616
        object pnlRelatorioTipos: TPanel
          Left = 1
          Top = 1
          Width = 685
          Height = 336
          Align = alTop
          TabOrder = 0
          ExplicitWidth = 614
          object rbGroupRelatorios: TRadioGroup
            Left = 1
            Top = 1
            Width = 683
            Height = 334
            Align = alClient
            Caption = 'Selecione o Relat'#243'rio Desejado:'
            Items.Strings = (
              'Quantidade x Pre'#231'o'
              'Produtos x Estoque'
              'Produtos Sem Estoque'
              'Produtos Em Estoque')
            TabOrder = 0
            ExplicitWidth = 612
          end
        end
        object pnlRelatorioBottom: TPanel
          Left = 1
          Top = 369
          Width = 685
          Height = 41
          Align = alBottom
          TabOrder = 1
          ExplicitWidth = 614
          object Button1: TButton
            Left = 456
            Top = 0
            Width = 131
            Height = 25
            Caption = 'Gerar Relat'#243'rio'
            TabOrder = 0
          end
        end
      end
    end
  end
  object dsProdutoNFe: TDataSource
    Left = 304
    Top = 224
  end
end
