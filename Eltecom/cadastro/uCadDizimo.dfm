inherited frmCadDizimos: TfrmCadDizimos
  Caption = 'Cadastro de Dizimos'
  ClientWidth = 829
  ExplicitWidth = 835
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 829
    ExplicitWidth = 829
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 821
      ExplicitHeight = 390
      inherited pnlListagem: TPanel
        Width = 821
        ExplicitWidth = 821
        object lblDataNascimento: TLabel [1]
          Left = 370
          Top = -1
          Width = 53
          Height = 13
          Caption = 'Data Inicial'
        end
        object lbl5: TLabel [2]
          Left = 470
          Top = 1
          Width = 48
          Height = 13
          Caption = 'Data Final'
        end
        object dtdtIni: TDateEdit
          Left = 370
          Top = 18
          Width = 83
          Height = 21
          Hint = 'Data Inicial'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 2
          Text = '01/04/2019'
        end
        object dtdtFim: TDateEdit
          Left = 470
          Top = 18
          Width = 84
          Height = 21
          Hint = 'Data Finaal'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 3
          Text = '10/04/2019'
        end
        object btnBuscar: TBitBtn
          Left = 560
          Top = 14
          Width = 49
          Height = 25
          Caption = 'Buscar'
          TabOrder = 4
          OnClick = btnBuscarClick
        end
        object btnImprimir: TBitBtn
          Left = 648
          Top = 14
          Width = 75
          Height = 25
          Caption = 'Imprimir'
          TabOrder = 5
          OnClick = btnImprimirClick
        end
      end
      inherited grdListagem: TDBGrid
        Width = 821
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_dizimo'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_talao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 317
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cargo'
            Width = 101
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 821
      ExplicitHeight = 390
      object lbl1: TLabel
        Left = 546
        Top = 3
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object lbl2: TLabel
        Left = 647
        Top = 3
        Width = 29
        Height = 13
        Caption = 'Cargo'
      end
      object lbl3: TLabel
        Left = 470
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
        TabOrder = 1
      end
      object lbledtNome: TLabeledEdit
        Tag = 2
        Left = 199
        Top = 20
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        MaxLength = 45
        TabOrder = 4
      end
      object lbledtCodtalao: TLabeledEdit
        Tag = 2
        Left = 63
        Top = 20
        Width = 62
        Height = 21
        EditLabel.Width = 52
        EditLabel.Height = 13
        EditLabel.Caption = 'Cod. Tal'#227'o'
        MaxLength = 45
        NumbersOnly = True
        TabOrder = 2
      end
      object lbledtCodCheque: TLabeledEdit
        Left = 131
        Top = 20
        Width = 62
        Height = 21
        EditLabel.Width = 63
        EditLabel.Height = 13
        EditLabel.Caption = 'Cod. Cheque'
        Enabled = False
        MaxLength = 45
        NumbersOnly = True
        TabOrder = 3
        Text = '0'
      end
      object dtdtData: TDateEdit
        Left = 546
        Top = 20
        Width = 87
        Height = 21
        Hint = 'Data de abertura como Sub Congrega'#231#227'o.'
        ClickKey = 114
        DialogTitle = 'Selecione a Data'
        NumGlyphs = 2
        CalendarStyle = csDialog
        TabOrder = 6
        Text = '01/01/2019'
      end
      object dblkcbbCargo: TDBLookupComboBox
        Left = 647
        Top = 22
        Width = 171
        Height = 21
        KeyField = 'list'
        ListField = 'cargo'
        ListSource = dsCargos
        TabOrder = 7
      end
      object crncydtValor: TCurrencyEdit
        Left = 470
        Top = 20
        Width = 65
        Height = 21
        DisplayFormat = '0.00;-0.00'
        TabOrder = 5
      end
      object chkCheque: TCheckBox
        Left = 712
        Top = -1
        Width = 106
        Height = 17
        Caption = 'Cadastar Cheque'
        TabOrder = 0
        OnClick = chkChequeClick
      end
    end
  end
  inherited pnlRodape: TPanel
    Width = 829
    ExplicitWidth = 829
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
    inherited btnFechar: TBitBtn
      Left = 737
      ExplicitLeft = 737
    end
  end
  inherited QryListagem: TFDQuery
    Active = True
    SQL.Strings = (
      
        'SELECT t.cod_dizimo, t.cod_talao, t.cod_cheque, t.nome, t.valor,' +
        ' t.`data`, t.cargo, t.cod_congregacao,b.nivel'
      
        'FROM tb_dizimista t inner join tb_parametro_sistema a on a.cod_c' +
        'ongregacao = t.cod_congregacao '
      'left join tb_cargo b on b.cargo = t.cargo'
      'where t.`data` between '
      ':dtini'
      'and '
      ':dtfim'
      'order by b.nivel desc')
    Left = 264
    Top = 0
    ParamData = <
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 43466d
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 43586d
      end>
    object fdtncfldQryListagemcod_dizimo: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_dizimo'
      Origin = 'cod_dizimo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object intgrfldQryListagemcod_talao: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo do Tal'#227'o'
      FieldName = 'cod_talao'
      Origin = 'cod_talao'
    end
    object intgrfldQryListagemcod_cheque: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo do Cheque'
      FieldName = 'cod_cheque'
      Origin = 'cod_cheque'
    end
    object strngfldQryListagemnome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object fltfldQryListagemvalor: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
    end
    object dtfldQryListagemdata: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data'
      FieldName = 'data'
      Origin = '`data`'
    end
    object strngfldQryListagemcargo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cargo'
      FieldName = 'cargo'
      Origin = 'cargo'
      Size = 50
    end
    object intgrfldQryListagemcod_congregacao: TIntegerField
      DisplayLabel = 'C'#243'digo da Congrega'#231#227'o'
      FieldName = 'cod_congregacao'
      Origin = 'cod_congregacao'
      Required = True
    end
    object intgrfldQryListagemnivel: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nivel'
      Origin = 'nivel'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  inherited dtsListagem: TDataSource
    Left = 336
    Top = 0
  end
  object fdqryCargos: TFDQuery
    Active = True
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select cargo as list ,cargo from tb_cargo'
      'union'
      'select "MEMBRO", "MEMBRO" ')
    Left = 400
    Top = 232
  end
  object dsCargos: TDataSource
    DataSet = fdqryCargos
    Left = 464
    Top = 200
  end
  object fdqryDizimistas: TFDQuery
    Active = True
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      
        'SELECT t.cod_dizimo, t.cod_talao, t.cod_cheque, t.nome, t.valor,' +
        ' t.`data`, t.cargo, t.cod_congregacao,b.nivel'
      
        'FROM tb_dizimista t inner join tb_parametro_sistema a on a.cod_c' +
        'ongregacao = t.cod_congregacao '
      'left join tb_cargo b on b.cargo = t.cargo'
      'where t.`data` between '
      ':dtini'
      'and '
      ':dtfim'
      'order by b.nivel desc')
    Left = 568
    ParamData = <
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 43466d
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 43586d
      end>
    object fdtncfld1: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_dizimo'
      Origin = 'cod_dizimo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object intgrfld1: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo do Tal'#227'o'
      FieldName = 'cod_talao'
      Origin = 'cod_talao'
    end
    object intgrfld2: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo do Cheque'
      FieldName = 'cod_cheque'
      Origin = 'cod_cheque'
    end
    object strngfld1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object fltfld1: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
    end
    object dtfld1: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data'
      FieldName = 'data'
      Origin = '`data`'
    end
    object strngfld2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cargo'
      FieldName = 'cargo'
      Origin = 'cargo'
      Size = 50
    end
    object intgrfld3: TIntegerField
      DisplayLabel = 'C'#243'digo da Congrega'#231#227'o'
      FieldName = 'cod_congregacao'
      Origin = 'cod_congregacao'
      Required = True
    end
    object intgrfld4: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nivel'
      Origin = 'nivel'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
