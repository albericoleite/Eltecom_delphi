object frmAniversariantes: TfrmAniversariantes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Aniversariantes'
  ClientHeight = 102
  ClientWidth = 292
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
    Width = 79
    Height = 13
    Caption = 'Selecione o filtro'
  end
  object lblData: TLabel
    Left = 8
    Top = 53
    Width = 53
    Height = 13
    Caption = 'Data Inicial'
  end
  object lbl2: TLabel
    Left = 111
    Top = 53
    Width = 48
    Height = 13
    Caption = 'Data Final'
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
    Left = 214
    Top = 68
    Width = 71
    Height = 25
    Caption = 'Visualizar'
    TabOrder = 1
    OnClick = btnVisualizarClick
  end
  object dtpData: TDateTimePicker
    Left = 8
    Top = 72
    Width = 97
    Height = 21
    Date = 42396.526608067130000000
    Time = 42396.526608067130000000
    TabOrder = 2
  end
  object dtpDataFinal: TDateTimePicker
    Left = 111
    Top = 72
    Width = 97
    Height = 21
    Date = 42396.526608067130000000
    Time = 42396.526608067130000000
    TabOrder = 3
  end
end
