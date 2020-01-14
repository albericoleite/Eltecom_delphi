object frmEmitirDoc: TfrmEmitirDoc
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cartas e Relat'#243'rios'
  ClientHeight = 279
  ClientWidth = 586
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
  object lbl3: TLabel
    Left = 819
    Top = 4
    Width = 84
    Height = 13
    Caption = 'Selecione a Data:'
  end
  object lbl2: TLabel
    Left = 440
    Top = 360
    Width = 31
    Height = 13
    Caption = 'Total: '
    Visible = False
  end
  object lbl4: TLabel
    Left = 589
    Top = 4
    Width = 134
    Height = 13
    Caption = 'Informe a igreja de destino:'
  end
  object mmoObservacao: TMemo
    Left = 587
    Top = 67
    Width = 332
    Height = 160
    Enabled = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
  end
  object chkObservacao: TCheckBox
    Left = 587
    Top = 44
    Width = 201
    Height = 17
    Caption = 'Inserir Observa'#231#227'o, Digite Abaixo:'
    TabOrder = 1
    OnClick = chkObservacaoClick
  end
  object dtpDocumento: TDateTimePicker
    Left = 819
    Top = 17
    Width = 100
    Height = 21
    Date = 42223.000000000000000000
    Time = 0.443553078701370400
    TabOrder = 2
  end
  object edtDestino: TEdit
    Left = 587
    Top = 17
    Width = 218
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object grpCartas: TGroupBox
    Left = 425
    Top = 167
    Width = 146
    Height = 98
    Caption = 'Cartas'
    TabOrder = 4
    object chkRecomendacao: TCheckBox
      Left = 7
      Top = 24
      Width = 139
      Height = 17
      Hint = 'CARTA DE RECOMENDA'#199#195'O'
      Caption = 'Recomenda'#231#227'o'
      TabOrder = 0
      OnClick = chkRecomendacaoClick
    end
    object chkVisita: TCheckBox
      Left = 7
      Top = 47
      Width = 97
      Height = 17
      Hint = 'CARTA DE VISITA'
      Caption = 'Visita'
      TabOrder = 1
      OnClick = chkVisitaClick
    end
    object chkTransferencia: TCheckBox
      Left = 7
      Top = 69
      Width = 114
      Height = 17
      Hint = 'CARTA DE TRANSFER'#202'NCIA INTERNA'
      Caption = 'Transfer'#234'ncia'
      TabOrder = 2
      OnClick = chkTransferenciaClick
    end
  end
  object grpDocumento: TGroupBox
    Left = 425
    Top = 8
    Width = 146
    Height = 159
    Caption = 'Documentos'
    TabOrder = 5
    object chkRecNotif: TCheckBox
      Left = 8
      Top = 16
      Width = 113
      Height = 17
      Hint = 'Requerimento ou Notifica'#231#227'o de Ocor'#234'ncia'
      Caption = 'Req. | Notifica'#231#227'o'
      TabOrder = 0
      OnClick = chkRecNotifClick
    end
    object chkFxMembro: TCheckBox
      Left = 8
      Top = 39
      Width = 121
      Height = 17
      Caption = 'Ficha de Membro'
      TabOrder = 1
    end
    object chkFxCongregado: TCheckBox
      Left = 8
      Top = 62
      Width = 124
      Height = 17
      Caption = 'Ficha de Congregado'
      TabOrder = 2
    end
    object chkFxBatismo: TCheckBox
      Left = 8
      Top = 85
      Width = 110
      Height = 17
      Caption = 'Ficha de Batismo'
      TabOrder = 3
    end
    object chkTodas: TCheckBox
      Left = 8
      Top = 108
      Width = 110
      Height = 17
      Caption = 'Todas as Fichas'
      TabOrder = 4
    end
  end
  object btnImprimir: TBitBtn
    Left = 828
    Top = 240
    Width = 91
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 6
    OnClick = btnImprimirClick
  end
  object btnEnviarEmail: TBitBtn
    Left = 731
    Top = 240
    Width = 91
    Height = 25
    Caption = 'Enviar por email'
    Enabled = False
    TabOrder = 7
    OnClick = btnEnviarEmailClick
  end
  object rgCartas: TRadioGroup
    Left = 762
    Top = 306
    Width = 121
    Height = 105
    Caption = 'Cartas'
    TabOrder = 8
  end
  object rbRecomendacao: TRadioButton
    Left = 608
    Top = 336
    Width = 113
    Height = 17
    Hint = 'CARTA DE RECOMENDA'#199#195'O'
    Caption = 'Recomenda'#231#227'o'
    TabOrder = 9
  end
  object rbVisita: TRadioButton
    Left = 608
    Top = 359
    Width = 113
    Height = 17
    Hint = 'CARTA DE VISITA'
    Caption = 'Visita'
    TabOrder = 10
  end
  object rbTransferencia: TRadioButton
    Left = 608
    Top = 382
    Width = 113
    Height = 17
    Hint = 'CARTA DE TRANSFER'#202'NCIA INTERNA'
    Caption = 'Transfer'#234'ncia'
    TabOrder = 11
  end
  object pnlRequerimento: TPanel
    Left = 2
    Top = 8
    Width = 401
    Height = 238
    Enabled = False
    TabOrder = 12
    Visible = False
    object chkREADMISSAO: TCheckBox
      Left = 12
      Top = 5
      Width = 110
      Height = 17
      Caption = 'READMISS'#195'O'
      TabOrder = 0
    end
    object chkMUDANCA: TCheckBox
      Left = 12
      Top = 24
      Width = 110
      Height = 17
      Caption = 'MUDAN'#199'A'
      TabOrder = 1
    end
    object chkTRANSF: TCheckBox
      Left = 12
      Top = 166
      Width = 110
      Height = 17
      Caption = 'TRANSFER'#202'NCIA'
      TabOrder = 2
    end
    object chkDESLIGAMENTO: TCheckBox
      Left = 12
      Top = 42
      Width = 110
      Height = 17
      Caption = 'DESLIGAMENTO'
      TabOrder = 3
    end
    object chkEmCartMemb: TCheckBox
      Left = 12
      Top = 61
      Width = 229
      Height = 17
      Caption = 'EMISS'#195'O de 2'#170' via do Cart'#227'o de Membros'
      TabOrder = 4
    end
    object chkEmCartDiac: TCheckBox
      Left = 12
      Top = 82
      Width = 221
      Height = 17
      Caption = 'EMISS'#195'O de 2'#170' via de Credencial Di'#225'cono'
      TabOrder = 5
    end
    object chkEmCartpb: TCheckBox
      Left = 12
      Top = 103
      Width = 237
      Height = 17
      Caption = 'EMISS'#195'O de 2'#170' via de Credencial Presb'#237'tero'
      TabOrder = 6
    end
    object chkCartcidade: TCheckBox
      Left = 12
      Top = 124
      Width = 357
      Height = 17
      Caption = 'EMISS'#195'O de Carta de Recomenda'#231#227'o para CIDADE, ESTADO ou PA'#205'S'
      TabOrder = 7
    end
    object chkEmitCartTransito: TCheckBox
      Left = 12
      Top = 145
      Width = 357
      Height = 17
      Caption = 'EMISS'#195'O de Crt. de Recomenda'#231#227'o em tr'#226'nsito'
      TabOrder = 8
    end
  end
  object pnlLista: TPanel
    Left = 2
    Top = 8
    Width = 417
    Height = 263
    Caption = 'pnlLista'
    TabOrder = 13
    object lbl1: TLabel
      Left = 8
      Top = 10
      Width = 125
      Height = 13
      Caption = 'Digite o nome do Membro:'
    end
    object chkMembro: TCheckBox
      Left = 266
      Top = 7
      Width = 143
      Height = 17
      Caption = 'Listar somente Membros:'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = chkMembroClick
    end
    object edtBuscar: TEdit
      Left = 8
      Top = 29
      Width = 401
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      TabOrder = 1
      TextHint = 'Digite o nome ou c'#243'digo do Membro'
      OnChange = edtBuscarChange
    end
    object dbgrdMembro: TDBGrid
      Left = 8
      Top = 52
      Width = 401
      Height = 205
      DataSource = dsBuscaPessoaRelatorio
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgrdMembroDblClick
      OnTitleClick = dbgrdMembroTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'cod_pessoa'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_pessoa'
          Title.Caption = 'Nome'
          Width = 221
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'membro_congregado'
          Title.Caption = 'Tipo'
          Visible = True
        end>
    end
  end
  object dsBuscaPessoaRelatorio: TDataSource
    DataSet = dtmRelatorio.fdqryBuscaPessoaRelatorio
    Left = 475
    Top = 304
  end
  object ds1: TDataSource
    DataSet = dtmRelatorio.fdqryCheckbox
    Left = 456
    Top = 176
  end
end
