object frmConsultaDados: TfrmConsultaDados
  Left = 0
  Top = 0
  Caption = 'Consultar Dados'
  ClientHeight = 486
  ClientWidth = 844
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object spl1: TSplitter
    Left = 185
    Top = 0
    Height = 239
    ExplicitLeft = 352
    ExplicitTop = 216
    ExplicitHeight = 100
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 239
    Width = 844
    Height = 247
    Align = alBottom
    TabOrder = 0
    object dbgrdPrincipal: TDBGrid
      Left = 1
      Top = 1
      Width = 842
      Height = 220
      Align = alClient
      DataSource = dsPrincipal
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object dbnvgrControles: TDBNavigator
      Left = 1
      Top = 221
      Width = 842
      Height = 25
      DataSource = dsPrincipal
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alBottom
      TabOrder = 1
    end
  end
  object pnlTabelas: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 239
    Align = alLeft
    TabOrder = 1
    object dbgrdTabelas: TDBGrid
      Left = 1
      Top = 1
      Width = 183
      Height = 237
      Align = alClient
      DataSource = dsTabelas
      Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgrdTabelasDblClick
    end
  end
  object pnl1: TPanel
    Left = 188
    Top = 0
    Width = 656
    Height = 239
    Align = alClient
    TabOrder = 2
    object mmoQuery: TMemo
      Left = 1
      Top = 1
      Width = 525
      Height = 237
      Align = alClient
      TabOrder = 0
      OnKeyPress = mmoQueryKeyPress
    end
    object pnlBotoes: TPanel
      Left = 526
      Top = 1
      Width = 129
      Height = 237
      Align = alRight
      TabOrder = 1
      object btnAlterarSeq: TBitBtn
        Left = 1
        Top = 1
        Width = 127
        Height = 25
        Hint = 'Altera a sequ'#234'ncia da tabela em quest'#227'o'
        Align = alTop
        Caption = 'Alterar Sequ'#234'ncia'
        TabOrder = 0
        OnClick = btnAlterarSeqClick
      end
      object btnDeletar: TBitBtn
        Left = 1
        Top = 26
        Width = 127
        Height = 25
        Hint = 'Apagar registros da tablea'
        Align = alTop
        Caption = 'Limpar Tabela'
        TabOrder = 1
        OnClick = btnDeletarClick
      end
      object btnConsultar: TBitBtn
        Left = 1
        Top = 51
        Width = 127
        Height = 25
        Align = alTop
        Caption = 'Consultar / Execu'#231#227'o'
        TabOrder = 2
        OnClick = btnConsultarClick
      end
      object btnGerarJson: TBitBtn
        Left = 1
        Top = 76
        Width = 127
        Height = 25
        Align = alTop
        Caption = 'Gerar Json'
        TabOrder = 3
        OnClick = btnGerarJsonClick
      end
      object btnCopiar: TBitBtn
        Left = 1
        Top = 101
        Width = 127
        Height = 25
        Align = alTop
        Caption = 'Copiar'
        TabOrder = 4
        ExplicitLeft = 6
        ExplicitTop = 116
      end
      object btn1: TBitBtn
        Left = 32
        Top = 184
        Width = 75
        Height = 25
        Caption = 'btn1'
        Enabled = False
        TabOrder = 5
        Visible = False
        OnClick = btn1Click
      end
    end
  end
  object dsPrincipal: TDataSource
    DataSet = fdqryConsulta
    Left = 528
    Top = 72
  end
  object fdqryConsulta: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    Left = 552
    Top = 8
  end
  object dsTabelas: TDataSource
    DataSet = fdqryTabelas
    Left = 648
    Top = 64
  end
  object fdqryTabelas: TFDQuery
    Active = True
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'show tables')
    Left = 464
    Top = 8
    object strngfldTabelasTables_in_igreja: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tables_in_igreja'
      Origin = '`TABLE_NAME`'
      Size = 64
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = fdqryConsulta
    Left = 739
    Top = 131
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 117
    Top = 189
  end
end
