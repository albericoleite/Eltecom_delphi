object frmRelatoriosFinanceiro: TfrmRelatoriosFinanceiro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rios da Tesouraria'
  ClientHeight = 178
  ClientWidth = 375
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
    Width = 217
    Height = 178
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
    object Label1: TLabel
      Left = 11
      Top = 113
      Width = 104
      Height = 19
      Caption = 'Selecionar M'#234's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
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
    object dblkcbbMes: TDBLookupComboBox
      Left = 11
      Top = 133
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
      TabOrder = 2
      OnClick = dblkcbbMesClick
    end
    object chkobreiro: TCheckBox
      Left = 6
      Top = 60
      Width = 106
      Height = 17
      Caption = 'Somente Obreiros'
      TabOrder = 3
    end
    object chkMembros: TCheckBox
      Left = 6
      Top = 83
      Width = 106
      Height = 17
      Caption = 'Somente Membros'
      TabOrder = 4
    end
  end
  object pnl2: TPanel
    Left = 217
    Top = 0
    Width = 158
    Height = 178
    Align = alClient
    TabOrder = 1
    object btnSemana: TBitBtn
      Left = 264
      Top = 53
      Width = 75
      Height = 25
      Caption = 'Semanal'
      TabOrder = 0
      Visible = False
      OnClick = btnSemanaClick
    end
    object btngGravicoMensal: TBitBtn
      Left = 302
      Top = 135
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
    object btnImprimir: TBitBtn
      Left = 14
      Top = 54
      Width = 131
      Height = 25
      Caption = 'Dizimistas'
      TabOrder = 3
      OnClick = btnImprimirClick
    end
    object btnListaLimpaGeral: TBitBtn
      Left = 14
      Top = 135
      Width = 131
      Height = 25
      Caption = 'Lista de Dizimistas'
      TabOrder = 4
      OnClick = btnListaLimpaGeralClick
    end
    object btnUnicoDizimo: TBitBtn
      Left = 16
      Top = 85
      Width = 129
      Height = 25
      Caption = 'Somente 1 x Membro'
      TabOrder = 5
      OnClick = btnUnicoDizimoClick
    end
  end
  object dsMes: TDataSource
    DataSet = dtmRelatorio.fdqryMeses
    Left = 138
    Top = 144
  end
end
