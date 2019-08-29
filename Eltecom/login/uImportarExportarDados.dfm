object frmImportarExportarDados: TfrmImportarExportarDados
  Left = 220
  Top = 106
  Caption = 'Importar Dados'
  ClientHeight = 501
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object strngrdDados: TStringGrid
    Left = 543
    Top = 179
    Width = 441
    Height = 322
    Align = alRight
    ColCount = 21
    DefaultColWidth = 100
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 767
    object btnCarregar: TBitBtn
      Left = 416
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Carregar'
      TabOrder = 0
      OnClick = btnCarregarClick
    end
    object btnInserir: TBitBtn
      Left = 681
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Inserir'
      TabOrder = 1
      OnClick = btnInserirClick
    end
    object edtLocal: TEdit
      Left = 8
      Top = 11
      Width = 338
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object btnSelecionar: TBitBtn
      Left = 352
      Top = 10
      Width = 45
      Height = 25
      Caption = '...'
      TabOrder = 3
      OnClick = btnSelecionarClick
    end
    object btnCarregarJson: TBitBtn
      Left = 520
      Top = 10
      Width = 89
      Height = 25
      Caption = ' Carregar JSON'
      TabOrder = 4
      OnClick = btnCarregarJsonClick
    end
  end
  object mmo1: TMemo
    Left = 0
    Top = 41
    Width = 984
    Height = 138
    Align = alTop
    Lines.Strings = (
      '')
    TabOrder = 2
    ExplicitTop = 47
    ExplicitWidth = 617
  end
  object dbgrd1: TDBGrid
    Left = 0
    Top = 179
    Width = 537
    Height = 322
    Align = alLeft
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object dlgOpen1: TOpenDialog
    Left = 568
    Top = 192
  end
  object RESTDWClientSQL1: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = False
    Datapacks = -1
    DataCache = False
    Params = <>
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    DWResponseTranslator = DWResponseTranslator1
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 296
    Top = 184
  end
  object DWResponseTranslator1: TDWResponseTranslator
    ElementAutoReadRootIndex = True
    ElementRootBaseIndex = -1
    RequestOpen = rtGet
    RequestInsert = rtPost
    RequestEdit = rtPost
    RequestDelete = rtDelete
    FieldDefs = <>
    Left = 392
    Top = 176
  end
  object DataSource1: TDataSource
    DataSet = RESTDWClientSQL1
    Left = 504
    Top = 200
  end
end
