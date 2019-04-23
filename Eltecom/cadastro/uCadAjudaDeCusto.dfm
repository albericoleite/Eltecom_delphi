inherited frmCadAjudaDeCusto: TfrmCadAjudaDeCusto
  Caption = 'Cadastrar Ajuda de Custo'
  ExplicitWidth = 806
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    inherited tabListagem: TTabSheet
      inherited pnlListagem: TPanel
        object btnImprimir: TBitBtn
          Left = 648
          Top = 14
          Width = 75
          Height = 25
          Caption = 'Imprimir'
          TabOrder = 2
          OnClick = btnImprimirClick
        end
      end
      inherited grdListagem: TDBGrid
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_recibo'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 351
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_recibo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_operacao'
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 792
      ExplicitHeight = 390
      object lbl1: TLabel
        Left = 334
        Top = 3
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object lbl2: TLabel
        Left = 201
        Top = 95
        Width = 13
        Height = 13
        Caption = 'UF'
      end
      object lblcpf: TLabel
        Left = 498
        Top = 5
        Width = 19
        Height = 13
        Caption = 'CPF'
      end
      object lbl3: TLabel
        Left = 427
        Top = 3
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object lbledtCodDizimo: TLabeledEdit
        Tag = 1
        Left = 8
        Top = 20
        Width = 49
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
      end
      object lbledtDescricao: TLabeledEdit
        Tag = 2
        Left = 63
        Top = 20
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o'
        MaxLength = 45
        TabOrder = 1
      end
      object dtdtData: TDateEdit
        Left = 334
        Top = 20
        Width = 87
        Height = 21
        Hint = 'Data de abertura como Sub Congrega'#231#227'o.'
        ClickKey = 114
        DialogTitle = 'Selecione a Data'
        NumGlyphs = 2
        CalendarStyle = csDialog
        TabOrder = 2
        Text = '01/01/2019'
      end
      object lbledtEndereco: TLabeledEdit
        Tag = 2
        Left = 8
        Top = 68
        Width = 320
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 45
        EditLabel.Height = 13
        EditLabel.Caption = 'Endere'#231'o'
        MaxLength = 45
        TabOrder = 5
      end
      object lbledtBairro: TLabeledEdit
        Tag = 2
        Left = 334
        Top = 68
        Width = 187
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 28
        EditLabel.Height = 13
        EditLabel.Caption = 'Bairro'
        MaxLength = 45
        TabOrder = 6
      end
      object lbledtCidade: TLabeledEdit
        Tag = 2
        Left = 8
        Top = 108
        Width = 187
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Cidade'
        MaxLength = 45
        TabOrder = 7
      end
      object cbbUF: TComboBox
        Tag = 2
        Left = 201
        Top = 108
        Width = 44
        Height = 21
        ItemIndex = 19
        TabOrder = 8
        Text = 'RN'
        Items.Strings = (
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RJ'
          'RN'
          'RS'
          'RO'
          'RR'
          'SC'
          'SP'
          'SE'
          'TO')
      end
      object medtCPF: TMaskEdit
        Left = 498
        Top = 20
        Width = 92
        Height = 21
        EditMask = '999.999.999-99;1;_'
        MaxLength = 14
        TabOrder = 4
        Text = '   .   .   -  '
      end
      object crncydtValor: TCurrencyEdit
        Left = 427
        Top = 20
        Width = 65
        Height = 21
        DisplayFormat = '0.00;-0.00'
        TabOrder = 3
      end
    end
  end
  inherited pnlRodape: TPanel
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
    inherited btnNovo: TBitBtn
      Left = 1
      ExplicitLeft = 1
    end
    inherited btnAlterar: TBitBtn
      Left = 84
      ExplicitLeft = 84
    end
  end
  inherited QryListagem: TFDQuery
    Active = True
    SQL.Strings = (
      
        'SELECT cod_recibo, descricao, data_recibo, valor, endereco, bair' +
        'ro, cidade, uf, cpf, cod_operacao, data_lancamento'
      'FROM tb_recibo')
    object fdtncfldQryListagemcod_recibo: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_recibo'
      Origin = 'cod_recibo'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object strngfldQryListagemdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 255
    end
    object dtfldQryListagemdata_recibo: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data_recibo'
      Origin = 'data_recibo'
      Required = True
    end
    object fltfldQryListagemvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      currency = True
    end
    object strngfldQryListagemendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Required = True
      Size = 255
    end
    object strngfldQryListagembairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 100
    end
    object strngfldQryListagemcidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Required = True
      Size = 100
    end
    object strngfldQryListagemuf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      Required = True
      Size = 2
    end
    object strngfldQryListagemcpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      Size = 25
    end
    object intgrfldQryListagemcod_operacao: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo Opera'#231#227'o'
      FieldName = 'cod_operacao'
      Origin = 'cod_operacao'
    end
    object dtfldQryListagemdata_lancamento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_lancamento'
      Origin = 'data_lancamento'
    end
  end
end
