inherited frmCadFornecedor: TfrmCadFornecedor
  Caption = 'Cadastro de Fornecedores'
  ClientWidth = 736
  ExplicitWidth = 742
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlRodape: TPanel
    Width = 736
    ExplicitWidth = 736
    inherited dbnvgrNavigator: TDBNavigator
      Left = 415
      Hints.Strings = ()
      ExplicitLeft = 415
    end
    inherited btnFechar: TBitBtn
      Left = 644
      ExplicitLeft = 644
    end
  end
  inherited pgcPrincipal: TPageControl
    Width = 736
    ExplicitWidth = 736
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 728
      ExplicitHeight = 303
      inherited pnlListagem: TPanel
        Width = 728
        ExplicitWidth = 728
      end
      inherited dbgrdListagem: TDBGrid
        Width = 728
        DataSource = dsListagem
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 728
      ExplicitHeight = 303
      object lbl12: TLabel
        Left = 350
        Top = 3
        Width = 20
        Height = 13
        Caption = 'Tipo'
      end
      object lbltipo: TLabel
        Left = 400
        Top = 4
        Width = 19
        Height = 13
        Caption = 'CPF'
      end
      object lbledtCodigo: TLabeledEdit
        Tag = 1
        Left = 8
        Top = 20
        Width = 65
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        Enabled = False
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
      end
      object lbledtNome: TLabeledEdit
        Tag = 2
        Left = 79
        Top = 20
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        MaxLength = 45
        TabOrder = 1
      end
      object grpResidencia: TGroupBox
        Left = 0
        Top = 47
        Width = 681
        Height = 90
        TabOrder = 2
        object lblCEP: TLabel
          Left = 515
          Top = 3
          Width = 19
          Height = 13
          Caption = 'CEP'
        end
        object lblTelefone: TLabel
          Left = 580
          Top = 44
          Width = 78
          Height = 13
          Caption = 'Telefone Celular'
        end
        object lbl13: TLabel
          Left = 221
          Top = 44
          Width = 13
          Height = 13
          Caption = 'UF'
        end
        object lbl14: TLabel
          Left = 483
          Top = 44
          Width = 65
          Height = 13
          Caption = 'Telefone Fixo'
        end
        object btnConsultaCEP: TSpeedButton
          Left = 589
          Top = 18
          Width = 20
          Height = 20
          Hint = 'Consultar CEP'
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = btnConsultaCEPClick
        end
        object lbledtEmail: TLabeledEdit
          Left = 274
          Top = 59
          Width = 203
          Height = 21
          CharCase = ecLowerCase
          EditLabel.Width = 24
          EditLabel.Height = 13
          EditLabel.Caption = 'Email'
          MaxLength = 45
          TabOrder = 6
        end
        object lbledtBairro: TLabeledEdit
          Left = 356
          Top = 19
          Width = 150
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 28
          EditLabel.Height = 13
          EditLabel.Caption = 'Bairro'
          MaxLength = 45
          TabOrder = 1
        end
        object lbledtRua: TLabeledEdit
          Left = 11
          Top = 19
          Width = 339
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 45
          EditLabel.Height = 13
          EditLabel.Caption = 'Endere'#231'o'
          MaxLength = 45
          TabOrder = 0
        end
        object lbledtCidade: TLabeledEdit
          Left = 11
          Top = 59
          Width = 203
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'Cidade'
          MaxLength = 45
          TabOrder = 4
        end
        object medtCEP: TMaskEdit
          Left = 515
          Top = 19
          Width = 64
          Height = 21
          EditMask = '##.###-###;0;_'
          MaxLength = 10
          TabOrder = 2
          Text = ''
        end
        object medtTelefoneCel: TMaskEdit
          Left = 581
          Top = 59
          Width = 88
          Height = 21
          EditMask = '(99)99999-9999;1;_'
          MaxLength = 14
          TabOrder = 8
          Text = '(  )     -    '
        end
        object lbledtNumero: TLabeledEdit
          Left = 616
          Top = 19
          Width = 53
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 37
          EditLabel.Height = 13
          EditLabel.Caption = 'Numero'
          MaxLength = 45
          TabOrder = 3
        end
        object cbbUf: TComboBox
          Tag = 2
          Left = 222
          Top = 59
          Width = 44
          Height = 21
          ItemIndex = 19
          TabOrder = 5
          Text = 'RN'
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
        end
        object medtTelFixo: TMaskEdit
          Left = 483
          Top = 59
          Width = 91
          Height = 21
          EditMask = '(99)99999-9999;1;_'
          MaxLength = 14
          TabOrder = 7
          Text = '(  )     -    '
        end
      end
      object cbbTipo: TComboBox
        Tag = 2
        Left = 350
        Top = 20
        Width = 44
        Height = 21
        TabOrder = 3
        Text = 'F'
        OnChange = cbbTipoChange
        Items.Strings = (
          'F'
          'J')
      end
      object medtCpfcnpj: TMaskEdit
        Left = 400
        Top = 20
        Width = 106
        Height = 21
        EditMask = '###.###.###-##;0;_'
        MaxLength = 14
        TabOrder = 4
        Text = ''
      end
    end
  end
  inherited dsListagem: TDataSource
    OnDataChange = dsListagemDataChange
  end
  object DWClientRESTCEP: TDWClientREST
    UseSSL = False
    SSLVersions = []
    UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    ContentEncoding = 'multipart/form-data'
    MaxAuthRetries = 0
    ContentType = 'application/json'
    RequestCharset = esUtf8
    ProxyOptions.BasicAuthentication = False
    ProxyOptions.ProxyPort = 0
    RequestTimeOut = 10000
    AllowCookies = False
    HandleRedirects = False
    RedirectMaximum = 1
    VerifyCert = False
    AuthOptions.HasAuthentication = False
    AccessControlAllowOrigin = '*'
    OnBeforeGet = DWClientRESTCEPBeforeGet
    Left = 384
    Top = 168
  end
  object dwGetCEP: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'cep'
        DataType = ftString
        Precision = -1
        Size = 9
      end
      item
        Name = 'logradouro'
        DataType = ftString
        Precision = -1
        Size = 200
      end
      item
        Name = 'complemento'
        DataType = ftString
        Precision = -1
        Size = 100
      end
      item
        Name = 'bairro'
        DataType = ftString
        Precision = -1
        Size = 100
      end
      item
        Name = 'localidade'
        DataType = ftString
        Precision = -1
        Size = 100
      end
      item
        Name = 'uf'
        DataType = ftString
        Precision = -1
        Size = 2
      end
      item
        Name = 'unidade'
        DataType = ftString
        Precision = -1
        Size = 100
      end
      item
        Name = 'ibge'
        DataType = ftString
        Precision = -1
        Size = 10
      end
      item
        Name = 'gia'
        DataType = ftString
        Precision = -1
        Size = 10
      end>
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
    DWResponseTranslator = DWResponseTranslatorCEP
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 296
    Top = 176
  end
  object DWResponseTranslatorCEP: TDWResponseTranslator
    ElementAutoReadRootIndex = True
    ElementRootBaseIndex = -1
    RequestOpen = rtGet
    RequestInsert = rtPost
    RequestEdit = rtPost
    RequestDelete = rtDelete
    RequestOpenUrl = 'https://viacep.com.br/ws/01001000/json/'
    FieldDefs = <
      item
        FieldName = 'cep'
        ElementName = 'cep'
        ElementIndex = 0
        FieldSize = 9
        Precision = 0
        DataType = ovString
        Required = False
      end
      item
        FieldName = 'logradouro'
        ElementName = 'logradouro'
        ElementIndex = 1
        FieldSize = 200
        Precision = 0
        DataType = ovString
        Required = False
      end
      item
        FieldName = 'complemento'
        ElementName = 'complemento'
        ElementIndex = 2
        FieldSize = 100
        Precision = 0
        DataType = ovString
        Required = False
      end
      item
        FieldName = 'bairro'
        ElementName = 'bairro'
        ElementIndex = 3
        FieldSize = 100
        Precision = 0
        DataType = ovString
        Required = False
      end
      item
        FieldName = 'localidade'
        ElementName = 'localidade'
        ElementIndex = 4
        FieldSize = 100
        Precision = 0
        DataType = ovString
        Required = False
      end
      item
        FieldName = 'uf'
        ElementName = 'uf'
        ElementIndex = 5
        FieldSize = 2
        Precision = 0
        DataType = ovString
        Required = False
      end
      item
        FieldName = 'unidade'
        ElementName = 'unidade'
        ElementIndex = 6
        FieldSize = 100
        Precision = 0
        DataType = ovString
        Required = False
      end
      item
        FieldName = 'ibge'
        ElementName = 'ibge'
        ElementIndex = 7
        FieldSize = 10
        Precision = 0
        DataType = ovString
        Required = False
      end
      item
        FieldName = 'gia'
        ElementName = 'gia'
        ElementIndex = 8
        FieldSize = 10
        Precision = 0
        DataType = ovString
        Required = False
      end>
    ClientREST = DWClientRESTCEP
    Left = 168
    Top = 168
  end
end
