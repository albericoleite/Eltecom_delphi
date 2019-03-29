inherited frmCadDizimos: TfrmCadDizimos
  Caption = 'Cadastro de Dizimos'
  ClientWidth = 829
  ExplicitTop = -17
  ExplicitWidth = 835
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 829
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 792
      ExplicitHeight = 390
      inherited pnlListagem: TPanel
        Width = 821
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
      ExplicitLeft = 20
      ExplicitTop = 16
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
        Width = 95
        Height = 21
        Hint = 'Data de abertura como Sub Congrega'#231#227'o.'
        ClickKey = 114
        DialogTitle = 'Selecione a Data'
        NumGlyphs = 2
        CalendarStyle = csDialog
        TabOrder = 6
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
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
    inherited btnFechar: TBitBtn
      Left = 737
    end
  end
  inherited QryListagem: TFDQuery
    Active = True
    SQL.Strings = (
      
        'SELECT cod_dizimo, cod_talao, cod_cheque, nome, valor, `data`, c' +
        'argo, cod_congregacao'
      'FROM igreja.tb_dizimista;')
    Left = 264
    Top = 0
    object fdtncfldQryListagemcod_dizimo: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_dizimo'
      Origin = 'cod_dizimo'
      ProviderFlags = [pfInWhere, pfInKey]
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
end
