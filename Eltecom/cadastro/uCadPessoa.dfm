inherited frmCadPessoa: TfrmCadPessoa
  Caption = 'Cadastro de Membros / Congregados'
  ClientHeight = 486
  ClientWidth = 956
  ExplicitWidth = 962
  ExplicitHeight = 515
  PixelsPerInch = 96
  TextHeight = 13
  object lbl5: TLabel [0]
    Left = 18
    Top = 24
    Width = 141
    Height = 13
    Caption = 'Grau de Instru'#231#227'o Acad'#234'mica'
  end
  object lbl6: TLabel [1]
    Left = 173
    Top = 24
    Width = 95
    Height = 13
    Caption = 'Situa'#231#227'o Acad'#234'mica'
  end
  inherited pgcPrincipal: TPageControl
    Width = 956
    Height = 448
    ActivePage = tabManutencao
    ExplicitWidth = 956
    ExplicitHeight = 448
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 948
      ExplicitHeight = 420
      inherited pnlListagem: TPanel
        Width = 948
        ExplicitWidth = 948
      end
      inherited grdListagem: TDBGrid
        Width = 948
        Height = 355
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_pessoa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_pessoa'
            Width = 270
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sexo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dta_nascimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'congregacao'
            Title.Caption = 'Congrega'#231#227'o'
            Width = 193
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'membro_congregado'
            Title.Caption = 'Tipo'
            Width = 93
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 948
      ExplicitHeight = 420
      object lblTipo: TLabel
        Left = 334
        Top = 3
        Width = 20
        Height = 13
        Caption = 'Tipo'
      end
      object lblSexo: TLabel
        Left = 439
        Top = 4
        Width = 24
        Height = 13
        Caption = 'Sexo'
      end
      object lblDataNascimento: TLabel
        Left = 546
        Top = 3
        Width = 81
        Height = 13
        Caption = 'Data Nascimento'
      end
      object lblufnascimento: TLabel
        Left = 739
        Top = 3
        Width = 47
        Height = 13
        Caption = 'UF. Nasc.'
      end
      object lblcpf: TLabel
        Left = 698
        Top = 45
        Width = 19
        Height = 13
        Caption = 'CPF'
      end
      object lbledt_codigo: TLabeledEdit
        Tag = 1
        Left = 3
        Top = 20
        Width = 44
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
      end
      object lbledtNome: TLabeledEdit
        Tag = 2
        Left = 53
        Top = 19
        Width = 277
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        MaxLength = 45
        TabOrder = 1
      end
      object cbbMembCong: TComboBox
        Tag = 2
        Left = 334
        Top = 20
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        OnChange = cbbMembCongChange
        Items.Strings = (
          'MEMBRO'
          'CONGREGADO')
      end
      object cbbSexo: TComboBox
        Tag = 2
        Left = 439
        Top = 20
        Width = 34
        Height = 21
        ItemIndex = 0
        TabOrder = 3
        Text = 'M'
        Items.Strings = (
          'M'
          'F')
      end
      object lbledtRol: TLabeledEdit
        Tag = 2
        Left = 478
        Top = 20
        Width = 62
        Height = 21
        EditLabel.Width = 20
        EditLabel.Height = 13
        EditLabel.Caption = 'ROL'
        MaxLength = 45
        NumbersOnly = True
        TabOrder = 4
      end
      object lbledtNomePai: TLabeledEdit
        Left = 3
        Top = 60
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 14
        EditLabel.Height = 13
        EditLabel.Caption = 'Pai'
        MaxLength = 45
        TabOrder = 8
      end
      object lbledtNomeMae: TLabeledEdit
        Left = 274
        Top = 60
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 20
        EditLabel.Height = 13
        EditLabel.Caption = 'M'#227'e'
        MaxLength = 45
        TabOrder = 9
      end
      object dtdtNascimento: TDateEdit
        Tag = 2
        Left = 546
        Top = 20
        Width = 85
        Height = 21
        Hint = 'Data Nascimento'
        ClickKey = 114
        DialogTitle = 'Selecione a Data'
        NumGlyphs = 2
        CalendarStyle = csDialog
        TabOrder = 5
      end
      object lbledtNacionalidade: TLabeledEdit
        Left = 545
        Top = 60
        Width = 72
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 66
        EditLabel.Height = 13
        EditLabel.Caption = 'Nacionalidade'
        MaxLength = 45
        TabOrder = 10
        Text = 'BRASILEIRA'
      end
      object lbledtRG: TLabeledEdit
        Left = 623
        Top = 60
        Width = 69
        Height = 21
        EditLabel.Width = 14
        EditLabel.Height = 13
        EditLabel.Caption = 'RG'
        MaxLength = 45
        NumbersOnly = True
        TabOrder = 11
      end
      object cbbUFnascimento: TComboBox
        Tag = 2
        Left = 739
        Top = 20
        Width = 44
        Height = 21
        ItemIndex = 19
        TabOrder = 7
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
      object lbledtNatural: TLabeledEdit
        Left = 639
        Top = 20
        Width = 92
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 61
        EditLabel.Height = 13
        EditLabel.Caption = 'Naturalidade'
        MaxLength = 45
        TabOrder = 6
      end
      object grpDatas: TGroupBox
        Left = 3
        Top = 181
        Width = 110
        Height = 190
        Caption = 'Datas'
        TabOrder = 14
        object lbl1: TLabel
          Left = 14
          Top = 101
          Width = 52
          Height = 13
          Caption = 'Convers'#227'o'
        end
        object lbl1btespirito: TLabel
          Left = 14
          Top = 59
          Width = 66
          Height = 13
          Caption = 'Espirito Santo'
        end
        object lbl2: TLabel
          Left = 14
          Top = 143
          Width = 71
          Height = 13
          Caption = 'Membro Desde'
        end
        object lblbtaguas: TLabel
          Left = 14
          Top = 16
          Width = 30
          Height = 13
          Caption = #193'guas'
        end
        object dtdtBtaguas: TDateEdit
          Left = 14
          Top = 32
          Width = 85
          Height = 21
          Hint = 'Batimo em '#193'guas'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 0
          Text = '01/01/2019'
        end
        object dtdtbtespirito: TDateEdit
          Left = 14
          Top = 75
          Width = 85
          Height = 21
          Hint = 'Batismo no Espirito Santo'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 1
        end
        object dtdtConversao: TDateEdit
          Left = 14
          Top = 117
          Width = 85
          Height = 21
          Hint = 'Batismo no Espirito Santo'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 2
        end
        object dtdtMembro: TDateEdit
          Left = 14
          Top = 159
          Width = 85
          Height = 21
          Hint = 'Batismo no Espirito Santo'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 3
        end
      end
      object medtCPF: TMaskEdit
        Left = 698
        Top = 60
        Width = 92
        Height = 21
        EditMask = '999.999.999-99;1;_'
        MaxLength = 14
        TabOrder = 12
        Text = '   .   .   -  '
      end
      object grpEscolaridade: TGroupBox
        Left = 114
        Top = 178
        Width = 268
        Height = 193
        Caption = 'Forma'#231#227'o'
        TabOrder = 15
        object lbl3: TLabel
          Left = 10
          Top = 16
          Width = 141
          Height = 13
          Caption = 'Grau de Instru'#231#227'o Acad'#234'mica'
        end
        object lbl4: TLabel
          Left = 165
          Top = 16
          Width = 95
          Height = 13
          Caption = 'Situa'#231#227'o Acad'#234'mica'
        end
        object lbl7: TLabel
          Left = 10
          Top = 64
          Width = 95
          Height = 13
          Caption = 'Forma'#231#227'o Teol'#243'gica'
        end
        object lbl8: TLabel
          Left = 165
          Top = 64
          Width = 89
          Height = 13
          Caption = 'Sit.da F. Teol'#243'gica'
        end
        object cbbAcademica: TComboBox
          Left = 10
          Top = 35
          Width = 131
          Height = 21
          TabOrder = 0
          Items.Strings = (
            'ANALFABETO'
            'E. FUNDAMENTAL'
            'E. M'#201'DIO'
            'SUPERIOR'
            'P'#211'S-GRADUA'#199#195'O')
        end
        object cbbSitAcad: TComboBox
          Left = 165
          Top = 35
          Width = 95
          Height = 21
          TabOrder = 1
          Items.Strings = (
            'INCOMPLETO'
            'COMPLETO'
            'CURSANDO')
        end
        object cbbFormTeo: TComboBox
          Left = 10
          Top = 83
          Width = 131
          Height = 21
          TabOrder = 2
          Items.Strings = (
            'NENHUMA'
            'B'#193'SICO'
            'M'#201'DIO'
            'BACHARELADO'
            'P'#211'S-GRADUACAO')
        end
        object cbbSitformteo: TComboBox
          Left = 165
          Top = 83
          Width = 95
          Height = 21
          TabOrder = 3
          Items.Strings = (
            'INCOMPLETO'
            'COMPLETO'
            'CURSANDO')
        end
        object lbledtOrigecles: TLabeledEdit
          Left = 10
          Top = 124
          Width = 250
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 91
          EditLabel.Height = 13
          EditLabel.Caption = 'Origem Eclesiastica'
          MaxLength = 45
          TabOrder = 4
        end
        object lbledtProcedeclesi: TLabeledEdit
          Left = 10
          Top = 163
          Width = 250
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 115
          EditLabel.Height = 13
          EditLabel.Caption = 'Proced'#234'ncia Eclesiastica'
          MaxLength = 45
          TabOrder = 5
        end
      end
      object grpCivil: TGroupBox
        Left = 388
        Top = 183
        Width = 245
        Height = 150
        TabOrder = 16
        object lbl9: TLabel
          Left = 11
          Top = 16
          Width = 55
          Height = 13
          Caption = 'Estado Civil'
        end
        object lbl10: TLabel
          Left = 135
          Top = 16
          Width = 97
          Height = 13
          Caption = 'Estado Civil Anterior'
        end
        object lbl11: TLabel
          Left = 14
          Top = 103
          Width = 95
          Height = 13
          Caption = 'Data do Casamento'
        end
        object cbbEstdCivil: TComboBox
          Left = 11
          Top = 35
          Width = 118
          Height = 21
          ItemIndex = 0
          TabOrder = 0
          Text = 'SOLTEIRO'
          Items.Strings = (
            'SOLTEIRO'
            'CASADO'
            'VI'#218'VO'
            'DIVORCIADO')
        end
        object cbbEstcivianterior: TComboBox
          Left = 135
          Top = 35
          Width = 98
          Height = 21
          TabOrder = 1
          Items.Strings = (
            'SOLTEIRO'
            'CASADO'
            'VI'#218'VO'
            'DIVORCIADO')
        end
        object lbledtNomeConjugue: TLabeledEdit
          Left = 11
          Top = 76
          Width = 222
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 91
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome do Conjugue'
          MaxLength = 45
          TabOrder = 2
        end
        object dtdtCasamento: TDateEdit
          Left = 14
          Top = 119
          Width = 85
          Height = 21
          Hint = 'Batismo no Espirito Santo'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 3
        end
      end
      object grpResidencia: TGroupBox
        Left = 3
        Top = 87
        Width = 814
        Height = 90
        TabOrder = 13
        object lblCEP: TLabel
          Left = 479
          Top = 2
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
        object lbl12: TLabel
          Left = 692
          Top = 57
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
        object lbl14: TLabel
          Left = 483
          Top = 44
          Width = 65
          Height = 13
          Caption = 'Telefone Fixo'
        end
        object lbledtEmail: TLabeledEdit
          Left = 274
          Top = 59
          Width = 203
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 24
          EditLabel.Height = 13
          EditLabel.Caption = 'Email'
          MaxLength = 45
          TabOrder = 6
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
          TabOrder = 4
        end
        object medtCEP: TMaskEdit
          Left = 479
          Top = 19
          Width = 68
          Height = 21
          EditMask = '99.999-999;1;_'
          MaxLength = 10
          TabOrder = 2
          Text = '  .   -   '
        end
        object medtTelefoneCel: TMaskEdit
          Left = 581
          Top = 59
          Width = 91
          Height = 21
          EditMask = '(99)99999-9999;1;_'
          MaxLength = 14
          TabOrder = 8
          Text = '(  )     -    '
        end
        object lbledtComplemento: TLabeledEdit
          Left = 553
          Top = 19
          Width = 249
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 65
          EditLabel.Height = 13
          EditLabel.Caption = 'Complemento'
          MaxLength = 45
          TabOrder = 3
        end
        object cbbEstadoImovel: TComboBox
          Left = 692
          Top = 59
          Width = 112
          Height = 21
          ItemIndex = 0
          TabOrder = 9
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
      object grpProfissional: TGroupBox
        Left = 655
        Top = 181
        Width = 162
        Height = 234
        Caption = 'Profissional'
        TabOrder = 17
        object lbl15: TLabel
          Left = 8
          Top = 183
          Width = 102
          Height = 13
          Caption = 'Telefone do Trabalho'
        end
        object lbledtProfissao: TLabeledEdit
          Left = 8
          Top = 36
          Width = 150
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 44
          EditLabel.Height = 13
          EditLabel.Caption = 'Profiss'#227'o'
          MaxLength = 45
          TabOrder = 0
        end
        object lbledtHabprof: TLabeledEdit
          Left = 8
          Top = 76
          Width = 150
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 109
          EditLabel.Height = 13
          EditLabel.Caption = 'Habilita'#231#227'o Profissional'
          MaxLength = 45
          TabOrder = 1
        end
        object lbledtEmpregoAtual: TLabeledEdit
          Left = 8
          Top = 116
          Width = 150
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 70
          EditLabel.Height = 13
          EditLabel.Caption = 'Emprego Atual'
          MaxLength = 45
          TabOrder = 2
        end
        object lbledtFuncao: TLabeledEdit
          Left = 8
          Top = 156
          Width = 150
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 35
          EditLabel.Height = 13
          EditLabel.Caption = 'Fun'#231#227'o'
          MaxLength = 45
          TabOrder = 3
        end
        object medtTeltrabalho: TMaskEdit
          Left = 8
          Top = 200
          Width = 91
          Height = 21
          EditMask = '(99)99999-9999;1;_'
          MaxLength = 14
          TabOrder = 4
          Text = '(  )     -    '
        end
      end
      object pnlImagem: TPanel
        Left = 823
        Top = 3
        Width = 122
        Height = 172
        BorderStyle = bsSingle
        TabOrder = 18
        object imgFoto: TImage
          Left = 1
          Top = 1
          Width = 116
          Height = 166
          Align = alClient
          PopupMenu = pmImagem
          ExplicitLeft = 8
          ExplicitTop = 0
          ExplicitWidth = 105
          ExplicitHeight = 105
        end
      end
    end
  end
  inherited pnlRodape: TPanel
    Top = 448
    Width = 956
    ExplicitTop = 448
    ExplicitWidth = 956
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
    inherited btnFechar: TBitBtn
      Left = 864
      ExplicitLeft = 864
    end
  end
  inherited QryListagem: TFDQuery
    SQL.Strings = (
      
        'SELECT cod_pessoa, nome_pessoa, foto, sexo, nome_pai, nome_mae, ' +
        'dta_nascimento, naturalidade, uf_nascimento, nacionalidade, nror' +
        'g, orgaorg, cpf, email, grau_instr_situacao, grau_instrucao, for' +
        'm_teo_situacao, formacao_teologica, estado_civil_atual, estado_c' +
        'ivil_anterior, nome_conjugue, dta_casamento, logradouro, uf_ende' +
        'reco, estado_casa, complemento, fone_residencial, bairro, cep, c' +
        'idade, fone_celular, dta_conversao, dta_batismo_esprito, dta_bat' +
        'ismo_aguas, dta_congregado, local_descisao_congregado, dta_membr' +
        'o, origem_eclesiastica, proced_eclesiastica, profissao, habilita' +
        'cao_profissional, emprego_atual, funcao, fone_trabalho, igreja, ' +
        'setor, congregacao, nro_rol, nro_cad_congregado, membro_congrega' +
        'do, dta_inclusao, USUARIO_CADASTRO, SITUACAO, cod_congregacao, c' +
        'od_situacao'
      'FROM igreja.tb_pessoa'
      'where cod_congregacao=:cod_congregacao')
    Left = 216
    Top = 8
    ParamData = <
      item
        Name = 'COD_CONGREGACAO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object fdtncfldQryListagemcod_pessoa: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_pessoa'
      Origin = 'cod_pessoa'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldQryListagemnome_pessoa: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'nome_pessoa'
      Origin = 'nome_pessoa'
      Size = 50
    end
    object blbfldQryListagemfoto: TBlobField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Foto'
      FieldName = 'foto'
      Origin = 'foto'
    end
    object strngfldQryListagemsexo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sexo'
      FieldName = 'sexo'
      Origin = 'sexo'
      Size = 1
    end
    object strngfldQryListagemnome_pai: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pai'
      FieldName = 'nome_pai'
      Origin = 'nome_pai'
      Size = 50
    end
    object strngfldQryListagemnome_mae: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'M'#227'e'
      FieldName = 'nome_mae'
      Origin = 'nome_mae'
      Size = 50
    end
    object dtfldQryListagemdta_nascimento: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data de Nascimento'
      FieldName = 'dta_nascimento'
      Origin = 'dta_nascimento'
    end
    object strngfldQryListagemnaturalidade: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Naturalidade'
      FieldName = 'naturalidade'
      Origin = 'naturalidade'
      Size = 50
    end
    object strngfldQryListagemuf_nascimento: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF de Nascimento'
      FieldName = 'uf_nascimento'
      Origin = 'uf_nascimento'
      Size = 2
    end
    object strngfldQryListagemnacionalidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nacionalidade'
      Origin = 'nacionalidade'
      Size = 50
    end
    object strngfldQryListagemnrorg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nrorg'
      Origin = 'nrorg'
    end
    object strngfldQryListagemorgaorg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'orgaorg'
      Origin = 'orgaorg'
      Size = 10
    end
    object strngfldQryListagemcpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
    end
    object strngfldQryListagememail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object strngfldQryListagemgrau_instr_situacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grau_instr_situacao'
      Origin = 'grau_instr_situacao'
      Size = 30
    end
    object strngfldQryListagemgrau_instrucao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grau_instrucao'
      Origin = 'grau_instrucao'
      Size = 30
    end
    object strngfldQryListagemform_teo_situacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'form_teo_situacao'
      Origin = 'form_teo_situacao'
      Size = 30
    end
    object strngfldQryListagemformacao_teologica: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'formacao_teologica'
      Origin = 'formacao_teologica'
      Size = 30
    end
    object strngfldQryListagemestado_civil_atual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado_civil_atual'
      Origin = 'estado_civil_atual'
    end
    object strngfldQryListagemestado_civil_anterior: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado_civil_anterior'
      Origin = 'estado_civil_anterior'
    end
    object strngfldQryListagemnome_conjugue: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_conjugue'
      Origin = 'nome_conjugue'
      Size = 50
    end
    object dtfldQryListagemdta_casamento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_casamento'
      Origin = 'dta_casamento'
    end
    object strngfldQryListagemlogradouro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 250
    end
    object strngfldQryListagemuf_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf_endereco'
      Origin = 'uf_endereco'
      Size = 2
    end
    object strngfldQryListagemestado_casa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado_casa'
      Origin = 'estado_casa'
    end
    object strngfldQryListagemcomplemento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 50
    end
    object strngfldQryListagemfone_residencial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone_residencial'
      Origin = 'fone_residencial'
      Size = 30
    end
    object strngfldQryListagembairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object strngfldQryListagemcep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
    end
    object strngfldQryListagemcidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object strngfldQryListagemfone_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone_celular'
      Origin = 'fone_celular'
      Size = 30
    end
    object dtfldQryListagemdta_conversao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_conversao'
      Origin = 'dta_conversao'
    end
    object dtfldQryListagemdta_batismo_esprito: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_batismo_esprito'
      Origin = 'dta_batismo_esprito'
    end
    object dtfldQryListagemdta_batismo_aguas: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_batismo_aguas'
      Origin = 'dta_batismo_aguas'
    end
    object dtfldQryListagemdta_congregado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_congregado'
      Origin = 'dta_congregado'
    end
    object strngfldQryListagemlocal_descisao_congregado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'local_descisao_congregado'
      Origin = 'local_descisao_congregado'
      Size = 50
    end
    object dtfldQryListagemdta_membro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_membro'
      Origin = 'dta_membro'
    end
    object strngfldQryListagemorigem_eclesiastica: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'origem_eclesiastica'
      Origin = 'origem_eclesiastica'
      Size = 50
    end
    object strngfldQryListagemproced_eclesiastica: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'proced_eclesiastica'
      Origin = 'proced_eclesiastica'
      Size = 50
    end
    object strngfldQryListagemprofissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'profissao'
      Origin = 'profissao'
      Size = 50
    end
    object strngfldQryListagemhabilitacao_profissional: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'habilitacao_profissional'
      Origin = 'habilitacao_profissional'
      Size = 30
    end
    object strngfldQryListagememprego_atual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emprego_atual'
      Origin = 'emprego_atual'
      Size = 30
    end
    object strngfldQryListagemfuncao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'funcao'
      Origin = 'funcao'
      Size = 30
    end
    object strngfldQryListagemfone_trabalho: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone_trabalho'
      Origin = 'fone_trabalho'
      Size = 30
    end
    object strngfldQryListagemigreja: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'igreja'
      Origin = 'igreja'
      Size = 30
    end
    object strngfldQryListagemsetor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'setor'
      Origin = 'setor'
      Size = 15
    end
    object strngfldQryListagemcongregacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'congregacao'
      Origin = 'congregacao'
      Size = 30
    end
    object strngfldQryListagemnro_rol: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nro_rol'
      Origin = 'nro_rol'
      Size = 15
    end
    object strngfldQryListagemnro_cad_congregado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nro_cad_congregado'
      Origin = 'nro_cad_congregado'
      Size = 15
    end
    object strngfldQryListagemmembro_congregado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'membro_congregado'
      Origin = 'membro_congregado'
      Size = 15
    end
    object dtfldQryListagemdta_inclusao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_inclusao'
      Origin = 'dta_inclusao'
    end
    object strngfldQryListagemUSUARIO_CADASTRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO_CADASTRO'
      Origin = 'USUARIO_CADASTRO'
    end
    object strngfldQryListagemSITUACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 50
    end
    object intgrfldQryListagemcod_congregacao: TIntegerField
      FieldName = 'cod_congregacao'
      Origin = 'cod_congregacao'
      Required = True
    end
    object intgrfldQryListagemcod_situacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_situacao'
      Origin = 'cod_situacao'
    end
  end
  inherited dtsListagem: TDataSource
    Left = 296
    Top = 8
  end
  object pmImagem: TPopupMenu
    Left = 856
    Top = 64
    object mniCarregarImagem1: TMenuItem
      Caption = 'Carregar Imagem'
    end
    object mniLimparImagem1: TMenuItem
      Caption = 'Limpar Imagem'
    end
  end
end
