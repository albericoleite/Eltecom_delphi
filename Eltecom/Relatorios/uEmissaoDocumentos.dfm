object frmEmitirDoc: TfrmEmitirDoc
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cartas e Relat'#243'rios'
  ClientHeight = 277
  ClientWidth = 567
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
  object lbl1: TLabel
    Left = 8
    Top = 8
    Width = 125
    Height = 13
    Caption = 'Digite o nome do Membro:'
  end
  object lbl3: TLabel
    Left = 799
    Top = 8
    Width = 84
    Height = 13
    Caption = 'Selecione a Data:'
  end
  object lbl2: TLabel
    Left = 8
    Top = 210
    Width = 31
    Height = 13
    Caption = 'Total: '
  end
  object lbl4: TLabel
    Left = 567
    Top = 4
    Width = 134
    Height = 13
    Caption = 'Informe a igreja de destino:'
  end
  object edtBuscar: TEdit
    Left = 8
    Top = 22
    Width = 401
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    TabOrder = 0
    TextHint = 'Digite o nome ou c'#243'digo do Membro'
    OnChange = edtBuscarChange
  end
  object dbgrdMembro: TDBGrid
    Left = 8
    Top = 49
    Width = 401
    Height = 155
    DataSource = dtmRelatorio.dsBuscaPessoaRelatorio
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
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
        Width = 42
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
        Width = 78
        Visible = True
      end>
  end
  object chkMembro: TCheckBox
    Left = 266
    Top = 0
    Width = 143
    Height = 17
    Caption = 'Listar somente Membros:'
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = chkMembroClick
  end
  object mmoObservacao: TMemo
    Left = 567
    Top = 71
    Width = 332
    Height = 198
    Enabled = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
  end
  object chkObservacao: TCheckBox
    Left = 567
    Top = 48
    Width = 201
    Height = 17
    Caption = 'Inserir Observa'#231#227'o, Digite Abaixo:'
    TabOrder = 4
  end
  object dtpDocumento: TDateTimePicker
    Left = 799
    Top = 21
    Width = 100
    Height = 21
    Date = 42223.443553078700000000
    Time = 42223.443553078700000000
    TabOrder = 5
  end
  object edtDestino: TEdit
    Left = 567
    Top = 21
    Width = 218
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
  end
  object grpCartas: TGroupBox
    Left = 415
    Top = 171
    Width = 146
    Height = 98
    Caption = 'Cartas'
    TabOrder = 7
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
    Left = 415
    Top = 8
    Width = 146
    Height = 159
    Caption = 'Documentos'
    TabOrder = 8
    object chkRequerimento: TCheckBox
      Left = 3
      Top = 14
      Width = 97
      Height = 17
      Caption = 'Requerimento'
      Enabled = False
      TabOrder = 0
      OnClick = chkRequerimentoClick
    end
    object chkOcorrencia: TCheckBox
      Left = 8
      Top = 37
      Width = 113
      Height = 17
      Caption = 'Not. de Ocorr'#234'ncia'
      TabOrder = 1
    end
    object chkFxMembro: TCheckBox
      Left = 8
      Top = 60
      Width = 121
      Height = 17
      Caption = 'Ficha de Membro'
      TabOrder = 2
    end
    object chkFxCongregado: TCheckBox
      Left = 8
      Top = 83
      Width = 124
      Height = 17
      Caption = 'Ficha de Congregado'
      TabOrder = 3
    end
    object chkFxBatismo: TCheckBox
      Left = 8
      Top = 106
      Width = 110
      Height = 17
      Caption = 'Ficha de Batismo'
      TabOrder = 4
    end
    object chkTodas: TCheckBox
      Left = 8
      Top = 129
      Width = 110
      Height = 17
      Caption = 'Todas as Fichas'
      Enabled = False
      TabOrder = 5
    end
  end
  object btnImprimir: TBitBtn
    Left = 313
    Top = 210
    Width = 91
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 9
    OnClick = btnImprimirClick
  end
  object btnEnviarEmail: TBitBtn
    Left = 216
    Top = 210
    Width = 91
    Height = 25
    Caption = 'Enviar por email'
    Enabled = False
    TabOrder = 10
  end
  object rgCartas: TRadioGroup
    Left = 762
    Top = 306
    Width = 121
    Height = 105
    Caption = 'Cartas'
    TabOrder = 11
  end
  object rbRecomendacao: TRadioButton
    Left = 608
    Top = 336
    Width = 113
    Height = 17
    Hint = 'CARTA DE RECOMENDA'#199#195'O'
    Caption = 'Recomenda'#231#227'o'
    TabOrder = 12
  end
  object rbVisita: TRadioButton
    Left = 608
    Top = 359
    Width = 113
    Height = 17
    Hint = 'CARTA DE VISITA'
    Caption = 'Visita'
    TabOrder = 13
  end
  object rbTransferencia: TRadioButton
    Left = 608
    Top = 382
    Width = 113
    Height = 17
    Hint = 'CARTA DE TRANSFER'#202'NCIA INTERNA'
    Caption = 'Transfer'#234'ncia'
    TabOrder = 14
  end
end
