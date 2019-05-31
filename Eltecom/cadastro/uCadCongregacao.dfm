inherited frmCadCongregacao: TfrmCadCongregacao
  Caption = 'Cadastro de Congrega'#231#227'o'
  ClientHeight = 375
  ClientWidth = 750
  ExplicitWidth = 756
  ExplicitHeight = 404
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 750
    Height = 337
    ActivePage = tabManutencao
    ExplicitWidth = 750
    ExplicitHeight = 337
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 742
      ExplicitHeight = 309
      inherited pnlListagem: TPanel
        Width = 742
        ExplicitWidth = 742
      end
      inherited grdListagem: TDBGrid
        Width = 742
        Height = 244
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_congregacao'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'congregacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'setor'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dirigente'
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 742
      ExplicitHeight = 309
      object lbl2: TLabel
        Left = 670
        Top = 3
        Width = 26
        Height = 13
        Caption = 'Setor'
      end
      object lbl3: TLabel
        Left = 350
        Top = 3
        Width = 43
        Height = 13
        Caption = 'Dirigente'
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
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
      end
      object lbledtCongregacao: TLabeledEdit
        Tag = 2
        Left = 79
        Top = 20
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 64
        EditLabel.Height = 13
        EditLabel.Caption = 'Congrega'#231#227'o'
        MaxLength = 45
        TabOrder = 1
      end
      object lbledtDirigente: TLabeledEdit
        Left = 438
        Top = 249
        Width = 243
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 43
        EditLabel.Height = 13
        EditLabel.Caption = 'Dirigente'
        MaxLength = 45
        TabOrder = 8
        Visible = False
      end
      object grpResidencia: TGroupBox
        Left = 0
        Top = 47
        Width = 814
        Height = 90
        TabOrder = 5
        object lblCEP: TLabel
          Left = 489
          Top = 44
          Width = 19
          Height = 13
          Caption = 'CEP'
        end
        object lbl12: TLabel
          Left = 369
          Top = 44
          Width = 83
          Height = 13
          Caption = 'Estado do Im'#243'vel'
        end
        object lbl13: TLabel
          Left = 221
          Top = 44
          Width = 13
          Height = 13
          Caption = 'UF'
        end
        object lbl1: TLabel
          Left = 272
          Top = 44
          Width = 65
          Height = 13
          Caption = 'Telefone Fixo'
        end
        object lbledtBairro: TLabeledEdit
          Left = 320
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
        object lbledtEndereco: TLabeledEdit
          Left = 11
          Top = 19
          Width = 300
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
          TabOrder = 3
        end
        object medtCEP: TMaskEdit
          Left = 487
          Top = 59
          Width = 68
          Height = 21
          EditMask = '99.999-999;1;_'
          MaxLength = 10
          TabOrder = 7
          Text = '  .   -   '
        end
        object lbledtComplemento: TLabeledEdit
          Left = 476
          Top = 19
          Width = 249
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 65
          EditLabel.Height = 13
          EditLabel.Caption = 'Complemento'
          MaxLength = 45
          TabOrder = 2
        end
        object cbbEstadoImovel: TComboBox
          Left = 369
          Top = 59
          Width = 112
          Height = 21
          ItemIndex = 0
          TabOrder = 6
          Text = 'PR'#211'PRIO'
          Items.Strings = (
            'PR'#211'PRIO'
            'ALUGADO'
            'CASA PASTORAL')
        end
        object cbbUfImovel: TComboBox
          Tag = 2
          Left = 222
          Top = 59
          Width = 44
          Height = 21
          ItemIndex = 19
          TabOrder = 4
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
        object medtTelefone: TMaskEdit
          Left = 272
          Top = 59
          Width = 91
          Height = 21
          EditMask = '(99)99999-9999;1;_'
          MaxLength = 14
          TabOrder = 5
          Text = '(  )     -    '
        end
      end
      object grpDatas: TGroupBox
        Left = 5
        Top = 151
        Width = 126
        Height = 148
        Caption = 'Funda'#231#227'o'
        TabOrder = 6
        object Label1: TLabel
          Left = 14
          Top = 101
          Width = 86
          Height = 13
          Caption = 'C. Ora'#231#227'o Infantil'
        end
        object lbl1btespirito: TLabel
          Left = 14
          Top = 59
          Width = 97
          Height = 13
          Caption = 'C. Ora'#231#227'o Mocidade'
        end
        object lblbtaguas: TLabel
          Left = 14
          Top = 16
          Width = 88
          Height = 13
          Caption = 'C. Ora'#231#227'o Adultos'
        end
        object dtdtFundCOA: TDateEdit
          Left = 14
          Top = 32
          Width = 95
          Height = 21
          Hint = 'Data de funda'#231#227'o do Circulo de Ora'#231#227'o de Adultos'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 0
        end
        object dtdtFundCOM: TDateEdit
          Left = 14
          Top = 75
          Width = 95
          Height = 21
          Hint = 'Data de funda'#231#227'o do Circulo de Ora'#231#227'o de Mocidade'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 1
        end
        object dtdtFundCOI: TDateEdit
          Left = 14
          Top = 117
          Width = 95
          Height = 21
          Hint = 'Data de funda'#231#227'o do Circulo de Ora'#231#227'o de Infantil'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 2
        end
      end
      object GroupBox1: TGroupBox
        Left = 135
        Top = 151
        Width = 122
        Height = 114
        Caption = 'Abertura'
        TabOrder = 7
        object Label3: TLabel
          Left = 14
          Top = 59
          Width = 64
          Height = 13
          Caption = 'Congrega'#231#227'o'
        end
        object Label4: TLabel
          Left = 14
          Top = 13
          Width = 85
          Height = 13
          Caption = 'Sub Congrega'#231#227'o'
        end
        object dtdtAberSubCong: TDateEdit
          Left = 14
          Top = 32
          Width = 95
          Height = 21
          Hint = 'Data de abertura como Sub Congrega'#231#227'o.'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 0
        end
        object dtdtAberCong: TDateEdit
          Left = 14
          Top = 75
          Width = 95
          Height = 21
          Hint = 'Data de abertura como Congrega'#231#227'o.'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 1
        end
      end
      object lbledtCodCentral: TLabeledEdit
        Left = 599
        Top = 20
        Width = 65
        Height = 21
        EditLabel.Width = 61
        EditLabel.Height = 13
        EditLabel.Caption = 'Cod. Central'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 3
        Text = '00000'
        OnExit = lbledtCodCentralExit
      end
      object dblkcbbSetor: TDBLookupComboBox
        Left = 670
        Top = 20
        Width = 59
        Height = 21
        KeyField = 'cod_setor'
        ListField = 'setor'
        ListSource = dsSetores
        TabOrder = 4
      end
      object dblkcbbDirigente: TDBLookupComboBox
        Left = 350
        Top = 20
        Width = 243
        Height = 21
        KeyField = 'nome'
        ListField = 'lista'
        ListSource = dsDirigente
        TabOrder = 2
      end
    end
  end
  inherited pnlRodape: TPanel
    Top = 337
    Width = 750
    ExplicitTop = 337
    ExplicitWidth = 750
    inherited btnNavigator: TDBNavigator
      Left = 413
      Hints.Strings = ()
      ExplicitLeft = 413
    end
    inherited btnFechar: TBitBtn
      Left = 658
      ExplicitLeft = 658
    end
  end
  inherited QryListagem: TFDQuery
    SQL.Strings = (
      
        'SELECT cod_congregacao, cod_central, congregacao, setor, polo, s' +
        'ituacao, telefone, cnpj, siteblog, endereco, complemento, bairro' +
        ', cep, cidade, diasculto, diacoa, diacom, diacoi, diacv, data_ab' +
        'er_sub, data_aber_cong, data_fun_coa, data_fun_com, data_fun_coi' +
        ', data_fun_cv, data_cadastro, usuario_cadastro, cong_principal, ' +
        'dirigente, cod_setor, cod_igreja, cod_cc, sigla'
      'FROM igreja.tb_congregacao')
    Left = 192
    Top = 0
    object fdtncfldQryListagemcod_congregacao: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_congregacao'
      Origin = 'cod_congregacao'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object intgrfldQryListagemcod_central: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_central'
      Origin = 'cod_central'
    end
    object strngfldQryListagemcongregacao: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'congregacao'
      Origin = 'congregacao'
      Size = 25
    end
    object strngfldQryListagemsetor: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Setor'
      FieldName = 'setor'
      Origin = 'setor'
      Size = 25
    end
    object strngfldQryListagempolo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'polo'
      Origin = 'polo'
      Size = 25
    end
    object intgrfldQryListagemsituacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'situacao'
      Origin = 'situacao'
    end
    object strngfldQryListagemtelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
    end
    object strngfldQryListagemcnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'cnpj'
    end
    object strngfldQryListagemsiteblog: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'siteblog'
      Origin = 'siteblog'
      Size = 50
    end
    object strngfldQryListagemendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 100
    end
    object strngfldQryListagemcomplemento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 25
    end
    object strngfldQryListagembairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 25
    end
    object strngfldQryListagemcep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      Size = 25
    end
    object strngfldQryListagemcidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 50
    end
    object strngfldQryListagemdiasculto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'diasculto'
      Origin = 'diasculto'
      Size = 25
    end
    object strngfldQryListagemdiacoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'diacoa'
      Origin = 'diacoa'
      Size = 25
    end
    object strngfldQryListagemdiacom: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'diacom'
      Origin = 'diacom'
      Size = 25
    end
    object strngfldQryListagemdiacoi: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'diacoi'
      Origin = 'diacoi'
      Size = 25
    end
    object strngfldQryListagemdiacv: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'diacv'
      Origin = 'diacv'
      Size = 25
    end
    object dtfldQryListagemdata_aber_sub: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_aber_sub'
      Origin = 'data_aber_sub'
    end
    object dtfldQryListagemdata_aber_cong: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_aber_cong'
      Origin = 'data_aber_cong'
    end
    object dtfldQryListagemdata_fun_coa: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_fun_coa'
      Origin = 'data_fun_coa'
    end
    object dtfldQryListagemdata_fun_com: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_fun_com'
      Origin = 'data_fun_com'
    end
    object dtfldQryListagemdata_fun_coi: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_fun_coi'
      Origin = 'data_fun_coi'
    end
    object dtfldQryListagemdata_fun_cv: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_fun_cv'
      Origin = 'data_fun_cv'
    end
    object dtfldQryListagemdata_cadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
    end
    object strngfldQryListagemusuario_cadastro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'usuario_cadastro'
      Origin = 'usuario_cadastro'
      Size = 50
    end
    object strngfldQryListagemcong_principal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cong_principal'
      Origin = 'cong_principal'
      Size = 10
    end
    object strngfldQryListagemdirigente: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dirigente'
      FieldName = 'dirigente'
      Origin = 'dirigente'
      Size = 30
    end
    object intgrfldQryListagemcod_setor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_setor'
      Origin = 'cod_setor'
    end
    object intgrfldQryListagemcod_igreja: TIntegerField
      FieldName = 'cod_igreja'
      Origin = 'cod_igreja'
      Required = True
    end
    object intgrfldQryListagemcod_cc: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_cc'
      Origin = 'cod_cc'
    end
    object strngfldQryListagemsigla: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sigla'
      Origin = 'sigla'
      Size = 25
    end
  end
  inherited dtsListagem: TDataSource
    Left = 256
    Top = 0
  end
  object dsSetores: TDataSource
    DataSet = dtmPrincipal.fdqrySetores
    Left = 592
    Top = 152
  end
  object dsDirigente: TDataSource
    DataSet = fdqryDirigente
    Left = 504
    Top = 184
  end
  object fdqryDirigente: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select nome as lista, nome  from tb_obreiro_cargo')
    Left = 384
    Top = 184
    object strngfldDirigentelista: TStringField
      FieldName = 'lista'
      Size = 50
    end
    object strngfldDirigentenome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'NOME'
      ProviderFlags = []
      Size = 50
    end
  end
end
