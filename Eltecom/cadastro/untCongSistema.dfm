object frmCongSistema: TfrmCongSistema
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Congrega'#231#227'o do Sistema'
  ClientHeight = 130
  ClientWidth = 377
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
  object dbnvgr1: TDBNavigator
    Left = 8
    Top = 9
    Width = 360
    Height = 25
    DataSource = dsCongSistema
    VisibleButtons = [nbEdit, nbPost, nbCancel, nbRefresh]
    Hints.Strings = (
      'First record'
      'Prior record'
      'Next record'
      'Last record'
      'Insert record'
      'Delete record'
      'Editar'
      'Salvar'
      'Cancelar'
      'Atualizar'
      'Apply updates'
      'Cancel updates')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object grp1: TGroupBox
    Left = 8
    Top = 40
    Width = 361
    Height = 81
    Caption = 'Congrega'#231#227'o do Sistema'
    TabOrder = 1
    object lbl1: TLabel
      Left = 8
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = dbedtcod_congregacao
    end
    object lbl2: TLabel
      Left = 47
      Top = 24
      Width = 64
      Height = 13
      Caption = 'Congrega'#231#227'o'
      FocusControl = dbedtcod_congregacao
    end
    object dbedtcod_congregacao: TDBEdit
      Left = 8
      Top = 40
      Width = 33
      Height = 21
      DataField = 'cod_congregacao'
      DataSource = dsCongSistema
      Enabled = False
      TabOrder = 0
    end
    object dblkcbbCongregacao: TDBLookupComboBox
      Left = 47
      Top = 40
      Width = 291
      Height = 21
      DataField = 'cod_congregacao'
      DataSource = dsCongSistema
      KeyField = 'cod_congregacao'
      ListField = 'congregacao'
      ListSource = dsCongregacao
      TabOrder = 1
    end
  end
  object dsCongSistema: TDataSource
    DataSet = fdqryCongregacaoSistema
    OnUpdateData = dsCongSistemaUpdateData
    Left = 624
    Top = 64
  end
  object dsCongregacao: TDataSource
    DataSet = fdqryListagem
    Left = 441
    Top = 16
  end
  object fdqryListagem: TFDQuery
    Active = True
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT cod_congregacao, congregacao FROM tb_congregacao')
    Left = 352
    Top = 152
  end
  object fdqryCongregacaoSistema: TFDQuery
    Active = True
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select cod_congregacao from tb_parametro_sistema')
    Left = 616
    Top = 144
    object intgrfldCongregacaoSistemacod_congregacao: TIntegerField
      FieldName = 'cod_congregacao'
      Origin = 'cod_congregacao'
      Required = True
    end
  end
end
