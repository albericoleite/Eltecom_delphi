inherited frmCadDespesaFixa: TfrmCadDespesaFixa
  Caption = 'Cadastro de Despesa Fixa'
  ClientWidth = 735
  ExplicitWidth = 741
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlRodape: TPanel
    Width = 735
    ExplicitWidth = 735
    inherited dbnvgrNavigator: TDBNavigator
      Left = 415
      Hints.Strings = ()
      ExplicitLeft = 415
    end
    inherited btnFechar: TBitBtn
      Left = 643
      ExplicitLeft = 643
    end
  end
  inherited pgcPrincipal: TPageControl
    Width = 735
    ExplicitWidth = 735
    ExplicitHeight = 331
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 727
      ExplicitHeight = 303
      inherited pnlListagem: TPanel
        Width = 727
        Height = 57
        ExplicitWidth = 727
        ExplicitHeight = 57
        inherited lblIndice: TLabel
          Left = 274
          Top = 54
          Visible = False
          ExplicitLeft = 274
          ExplicitTop = 54
        end
        object lbl7: TLabel [1]
          Left = 10
          Top = 19
          Width = 78
          Height = 19
          Caption = 'Valor Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        inherited medtPesquisar: TMaskEdit
          Left = 274
          Top = 70
          Visible = False
          ExplicitLeft = 274
          ExplicitTop = 70
        end
        object btnFat: TBitBtn
          Left = 429
          Top = 19
          Width = 121
          Height = 25
          Caption = 'Faturar Selecionada'
          TabOrder = 2
          OnClick = btnFatClick
        end
        object btnFatTotal: TBitBtn
          Left = 556
          Top = 19
          Width = 143
          Height = 25
          Caption = 'Faturar Todas'
          TabOrder = 3
          OnClick = btnFatTotalClick
        end
        object crncydtTotal: TCurrencyEdit
          Left = 103
          Top = 16
          Width = 148
          Height = 27
          DisplayFormat = 'R$ 0.00;-0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
      inherited dbgrdListagem: TDBGrid
        Top = 57
        Width = 727
        Height = 246
        DataSource = dsListagem
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 727
      ExplicitHeight = 303
      object lbl3: TLabel
        Left = 441
        Top = 4
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object lbl1: TLabel
        Left = 376
        Top = 4
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object lblCultoFornec: TLabel
        Left = 8
        Top = 47
        Width = 61
        Height = 13
        Caption = 'Fornecedor*'
      end
      object lblTipoGenerico: TLabel
        Left = 335
        Top = 44
        Width = 70
        Height = 13
        Caption = 'Tipo Despesa*'
      end
      object lbledtCodigo: TLabeledEdit
        Tag = 1
        Left = 8
        Top = 20
        Width = 65
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        Enabled = False
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
      end
      object lbledtDescricao: TLabeledEdit
        Tag = 2
        Left = 79
        Top = 20
        Width = 289
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o'
        MaxLength = 45
        TabOrder = 1
      end
      object crncydtValor: TCurrencyEdit
        Left = 441
        Top = 20
        Width = 65
        Height = 21
        DisplayFormat = '0.00;-0.00'
        TabOrder = 2
      end
      object dblkcbbFornecedor: TDBLookupComboBox
        Left = 8
        Top = 63
        Width = 315
        Height = 21
        DropDownRows = 15
        TabOrder = 3
      end
      object dblkcbbTipoDespesa: TDBLookupComboBox
        Left = 335
        Top = 63
        Width = 171
        Height = 21
        DropDownRows = 15
        KeyField = 'codigo'
        TabOrder = 4
      end
      object cbbVencimento: TComboBox
        Left = 376
        Top = 20
        Width = 52
        Height = 21
        ItemIndex = 0
        TabOrder = 5
        Text = '1'
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28'
          '29'
          '30'
          '31')
      end
    end
  end
  inherited dsListagem: TDataSource
    OnDataChange = dsListagemDataChange
    Left = 648
    Top = 200
  end
  object dsFornecedor: TDataSource
    Left = 600
    Top = 128
  end
  object dsTipoDespesa: TDataSource
    Left = 648
    Top = 120
  end
end
