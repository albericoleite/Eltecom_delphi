object frmRelatoriosEBD: TfrmRelatoriosEBD
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rios da EBD'
  ClientHeight = 79
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 8
    Width = 88
    Height = 13
    Caption = 'Selecione a Classe'
  end
  object lblData: TLabel
    Left = 184
    Top = 133
    Width = 53
    Height = 13
    Caption = 'Data Inicial'
  end
  object lbl2: TLabel
    Left = 287
    Top = 133
    Width = 48
    Height = 13
    Caption = 'Data Final'
  end
  object dtpData: TDateTimePicker
    Left = 184
    Top = 152
    Width = 97
    Height = 21
    Date = 42396.526608067130000000
    Time = 42396.526608067130000000
    TabOrder = 0
  end
  object dtpDataFinal: TDateTimePicker
    Left = 287
    Top = 152
    Width = 97
    Height = 21
    Date = 42396.526608067130000000
    Time = 42396.526608067130000000
    TabOrder = 1
  end
  object btnVisualizar: TBitBtn
    Left = 222
    Top = 23
    Width = 71
    Height = 25
    Caption = 'Visualizar'
    TabOrder = 2
  end
  object dblkcbbClasses: TDBLookupComboBox
    Left = 8
    Top = 27
    Width = 200
    Height = 21
    KeyField = 'cod_classe'
    ListField = 'classe'
    ListSource = dsClasses
    TabOrder = 3
  end
  object fdqryClasses: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select cod_classe,classe,descricao from tb_classe')
    Left = 344
    Top = 80
    object fdtncfldClassescod_classe: TFDAutoIncField
      FieldName = 'cod_classe'
      Origin = 'cod_classe'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object strngfldClassesclasse: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'classe'
      Origin = 'classe'
    end
    object strngfldClassesdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
  end
  object dsClasses: TDataSource
    DataSet = fdqryClasses
    Left = 336
    Top = 16
  end
end
