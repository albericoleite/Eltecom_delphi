object frmRelatoriosFinanceiro: TfrmRelatoriosFinanceiro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rios da Tesouraria'
  ClientHeight = 59
  ClientWidth = 366
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
    Height = 59
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 69
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
    Width = 157
    Height = 59
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 161
    ExplicitHeight = 69
    object btnSemana: TBitBtn
      Left = 120
      Top = 134
      Width = 75
      Height = 25
      Caption = 'Semanal'
      TabOrder = 0
      Visible = False
      OnClick = btnSemanaClick
    end
    object btngGravicoMensal: TBitBtn
      Left = 6
      Top = 79
      Width = 131
      Height = 25
      Caption = 'Gr'#225'fico Mensal'
      TabOrder = 1
      Visible = False
      OnClick = btnSemanaClick
    end
    object btnMovMensal: TBitBtn
      Left = 14
      Top = 23
      Width = 131
      Height = 25
      Caption = 'Movimenta'#231#227'o Mensal'
      TabOrder = 2
      OnClick = btnMovMensalClick
    end
  end
end
