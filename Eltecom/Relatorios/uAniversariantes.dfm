object frmAniversariantes: TfrmAniversariantes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Aniversariantes'
  ClientHeight = 346
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 8
    Width = 118
    Height = 19
    Caption = 'Selecione o filtro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblData: TLabel
    Left = 224
    Top = 8
    Width = 79
    Height = 19
    Caption = 'Data Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 327
    Top = 8
    Width = 70
    Height = 19
    Caption = 'Data Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 59
    Width = 93
    Height = 19
    Caption = 'Filtrar na tela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cbbCategoria: TComboBox
    Left = 8
    Top = 27
    Width = 200
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = 'CONGREGADO'
    Items.Strings = (
      'CONGREGADO'
      'MEMBRO'
      'COOPERADOR'
      'AUXILIAR DE CONGREGA'#199#195'O'
      'AUXILIAR'
      'DI'#193'CONO'
      'PRESBITERO'
      'EVANGELISTA'
      'PASTOR')
  end
  object btnVisualizar: TBitBtn
    Left = 438
    Top = 23
    Width = 83
    Height = 25
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnVisualizarClick
  end
  object dtpData: TDateTimePicker
    Left = 224
    Top = 27
    Width = 97
    Height = 21
    Date = 42396.000000000000000000
    Time = 0.526608067128108800
    TabOrder = 2
  end
  object dtpDataFinal: TDateTimePicker
    Left = 327
    Top = 27
    Width = 97
    Height = 21
    Date = 42396.000000000000000000
    Time = 0.526608067128108800
    TabOrder = 3
  end
  object dblkcbbMes: TDBLookupComboBox
    Left = 8
    Top = 79
    Width = 200
    Height = 27
    DropDownRows = 12
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'valor'
    ListField = 'mes'
    ListSource = dsMes
    ParentFont = False
    TabOrder = 4
    OnClick = dblkcbbMesClick
  end
  object dbgrdAniversariantes: TDBGrid
    Left = 0
    Top = 120
    Width = 537
    Height = 226
    Align = alBottom
    DataSource = dsAniversariantes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome_pessoa'
        Title.Caption = 'Nome'
        Width = 275
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dta_nascimento'
        Title.Caption = 'Dt. Nasc.'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idade'
        Title.Caption = 'Idade'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Width = 90
        Visible = True
      end>
  end
  object fdqryAniverariantes: TFDQuery
    Active = True
    OnFilterRecord = fdqryAniverariantesFilterRecord
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      
        'select a.cod_pessoa,a.nome_pessoa,a.sexo,a.membro_congregado,a.d' +
        'ta_nascimento, '
      
        'YEAR(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS(a.dta_nascimento)))as idad' +
        'e , a.membro_congregado as filtro , a.fone_celular as telefone'
      ' from tb_pessoa a '
      
        'inner join tb_parametro_sistema c on c.cod_congregacao =a.cod_co' +
        'ngregacao'
      'order by day(a.dta_nascimento)'
      ''
      ''
      '')
    Left = 280
    Top = 20
    object fdqryAniverariantescod_pessoa: TFDAutoIncField
      FieldName = 'cod_pessoa'
      Origin = 'cod_pessoa'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdqryAniverariantesnome_pessoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_pessoa'
      Origin = 'nome_pessoa'
      Size = 50
    end
    object fdqryAniverariantessexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sexo'
      Origin = 'sexo'
      Size = 1
    end
    object fdqryAniverariantesmembro_congregado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'membro_congregado'
      Origin = 'membro_congregado'
      Size = 15
    end
    object fdqryAniverariantesdta_nascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_nascimento'
      Origin = 'dta_nascimento'
    end
    object fdqryAniverariantesfiltro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'filtro'
      Origin = 'membro_congregado'
      ProviderFlags = []
      Size = 15
    end
    object fdqryAniverariantestelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'fone_celular'
      Size = 30
    end
    object fdqryAniverariantesidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idade'
      Origin = 'idade'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsMes: TDataSource
    DataSet = dtmRelatorio.fdqryMeses
    Left = 352
    Top = 56
  end
  object dsAniversariantes: TDataSource
    DataSet = fdqryAniverariantes
    Left = 416
    Top = 48
  end
end
