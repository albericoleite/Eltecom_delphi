object frmTelaheranca: TfrmTelaheranca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'INFORME AQUI O T'#205'TULO'
  ClientHeight = 456
  ClientWidth = 800
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 800
    Height = 418
    ActivePage = tabListagem
    Align = alClient
    TabOrder = 0
    object tabListagem: TTabSheet
      Caption = 'Listagem'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlListagem: TPanel
        Left = 0
        Top = 0
        Width = 792
        Height = 65
        Align = alTop
        TabOrder = 0
        object lblIndice: TLabel
          Left = 16
          Top = 0
          Width = 75
          Height = 13
          Caption = 'CampoPesquisa'
        end
        object mskPesquisar: TMaskEdit
          Left = 16
          Top = 16
          Width = 241
          Height = 21
          TabOrder = 0
          Text = ''
          TextHint = 'Digite sua Pesquisa'
          OnChange = mskPesquisarChange
        end
        object btnPesquisar: TBitBtn
          Left = 280
          Top = 14
          Width = 75
          Height = 25
          Caption = '&Pesquisar'
          TabOrder = 1
          Visible = False
        end
      end
      object grdListagem: TDBGrid
        Left = 0
        Top = 65
        Width = 792
        Height = 325
        Align = alClient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = grdListagemDblClick
        OnKeyDown = grdListagemKeyDown
        OnTitleClick = grdListagemTitleClick
      end
    end
    object tabManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 418
    Width = 800
    Height = 38
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      800
      38)
    object btnNavigator: TDBNavigator
      Left = 448
      Top = 6
      Width = 224
      Height = 25
      DataSource = dtsListagem
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object btnNovo: TBitBtn
      Left = 4
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 1
      OnClick = btnNovoClick
    end
    object btnAlterar: TBitBtn
      Left = 85
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Alterar'
      TabOrder = 2
      OnClick = btnAlterarClick
    end
    object btnCancelar: TBitBtn
      Left = 166
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 3
      OnClick = btnCancelarClick
    end
    object btnApagar: TBitBtn
      Left = 327
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Apaga&r'
      TabOrder = 4
      OnClick = btnApagarClick
    end
    object btnFechar: TBitBtn
      Left = 708
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Fechar'
      TabOrder = 5
      OnClick = btnFecharClick
    end
    object btnGravar: TBitBtn
      Left = 247
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 6
      OnClick = btnGravarClick
    end
  end
  object QryListagem: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    Left = 552
    Top = 32
  end
  object dtsListagem: TDataSource
    DataSet = QryListagem
    Left = 632
    Top = 32
  end
end
