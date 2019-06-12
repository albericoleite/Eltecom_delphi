object frmRelatoriosFinanceiro: TfrmRelatoriosFinanceiro
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios da Tesouraria'
  ClientHeight = 201
  ClientWidth = 447
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
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 209
    Height = 201
    Align = alLeft
    TabOrder = 0
    object lbl5: TLabel
      Left = 95
      Top = 6
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object lblDataNascimento: TLabel
      Left = 6
      Top = 6
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object dtdtFim: TDateEdit
      Left = 95
      Top = 25
      Width = 83
      Height = 21
      Hint = 'Data Finaal'
      ClickKey = 114
      DialogTitle = 'Selecione a Data'
      NumGlyphs = 2
      CalendarStyle = csDialog
      TabOrder = 0
      Text = '10/04/2019'
    end
    object dtdtIni: TDateEdit
      Left = 6
      Top = 25
      Width = 83
      Height = 21
      Hint = 'Data Inicial'
      ClickKey = 114
      DialogTitle = 'Selecione a Data'
      NumGlyphs = 2
      CalendarStyle = csDialog
      TabOrder = 1
      Text = '01/04/2019'
    end
  end
  object pnl2: TPanel
    Left = 209
    Top = 0
    Width = 238
    Height = 201
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 215
    ExplicitWidth = 232
    object btnSemana: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Semanal'
      TabOrder = 0
      OnClick = btnSemanaClick
    end
  end
end
