object dtmRelatorio: TdtmRelatorio
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 395
  Width = 672
  object frxrprtCartaRecomendacao: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42199.911066134300000000
    ReportOptions.LastChange = 42205.738723344900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 232
    Top = 19
    Datasets = <
      item
        DataSet = frxdbBuscaIgreja
        DataSetName = 'frxdbBuscaIgreja'
      end
      item
        DataSet = frxdbBuscaPessoa
        DataSetName = 'frxdbBuscaPessoa'
      end>
    Variables = <
      item
        Name = ' Observacao'
        Value = Null
      end
      item
        Name = 'Observacao'
        Value = Null
      end
      item
        Name = 'Data'
        Value = ''
      end
      item
        Name = 'Tipo'
        Value = ''
      end
      item
        Name = 'Destino'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object frxDBDataset1nome_pessoa: TfrxMemoView
        Align = baCenter
        Left = 35.905535000000000000
        Top = 440.512060000000000000
        Width = 646.299630000000000000
        Height = 158.740260000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '             Apresentamos para que recebais no Senhor, segundo o' +
            ' uso dos Santos, o portador da presente o/a'
          
            'irm'#227'o('#227') [frxdbBuscaPessoa."nome_pessoa"], sob o n'#250'mero no rol d' +
            'e membros [IIF(<frxdbBuscaPessoa."nro_rol">='#39#39','#39'______'#39',<frxdbBu' +
            'scaPessoa."nro_rol">)], data de '
          
            'batismo  [IIF(DateToStr(<frxdbBuscaPessoa."dta_batismo_aguas">)=' +
            #39'30/12/1899'#39','#39'___/___/_____'#39',DateToStr(<frxdbBuscaPessoa."dta_ba' +
            'tismo_aguas">))], estado civil  [IIF(<frxdbBuscaPessoa."estado_c' +
            'ivil_atual">='#39#39','#39'_____________'#39',<frxdbBuscaPessoa."estado_civil_' +
            'atual">)], o qual se encontra em perfeita comunh'#227'o com'
          'esta Igreja, portanto n'#243's o/a recomendamos.')
        ParentFont = False
        Formats = <
          item
          end
          item
          end
          item
          end
          item
          end>
      end
      object Memo2: TfrxMemoView
        Align = baCenter
        Left = 222.992270000000000000
        Top = 850.394250000000000000
        Width = 272.126160000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'Dirigente da Igreja')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 593.386210000000000000
        Top = 801.260360000000000000
        Width = 105.826840000000000000
        Height = 105.826840000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          'CARIMBO DA IGREJA')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Align = baCenter
        Top = 1009.134510000000000000
        Width = 718.110700000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = [ftTop]
        Frame.Width = 4.000000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          
            'e-mail da ADPAR adparnamirim@uol.com.br/ Secretaria: adparsec201' +
            '2@gmail.com CNPJ 08.332.785/0018-50'
          
            'Rua Comandante Petit, 905 '#8211' Parnamirim-RN/CEP  59140-140/ fone/f' +
            'ax: (84) 3645-2380')
        ParentFont = False
        VAlign = vaBottom
        Formats = <
          item
          end
          item
          end
          item
          end
          item
          end
          item
          end
          item
          end
          item
          end
          item
          end>
      end
      object Memo5: TfrxMemoView
        Top = 937.323440000000000000
        Width = 718.110700000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Fill.BackColor = 13434828
        Memo.UTF8W = (
          
            'OBS.: A presente carta perder'#225' a validade se n'#227'o apresentada den' +
            'tro de 30 dias.')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 136.063080000000000000
        Top = 7.559060000000000000
        Width = 582.047620000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '[frxdbBuscaIgreja."nome_igreja"]')
        ParentFont = False
        Formats = <
          item
          end
          item
          end
          item
          end>
      end
      object frxdbBuscaIgrejanome_presidente: TfrxMemoView
        Left = 38.795300000000000000
        Top = 695.433520000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Width = 4.000000000000000000
        Memo.UTF8W = (
          '[frxdbBuscaIgreja."nome_presidente"]')
        ParentFont = False
        VAlign = vaBottom
      end
      object Memo7: TfrxMemoView
        Left = 38.795300000000000000
        Top = 715.110700000000000000
        Width = 185.196970000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Width = 4.000000000000000000
        Memo.UTF8W = (
          'Pastor Presidente da [frxdbBuscaIgreja."sigla_igreja"]')
        ParentFont = False
        VAlign = vaBottom
      end
      object Memo8: TfrxMemoView
        Top = 268.346630000000000000
        Width = 313.700990000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 1.500000000000000000
        Memo.UTF8W = (
          #192' [Destino]')
        ParentFont = False
      end
      object frxdbBuscaIgrejadta_fundacao: TfrxMemoView
        Left = 136.063080000000000000
        Top = 74.149660000000000000
        Width = 582.047620000000000000
        Height = 18.897650000000000000
        DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Fundada em [frxdbBuscaIgreja."dta_fundacao"]')
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Left = 136.063080000000000000
        Top = 102.047310000000000000
        Width = 582.047620000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Width = 4.000000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          'Presidente: [frxdbBuscaIgreja."nome_presidente"]')
        ParentFont = False
        VAlign = vaBottom
      end
      object frxdbBuscaIgrejacidade: TfrxMemoView
        Left = 136.063080000000000000
        Top = 37.795300000000000000
        Width = 582.047620000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'em [frxdbBuscaIgreja."cidade"]')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 37.795300000000000000
        Top = 531.252320000000000000
        Width = 377.953000000000000000
        Height = 56.692950000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Obs.: [Observacao]')
        ParentFont = False
        Formats = <
          item
          end
          item
          end>
      end
      object Picture2: TfrxPictureView
        Width = 136.063001890000000000
        Height = 170.078757240000000000
        DataField = 'foto'
        HightQuality = True
        Transparent = False
        TransparentColor = clWhite
      end
      object Memo13: TfrxMemoView
        Align = baCenter
        Left = 158.740260000000000000
        Top = 372.173470000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'times New Roman'
        Font.Style = [fsBold, fsUnderline]
        HAlign = haCenter
        Memo.UTF8W = (
          '[Tipo]')
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        Align = baCenter
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Fill.BackColor = 13434828
        HAlign = haRight
        Memo.UTF8W = (
          
            '[frxdbBuscaIgreja."cidade"]-[frxdbBuscaIgreja."uf"], [StrToDate(' +
            '<Data>)]')
        ParentFont = False
        VAlign = vaCenter
        Formats = <
          item
            FormatStr = '_,x'
            Kind = fkBoolean
          end
          item
          end
          item
            FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
            Kind = fkDateTime
          end>
      end
    end
  end
  object frxdbBuscaIgreja: TfrxDBDataset
    UserName = 'frxdbBuscaIgreja'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cod_igreja=cod_igreja'
      'nome_igreja=nome_igreja'
      'cidade=cidade'
      'dta_fundacao=dta_fundacao'
      'nome_presidente=nome_presidente'
      'dta_inclusao=dta_inclusao'
      'sigla_igreja=sigla_igreja'
      'site=site'
      'email=email'
      'cnpj=cnpj'
      'logradouro=logradouro'
      'bairro=bairro'
      'uf=uf'
      'fone=fone'
      'foto=foto'
      'percentual_ajuste=percentual_ajuste')
    DataSet = fdqryBucarIgreja
    BCDToCurrency = False
    Left = 360
    Top = 16
  end
  object frxdbBuscaPessoa: TfrxDBDataset
    UserName = 'frxdbBuscaPessoa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cod_pessoa=cod_pessoa'
      'nome_pessoa=nome_pessoa'
      'foto=foto'
      'sexo=sexo'
      'nome_pai=nome_pai'
      'nome_mae=nome_mae'
      'dta_nascimento=dta_nascimento'
      'naturalidade=naturalidade'
      'uf_nascimento=uf_nascimento'
      'nacionalidade=nacionalidade'
      'nrorg=nrorg'
      'orgaorg=orgaorg'
      'cpf=cpf'
      'email=email'
      'grau_instr_situacao=grau_instr_situacao'
      'grau_instrucao=grau_instrucao'
      'form_teo_situacao=form_teo_situacao'
      'formacao_teologica=formacao_teologica'
      'estado_civil_atual=estado_civil_atual'
      'estado_civil_anterior=estado_civil_anterior'
      'nome_conjugue=nome_conjugue'
      'dta_casamento=dta_casamento'
      'logradouro=logradouro'
      'uf_endereco=uf_endereco'
      'estado_casa=estado_casa'
      'complemento=complemento'
      'fone_residencial=fone_residencial'
      'bairro=bairro'
      'cep=cep'
      'cidade=cidade'
      'fone_celular=fone_celular'
      'dta_conversao=dta_conversao'
      'dta_batismo_esprito=dta_batismo_esprito'
      'dta_batismo_aguas=dta_batismo_aguas'
      'dta_congregado=dta_congregado'
      'local_descisao_congregado=local_descisao_congregado'
      'dta_membro=dta_membro'
      'origem_eclesiastica=origem_eclesiastica'
      'proced_eclesiastica=proced_eclesiastica'
      'profissao=profissao'
      'habilitacao_profissional=habilitacao_profissional'
      'emprego_atual=emprego_atual'
      'funcao=funcao'
      'fone_trabalho=fone_trabalho'
      'cod_congregacao=cod_congregacao'
      'nro_rol=nro_rol'
      'nro_cad_congregado=nro_cad_congregado'
      'membro_congregado=membro_congregado'
      'dta_inclusao=dta_inclusao'
      'USUARIO_CADASTRO=USUARIO_CADASTRO'
      'cod_situacao=cod_situacao'
      'congregacao=congregacao'
      'setor=setor'
      'igreja=igreja'
      'SITUACAO=SITUACAO'
      'congregacao_1=congregacao_1'
      'setorcong=setorcong')
    DataSet = fdqryBuscaPessoaRelatorio
    BCDToCurrency = False
    Left = 488
    Top = 16
  end
  object fdqryBucarIgreja: TFDQuery
    Active = True
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      
        'SELECT cod_igreja, nome_igreja, cidade, dta_fundacao, nome_presi' +
        'dente, dta_inclusao, sigla_igreja, site, email, cnpj, logradouro' +
        ', bairro, uf, fone, foto, percentual_ajuste, sistema, situacao'
      'FROM igreja.tb_igreja where cod_igreja='
      '1')
    Left = 224
    Top = 96
    object fdtncfldBucarIgrejacod_igreja: TFDAutoIncField
      FieldName = 'cod_igreja'
      Origin = 'cod_igreja'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldBucarIgrejanome_igreja: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_igreja'
      Origin = 'nome_igreja'
      Size = 50
    end
    object strngfldBucarIgrejacidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 50
    end
    object dtfldBucarIgrejadta_fundacao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_fundacao'
      Origin = 'dta_fundacao'
    end
    object strngfldBucarIgrejanome_presidente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_presidente'
      Origin = 'nome_presidente'
      Size = 50
    end
    object dtmfldBucarIgrejadta_inclusao: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dta_inclusao'
      Origin = 'dta_inclusao'
    end
    object strngfldBucarIgrejasigla_igreja: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sigla_igreja'
      Origin = 'sigla_igreja'
    end
    object strngfldBucarIgrejasite: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'site'
      Origin = 'site'
      Size = 50
    end
    object strngfldBucarIgrejaemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object strngfldBucarIgrejacnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 50
    end
    object strngfldBucarIgrejalogradouro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 50
    end
    object strngfldBucarIgrejabairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 50
    end
    object strngfldBucarIgrejauf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object strngfldBucarIgrejafone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone'
      Origin = 'fone'
      Size = 25
    end
    object blbfldBucarIgrejafoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'foto'
      Origin = 'foto'
    end
    object intgrfldBucarIgrejapercentual_ajuste: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'percentual_ajuste'
      Origin = 'percentual_ajuste'
    end
  end
  object fdqryBuscaPessoaRelatorio: TFDQuery
    Active = True
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      
        'select t.*,c.congregacao,d.setor as setorcong  from tb_pessoa t ' +
        'join tb_parametro_sistema a on t.cod_congregacao = a.cod_congreg' +
        'acao '
      'join tb_congregacao c on a.cod_congregacao = c.cod_congregacao'
      'join tb_setor d on c.cod_setor = d.cod_setor'
      'where t.nome_pessoa   like '
      #39'%%'#39
      'and t.membro_congregado = :situacao'
      '')
    Left = 360
    Top = 96
    ParamData = <
      item
        Name = 'SITUACAO'
        DataType = ftString
        ParamType = ptInput
        Value = 'MEMBRO'
      end>
    object fdtncfldBuscaPessoaRelatoriocod_pessoa: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_pessoa'
      Origin = 'cod_pessoa'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldBuscaPessoaRelatorionome_pessoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_pessoa'
      Origin = 'nome_pessoa'
      Size = 50
    end
    object blbfldBuscaPessoaRelatoriofoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'foto'
      Origin = 'foto'
    end
    object strngfldBuscaPessoaRelatoriosexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sexo'
      Origin = 'sexo'
      Size = 1
    end
    object strngfldBuscaPessoaRelatorionome_pai: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_pai'
      Origin = 'nome_pai'
      Size = 50
    end
    object strngfldBuscaPessoaRelatorionome_mae: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_mae'
      Origin = 'nome_mae'
      Size = 50
    end
    object dtfldBuscaPessoaRelatoriodta_nascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_nascimento'
      Origin = 'dta_nascimento'
    end
    object strngfldBuscaPessoaRelatorionaturalidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'naturalidade'
      Origin = 'naturalidade'
      Size = 50
    end
    object strngfldBuscaPessoaRelatoriouf_nascimento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf_nascimento'
      Origin = 'uf_nascimento'
      Size = 2
    end
    object strngfldBuscaPessoaRelatorionacionalidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nacionalidade'
      Origin = 'nacionalidade'
      Size = 50
    end
    object strngfldBuscaPessoaRelatorionrorg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nrorg'
      Origin = 'nrorg'
    end
    object strngfldBuscaPessoaRelatorioorgaorg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'orgaorg'
      Origin = 'orgaorg'
      Size = 10
    end
    object strngfldBuscaPessoaRelatoriocpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
    end
    object strngfldBuscaPessoaRelatorioemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object strngfldBuscaPessoaRelatoriograu_instr_situacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grau_instr_situacao'
      Origin = 'grau_instr_situacao'
      Size = 30
    end
    object strngfldBuscaPessoaRelatoriograu_instrucao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grau_instrucao'
      Origin = 'grau_instrucao'
      Size = 30
    end
    object strngfldBuscaPessoaRelatorioform_teo_situacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'form_teo_situacao'
      Origin = 'form_teo_situacao'
      Size = 30
    end
    object strngfldBuscaPessoaRelatorioformacao_teologica: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'formacao_teologica'
      Origin = 'formacao_teologica'
      Size = 30
    end
    object strngfldBuscaPessoaRelatorioestado_civil_atual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado_civil_atual'
      Origin = 'estado_civil_atual'
    end
    object strngfldBuscaPessoaRelatorioestado_civil_anterior: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado_civil_anterior'
      Origin = 'estado_civil_anterior'
    end
    object strngfldBuscaPessoaRelatorionome_conjugue: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_conjugue'
      Origin = 'nome_conjugue'
      Size = 50
    end
    object dtfldBuscaPessoaRelatoriodta_casamento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_casamento'
      Origin = 'dta_casamento'
    end
    object strngfldBuscaPessoaRelatoriologradouro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 250
    end
    object strngfldBuscaPessoaRelatoriouf_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf_endereco'
      Origin = 'uf_endereco'
      Size = 2
    end
    object strngfldBuscaPessoaRelatorioestado_casa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado_casa'
      Origin = 'estado_casa'
    end
    object strngfldBuscaPessoaRelatoriocomplemento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 50
    end
    object strngfldBuscaPessoaRelatoriofone_residencial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone_residencial'
      Origin = 'fone_residencial'
      Size = 30
    end
    object strngfldBuscaPessoaRelatoriobairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object strngfldBuscaPessoaRelatoriocep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
    end
    object strngfldBuscaPessoaRelatoriocidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object strngfldBuscaPessoaRelatoriofone_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone_celular'
      Origin = 'fone_celular'
      Size = 30
    end
    object dtfldBuscaPessoaRelatoriodta_conversao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_conversao'
      Origin = 'dta_conversao'
    end
    object dtfldBuscaPessoaRelatoriodta_batismo_esprito: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_batismo_esprito'
      Origin = 'dta_batismo_esprito'
    end
    object dtfldBuscaPessoaRelatoriodta_batismo_aguas: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_batismo_aguas'
      Origin = 'dta_batismo_aguas'
    end
    object dtfldBuscaPessoaRelatoriodta_congregado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_congregado'
      Origin = 'dta_congregado'
    end
    object strngfldBuscaPessoaRelatoriolocal_descisao_congregado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'local_descisao_congregado'
      Origin = 'local_descisao_congregado'
      Size = 50
    end
    object dtfldBuscaPessoaRelatoriodta_membro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_membro'
      Origin = 'dta_membro'
    end
    object strngfldBuscaPessoaRelatorioorigem_eclesiastica: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'origem_eclesiastica'
      Origin = 'origem_eclesiastica'
      Size = 50
    end
    object strngfldBuscaPessoaRelatorioproced_eclesiastica: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'proced_eclesiastica'
      Origin = 'proced_eclesiastica'
      Size = 50
    end
    object strngfldBuscaPessoaRelatorioprofissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'profissao'
      Origin = 'profissao'
      Size = 50
    end
    object strngfldBuscaPessoaRelatoriohabilitacao_profissional: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'habilitacao_profissional'
      Origin = 'habilitacao_profissional'
      Size = 30
    end
    object strngfldBuscaPessoaRelatorioemprego_atual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emprego_atual'
      Origin = 'emprego_atual'
      Size = 30
    end
    object strngfldBuscaPessoaRelatoriofuncao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'funcao'
      Origin = 'funcao'
      Size = 30
    end
    object strngfldBuscaPessoaRelatoriofone_trabalho: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone_trabalho'
      Origin = 'fone_trabalho'
      Size = 30
    end
    object intgrfldTesourariaDescricaoBuscaPessoaRelatoriocod_congregacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_congregacao'
      Origin = 'cod_congregacao'
    end
    object strngfldBuscaPessoaRelatorionro_rol: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nro_rol'
      Origin = 'nro_rol'
      Size = 15
    end
    object strngfldBuscaPessoaRelatorionro_cad_congregado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nro_cad_congregado'
      Origin = 'nro_cad_congregado'
      Size = 15
    end
    object strngfldBuscaPessoaRelatoriomembro_congregado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'membro_congregado'
      Origin = 'membro_congregado'
      Size = 15
    end
    object dtfldBuscaPessoaRelatoriodta_inclusao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_inclusao'
      Origin = 'dta_inclusao'
    end
    object strngfldBuscaPessoaRelatorioUSUARIO_CADASTRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO_CADASTRO'
      Origin = 'USUARIO_CADASTRO'
    end
    object intgrfldTesourariaDescricaoBuscaPessoaRelatoriocod_situacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_situacao'
      Origin = 'cod_situacao'
    end
    object strngfldBuscaPessoaRelatoriocongregacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'congregacao'
      Origin = 'congregacao'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object strngfldBuscaPessoaRelatoriosetor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'setor'
      Origin = 'setor'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object strngfldBuscaPessoaRelatorioigreja: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'igreja'
      Origin = 'igreja'
      Size = 30
    end
    object strngfldBuscaPessoaRelatorioSITUACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 50
    end
    object strngfldBuscaPessoaRelatoriocongregacao_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'congregacao_1'
      Origin = 'congregacao'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object strngfldBuscaPessoaRelatoriosetorcong: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'setorcong'
      Origin = 'setor'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
  end
  object dsBuscaPessoaRelatorio: TDataSource
    DataSet = fdqryBuscaPessoaRelatorio
    Left = 504
    Top = 96
  end
  object frxrprtNotifOcorrencia: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42199.911066134300000000
    ReportOptions.LastChange = 42205.738723344900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 344
    Top = 163
    Datasets = <
      item
        DataSet = frxdbBuscaIgreja
        DataSetName = 'frxdbBuscaIgreja'
      end
      item
        DataSet = frxdbBuscaPessoa
        DataSetName = 'frxdbBuscaPessoa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Picture1: TfrxPictureView
        Left = 3.779530000000000000
        Top = 3.779530000000000000
        Width = 120.944960000000000000
        Height = 143.622140000000000000
        Picture.Data = {
          0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000008200
          0000970806000000D91883D5000000097048597300002E2300002E230178A53F
          7600000A4F6943435050686F746F73686F70204943432070726F66696C650000
          78DA9D53675453E9163DF7DEF4424B8880944B6F5215082052428B801491262A
          2109104A8821A1D91551C1114545041BC8A088038E8E808C15512C0C8A0AD807
          E421A28E83A3888ACAFBE17BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C008
          0C9648335135800CA9421E11E083C7C4C6E1E42E40810A2470001008B3642173
          FD230100F87E3C3C2B22C007BE000178D30B0800C04D9BC0301C87FF0FEA4299
          5C01808401C07491384B08801400407A8E42A600404601809D98265300A00400
          60CB6362E300502D0060277FE6D300809DF8997B01005B94211501A091002013
          65884400683B00ACCF568A450058300014664BC43900D82D00304957664800B0
          B700C0CE100BB200080C00305188852900047B0060C8232378008499001446F2
          573CF12BAE10E72A00007899B23CB9243945815B082D710757572E1E28CE4917
          2B14366102619A402EC27999193281340FE0F3CC0000A0911511E083F3FD78CE
          0EAECECE368EB60E5F2DEABF06FF226262E3FEE5CFAB70400000E1747ED1FE2C
          2FB31A803B06806DFEA225EE04685E0BA075F78B66B20F40B500A0E9DA57F370
          F87E3C3C45A190B9D9D9E5E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E
          3CFCF7F5E0BEE22481325D814704F8E0C2CCF44CA51CCF92098462DCE68F47FC
          B70BFFFC1DD322C44962B9582A14E35112718E449A8CF332A52289429229C525
          D2FF64E2DF2CFB033EDF3500B06A3E017B912DA85D6303F64B27105874C0E2F7
          0000F2BB6FC1D4280803806883E1CF77FFEF3FFD47A02500806649927100005E
          44242E54CAB33FC708000044A0812AB0411BF4C1182CC0061CC105DCC10BFC60
          36844224C4C24210420A64801C726029AC82422886CDB01D2A602FD4401D34C0
          51688693700E2EC255B80E3D700FFA61089EC128BC81090441C808136121DA88
          01628A58238E08179985F821C14804128B2420C9881451224B91354831528A54
          2055481DF23D720239875C46BA913BC8003282FC86BC47319481B2513DD40CB5
          43B9A8371A8446A20BD06474319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA
          8F3E43C730C0E8180733C46C302EC6C342B1382C099363CBB122AC0CABC61AB0
          56AC03BB89F563CFB17704128145C0093604774220611E4148584C584ED848A8
          201C243411DA093709038451C2272293A84BB426BA11F9C4186232318758482C
          23D6128F132F107B8843C437241289433227B9900249B1A454D212D246D26E52
          23E92CA99B34481A2393C9DA646BB20739942C202BC885E49DE4C3E433E41BE4
          21F25B0A9D624071A4F853E22852CA6A4A19E510E534E5066598324155A39A52
          DDA8A15411358F5A42ADA1B652AF5187A81334759A39CD8316494BA5ADA295D3
          1A681768F769AFE874BA11DD951E4E97D057D2CBE947E897E803F4770C0D8615
          83C7886728199B18071867197718AF984CA619D38B19C754303731EB98E7990F
          996F55582AB62A7C1591CA0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB
          548FA95E537DAE46553353E3A909D496AB55AA9D50EB531B5367A93BA887AA67
          A86F543FA47E59FD890659C34CC34F43A451A0B15FE3BCC6200B6319B3782C21
          6B0DAB86758135C426B1CDD97C762ABB98FD1DBB8B3DAAA9A13943334A3357B3
          52F394663F07E39871F89C744E09E728A797F37E8ADE14EF29E2291BA6344CB9
          31655C6BAA96979658AB48AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C7
          4A275C2747678FCE059DE753D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB44
          77BF6EA7EE989EBE5E809E4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C58
          06B30C2406DB0CCE183CC535716F3C1D2FC7DBF151435DC34043A561956197E1
          8491B9D13CA3D5468D460F8C69C65CE324E36DC66DC6A326062621264B4DEA4D
          EE9A524DB9A629A63B4C3B4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79B
          DFB7605A785A2CB6A8B6B86549B2E45AA659EEB6BC6E855A3959A558555A5DB3
          46AD9DAD25D6BBADBBA711A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D8
          06DBAEB66DB67D6167621767B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB
          1D5A1D7E73B472143A563ADE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B6
          13CB29C4699D539BD347671767B97383F3888B894B82CB2E973E2E9B1BC6DDC8
          BDE44A74F5715DE17AD2F59D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F29
          9E593373D0C3C843E051E5D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F
          9157ADD7B0B7A577AAF761EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7
          C8B7CB4FC36F9E5F85DF437F23FF64FF7AFFD100A78025016703898141815B02
          FBF87A7C21BF8E3F3ADB65F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8
          EC90AD21F7E798CE91CE690E85507EE8D6D00761E6618BC37E0C278587855786
          3F8E7088581AD131973577D1DC4373DF44FA449644DE9B67314F39AF2D4A352A
          3EAA2E6A3CDA37BA34BA3FC62E6659CCD5589D58496C4B1C392E2AAE366E6CBE
          DFFCEDF387E29DE20BE37B17982FC85D7079A1CEC2F485A716A92E122C3A9640
          4C884E3894F041102AA8168C25F21377258E0A79C21DC267222FD136D188D843
          5C2A1E4EF2482A4D7A92EC91BC357924C533A52CE5B98427A990BC4C0D4CDD9B
          3A9E169A76206D323D3ABD31839291907142AA214D93B667EA67E66676CBAC65
          85B2FEC56E8BB72F1E9507C96BB390AC05592D0AB642A6E8545A28D72A07B267
          655766BFCD89CA3996AB9E2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5
          864B572D1D58E6BDAC6A39B23C7179DB0AE315052B865606AC3CB88AB62A6DD5
          4FABED5797AE7EBD267A4D6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED
          5D4F582F59DFB561FA869D1B3E15898AAE14DB1797157FD828DC78E51B876FCA
          BF99DC94B4A9ABC4B964CF66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB4
          0DDF56B4EDF5F645DB2F97CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54
          A454F454FA5436EED2DDB561D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BE
          DB5501554DD566D565FB49FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D2
          03FD07230EB6D7B9D4D51DD23D54528FD62BEB470EC71FBEFE9DEF772D0D360D
          558D9CC6E223704479E4E9F709DFF71E0D3ADA768C7BACE107D31F761D671D2F
          6A429AF29A469B539AFB5B625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C5979
          4AF354C969DAE982D39367F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A
          0F6FEFBA1074E1D245FF8BE73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F
          6DEA74EA3CFE93D34FC7BB9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDD
          F4BD79F116FFD6D59E393DDDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD977
          27EEADBC4FBC5FF440ED41D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47
          F7068583CFFE91F58F0F43058F998FCB860D86EB9E383E3939E23F72FDE9FCA7
          43CF64CF269E17FEA2FECBAE17162F7EF8D5EBD7CED198D1A197F29793BF6D7C
          A5FDEAC0EB19AFDBC6C2C61EBEC97833315EF456FBEDC177DC771DEFA3DF0F4F
          E47C207F28FF68F9B1F553D0A7FB93199393FF040398F3FC63332DDB0000C24A
          4944415478DAEC7D077C9455DAFD99DEFBA457D20B8124B424F4DE9B341115BB
          08B2F6DE5657D7B2BAEBEAAEBA8820569426282A35F416480884F4DE2799994C
          EFE5FFBC6F70775DDDD5DDEFBFDFEF6B83316132F3CE7DEF3DCF73CE796E81B3
          EFE041FCAB0FB55A83B3674F63E39F36A0AFD7809271E3B060D1226CD9B409E3
          274CC491A3A5E0F178B874F122B272723067EE5C64D377BE40806020F0E7EB44
          454561E3C68DA8A9AA42664626B43A2D2C035654D756A3B1B91145A3C6A0B7B7
          1742911053A64C477F7F1F3EFEF8430C1B361CA9A96983D7E270E076B9C0A7CF
          CBC8C8404767070C06037A7A7B2093CBF1ABE75EC0D3CF3C49ED3D8321C94330
          76EC389452FB46E68F40666616F61FDA8F7018983A790ABEF97A2FC0E560F9F2
          6BB17DDBE71FB89CAE6D9959995FDE71C71AECDABD33F2DCB973F12563C75548
          44E2F0D123A5B03BEC282E2A465F5F1F626362E1F7FBD9FBE272B9D42C0ECE97
          9F87402044757515A64C9E86FBEE7F807DDEE7F321212111AFBEFA0A3EF9F823
          A4A7A723140E61CCE8222C5BBA1CFDC6FE7F796CFED907E7BF3B10E2A8E30374
          2D3E8F8FBEFEBE62B7DBBD68E992A58F5451A70F0C0CA0ABBB0B5C1E6FE4830F
          3E7C65C3867784D5D557AE8DD4479E9932756AE5871F7F78F3F09C3CCC9E3377
          EFE62D9BA6BB5CEEC8E23145F5274F1EE7260F4951DC7EDB1D9F3CFDF4531B0C
          86DECBB3E7CC79F3DDCD9BF1EA2BAFDCB879E3C6A5D3A7CF58101D1B2BFE62F7
          AE7504C04DD3A64EB3F4F4F4F013E213FCCC007B3C1EC21297EE2E8CF2CA0A08
          85A2FF03C2BF03089F7CF211860FCF87442281DD6E633B9D06BCD061B35D1832
          2465095D73E7814307A2940AE52F8462F1158958D4EF717B6E178944CD098989
          EF78DD9E65FD7DFD922BD55746DC70E38D9B4F9E3CF1189FCFFFC0E7F7CF0DFA
          03FB753ADD2C97CBF578736BCBB5088792E2E3E2056BD6AEBDE6DD0D1B1ED6A8
          35296969696B2E5FB93CD56832E5F776F7BC3EA26044619FB16F625C6CDCAB81
          6010111111A0EB41405F274E9DA0ECC0434DCD95FF03C23F0B04ABC5869ABA1A
          D4D6D762CCA8D130F61BE97D7CCC9C391766B311EFBEFB2714168EA036A861B7
          D9D98EA5DF8F56281499870F1D7A6ED9B21585A140C05B575FBBB5BEB1B12F6F
          68DE6B1C60786D6DCDF571F1F1AF13001E5F77D7BA7B43085F3A7DEAD4E4CE8E
          8E3512996C65381C7A2F2539F5168FDB79574B5B9B23100C2C199A3374B1C53C
          F031789C03C41F4A895C16D26834A565E7CE2DC9CBC9AB09047CBBAB6B6AE5D9
          B939F28ECECE561E9F8BB1C563890E040454290E1CD8876030845A02F6FF01E1
          6702213B2B1B3ABD0E86DE3E31A5F7DCA696A64B13C68EF777757541A3D5A0A8
          A884526CF58AA3474BAFC9CD1DFA2245EE45637F3F38C4E9369BFD7734A0F572
          85A2243525C5939C94BC8E223A67C06C7E6EC06A31676464BED2DDDD75BDD36E
          D744464557545FA95A4459E56BB1543AD0DBDD7D7DD290212F56945FF87D4C54
          CC5D0EA7E379ABC5B2852F145C9F9199399332C87BC4F987E8B9CC9CEC9C0B66
          8B65B1C532F02DD1CFED13C64F78E2FC85F3EB87E7E73F76F6CC994CA1583430
          63FA8C0B947DE83E83F8FA9BBD4C57E3CA952ACC9C310B0F3CF8107BDF0C1012
          1393F0CA2B2FE1A30F3FF83F20304078F7DD77515F5383F4D434617C52A2AFAF
          B737EAC8B16337C5C6C6BE3C79FC24ECF862C7287ADF0A9FD77B562C164744E8
          23665074FBF386E72F532A95A4137C310D0D0D8F6565663D2F100AFA8E1D39DA
          C1E1735FA2365A2963884B8A8B2FD6D4D646916688CECCCCD81D151165A44CB0
          C6E3F3364747C7EC9748A5F93E9FD763B7D99208603DE7CF954DA60C7388227A
          424F6F77DCA2458B2FA8349AA60FB76CFE60E1FC850F5FB850FE108165454C6C
          AC442C9644B4B5B6BE3834377771B7A187B20A9652FB8F8A259297471414A2AE
          A19ED50C757535F2E2A2B123EF7BE081D37299DCEB743A415A04BF7FFDB7D8F4
          DEC6FF1D40C8CCCE2620CCC3E4A953182E87D964824828443014423401E1ADB7
          DF46CDE5CB44C7E195FD26E392C2C2C2A58D8D8D254312933AFCC14081C56AC9
          6E696E698F8E8969494F4B0BD4D5D569BBBBBA5E1D362C7FDD98E2E2E36653FF
          843D7B76AF1E357AF4AD5C128EE74E9F1ECE13F07B89060C972F5D52DDBDEE6E
          EBE1D2C3686A6E269790099D5A0BA207D06042A954414ECE8251FF216A4F210D
          1EA57DD81C0E68541A86DB63DFFCE31FBABD5E7F0A456FC1EA1B57EFFB72CF9E
          973BDA3B72A64D9F765B7D43FDE30460AB5824F9F872CD159E482878261C0C9D
          8D8C8C7C8ED131FB0EEC67EC4331212664B358DFBFFDCE35A34C26938D680804
          087CF8D116A28D5AA4A7FD2F00426E5E1E66CD9E0D52D690126FA6A4A680C41B
          F43A1D2872B075EBA74F94959D3B4D5C7EB8A7BBE7A2CBEB5E4D62AD442E9116
          FB0224DE349A65F9F9050BB97C1EAAAAAAB61305F40945225E466AFA198AF2CD
          159517158989095CBAA6A3A0B030D8DED6C66463D21B3AD4D7D5E1E6D5AB71E2
          C40934B5B6228B4019A9D3A3BCBC1C3EAF1B2A951A62A90C6E8F1B5E9F1F8534
          78E7C9663AC88EAAE97775F57578F3ADB7E0F57AF1F2CB2F61F9B2E52C506AEB
          6AB3172E5C54537DE5CAE3440B75E45AAE3B71ECB8434B02E2DE7BEFBF51A190
          5B6A6A6AE3C891FC9A68E5DBC888C8E5645DCF6AB4DA97AA49384E1C3F9144F1
          00366C7C97A5B634B2C2FFE38130BCB09084DE74BCF0FC0BA00EC1BDF73D806D
          DB3E83CBE104712CFC01FF0C8A9CA2DC9C9CCF28EA477EF1C5AEA5A4C4179332
          DF3D6AF498E72B2BCAEF2200C5A8559A53E999199FB777B68F5129551FF0498D
          9F3D7B9622BD8968271B011AC86C1AE83A8A300E9B6DA251597911EBD6AFC7C9
          3327D1D8D681E4F87828A50AB476B6C1EC7443A3D1422516C2E976B1BC9DCF00
          A1AC6C100894296AEBEBB1F10FBF8327C4C12F7FF90C565EBF9AFD7D63532366
          CF9E43E2D5CCA67883A127F7D0FE030BE3E3E3F3962E5F716B4747A7EBE891C3
          EF93A57567A4A5DF4559ED5049F1B85BB77FB13D312A32B2EBA61B6F6E622CEE
          73CF3FCB6442A28634329BC0687249FF638130ACA080803003EF6D7C0F117A3D
          D6AE5B4F0271038E9496E2CE356B31243949FF9B575F7E40A7D5CFBBF7BEFB0B
          366EF8D3B6F1E327AC21B177537B7BDB88A8E8E8E534B8EB3352327666E76475
          194CFDF07ABC10F105B85C59896A8ADA141A609E40888C6143D1DDD9098E4609
          A1520EAFD18C84BC31E81FB020D45E03A13700971FF43B294C762F846201A265
          52580D06C063822A77047A0411103AED20E98FD61E03D6DD720BD05387F73FD8
          82EBE6CFC2B1A34751D7DA81B90B16D2809990929242CEA60F470F1F41426202
          264D9E222080FAA9ED1FA954AA56A140705EADD114E9F4FA9A33A74E4F128945
          648E7407787CDE1F1A09C46433D50AB952EB0FF89AFF5701E117F7DC870F3E78
          9FFBF5D77B5F5BBBF6EE3749B8DD6834F51B753AFD1F481F24353735AF138B45
          B9A42D6EDEB56B6716D9CA6356AB15D1115188898B05BD16014AE552A10095B5
          0D68686A425EC96888B55AE20325A46435B9A4417A7D0EA4CA74681D08130D04
          A06BAF04C7138093B4AA502185CDE9038FCF41A442012BD116C7D30F7166016C
          D1432177DAE09729E1C92A829A06C54B9F15087B91D45B8BEEBE3E349F3F8AF9
          5327819C0812D3B328339870F850294840B2C29884274385712416E7BA9DCE95
          33A6CFDA73FAECE9190E9B6D3681E3559FCF6F9648C4BF2EA0BE21C7233F7AEC
          689DDD69DFB062D9B5CFDEB4FA66B618C6D8CCFF9140D8F4DE2616080B162E8A
          3F71FC58210DF822A954E29C3871D22E1AF05F1A4DC6A34386A448650AF97B5A
          8D56A9D56ACF9035434C740C75F4006288565212A261A0810983871E0F1FCE58
          19A4210F4434984C99D8E97643219380EB0BA2DFE7448C40064B4801A7D30315
          0181EF0BC349BF132824B0581CE00BB98856EB30401695EB1F802C67248C9A54
          48090841A210577C16A25C0E38A3D3C89DD8106A6800F45110BB0CC8D0CA71E5
          E421140FCB466B73238E1FDC87F8B42CCC9DBF8075462D2D2DE8EAE906A945FD
          B429D3C45B3FFFEC2B87CB7EB8B070E41BD19151AD6A723CC98989D8F2D1877F
          F0FA7D7C02C75E1299C593274D79CEE3767B98E2549828CE4AA0623041BA892D
          A231D6942965FFFF02CA7F1A10F2F2F3316FDE5CBCFDF6DBB2D8E8D8E882C202
          D3FE6FF7ED21BD70479FB97F3C89BECF3A3A3B56D5D45493A69CF3783018BC22
          128B49C8A970E2E409C4C7C563A0BD094949C990A717A0D9E68660CC62181A5A
          21B497422717C1E3F082479AC147824B2611811708C318702141A0C0404805BB
          DD0D71639998E7F6EBDD62AD8E07A7D2E609C8F8F45A3D3FECB40FD8ED68AF32
          CB471619ED89235CF2010302AA08D8928621CEEB814B130D97CF0E717B331C12
          2574520EB804BC7E710432642258EACFA3FDCA05F0DD165C37771AEC5E3F6ADB
          7B28B23BC1E3703177CE3C9C2B3B974DFDF2D8F0FC82577A7B7BAA9879912149
          29A3376C78E7EB55AB5625A6A4A4BABED8BDEB0372484DB171B1CF32A281A950
          E6E50D03038AF8F838F4F6F4B2BA84713AA150F8BF171018B13865CA94E8BD5F
          7E3997ACD263EBD6ADBBA5AEA65678F848E9BAC4C4C41374E323274C9AF830F1
          6887DD6AC380658055FC1A9512274A0F22293606266914943963C10FFAD04383
          2C1B390FDEFA2B40E74EA8E45284FC6108784CFAA6EF221E38C1707AAFD75122
          E70BD35C61419ADBE9CB0EB83DB1F44205471F290EC54D00B76006383E2FFCC7
          B681A797135F48BCE1F2320727E4E9512666D43A9DBEFA9050D292CA0F9CF6A6
          165CF119486334D4C2AE8D835214849446CA1C95036DC00B75D8852EAB071C5B
          3BE21312C0B799E06D2A4763572F651D31664E9F89CA4B95283D72980634811C
          8A177ABD3EDFE7F16DC9CDCD7D4A2197EF619C4ED9B9B22F88FA3AA82FD6C7C5
          C441A1546006BD3748009F3173268E1F3B864B9597292812294305FFFB00A1FC
          C205CC9E3387E1D2AD46A3C9431A60FD8573E78E8C1835660659B0F5A160C0D7
          D2D2DC51326E428014FBA7760ACCCA4B1711ADD540A7D7A2F4CC05448E9A025B
          D614082802F4B587D0C397425238072E1A14AEE16B68E53252FC41BD1BA1997E
          8426B91198100A875303A110CFCF900827C8A651AE580A0EB50956129319B3C0
          1FFF00C013526401BE53DB219AB0144C90F9AB4EC367EC838CE342803242A8E6
          24842171335F2A3CA9902A4B7D2DD5DFEA6D9D3D523117BD31F988A2D42076F6
          A1C7EA8684006288CA25BC059154FD152C2D3508114DCC98BF04172ACA419488
          A2E262B63C7EE6CCE955A150E89ED12347CF6B6E6EEA6B6B6F5B494EE7E51123
          46E65CA8B8A0CDCDCE6D277A44464626B59B8B71E3C7B38EA5AEB60EB1A44528
          73FED707C2D16347583EAB28AFB845269346CC9A35EB0F0D0D8DBB1C0EC75AAB
          CD329D3E3E2B2931694B5D5DEDCDE4E1FD0F3EF0F01B1421AD611A38ABC98453
          94095C4367C01CE6C01B0C21A48987887CBFA6EB227AC23C28F267C1D96DE4FA
          3BB75F03A17F893BC899EB4350C1244BE264F60FEFAF3894F9311C66FE1744C8
          6347B0FD0C8463D6413CFF65840321040DCD08541D8168F66D4C60921DB4608E
          ED4D4845617C10F118A2CDB5F0B6B79393A074ADD4BAD40AE10159EDC56D4187
          6B7B023FE8E5120D75D8FD10F33CF0C5666280A84A2AE2424696D676680B96CC
          9A81B315153872E224264D9CC4D2DEA5CB95B0D8AC1962A168B6C7E51ED9D9DD
          55B07AF5CDF7D45CA99ED2D5DBE51B3D62543901F8CB499326C3431964FC8409
          FF7D80F0C1E6CD9832751ABEDAFB25FAFA0C4F8E1F373EFEFCF90B097979791F
          4445459FDBB4E9DDD29CA143A7B95DEE7652D87C4377CF58AFDF7BE0BE7B1F20
          4FAF8182134065BF039F97B7212C8980562B84ADBF17FED81C483D0E44361C47
          9B3E231ED3D7DCEAB8BCFD46DF95AD294181187CA2051E7E423C517A05970F8E
          5885B06F00E251EBC04F99883009516EAC1EEE13BBC0936BC0CF9A00838B8B59
          DA5398577B1B6EA97E1E71B3A783AF52C073E12482E65678A54AF088AAA4214E
          A7BABAECD398BEAA0DA4631A057221DCC905B05B6C90286510848940ECDD2820
          5552B7F7731C25204C23BDA4566B719980E02401181911C1A9BC7871B45024AA
          8C8C8C5A979D95152B1089F69F3876EC759D4E57F4D453CFB83D5E8F2F332B0B
          17094CFF2D80B065336584F11338A5474A6FE673799DC1507024E980CF4B0F1F
          FE302232F2CBE8E8E82FCD96816AB24C41462CD9C8DF779375BBEFBEFB9119AB
          434587099F55362220D641269413DF87E1B09AC151C6508B25099CD8F8FBFBF5
          317706EAF74AB8B57BC8FEC9C1E14BC0946C7FE27611F658C0914642B1FC7DA2
          0921E0215C105330514E690441EB00BC978F403C62063A1D324CC3677821F629
          CC6FDB898113A7A01E3715BC94540406DC08D69D82BFBD0EC1AC31080C1B0151
          AF3720BA7CF8BD84CE63AFFAD4318D661F17523901D443B4C121A12A13A3B7BD
          03DCDA1388A29FC552296A9B9AC9CD3820A59F194199919E89DABA9A835289F4
          DB8101F3E72B57ADE2D7D5D53D5E7AE850FF8D37DDFCD89D6BD6E0108DD995AA
          2B888B8BFBAF098489932763D9F2E578FAA927D388FF7AD23332965206D8B9EF
          9B6F4693F879422C91EC9A5032BECCE1769E69686A245FEF434A6A2A2CA60198
          8DBDB8E7AEBB609027E3DB5633BCDD57209147202C50411E36C36E1A103846CC
          7EC45538ED518FB14326DCB5065C13A5697D1A0DA0804DF73FE37689122CE04A
          F5D0ADDE4AD14D03EF04DC55071076F7831F950D41443C5C65A7208ECB424D54
          269EF63E878742CFA048450E84C0C83FFC278827AC04A89D613E102287E03BBB
          8DAD0862C2AD0828B910B6F50684869A5745D5475F9228E4D6305F0B91CF0C05
          D1449F3A0919DE1E983ABAA0B236E2F2A52A3848F005037E8C1955849B6FBC05
          BB76EF18BE69F3A6E7E7CD9DFBC484499315070EEC7BC96AB52DEDECEC58517E
          F1D2A62F76EE74545EAC24C119FF5F0B08EFBDBB1194DEA70F2F289872DB6DB7
          3FF6C083F7FFA6CFD03B292333F31DCA0C6DC67EE3C183870EAECDCFCFFF6468
          76AEA5A1A9013D865EB632989A96065377176C762B72474D4263FC7808299D0A
          DB28FD72951092DFF7C40D996DCE9BF21B5F5C522EBE7A14BCD62A8A7E1F2056
          FF4C00FCE5110E05287B88208C48270A5023E875C05D73883482175C910A1CA1
          109CB0028AC98FA23FBF00473AD390CA6FC2689F09ED0A2D622DCDF09CDA05F1
          8C3BE83D0212964170D524542F1E86BFF92284C50B481FA4C16B0B40626C6897
          F4D63DA26FABDECA21ACCA9472F4F19588E8AE82386514645C378EBCF630FC41
          3F449A48E4646663D1FCC53871EA185A3BDAE1F77A75C78F1FAF7FE2A9A7A26C
          56EB757B767F71F78A6B574E2E3B77CEBB60C12276FA96599D152697C44C9631
          DFFFD5BA0267FFA143FF21209C3B7786A8E0FDACBA9A9AA57285A274DEFCF9D5
          94D65C070F1E98565555751B719D6CFEC285D794959D7330CBB53252D3D1D4D2
          849E3E030942335292E3E0F106913E61110C94556C913440FA48F02AF7C0AB48
          54BA534BDE304E98B59A82099CCD6B106A3E02E8920091126CF508FFA48F6696
          8F118504EDBD08FB7D040A210122829C038D148181058AC78876D5642C5A3801
          9FC9E6E18A3317EBA51F219977010743B722A2E33C7C0D1590CEBC19FE01278B
          456E840AFEAE5AB84FED8168E42C70E387C1E50EC027E2437DF9F0B6C8AEF3EB
          A3384E438B321551DD97218DC9805B1F8FBA9307206DBD809EBA0AE48F998865
          D72CC7916387D1D0DC08A54C21EBE8EC584B567A8A52A10C666567CFBB5459F9
          6244448475C992659FF9FDFE9680DF0FD2152C08FE230F4E2979D29FFD62421B
          8340E68BF99999AC397BF64CE4334F3E592193CA962424269C71B89C5F961495
          DCCBE1729B6A6BAA71EAF4A9B151D1D1358453736EEE50A40D49457D633D1AE9
          4BADD3216BE41438D531C8CF1B81CA6FB7C110994DF68B47D6ADA9A463EC1D9B
          B8C3533285BD36043F5B4BAAFE323894BE110A0E8ABEFFD09D73AFFE10BE0AA8
          BF7A906868ECE263EFBCFD985368C236CB1DB8C1FD26F6164EC4A9BE1978DDF6
          2C522F7FC916AEA4250BE1EB35B29693A3D123E432C175700BF87913C11F3202
          7E23D11AF593DCD6DB9958BEE3767FC8FFADDADC093101C14902B73F2C406E74
          0C4EBFFD181249642E5BB91AA7CE9DC6B90B65502B085CD4D767CF9D7DE99AC5
          D75CA62EBF6C329A9E1049C475A74F9FAA8BD0477CCCD42B643219F286E6B14B
          F9027FB5CEE39FEA8E8F3FDDFAB35FCCF011F3A1CC7A02A6ECC9147C8E1D3DA2
          F8E0FDF797DB6DB6FBE9EFDF92F5DB54905F58EBF3799F9B337BDE1F8E1C3BD2
          F3E1075BD8A2C89429531147375D7EB11C4909C9289A3A030D0E25FA7D6E24EB
          55683AFA35EC8A680C0C9D7C777FE29837453124B46A2BE1FBE631EAE07E70F5
          A9D408FF7F0C003FF1E0714268B2AA313ECE80C34BBF016CC0B392F7F11BEE6A
          5C232EC307A3476365E93E1CE3CE80F2C8A750E5E4814BE0F43B2C08318BA989
          6E4270C2B5EF3D0872278237A41081DE5EB85411F0853888A9DFF7647AC5D617
          78C9A3619369D069302027251B0AAE0B297C270403BD3879F60C025C2E4AC614
          C168342222328A59DDB4E6EC99D343D46A553E87C37DE6D2A54B67A64E9D0A26
          1CFAFBFA489C8F834824FED781905F90FF735F0A52B12820DEA4548FFEFE7E02
          821ECC32B11DDB3E874EA75F565353BD9180903777EE3C4D7979F94D8F3FFEE4
          2F83A190F5D65B56B3202A29198B08AD16C3F24723353903269715C71B8C7089
          24C8A6D4DA70F220AA87CEF99DB378E1BD7CBA4321A560F7CE35E00844E0A813
          FEED20187C84D168D460E7C2E3583CB401219B06532B7F8936672C3CEA69383C
          2F0FF131262C3A5E0E81C38A9A6617D248243B7B1D34283E4A56D470195953B8
          E1F87A13848593C18B1F8E80A1077EA90A6E8914AAF35F7D58E8AC5FED92A9C3
          4D2607D222631025E760F4F06C84CC066C7EF1498C1E3B0E8F3EF1147ABABBD9
          2AE4EF7EF79AE0F5DFFDEECEC8A848FD9429537EC9CC63C4C4C6311939C2E572
          F5979494B0F30FFF32106262637EDE0B292F391C761AC8082CBF76057CA4724B
          0F1D86829DE80963C89014FABD63C2A1430777FBFCBE3FE50E1DFAC4A38F3E11
          1408F8B8F5969B603299307DFA344C9E380BD939C3E1B29165B41A71D110849F
          A2305521E21CD48FDCDD12973F5FE70F81EF6C85E7EBFB10729AC051C51108FE
          B51BFCA73A831346AF438A0C8D03E757EC231DE2C5D1B604CCF8740C62C4FDB0
          663D8AF553AAF0DCA407F1DAB6D970B8F208C822348AA62063C178781C3C7225
          5EF8EC7672150486A003F67D1B211EBB04D0A420643220483AA99F446EBAADE5
          A4BE6CFBCC5E7FD83924211D5A9E0BF969095047C5E1D0CE4FA00BDA71FD8D37
          C1D06F4202A57F6681EB9FDE791BBFFAD5F31090A03D5C7A889C9669596363E3
          86E421430A489BB5322BA69980638423335EDF51F9CFBAF7B4F4B47F0A085111
          D158BCE41AA2072EB67DF6392CE60176F5516474243B4378E6D4E96BCF9C3B7D
          343737AFE7B1C79F0497CBC1AAEB56C0EDF2E0D7BF7E0DD9D9C328DDF543CCE7
          A1CF6D434D87031E6E905F9331FB604F7CCE44F500D93852E7CC2CA07DEB0D2C
          857344B21FF2F8BFE1C1D0425D9F1E2F4DB980478A2B98BBC65B1DCBB1EE6D3F
          E2A5D5E86C1561FCC2341C7B6127813806EF5C780823DABFC28D276F20FFEF07
          471C0B3E39065E6C0AC23E1A040E8F3442335CA7F790CBB89DC4290D9487B886
          EEDD26D382DF7AA53CB16EEFA4187DBC5D25010A52E3C063E64A784228439469
          9402B8FD44C77205CACE9F43D5A54B78FDF537F0CE9FDE963D70FF7D4F68B59A
          899959D94FDBEDF61593274E7A93A8F9323325CE4C5231DDC5AC7A62A89C19BB
          9F1293FF341022F55158B26C290B844F3EFEF899EE8EAEA125E3C62E1B3A6C18
          4442117FE78EED81A6A646A4A567E0F9175E84DBEDC4F5AB56E2A6D57762E1C2
          65442906B651426AACD5D687AA560BF774FEB5C77BF4A925916E23DB11C22815
          ECBB9F82AF761F78BAE44171F89FF0F0047970FB0438BD6C3FD223CD087787B0
          46F30D0ED673100703CC013592E305F862F212F0656EDC77E563AC0C9CC0E17A
          155EEF5D85EC342BEC35CD74253FB891C910248F245028E13875069E96EA4197
          612420108904E89E9C2A3D443DAD95A35A0F8DD5C9F9CE9C8C21ECEC29C53382
          F4352651C76A27A3D5C1EE93D06894EC00EFD8B133F5CE3B6FDB99919139CAE9
          724D4D491EF2E0BC79F3A7EED8B91D43F386B38526B29BE8EAEA645784333BAE
          7E1208F109F13FBBA3080882BC9C3CDEF082024F6D7DDDF53EAF278F546CC8E9
          744E18356AF496F4F4F477CF9D3B1B66C44B544C0C6EBFF32E0C180DA8BF528F
          091367C044998059ACCAE8F5681107068711AF728BF71BD3C64C8F200A602250
          481AC25BB605AE63AF918D4C639FFBCF7830B4D06655606A720FBE5E5C0AB843
          686C976195752F52168D07D709D8A92FC59E30DE8AD643AF366383F151B82F4A
          B05CB915C515DB913981296E09E16ABE024FDB25047D2E7094F1904D9D09C7B1
          5204DD3E8846CF84B7D7CCA41F04C30158A4115077D69E9DD27BA06854C150F8
          F962760F843710A4C8E6616A4E12E25472981D6E763099C5AECD2DCDE424CEE0
          CD377EFFDBDADADABC1185231E360D98663A5DCE6F5F7DF5F58B7AD26E7D64CF
          2F90F360A6AA9989BF9F04427149F1CFEA28C62958060666EA34BA31B17171CF
          194DC62C97DDB1D8EBF37E545D5B73775A4AAA606C71C9FDCC4033A989E1298F
          D30E5DFC10144F998701B3916E30003E0DAC9F6ED04AB6EA9038EBBDF2F831B7
          C478CCE08689D38452666518AC9FAE409080C1634ACAFF49D9800142834983E7
          4B2EE289091781BE10F6C8EFC123D5F7A2A050436DA70CE69341C5EFC3868C34
          A8A4761C758EC7F68B37E24DD5C35854BD11CDEE44248E1D495A2108AE82074F
          673BDC0D67E027512CCC180A5F7B3304D9D310166AE1773AC04CAE3151D10905
          D27BCBBF5C1B655E10122BE1272FCAA50CECF4FA596A9D9E9B84789D1A0E4F00
          8CE662565BDB6C36BCFFFEE63B5B9A9B2F939BB84FA552D55186E8E009043D62
          B1680F1340441DECDC0D03829F04C20DAB6FFC591DC5EC4530198D2ABBD5CE77
          BB5D0FD7D5D78512E3131E23C5BAA7A1B1B1293D23FD3EB55235B801946EC2E3
          7240215762D983CF4249BAC24337CE0437512109A610DE6E933DDCA01BF172BA
          D0090E0D36D350914A078ECB08F3D6D56C0771283AFE534040A933409DDFD2E9
          C5572BCB3137D3409E2C8897F51F626BC354E42450A2966AD1EF95225E588977
          53F399C0C779F7686CAC7E12EFB816E05EF9E7F8BA220E1985B934903C32387E
          84250A70E57CB83BDBE069AF80B7A3912C261FEA9BEE85BB955C0609EE300130
          48833D20D640D770FC95795CC3239162053C24981910383C3E082808E7142523
          31564B99448C7E631F980D3F16CB00DEDFBCE98DEAEA2B81C282C2FB43A1F087
          5FECFEC24C40B8875943396BF61C36233002F22781B080ACE0CF7D0849ADB6B6
          B430FC339378E726D3C0408C56A5FACDC4C9934BA532A98B5C036180CB6C2466
          D7EB69D286217FFC348A101BFBFE3083528E17156EF1F40F85A3F7AB0534F801
          0F2B0805D460914E0CFBA18D709CDB083EE314FEDD0060CAB1D45E7B7F072C4E
          1E52878EC081397B10C36943C8CDC78343EA70A90AD0F11D90A7E7A0D3CCC350
          F997782D75010BEAC3EEC9F8A4FA7E6C74CCC71329A5D8795C8F789915B26163
          E119B08271924C9A8794B85DC283AFAF0903BBDE062F2115F2B977C16F0EC04F
          1694E9301F09C40E2FB0C874FADA897EDB678620130483EA3F08211C9676F4D6
          ECA78E128247769A195C0A4818FAFAC69116C8B5592CE93AAD7EF4238F3EB68C
          46DD70EACC2976BCF47AFDCFCB0893A74CF9E91EA38B30D4A0542AF5870F1DDA
          327CF8B0EAFC82C287BEFEFAEB5566A371F5AF9E7FE1A1C4C4C44A0608832F67
          A67AB9888CCF65F72E84827E56B0C8823E1CEDB36ADEE214B48A555AA526E8A2
          DF71218AD09000E985AFE60C9C955BE8FD0EB6EEFFEF760A0C685DD63EC46797
          4057381DC332F2F16B433E38960E748952F0AB9C2674971E033F6C43DCE479A8
          6E015644BE8A3B121E62C608EF5B9EC499FA8978C7331DF74696E19C950473F5
          0E68262E8777C08E10DD7328C4688120D9380A0335A5694908BDBFBB1FBCB80C
          48C712A0D4F104100243D807076510B29EC1E5DDA5439294820E0757C4565099
          0DBE1C81040D978EA3E6E45E88C532CAD042FA3E98310DFD7DC3FA0D86C90909
          897FBCF996DB02FBF77DC36E2062A6ACB51A8D70C032E06356323119E6EFF6C5
          A4C9937F56E404297D77B6754C1B3172E4F8B884B85FD6D7D5176BD49A81018B
          79685777CFAC993367DC6AB3D9D9D7BBDD0E4447C563EAD46BD80F67BCAC8847
          19C56DC763A6988397D4E95393C25684C27C8822D508D45D40C85803BE48075B
          D926847994597832FCD3F308FF14083804827EC8343158F1F456B818CEEAB0E0
          D9CE64C80256544B0AF16ACA0538CE5F42D8D38398929968E8059E4A9E8512E5
          3E96BA1EE9D98DA4A66EAC0DDD8595241E9D2A0DDC47B6439C920FBE2E017E8A
          D800782C9E83F4BFA09F7ED0AAE1EEA887FBD2614041D64E3504C2BC71F0F6D9
          C0A1ECD82B8E4084BBA7E2D670596180B45620FC17D02AF531B8F4F54ED49E3C
          08A94ACB8A40662B1D7306048F40A75428892EAC048C5EE8D49A641AFCCFE212
          12FE3462C4884D0C98FED14C25E7CEB56B7FB2D398C327AC369BC661B14E369B
          CCCB3ABB3B6A0C86BEA577DDB5F6577DFDFD4693A9DF5F5232F604B3972F1C62
          D0EF8332268FA25A8300296726FD6A030E9C1125DCFE55C2940D0914615C928D
          02BD12DE0B5F01C65628272D43B0BD8BF8F4306C977681CF08C57F6346608060
          EE6EC684EB1F47F182A5686B65EA15C0E3ED19883137E08ABA186FE49C8284DC
          82A5EA2289BD7C84BD2EBC1A1B0995C049D10EDCD0568B97DAE7C02392E35675
          2592288999CF1E87DF638776FC1CB8FA2C60BA3E14E6B29066744890326058CA
          87E3E261083287C379761FC2241045C5CBE01B2030108D74D47D8B92FE4B8FAF
          9A78DD8B360AAAC1D4CE308C06D6BE0EBC7ADF6276B6562C91B3C1C2AC6C5628
          95029542E9F77A3C4ABAB957FAFBFB32B45A5DF59094940BAB56ADDAAD56A9CD
          0C68FE6E7FDC73EF7D3F789249ED02BE80DD86CEECC061AA87E7CF973D26914A
          2E75B4759CB858797107A9D4435BB76E7B71DF816F71BEEC1C7B0289D3497689
          D27F447402F8721DBB9D8C118E1A8E0F552E816E4BF4FC6EAD5A2194D35DF1B4
          32788E7D082E45896EE56A38F61F8650AE8734270B2DAF2F20A1C867A78BFF1D
          0FE6AC02AFD7098FDD8ED94B1EA414AB84CBED476728028F481FC00CD5615407
          87E129C746480276B83A6A1018BA1A6363F7E191E4A534A2C059D1626CACFA3D
          DEED4BC4BB116FE363EE1A24869DF07A6CB0D55E807AD42C12C85E1AA6206B99
          03E48A42F41520E7C4516B89024FC2E7B441B970364C5B3FA3807140B6E05678
          EBAA60DAB20821753AEE5AFC5C9256A16AEFB759D888E750BB1960B9AB0F401E
          B0214C74C1A14F6066758926785B3E78FFE98AF2F2DB468E1C799C9C5B459FC1
          F0327DE406A944BA23322A6ADF7727B9FC28106EBEE9E61F66001A0426CD53DA
          678F7C611659565EACF8C86CB1C8DD1EF7DA850B16768F281CC92E953A76FC18
          BBEFBF8480E0B75BC0A594258E4D0527EC67F98D49690A72023BA5459F554616
          2D8F0F12EA950482A31F4040E8574C5E82B0D1044FD957D0CD5A055F572BDA3F
          5B4BAA5C4CF420F8FF0E021E01DC6133A1AFA31973573F84315357C0D4E5A08E
          0EA19BA3C0A8C041ACB7AF808D1389F5E66D707907E069BA087BE22A3C30EA11
          CCCFDDC9D48BF0C0C93F6294B3194BF01AAED77740AC8B671D11D440DBEEDD10
          C7A541149349C1E061571F336008869962117D0F50566096BF1FFD1CA29C49E0
          0F8987EDC857F47B11C25C2B7C475F868927457464F6E125450BA68A49603375
          05262D042938E22502482C5DD40C0EDBBFDFD509CACB2FACA8B858E1D169B517
          C956EE6D686870242625798B8B8A67D358B93C1EEFDFADCA70DEDBF0DE0F9E14
          0A05E8311858AF2A128BD06BE8CD3B7DF214A7B9B96994C3E958B378F192BDD3
          A64F7F8E1A113A74E8207B62C9D489E3D1DA6F439B408F105F489670B0C62DF2
          BBE051C7165464AF2857F33910CAF8F01CD942AE2012F2B1F3C0A797792E1C24
          E00410396716AC278FA3E3EBA7C093A828021820FC3C7A185C90C161FFF37B5C
          E0D2803383CE2ED660AEC26421FABBD5D44BAFE563C6F23518317129B91B0A70
          FFE0B47A88C3431FBDF889C60CC47A1AF066410D7A22B2D0FD4519C44318F158
          848850232C7C3DEE3FBA1DEFBA27E14BC50A3C59F710B2658D648B359092C5B3
          750C308B5BA11B370296161F45BB97863F3C0806A66A18A47BD2A8612F3F0ABF
          CB0E69D13CB29080ABFE0A6C7B9FA4C61AC05325A0BDB71BB78E5B306D51C1A8
          4306CA0A6C3663CAC594017A5A9A31D0D901BE583448A1F43C13B0E6010B76EE
          D87E7EDCD8714FEDFA6267CBF8F1139AC68F1BCF500657215784827FA72EC3F9
          E39B7FFC61EA648494C70D7D64045336C60BCFFFEA83A6E6A6A10585230A5D4E
          C7F0DCDCBCF4D163C66C77B9DC6CF58AE9E434E2CE017D1A9C511910B8296DD1
          35783CBA3B63374E458C3FE14E291CAB1187E03EFE29355E01F90452CCA49605
          32015B8B570C9F045954345CAD17D1B2F3611A34E1D53AC23F0602E366DCF601
          B89D036C8790BF8152174DCFD9899399ED6C7C84C8938B654A7635938232D6AA
          5FBC8498C42474B7FA283ABDD4CE4110F188067B88EF53BCA7714F6D09F6473F
          8CDDA92FC37CC48034CD09FC6A2AD10269868FDC4F23DC1A871B4C7762CD1027
          7C612944B61676603C3603BBBFC2D25C0FEDE8F1E0AB93208C49205AA0765A1C
          2418E93329C50748280729A61DE5FB212A98898097FA4AA380BBED04EC7B5EA6
          D638E1E0491023535C597FCDEAA12112DDFEC0606AE7912DF4911E6B3E769202
          8871747C360098135ADA5ADBA6343536DC9D9737FC9AB2F23238C9C971C39CC5
          6A8D66CA909421EB7D3EFF8FF629E79DB7DEF9C1930C35787D3E1C387C903999
          6C765F4FAFC8E97206264E9AACE9E868CBB4DB1D47478D1A7592448A8B2958B0
          368C89B4A4A110A415108939D88F12FAECF046A44C3A113DB554A2142174EE2B
          70DC4EC8A7AF40B87F0042D21E81B64BA4B0BAA02A990F0181D56BAA43FDC76B
          C117CA7E921A980EB0D3E7CA35D1481E369E20202261CBC5D0A2D9B0189B6068
          A8261D6081D5D105634F3B0CDDAD4405D760F5FAA7D156CF58DA00FE7A651713
          583C8E002D24E66EECB803A38DEFE2B90961906BC33CE90DB865C647080C70F0
          8CA11C4F5E198F93FA1BF047FD5B4821BEF6410EBE8CEC2235D94FD2A871E756
          B2C57AF8293306836E02442C0449A3C10C68D013204CDAC1D16A3070EA5B80B2
          9F30BB083EB311888B8097A8D6BAF376F0E45A1829D8168E9EB0247F48E64E8B
          D3CE2ED167FEE38B2530D7D4C1D6DA0EBE443208100A0A9FCFA7A161C9696F6F
          37B6B6B58E9449A521438FE157B366CF3A3B63E6CC55ED6DED8301FAB740F8FD
          EF7EFFFD679814CAE543A95131AB8B507AF8709ED7EBFD9D44222E158A44052A
          A56A975826E9A6EF3D515151B53E423897F1BA22092AAC4298ED6E08791C1608
          125B1F4C136E3F2298336DA2F07C19FC2DE550CCBE1D1C9B93A2CF07915E07C7
          892F20227E55178C049FDA17EAEE412D01C1EB23A0C874089103610A287F5B10
          61C0E7B0F4421B9381A5F7FD9604AD8A59690601777020B47140F7855684FD1E
          0C9F9485CA73F578FE81B948CB1E8EBB1FDF0E6222F889B6D805AD94AA452229
          51E2E06CB78B00D945D7B9BBA9107DF1D7E285E687B15E188599B3FAB0B7EF29
          F45ECEC1ADAE95B8372DCC5E8719062FB342C46B232FE446384A046FCD15F015
          42B291D130B776C1D2D000A9DC094556310CEE58D885946DC9215BAB2FC3DD53
          4734B9145EB389751588D5C0BEFF8FF05DF81056A11AB132F5E55B474D1B1620
          500542832BB38462311C562B4EEDDF073FF50DFFAA4E60F691586DD629E5E72F
          AC23AAD83E7AE4E8E6F28A0BEF2C59BA6C524A4A8A95C908A1507010507FDD9F
          2B57AEFA7E9431880D0605A4389FF5F9BC1F528FD710BA44749122BFCF774363
          4B53203539559E95997907A95017B3442B44192022251DF2CC610891C56250C0
          6C4A6DE3A8F30EE7ACBA24711A103CBE03B2E9ABE8FA32F04921F37822720C4E
          024719F4D398AD6BD570D75F207FAC034721C2E51DCFD0CD2AA885E45E84CC7A
          73DEF7521AE36CAC443B8BD7FD01B96346A1B7D149A931C8CCE550BAE440A153
          A0E3FC71763633BDB808321AE40DAF3D84CE963A3CFDDA1EEA4466C91DD1020D
          9D462742B3A91B76F765B270D588D5CD85323A83F83B887CDB66940997E36669
          3434913E3CD351897BEA96A05233131F695E436AC8016FD04AE0BB847E7B05BA
          AD1DE8A8AA432053069D4C05999D0FAD261E5C9914DDF45E5EC085AC8402F458
          27A3C79B8888D19930ECFB16DCE87412D1B1441D2E84A80F3C4DA78922EE25F1
          CDACE9F4624C5CFA64A54476C44381015624827556AEFA668429B038C2BF644F
          EAA528A2774EC1F0825E727B9F9A06CCA55C2E77435C5CDCAA98E8986F43A190
          E9078175F36DB7FD801628BD0C3976A4F47D93D128A3D45F2F114B7627A5A4EC
          20D4292E5DAA7C6DF935CB5F2B2C2CBC622161C2E584D9EA59AF548B308931EE
          D5B5845ABF05C755A33697A58CBA49FDD5260872464298380C5CAB891D2C914E
          87405703FC6DE5F4B31281CE36C886E4409D5B04558410E57F7A06EEFE6A2415
          2FC7C59DAF431111CB2E8FFBEE11F07BD989AD6577BF0D5D5412510045238198
          477FB8D41E994E82CEF2532CC5C45216E033D54D4E087D863644470D81C7ED83
          5A214380644859D557905496E1CBB2ADF0CC50E3B6EC7BA015A5C0C6D5A3D7A3
          432AFF4BACCF598DD2DE121C383B054F4A9FC722F79350F2C3F41582D9D58356
          4B37AA4C57C033C9F04AF41DF8F8D29728731F0546516AE2E9018B9BE95CCA1A
          6E24C54762716C11CAEBC62210A94688288117970F414A36BC867EEABC0838EB
          8EC2FECDE31028A361A1F7C4CAD57BC7C6A4CFF332F313182C19734522F01C6E
          12A4AD2CE5B085BFE0E0D6BEA953A6315B0C666EDEB269735E5EDEB273E7CE8E
          53285569E9E9E96FD2185FFADBE212E7F7BF7FE37B4F30F50397C7A5293B776E
          A0BCA2222914082EA64C3027100E258D18396265475B47F9B42953914462CBE5
          76434A7AD800316AC32AF098A5DD4CEC322555BF5F5151729721507F4622B275
          434A0A3D443651408D142A35106A38B0EE780341BB039AD153A04C2B64CBA621
          B303421197FD72755374660FC5BE576F8573A00B1285EECF9B584294C33DA437
          96DEF506125372E0B23AC0E7F0D8BCC18826BE988F2E1A5C855A830852FC7EEA
          3099540609A563739F0B115152D4F7D5A2FEDC761451E4DE3E6515BEFCF81B2C
          FEF47AA43C34130ABB04421299036E39A5E60E1CB9E538267D5A846BDD9DF08A
          03B8AF8AECA1D2C1CE27B0FEC8D90EB49BB163E597B866CE3CD23E4EBCBFF54F
          78EAC46BE8CD246B929603F4D38B79F465E9C7D4C23118957D1F4E3446C17D76
          17D9462ED44BEFA12C444292D14AFD9761D9711FB81229FC44837CCA72E3A3D2
          E2845C5EB7FF6A4030C7EC08998341343A36D187AE028411F81A8D46FECA2BBF
          F9D264ECEF1389849FF245C286B4B4B42BD151D1FCC08F2C5BE26CDAB4F97B4F
          88E8C2240CF12DA5ABA3474FB32A5C2A15213D3D69715C7CC219AFCFDB939D96
          09AD5A4BEAD8070F0D6C57983BA82D9886D0DF95C4EF75FAD1779C4E98F627F9
          994F0904CBC1F131D1EA8338428B60671D3C55471024F11677FB13040E39C216
          3B6993302BF698691666FD9D84D9164FBEBCF2EBCD38BFE7B7D0C566B1406017
          C958FB11159F89E5776F005972B8AD3EB6AAC9E385A1A034AC560155078F226B
          6411C2A4315C04043EA1841BE2411E29C4D92B0760AFFC16778D5980FC9113FF
          7CFF9FBDB801D77E7E273099B8242105B08BA0545B517E7307167C968577559D
          58DE1D8B2E23A556098D183328442B72A71A1F2FDB8405D367A1A9A50372A51C
          513A0DFA8F37E2AE3FDC8D1D9CFD74CD61240A4851108049BC607556213879EF
          A15F2046C7EF9E018F328138773C442386C351590DD38E75E0123D320ECAEA76
          21431FF3D8107DD44B4EAF87A587E0D57988A2880428886A3DCC527CFAC34C55
          3B9D6EE5B66DDB128CFDC62B2DAD0DE400E3505838943D4AE8BBBD10DF03C2DB
          6F6FF8DE13621A80018B159F6EDD499DE943C9D842128D95E8EEF16264612E7C
          74914CD20332A91CC29017DD94620C0404C955FE662B5D2E0BCE16AFD9D752DF
          34432F15439833011CF2CB62B5029E8AAF2822FA208ECBA4EC23832C2D1FA4FA
          20201DC063543BA5383E2748A28FC36617B55E096B7B0DBE79E336CA242A88C4
          72160C4E9B19DAA864AC7F7A134C3D1D24FC9450AA64AC1ABF74FE6B0CCF198E
          EEF21A685262A0224BAB926B981A2FB8A43FDA9B2F41DA7A0677CD5A466A5E03
          1F453EBB3440C814BE892A3E3F82273F7B0EFB8597D8A373E44A21DE9DDD8E8D
          E77598946CC55347B2A0A5170E703C60AAA4B3138AF0FC925F223D370D7E4A11
          417F803D248339984BAB55B1DBEADE78EC19DC73E5456076127D5034D0DB8DA2
          DC2CA4F68E40EFA8E7E862AD709B5BE137B68213990847F371B8EA0E90138966
          A3DDE1237A50EACE16266514799981BCDADFCCE0EBB842A40914AC901CDCE9C1
          614F87291E2587D1DC8B43A595E8EAB6A2A3D38DA1B919CC7C204BABDF03C25B
          7F03042EA5578BD50E9DC6806B160D25BA4A640F6678F8B1EDE8EBF7933A1721
          3B3D1311641BBBC202FA12113184FEACE3788C5D1249A38FEBF33BFD3DCD3CE5
          98C5E0318B512561788E6FA588E5437FCD2AB8CF9C27796E81A6681AC2660BAB
          4DF8A437981DEB7CBA9880BC36973A59A6A581EFE942D3B9DD3877F62312A644
          47AA08B62EC054ED9853D9220854ABD73CCE6E349192667AEDC5F5A8283B81A8
          E864B808804F3DF11686A464C04834DD4382B4045E8C9B50C2B6D7E70BFDC542
          325B1C98C931C65E91263B7FF0240C9D5D884B4F8626762FAAF67F0367848CA8
          6603B2A314B0395D90888448481B5CE5C5008AA9C1FCF52C1F33EB2764C52E70
          E0EDED58F1E1AD18981F45964580EC8202A47FD389B6A8758823413BD0DC02CD
          EC0930ECFC02C6FD2F81CBEC9B246B1C265D10626A243478A35272D3C5425163
          E0EA625E6F20CCEEB8BE7B520A5412013CFE207B78069F84587C9C8A2BD78842
          02B114B60133B67E7E1E5F7D534F74C2BF5A3BF92B20D45EF9E07B4F30D52F81
          8087C40439DC6E2F6C368F3826369A6FB57A1C8D4D064AD702B6B61DADE661EB
          5927369DF11152FFE24B055E072C19252BEBBA073E5129C922E58F04D73100F7
          E14F21494C8372CC0C70C9E6394EED86342E05B2C42C7009ED7CA6544A97E193
          A01370B96C66E05D058299B85E4B29CD831E5C3EB80B2643138C865EB602EA21
          21A5D6C6B0E7384E9DB506B999F1F8E39BCFA3F4E00E1A541EF2B20BF1FC331B
          58AD66EBACC728AE0B7905F92C6EFD7F0D82BF7A30595328FCA1D7867D23452E
          7D4FBCED07AFF7FB7FFC5A7FEE68F2C67CFA7DCB9ECB28DA720DFA461197CB62
          B18C1F89C6CB0550DFF004ACD427925173009900EECE26F4EF7A0E215F1BE984
          08B65C6FF3B8302621FD174323E3DF74F8062790BC7E2EE492106E1A6F244004
          D9BF33ED60F483CFC7B94D2AD1F7078381DD4AA584C64E889ADA5E6A6BF08740
          30767CF8FD27388337E6F5923AA09463B3B65ECFE549CD1A6DE4D71231975D68
          4172061E0A9DE7BF09A1B1D3058584F7E737CB020ED40A876C6AF4896F8E2A9A
          04AED30677E966C8F24A20CD24BE36D9490886E1AD3E01E5D0621A6CFEA0DAE7
          80058280A5051E7BAE01F33C53E2EE3B7F10BAD4A148C88863372D7B6D16987B
          6B7060C73B68A8A924672080B5BF17FAD821884F22E5ED715027B861B5989040
          E07BEED9B761EAF423A2E904E62C644E1EA18E0AFC733BA5B8022E42D61A847A
          37829BFE325954FEF75CCC4F3DFE1A5CB1EB47A327D24C5A019838341F23D5B3
          5021BD19BEEA5288334610A590D84D94C3567102C6EDBF80403F843E8F82879C
          529C4CF355862E66BE93D9AE47D772FB893EA5C0BDB37C908B429411FE3290E1
          50602527249471F9F28D8C7E62B41593D1B93FB2AA9973F9FC33FF00C602F8DC
          FD8FC984D22FC986557D77E332F2EBFD4E2E1E383B0A2E8E0C62EEE0A7334BCE
          F8E481DB3BBA1B7DDA9854D5E811707DF616A4B9A320CD1E8D90C10CA1544A7A
          A11F3EE26975E134F082BEC16CC061E880DECF0080C763B99A59BC29E07BD155
          BA0DA95316811350D3EBBC90CBC912C652F6A2F47DEEF82ED4549E6567E77C14
          31D5351798623154CC94ADCD818F5EFF94A2488F2D97CFE2E47BAF63DB0B1FD3
          0D70BF4F09FFE0C1CE415CBDEF40908471DD26C4A52EA0688E6467667FEE9E43
          81601004B7DE7E2B36393F05C6150046128D010F568F2AA6ECF8102E9CB6424C
          22934759D2EF235BCE25BBBBF566841C7DE0493560B4819827300E8F8C8FE672
          B941462C32751CAB33889B26EA302B5F01A33D70B5DD14AE7E478C3F149C2C11
          477F120C7AFE61FB38270E5FFBF7511CE2488402C523D4136F507A317FD7717A
          A9175F35C4E3A3CA7468447E76E1277B31D6C070925B82F266C9DC1B39FEC33B
          D8D547D28269409F093CE24A31D900F7A5E3440F3668C7CDA5BB60FC3F97750C
          C2ABB40052F622118774808480E081F9E269248C9ACC1E8E25E0913BA030B01B
          4C10F183888A52216023EFED73B12B765A1B9AF0E9CEB760F4DB49212761C2F0
          89907303B09458F1FEDADF626DC402FC61E7E0445B885D4AF6978DB4CC2A2AEE
          DF3002875D76E762CF30104AE468EF1E406C04E92291040A022487FB77FA6E70
          1EE8CF8F81010B9E7FEE79549FAC40D5342F3AA309040ECA6F1E3BA4C4EDAB8B
          97A3B9732AEC5E2905CE7078CD5670742A18F7BD0657C556F0B549833A813232
          0161B448202863B233F3196D64876F9F9B8DDB166761C0E8BA7A2F3CA6A6A0EA
          6C3AB336E477BE4C811CFA47EB3B3865871EFB3B7742A9306C9309C5BC457119
          93B6F1F87CDF774508E610A926AB1C4FEF258A20652C160CDEB18072BBA9CF78
          5D534CEEC7220E856B4F3714CC444DBF99A29B895372177A15DC178FB00B3295
          F9E3D9BA8198149E902C2A93F699C011F23CF05B5C0838CC08BB7A61A9AD8196
          523C0F8C0524CA0A12DA99F311450148647248490C897924AC8452E4A60D81C9
          D68DFB9EBF9D2CA61D9E4E1B665F37059D9946E88FF8314F59847ED83167F66C
          141797B076F56F1F3E5F903D6E97712752723D2E771026F300FDDD8FBE3E2322
          A222909C18CFBA9A2BD5D5686E6A66D3B44EA747527232BB7A98A96530ABB66B
          6AAA71F0E021949D2F63FF759815531721F60FD3E18A678A055727D578412C88
          1D8ABE1D242C57BD0071720ADC4633381A2DEC754730B0E7117237716CA8B9A9
          0D193CEDDDB141D11FBD18CC54DDFD1EAC599E84A57362D1D3EBB9BACB898010
          F0CC33F5D75D2792453C2895E8BA83A17FB01EE1E4E1DFFCE82F9831572A797A
          4EB0FD59892C76AB50AC381EBAAA5455D210CEB5C8F0D9293E24FCC09F55B282
          46F1425BFFB357D2C73CADB21921299C05863598FA01AB01A88162B90A9EFAD3
          906863A1CE4C229AF0C0DB6F0487068F712CB00FC0676D86504EDE582D84A3BB
          1B7E9B0719E326B280E1906E11F2A55050EA973387A0117A885120B84AD74C4B
          22F440CDC92A9C2ADD87709C1DAA4C11FE58BA01997591A8DD441471E134FBAF
          A9300778C644C7128D1038DD1ED4D5D7A2AEAE96449504FA8808F6DF5AB0DBAD
          C8CA1ECA9E09C5273FDFDADE86A1D9B9B87CF934766CFF8CFA4988C8A8488A6A
          317B0E645F1FD11E734A9BCFC746A546AB854AADC2E2458B31BA680C4E7FF40D
          C6EFBD03E1121280B6C17FE185A1876525B3D170DFA7E05CF71EA2E7CC82B387
          804796D763A88269C77DE00825E0F204B0D16B7364D16F16A8E27EE1087AD97B
          B6D883281E26C37533D5707A426CA6638040C0CD34991AF671B8926D0A65CC43
          CC4CEBDF054273CD5B3FFA0B9E400CABB96DADDBD6FD9244A21FCBE1F02F7FB7
          153D5AC3C596C33E6C3F1D40AC96FBE7190089DF89167DDEC7ED61CD75DAF41C
          0893F268804D2CEFF34422881432127F9411CF1DA120F0D267D0F3013B296352
          D0A43B44CA4448299A44648744B228681255B037B6338B2011373C93B2841F02
          B6884C82354CE0622A6B185C9821E085D96CC2217AD128A45013662FB77E83F3
          A173D852BA135E4717F27B72B1EBEEF7A04A8DA04EE5E0D2A54BEC563C9BD5C2
          0EB24AAD64A7B523F591506BD4EC963193D1844B972FB187894F9B319B9ED7A0
          FCFC69ECF9E218264C9884EBAF9F8B0BE5E7D1D5D58371E3C6B27514266B30AB
          B598429C5CAE64370CF3F902C4C6C5202AA047CC6F4BD01BCD884505D8E289C7
          898593E6A1FBC9AFE01AF10BA43DB8961C0E41444871517D0AE6BD8F8227D3B1
          136D4E02599C4AB737511331CFE51F5C68E2654E91256A7D72BE027A050F2E5F
          08DFADCDE0047CCDA1A0FF50982BB87DF050911F17469C8B271EFD315E18148A
          9EFEE7C8CCDFC91769D24918D938185C3B971CCDC3866FEC7875BB150911BC3F
          BF8BEF73C21E39B4345030759232B7981C8215428D02228AE4504F3BC2D60E84
          06DA11E868822C290D224D3264D151049018C8D46202055D84748090C9300127
          64041C63C529D2107E24174D44C06C67852433E002565380DD222664BD3B58C1
          A9206BCB1C8459DEB617DBAB3EC6D1FA0B6027ACC2265C275F8C8F1F199C7667
          4E5CF57A3DA431F4F8A907B3E8F4CCA993384BE97DEEFCC5645D6D484E1A069D
          0660E6C5565EB71AFB0F1E64FFDD85EBAF5BF1A354F35D2DE1ECD62358F8CB1B
          605821A1D4AA1994FDA46F6E9C7B032EDEB91906413672EF5D4700954390920E
          9FBD0FBD9FAE079F391D865DC740E0E7F22AA3448A7CF6803866DF35059246CA
          C50B0BF5D0901076F9BED33C64AF3D860FC9A3D953B36E58ABD18F453034F0E3
          40283BFEEC8F3DCD7267D06FFC381830C9C9862C1C4412D3E1E4ED29AAB71ED5
          E2689590A26F5037B0492EE4E75CB1F11AB1E0911445721C78E457831DE5406F
          1338A425046A1D24B171F03754206AD68DE090E7E5129C99D5BBFC5090B557AC
          6B60320829666DB4026D47BE61A7A7B3A7CC86A7CFC16A0B0604836060EC2697
          AD4292C626ED2246849C838AE6BDF8AC72334EB456B15A07315A709B8C88DC6C
          C235931760FED205C81A3614C9E9A9838768B1A34DE361F5A0AFBB170D9535B0
          9989A3057C981C03A4833CA469EDF8E4930F10139386E1C30A2010DAC98FFB88
          5E7CB870F602BBF268F4A89118915F002D518D847147D4655612C31DBDDD385F
          5E864B6D75A80BB401C38916C6C50CF22FB34CD969C5A4F1D3117DD28EB3B551
          C8BE7F3DCC15354489D4066D3C2C6737C36F2C87303293ADEC12F09DA3235312
          843CFE00534D642CA38A2CE42FE6F2A1A4EF1EDFD5C064D66BD84DBF76BAADC3
          8764CF7A59A51D762C18B4FF38108E9D7DE0074F328945CAE3E942F6BEED028E
          D4A852442C0B5C5D7A2695F06034FBF0CB172F11B5F920140D229D2900797A5A
          A26A47DDD2217BE06101E77C2D82CDA7D96561E2D80C48538751669080E376C0
          7E62277445F3285D4AC0A774C5CE3150348BB8834525066CCCF868620808A55F
          D3F302A44F9A0E1F296201FF6A7D81790F7D17B053B20C0824D0CA183AF81ABB
          2E7F88D2E68B83A7A23093FE8C8EF092A7693090DF24AA69A0CE97F390189980
          24D22ACCBC86CBEF8625E884C16385D96B4558E06556D6D00DD33524646685F4
          A5A608763A997C0BB618C19CE7D343B68C04AB46174BC2CE407DD247E906ECBA
          469633193DA82544E8E98778253032016C2431EF6366AC981B66561E9190BBBE
          781ABCEDA361CE58058E98595741FAA9A70DEEAECB705CFC1C617F2FB527929D
          F14DD344E690C3AA6196C97B2803A8A89D0FCC524341EFF3F8AF9275989D7758
          1C74F63CE3F2998C22B56E5AF8EF9CD4CA39B4FB87FB1A18752CE0EBEE928862
          EF00577C90C3953EC4860CA303C8EA58065C78E6D13D182065CF581F3623D080
          7AFAFB865A9EFEFCB220291EC1B3A720CA2A819499556490E5184CEBFCE0001C
          974F20A2783E3B53C86717C204AF4637FD9E9D780AB3CFAB6294E83C4C401048
          903A7E327C26178DC720108457B3028F6E56C94C4E491810ECC417559FE078EB
          95411030799B51CACCF22CA6AC17452F72D908907AC4EBE3D053D10C576B0BD8
          7AB25C446A97BE94B2C1F0920AAF9EB7C4198C8CEFCE3C661263F0CF9B0D06FF
          CE7094C337F81A357D86F7EA64147B90325333E7FE3FDEBE024CAEF26CFB3E33
          67DC6DDDB2928D6C7423C413121262248150A0B8436829A5420BB4E52B852245
          0A85B638040F840031E22E1B97B564DD77C75DCECC99FF79CF040DF4FFFAFDFD
          FEB9AE6DC9ECEEEC39E77DDEFBB9EFC7DECC6744C88002742D6CA1F86FF86A69
          DAB60F17574F456A8D1F91454FD37A171075084324C2CA228D026D7BDFAA7B10
          6FD906B9B9108E907C2A3DAFBD4CB0476329584D0A3C76F770E2246AC4E2E792
          8BACEB0C8931C998FFA9544A66572A8DA3D34C7F7E9F219CDD75EF796FF2B48B
          FD31F72382CA385314C4B7BDBE9E3779B92222F52EAAE56400021E79EA0CC125
          C93775467E1129414AAE99E29F7BED1E65C14868474C22CB554316744B0BC79F
          2B8FE7822E089D75B08C9925059358C6923FB7A8EC100E860CFCB950B339DB88
          CEED1B48B3EB3168F2346970955A9E893928E42C049D242330D0171941CB3BF8
          ACEE43ECEF6894066A4A48C0C8518C2427EB0856D1C30C863076E8484C2D1A8B
          CEADB5281A33186B0235686DA9CB0CE7927AD458BC58FCF6627FB3C6EFCB00C1
          9721D84C3C576A5B93FC235B6439BE0E2248953BE7FE2DC3F773355263322296
          570F9B838D973D81C23FBE8B822597C37BC64FDB4F4492AE2B6DB2116D0A20B8
          E9E710DC44D27BE38B95E9D85A91CBB4BC770F4471FFBD5370CBD555444E331D
          674CC27A3DDE2AB7ABBD32113CFB5B19948BE8EDBEEF3584FA9A7F9EF7A65CA6
          472874E8F5482A1091A56D9FCA113B9096A609D1462143F00793B8EBF7C7100A
          0BC8CBD24A4119B670F150609E73E12F379A965E0374B17234F2FD0A99241DD9
          222BD42AE26C3D10DD1D30554D267218CF4410890FF092CF974B848F3FE72A4C
          76237A766F819AA0B7A8FA02A40261C97DB0EFB3CFD411313493AB6A6CFF009F
          D4BE8383ED0D74F12A36583BF3C07D4E0CAFACC6C5C3A6A3B5BB83E096D023AC
          C0867B5F47DC13C6B5EB7E8F376BD7C2EF74D3EF7CA78782A1010B5D922B9350
          4196E993CC2C38BB58CDD78BFD6591874CF6F57BEC6705827F9613489F1BD8C5
          FE8614BFCA94A683948A34CD2DE28765D0205CA21B81352BDE41F59B87A1C829
          4094C8B1D41341BFC4F222699505E96C19823BB7C1F8DEEFAF52A8F8F745729B
          7132DC6EA7803FFC641096CFB3A3DF953867B3A4AEE4FAA54A15E7F4BA9AEE13
          13DC2FE572C599EF2D5EADD9F2FBF3DF848A2EA0F3B9643A592F0872AF252BBB
          8693295A588899DDAB9E54C0B69DED78E9BD5A74F485A4A11732F2B1DADC9C4B
          C5FBD67CAC24DF2FA39B93328932EEABBC816408AE6E32842E9846902190FCE1
          B98C2128CE1982EC9C21B01895DE6A40DFBEEDD01AF42818391EA95044AA8764
          64514544C8AC51A2A3E7537C7AFA35EC6D6B90866B83B882F49049B6EAB3B271
          CFEC1BB1E6F61788AFF6A07C58255A4F36C33E3C0757BC7837D6D46DC6D1E387
          C81D98BFDD55C51633119552910BA6CC2170D14803B6D9F3B310D234369DC5FE
          338758048D0C252271844CE03F96297A640F89649ED29285A5D3174A099E7EBF
          130DBDAD90D12E65675A3184ECE9ED86CFE50447EE6BE96557807BEB24563FB1
          018B0F84108971644761A9E228290DD660E45D444A63A57B4CC0F5C7CB6E0AB5
          B6BDCE133165E7503CF6D3A9B8F5B202B4767690B8504928C6C9783E1A18789A
          57DB5F4AA6A277C64203FFE464EA93E974F2FC9AC5BABD4F9D8F08BC0E3ECFC1
          E7C9623F51EB0A67CB9491905265FE73FA5C4D3C0B29EBD431B4B973D1D71F81
          4117C5134F6E40DDD9C012D3139FAD5165958073B29032F7FD86E0E986B98A5C
          C7BF32046670243DFBF66F838E1E74C1A809487E65082CD1A28173601BD6D5BE
          40C4B02E334797B903466A83015266265C77D31DA87DE0336C7BE973ACFA681D
          AAAB466043EF1EECE04FE3E8991368AE3F452BEB381F2799514482B86AFE55B0
          9D167062F301A96C3C1E8D43456E73C23D0BF1DCE98FC9D81358306301715185
          74169440DC4A908B08C62344D82298523E0EEEF74EE1F496FDC8A92A86699883
          363FC17D38015982D87FA905A95C2D8CA40CCC72355E9DF300D4F9A33073CD71
          84884B2462B16F1B02A182489233111E40CF7D4B6EFCD54D53DE9875C158E26C
          2E548FD2434C293130508F4C1775260B2924C58F6432FD8B71FFD94BCD39A3DF
          335807ED65EB98FE0E2A702D27DEFCEE53201967416FCFF6A76572F7369DB6F4
          529952DDAFD19A7E2B4A15403C0204B91E5ACC9CD20B5164D342618962FD9A2F
          70EF6F0FCF8DCCBAE60BEB553F852CA60247D24BA1C439D7C093212891F6F442
          74B6936B98944938FD2BD7E020D7B0EB0B22777A948C9B82A49F1902E3711AE2
          0A516C3DF920DE39F07EA6568CD83F5861A7CF8549532FC69CA153716CF54EAC
          7DF02DFCEC9E5FE3D9671E078BC23FB4FF393CB999DC216BD5B7E69E2375DF79
          4503185D3D0553A325F8DB8F1F026730C338A29C163082703081F977CE45EEBC
          1CC8C2C4975637E2D4DA3D50EAB574090E288870F2443CB368E14FADDD8F631B
          0FA17AD97518B6E872F83B1B51BF613DBC7D2EA84D0E944F1F491CC683D69D5B
          E0719281681D18F7EBE7A01B3983E8AB924D5E3DD72E97969250699D19A256C4
          D9D75EC0E5DCC12BDF78F1EA0FE027C5E3F7A12BDA2325C27CCE0652A3DD4493
          5499F235193E5091D4E245214FA676DC356CC2E5276420028AC47738C2B1B7CF
          F38D6982C488EFE83D90B92E12C5F438B536E7CFC944EC59E6DB78859A48389B
          1D1C83C63E0146823915DF33361AAE75DE74F30143C3F49FD69A1C16A88A4642
          5D542E95AECBC84F4A75844A127B1137E24DC7611B779154C492218BE237C8A2
          9821975C8AC8A2099D4C35A8B5289B3C53228B0C66ED3A2DBCFE1ABCBBFB97F0
          EB8DB0933F3D78BC861C5A1ACBE75F8AA28815AF5DFD30FA5BFBF1E36BAFC3A3
          AFBC890232C8D303BD58B1FE3EEC6B39488A42FF03CC8DDE0BFB3061D66CE46F
          0BE1D3673FC5D09F5C298523D271414AC387FABD987DD514B4ACDE82BD2BB792
          32627515B952C7549250231D8E82238408F60F60DA8F6FC6A2FB9E84AD540946
          E1FA3AD9082251EA81607ADFDDD10F1FB935B98948EFF04A788F9D21642163CA
          AB409C882E1BB8C126CFA749CDC4FBDAE9D91D444BAB133FD11FAF7EE0A7A539
          9E3E5D803E6D8FA812A0D5399024291A0CF467DAE9E51A5A27CF0E21D6991013
          C1B7C9A215F9A5B33EE0E57C484C7FBB6C913B55F3E87986208AF191D158E72C
          85CA624E857D0F29B5A63B155ADD3F587D4224E8432C1492863BAA6CE3A156F8
          E801753E65D68F7DEADA59B7274F5EF77CBF7DFE1C24D6AC82927CB4A6927EC6
          5E0C8E248E8C641C9F74217C6A27EC93974A49A84C1C2163084A567CCAD0439E
          96269C31D5D0B57D3D94F420CAA75F08C11591D4989E747F28DA8940721BDAF7
          34A0F36C2D92238D281854021CF6E2FDDFFE93C05A8577366DC2B28BA6A38B21
          BD2F84F74FBE817F1C5D05A79788B3DA88EFEFA2E224F23674C2048C3CAEC0DA
          D777A068F96C24FA9CD2811F2CECCCFA20A2A40E12DD7D50936F334F18410610
          05D3E852F3AEFCCBE155C465882FA5226918ED0E380AC760E8ACCB20D7326320
          F022F64FCB0CDEAC02790A49E57AF66E05975B2A4DA24FB20E261D8FB8AB07D1
          C68348F47741397F195C078F22E7B12B8A3EDFF9BBBC2802CB04D1F4DB6492B7
          584CC51ED674ABB139C8BDB3339F62CAF6FA1D6F6895AA3F85224D01B5CC7257
          F1F04B1FA6EF45C4EFCCACE4F66CBDE93BEE91ED48FE5A95523796D7E6FD5C8C
          79AF270FA81F32E9EA1764B0A3B36B3B5A8FED2418D259B496117A24CF0CAB2C
          2B98B6697FD683F7FDF40FA6E8E4CBBA75F73CA653F8C9BFD5EE80E8EB25B8D4
          42933F14DAFC61840A698476AF86A59A1021AD916A10BE74074AD9970A8395AB
          89B0E419D1BE759D144DACBCF062C49D198EC0024E5ABAD14183E4D8F1F67A1C
          58F90266DDB4085B3FF91CBB576FC0D5D7DF88E5B7FF0CFA8242E4E45AC18781
          774EFC13AF1E7D17BDDE810C97F8A1170389A017172FBE1CA9BF1DC3B6CF6A30
          F8F665103CFE6F3F2742069EEE4B469238E1F64BE3772445714E21A49169C249
          91BB12083D63013FFD4E1C65D5B391377432A95A0E8EA1B320D39910F2862012
          F748D247F88E6E826EE23C089C0AB1EE7A44BBCF22C18E2830D0E292FA11F3CC
          703FFD282AEB3F2D7FF2D9DB9AF3EC5DF77BFC427F3C96D02864F195B485FC32
          753EB9062D710CDF9584DC7293D9FA792432B05C8CA7F40673E1DFD8229FC711
          9A6A1FFEF61B0C1152C2602122CC1115CA2E5E2EDF17F1F5FF4E6B2EFD58A3B2
          EE8AC6FA118BFBC87F05A62A65A61295DA985331ACEAC3555FB477FCE1A5FD48
          EA2D27B9F92B46184A2B2522C8250248B51C07E7ED96FA0A94D97948B636206B
          D672A888A8B1FC828C0811531DACF790117196CEA6AB9042CC9DBB3793B18818
          3C631EA2A48F55729954BFC0DEE3926964E5EA904D443A492EBFB3B185089D1B
          F3678CC791DA0EF477B560C1BC99A86B6DC16F36FF1C27EA7603A6ECF30D4162
          5571C692A55D2CA78BB871D2A5D87CE573F01064172E9A8E84D38BF32A59D2DF
          8C35FCEB176BCF938A6EC91019DC27E93A7387CEC4843BFE8E784A26851FE221
          3FBAD7BE06EDE0E174AFAE4C8ECF9407F9A051103516A9CC3DD4DD8EC4E77F73
          CFB1FB4B6EF891235E92AB280F47530B0451E14AC45207941A7363CC374084D2
          C9EA17EEB4E414E786FCAD1582A0F258738A4EE6178E7D8DD658487F67AA3D57
          77F2EDEF5E3233778398EC5A1E0B344F415A11D2980AE4DD4D27F7A752AA7759
          5790D1CA93952B2669740573C564EC8452A53DD9DFDFEB7EF8CD2E7FBD76FC46
          9457CF33558D273E9090328C2A93597201696F2BD23E37A2C7F741575C48CF2F
          098DB5888893051A73360C362364495E9AACC66232E401E03A7608BC1847E1B8
          A9B4D801967091FA17947236C3210D19B121595A26A14456961A46BDC4F5D071
          FA8494E19C376B025ED8F277BC4A6EA1A2BC0A677ABBE0EA6967CD836C425826
          BC4B2C5F65B4483E99C50D1CC387631611C54F6FFB1B72AF582015D730E9FADF
          2A69FABFBCBEECDA662614EC3D836197FC0AF6D2B170D69F961A60FC8DF5D08F
          99098EA4276C83889BF08891D210E264F8262D7CB535081D3EB8FF2AC3F6C977
          5F63A81054E545445C387FA0675E76DEE4D7B5BAD23A97F3009CFD7BC9A5DA2E
          A2E7F34E2A9D68B4658FBA33118B2CD0D9AA9E96CB95C9F30CA1BEE6BFBE73A1
          3222DFD1496945FA3A953EEBAF036DFB5F55A8CC8EACDC612B546AFD169FBB17
          7E62FE1ABD6A28C1D95D724ED8A8E2C5896E7FF2E9D7372BBD479325AFF46973
          6FB6E6E5415D3595D8908BEE4F269DB1C4CAD4341615A2B5B5524651496B911C
          1820A420FF1A8E4B296AA5211F6A35ED78B506C6BC418813E152A4A3289A3812
          2C5FC2FA4314DC392542FA5BCE3A7B442E5301CD3A82595F834183DEE606929B
          214C98320EA73A8F20E26DC1D64FD7A1C3164441711EF674D5D3C33A43FED981
          519555983B68125A5D1DF864D76A241C565C5F3C139BEFFD008A6963A5CFFE4F
          4F6F61CF391672C1602946E9D49B91D2E888E1139C0763500E1B8D7898A46830
          8C149799BF94B6DA116F3880C0403754AEFE8F4B9D47973F736F994ECD07EF8B
          8BCABDD188B75AAD2DDC5994377BAF3FE0858F150C87B68DF0F69C38995538E1
          7772255E4FC4F93BCDB953FF2493C963E9EFB4C7737DADAF7DFB0D36A55314D5
          CEBED65F692C8EE783BEB6479DED07EECC1B7AC90853D690D37DCD8DC49A07B4
          F67CF9750A93ED683A12B22B445FB1C017FCFD916D0E9C6EF2FCDA3F71F6E3AA
          DE26A8CB274061CE832CEA976A06D851356AB3516A6E51AA4DB08C1E43049291
          4352216E8F54CBC8D2F391AE33AC16073A6B21122E17C9C67E18F373A1519988
          40DA0809D867A9A064E56226230C24D7D8485F4E6A79237E45C8EF6CE947C83D
          80919347483D08E43DF0EA332F41A315102852E2A8E21444FADB59B602A4EADD
          D8F9E42A544E1F83FC6BC622A24E21B8AB1D9B7FF73E0AAE5A24EDDFF47FE8A4
          946F3EE7C8402BB2475F8C51B7FE09C4C1E1AF6B4094605D337C2AB9896066EE
          122D588A272A26F86803ED46D83E0879C7373C3EBEAAE837F72F1D44DCE5C065
          625AC11B4C851F3435EF7FD1A4B7BF28E31CA739798E3A95AABB2116692D48C6
          6243D586A28F93C9782941CC3EDA46DBBE4B94B9D387FFF8DD4B64AE6112C1F6
          6262F5A722E1BECB950AC79178521CD0158E5B19F3B7C5A2EEB3737885E2E6DC
          FC8957057D8D2BD44A1C7785B2F7FFFED890B4DFE59ADFAFB3AD579790EEAED9
          00E3FC3B688159B859900A4CD576136247B74984D034EE42A43D0129EDACD0B0
          3A4525ED761E040612ECA76857245CED08B5D6C2565C8A38AB4748C7E80AD9E0
          498E0D22235FC812518254D0CAA275ACAD5DA323D4210216257D5D3166187D4E
          6684CFE0A23CE4D27A6E693C85E70EBE0AE5E11E786A5BD1DDD64B124D09EBB4
          6A0C9B3916E2A946D4ACDA04555E360A2F9F27B9857FA762F9BFF5A26711EAAE
          43D5F22791356E01C88BC27F7A1FF10001EA91331023022A4D5A61029B8C3DB8
          FE35C8475E20DD57B2A3EF861BABBD6FDE527AD21C55664F10C544493A296BF7
          FBDBFEC0C985E715BCEC3D593A95A7D656DE1989785AFCEEA69BF20A673C23A6
          C33A21153E4074FBEC77953377E4D083E719425A4C0C352AB493395EE5EBEF3E
          F22BBB6DE81B624A96E2958A2FC2A2B7C3EB6DBB5827D73E04B9EE90DE98BD4E
          9E8E67F577766DDDD43BAABB3B5D6CD9D71DED964DBF5CC3B71E42BABF03868B
          AE26B21890CE5E5419C810CE1EA5BB1E807DCA022917FF751533A46412EB66E6
          89382AC9C294EA189C355B513EEB52092D1801651961D604938E66E614A685A0
          147F609293552F314714767BE16E6B46765909C23E421A068542E6B89B628311
          5B5AEAF1FA4BCFC0A4D5C33ABC0C2A6B669C5FC81540DC1F664176688B728838
          B3DF4BFE47F8C15736C04ACE7A1A612B9B84B1B7FC8DAE2F0E91DC997BDF46A4
          485B6A474F47CCE393662E893652153B3F84A836831B3307F18DEFA08C57565C
          39F46CD385A56DB69022E7565EA53DD0DB72F451A556E33118F31F57280B768B
          42A220451BDADDB7FB499DB960BBD53EF4B964DC572CA6531B88B8C6BFAB9CB9
          93C71E3EEF42C97F28B42AC3BC644A7406BC4DD70A61CF249363D8D38964F454
          5A9B7352F4B92F9273A1E509D13346A3B63DCC71CA21C576F50B6F1F35475EA9
          2D434C9E3C94303AC659674F4364ED2A720B2998665C99D9FD2C69948E2076E6
          30CCA366484A41F2F7E742CDBCE4E77969A1993B512A93E8D9B91A25532F2682
          68233E10C9049C4456EA4E8452CD4345EC92451CF973BD112AC60189F8F5D49D
          C0F0291764EA2501298AC9965345FF534E5AFE376FFC032BD7BF87E2EC22290E
          20D17256ED441FC0115315A331421D01E79536FF3FBCD840AC58C00985D6800B
          EE781D69B50D4137F9058241EF215248C555803117422C0E59B6110192DA8940
          14DA4BAF866BC73EE883AE96895CA26C414517E65FA0407B5FDF1549313624E8
          E91CA3B5943D284FABCA7845DE4101210B97EC5C94887A8A75F6215FD0E6E215
          1CE74AA7F8BDE9EF39FE866BAE7DFEFC8B65858FC9E8B878223C34960A785450
          0C91F10A7B241DDDC42BCDDBE5F1D42F89CDB629E4294B38E8B16BB5FAB343C6
          CEFBE895F78EE2B557B74336FF9A27DB148E5FDA8A8742612392B3F743A943DA
          34F32A300CE4C939C7EA76C2346C3CF1035DA63005994564C6C0E209AC0943C1
          023204F99E137B60C82A8425AF584A066522919C74C6A3D41473CE0878E9C04F
          26419580E847D7E943A8183793169897663471B2B4445A5966B828478DBEDE7E
          5C7FCF65D2419C2C68F5FFE3C50239C94810E36EFD3B4C2543E0EE0840648345
          4841F94FED876AE8340884473029C9083E22C40B413DF37A32D4303CA70E224F
          937C235E77F8C6EB6664E1AE191A74BBC2E5427260A1C8253B125145613A1D11
          B974746B3CAD9FAAD72A6B1291814B49EE2F32592A9E37984BF66BF4258D6C82
          CB796B5E77EC9FDF73B92C10122EB6583455037DF55724A2BD6A47C1AC6B3D03
          A76EC8C91FB63DE4F72D0B05DB17CB79C35AB5DAD2A5902B7ACA4A87EC6DED0E
          C41F7AAB077DF963E63426C4CD3A5A25ED988BA41EC6D8913590112332CFBA8C
          60D808FFC64FA1B1E7C048C6C08583527859AA4C3A97799473722996C0065E78
          4E1E207450226704F9EF4024138666C52B4C4A22539F20E7CE85A959991DAFA4
          EF05D1B0733D46CE5A4410A767A3C0252EC2DC0EAB6862BDDBA5C50AFCE9893F
          E2934F56A2927DF67F6366F1FF1B1C70C4693C44828B507DD31B8827D24824C8
          10945A892047DACE423F7B29BD17837FFB4764204AA82E5846EE4281F8F1BD08
          10E92E7638AEB4B4EDFDE02793DD2834A78C1A43B155A1926BDB5BB63F9D0AC7
          461872CB7F9B4C7A7925670BCB140A97B7F7E47BB6DC0B1E852C3C60B456F8B3
          F2C7AD1312E797AB711D6D1F9C6F06AC4B2619AE8CF8CF4E53F1364F47F3A677
          74964137AA9416BD42A32D4A8942D8DD59732FAD97C19C3BFC1A211E71902BF1
          10A758B569AF0DDE00A75E5D3EB7C3DB74C2611D359BD0400D855D0BA16E2B92
          674EC236FF32A4BD09A4498A9A464DA3C5F5660A5724684F4B5145860A528B96
          550FE7A1ED927B299C3A07C240586A8261B90829CDCDAA9A582D25973E97BCE2
          A483C2793E8AD39B3EC6A80B17D3CF59A53674566F2DE3B8733525224C46521E
          F238FEF8E75F60F7FEED183468B0D4D7F99F3A4BF1FB0C214E6EC1905B8151D7
          BE4C8690928673B2D1BCDE233B89145AC83564C3F3192168613994A3E723EE0A
          21AD942170681D14E555890BCEEE2DB02903CE1F4D24FE25FA4A54BAC18B95CA
          EC9DAE9E9A1DB2140279A5736F1A709DFC91C35ABCCADD77E24FBCDA516BCFBB
          F896907BF7AF34FAE20F7895BE232D9E7FAA0B17747F72BE21D0834E8922D77E
          76EFFD7A63F9DB423295E3ECFEE223936DC4B37121124FA753FA54345AC2C953
          A3547AFB1D51BF67B4C1616A0A45E57B577EC62135E0C2A9593F7DBD292CDE60
          F57740337909D27D4E68F21C107B5B103FB51DBC8E8C439F05EBC48B20124163
          A1679E651FBE4C4B7399594EACDB29D85C8BB8B30B25B3E6432406AF6028201D
          FC9D3CD73DCD4BD294E52C246420435028D268D8FE29065F3083DC6F16B8645C
          4A9FB37A91CCA9D132248804E638B430105FF8C76B4F61CD67EF939BB0C26832
          4B6DEDFF1B8610F3F4207BC42C0CBFFC11F83D6108F104E4D916F88F1D40B4BF
          1DA210025F39097CE130C47A5C4867916B3DBC09036905AACA4AD74E3AF6E162
          9004BF7292077A8D5C16087BEE24986B57C8D4152A9D7D202553AC1B68DBBDDE
          6C1BF44422E29B64CCAAFC542ED2B688B48F8B2463CFD07D7F2FE4716D756F7C
          EF35B3E28678BC676A32152C309906EDEAEB3EF600AFB37CC609B119E150406F
          3456FDDC688ECD9429061F72761FBC5BA9E9F94730A677FDE3330D647E2FBCB9
          232E3E3465C506F5F6B72439C4E2095CD8476EC14ECB1646ECF866444EEE42F6
          C2EBA01B342653CF178D483D8299669814ED56392D2E438A08BC27F721BB7A7A
          662A4AFA1C1F40E6E758228A753BC8A5EAE7B4F4FF2AB51A1D4776C3513408E6
          AC5CA484B8C42964521DE2B9CA31321AC6050D7A0DD8F925DBB66FC78B2F3C02
          9ED48A5AA5FD8FBB098E4870A8A71EC5336E47D9FCBB1022B5C0EA24233D0DE8
          FBF825A8874E82A69A3686C24CF2918C40AD472AEE47F8C03A4467DE8839F5EB
          AF2BED3DB932A433E1FA8580D5C0C3E5EEBA46A64A060DC6BC93424A1E73F7B7
          0C1763CE7F580B2794BB3AF7BDAE5599AD6653C52B8242D6C5EB4DC7D329E1FB
          0D61A0FBFB0F006599C658CC591C0B9D9D9C4EC6556D4D7B1E19547549595A18
          5811F0FA86CBF8ACA764E8BB8B14FDFA78243498975B9FD72985E4DAFA4234F6
          9BE190FBB07DF4CD1DFD6E67A1A6610774736F02E7F349BB582653415F614060
          C3E788371C8469CC38428B61D0170D463A9C962A9D79FE5C810AF949D62EE73B
          498B5A554D8BAEA1C54E4A0B2FF103881282309228E3CE19035DBFC6A841D7B1
          1A68492A669755928A88490626950D9E93829C74680E1B389E96CAD1460ED1E0
          ED0FDE23C2FB040A089AFFEF674DFF1B4640E826443C48040318F793F7611832
          089EFA66443B6AE1AF3D0145D15098172D47A8254C68144592E5BDAD5644B6BE
          8578E11868F38604271E7E27CB9BD0C58A2D71DC3DA70F327A46C9143FCBEFEF
          C80979CFDE245799399DA660B552C5593985BEB9BD61DDBBF9C5536F57298CCD
          5A5B85DF681B71382984BEFFFA067A77FFC0A5CB19945AC29EFD0BE4BCB6B6B7
          E3F863D160CB88DCD219F7C513093E25464DBD67763E9B3B68C2137ACBA05532
          DE7C988F77A3C3AFC6530707C3908AA0459D7D7FE705B31FD16E590D19EB511C
          3F1764C2D2C2F21A13C48126F24DBD506639103BBD5FCA521ACAAAA12FA804AD
          2D11FF80C4170CD966F4EDD9088DC182AC51AC642D28F55D7C6D0C6C77272583
          60C6C0866919AD5A74B0E6185E8D422282F16054420BEECBF243768BE9AF0B53
          A563728C3A842321FCE591EB9188115BD718F0FDA9EA7FC702326E88718314F1
          9431373D06435E257A766F8310F0413D7C02122E3F448D1D8A82E14884BCC4CF
          E8E6496D454FED42D2D90D61D155B06E5BF382BD69FD4F3AC51CDCB7C0824BAA
          E833D585C4679C39FDDD8111EEEE7DAFE94C0A676EE99C1B3CEE3397057A4FFE
          5E672D7FC9963FF5F6B0A7EEE7066351932367F4E74222FCFD97D9FF3D7184CC
          6E613DF4B0F7C59C77E92C433FE4A0E96B3CFA4C8BDE5CDEE9C819F59C4667DB
          557FF48DC641950B9F375A721F55EBE57DEE9E7EA3960F065ED8A8C5FE2302AC
          9674D6890B7FDAA5745814E2BA97A01A7D2194F9433293D558AC40CD237A643D
          AC53964ACD189186FDC42F9AA050F2D0E454C0583A0A4AAD125AF2E1BDDBB791
          774BA270E65C24DC5FCF5B924973DE339C81A90CB9241109716D7A74936B9071
          3C8AAA2721E68B7E557CFC6531313B3DE5CB30110305835E0BBFDF8517FF729B
          348351F5AFD2D5FF72ED392912299031B1FA84543A21F56B16552F838988A2A7
          A509BCAD14EA21E391260EE4DAFC31D42366B0C951920B13F55608DE0E44F7AF
          857CEEF588C7D21877E4FDF298CBDF3C65781CD74E4BC21994696D79C523A3D1
          4097CFED2E8C064E3D6E34177F61C919F1D78EA62DBBE899D45B7286ADD66AF3
          DB3DCED34BB3B3CB5F359A0B5A933FD0FFC845DD9FFFC0DDB0E49C0EED9D87AF
          4F27D39C4263A9ED6EDBB99098E94C7BCEA81D5A5BC1431DF5EB56EA6D052D3A
          7DC5D3C9886FB13750A73269C2AF36F516636B7D35F2145E6C308E79A9BE74C2
          AD59BE36C4F67D0EFD85CB215739208B105FB0DBC9FFAD27D2688469E4D48C6A
          60FD116DC769279C914ACA558424869261E4F38D48F476C03E721C927E5AD414
          B907859809503173E0BE4406827B827456F8DA7B7CBF441E0BABA720EA8E484D
          38DCB91985E0BEBDD359E5515E910EBB37AFC3FBAF3C889CFCB2FF3947383782
          47A1D6412054D3E96CC81E42A435AB14F1B4069AD22AE201AC70040836D620E1
          E98376F2254488DD10557A88B208825FBC0D55F5C570E755A0E2EC913533FBF6
          2E3B13CBC525E35D583C6E00FD01B5D2EF69BF5FA92DDA69B4966D4F86DAAE8B
          8484C349B9A52E1D6F7D61A073DF7CB3BDE2335BF6D0F5741BD9464BFE4A2111
          C20FF63EF63B3FFFC1FB91911E17C21E85BBE7D46D8EECC10DCDF51B9F8A857A
          728A865D77595A11DF2BB8DB2E49AB506A348D5F19F5F55E1A4D74B65AED055B
          E40A053ED96546C415454CCE15BF96B5A44D956783B2AD16C2C96DD02FB81972
          8193E201697F1F926D27609ABA140804255FAF369AA0D07248F6B623DEDB460F
          B31B2AB212A61E0A591CC23E047A87462ABB9349430E324D2C123A488126FA0C
          DADD030DC7898587513C7E0AE2BE80F47D162C93EC4032846F0F4FB2E5A8F0C1
          2B8FE0D8BE4F61CB2AFA1F1902CB2A46A31EE8D40E544EB8867CBD40DC6724D2
          06337D59914A7052910A6B5593594836EEF914B29C32C87389C7C40542031542
          EB5E81BC740CB86113E0E9F6636AEF96B1B6A4FF586F5C8F9FCCE77121E3D611
          15EA6BD65F65B4E438950AE36097FBCC453A8DFD434E93F55E7FFBB6C3F1604F
          F5E07177572513BD6542ACEF344479CBB97299EFBFEEB6FABFFEE04DB107C12B
          354824824B4512ADA95442D67AEAA3ADB6FC0B5F70640DFB495FD7F67F06BCED
          9716954C59A9363A3E88C5D48225BBE2A84115C691A624D61FD7A24013C7E7FC
          90970F294B6F29B1AB116F3C8054EB611817DC4EA82012F4CB10DEB34AEA88D2
          649783231F26913AD60C4B8BA93428C1B13131820B7D2407591BBD6DC478C448
          866AE9E7750E33219705861C87E45ED8FA927D494A22D4D98581C6A3289FB698
          C8222B5DCDC419BE6A3DE0BEBE4FBDD10037F9E3957FBD2513D5546AFE4760C0
          C6F047FBBB3066C1CF913B6521E23049B5B5898880383BD98D4DB6653904E22E
          ACC135787A2FF493961227A14D411C29B0F115C8B28AA11C79117AFC22AAFC27
          3F9DED3BB0B459C8C2D8D228AE9D1A41384E3727EAB401977BB24CE937F434ED
          F9381C7172058366FC4EC1AB449FA7FD62B9CAFEBCAD60F0CE74C47D714A94D5
          F21ADD917F9538E3D2E9B3DFF7B6B44B12B11441665CD5D7B17561528C87545A
          F399B6BAED1719F596D969191F854CE17475EEFF15AFB6851CF9E3AED29BB278
          056FDDADE6457780FCDAABEBC250B2317342DCBE7AF82D3D0247FCD54C9058BB
          0DA9AE2618E75E07A5468DD8C98300218379D61222903E2858FD020B1849A56B
          32C94518D8419A67EA485538E11839098133C7908ED2F585FB486225A1D66921
          67E969B90E1A9B012A830D32420A77DD6154CCBF5C3AB094E59D58079C2C73CA
          DE575D6C4C1C58B38196DA5378E72F3F81DE6C91661BFCBB2F56ECC1EA071C86
          5118BCF86790173B10EC08D2664C4BC3AD446938A74C9A160F3260FF9E0D482B
          7550932C6603AE429BDE8668B6924B588CB0278C08B9BF1F057795E5F0A91667
          5287D9F9A750AE6F81372A1DFC35D69A5B5AE0F29CD2395BF6BFEBC8A93EA850
          1B76077DCDBF34982BAF0D86BAF30A070D6B4C84D2F96A73D9BB4A9DC927FE8B
          B3B5B9BEFED6F3AD9AAE58A5524833848130D755BF323F10E9596EB41435F7B4
          D554ABD486B4ABFBF043F9E5B37E1DF2752D0EF8FAA7E5164FCA16E2FD8B359A
          92133AADE9B05E2DE2E58F3BB07E4F37CA1D3C8E942DBEAF7DC882C7F29304D1
          360B19C376A4DA4F92315C4FBBDE8CE0FA95308C9D49CA210BF2442CD30CCBB2
          895263AC5C0A2EC95261044EEE8163F25C2869C74AA168B988643882D8401FED
          F630885049655A6AAD4A2AE9F63537409F9D258DA853922E576AAC44127930F7
          C58824CE4D203399CCE8EFABC7176B9E824E6F9620FEDF7F7188479C28A9BC0C
          258B574893565262422A496723EF584A9949D5944C41123184E0C1F5D05EF823
          A9213AB8F12D42820228C62C44CAED458FC6828A136B9E9E3CB0EF174E458E54
          ADB562A10F5A36884C72ABDC3205AF562639EE83BE8EFD7BED8E616BC3E1FE8B
          E311D788744A0C19EC25FF65B19575A7E2114EA9B56D108884B2BA0D36783C1E
          17BE92D05F5DF90B2F9C3FA65F922F8408D75D351A6687559A51D4DB73682127
          37851242B0A8A976F55B4A85063A63EE4EB9D274544CC6F8ECC20977FB3D2DB7
          2A65DAA0C152FEBE5927E244931FBF78B50D4A790A59CA24CE4EBAABD1651934
          D84A3E544E9231D97210C2A93DB02CBD01C91E0F52A4A9CDB396427479A58659
          C945D00EFB323EA02102E8D9F319B98422184A47201D21A36253D9D8D02D4216
          399FE9A6964BD1C3A4D459D67F701BB436073865667E820CCA0C32A4A42C6BE6
          600F76CA0CF192835B5E41CB991D3098B2FF6D7EC0E204C97810A1AEB3A85AFC
          308A165F097F975F6A97978C202D93EA0B92AC3ED36E857FF77A70F65C280797
          C1BBEA35C82B46821F7621A9260FFC84125AC1DBBFA0F5E34299DF2F0CC45598
          59C563FE54B564042CD91EF434DDA3D7DB5BE54AFB80BBEFF08DA994608DC7DC
          F383EE66AD25AB724B41C5C53747427D93B864FF565A7457618103CD2D1E7477
          4768831B24E3FCD6F5BFFCF22BE7DD1493761E5F107E771B56DC3619398545E8
          6E6A3085235D0BB4A6ECEDAEAE23BFEB6D3FB042ADB541A3B3F7A75211979CD7
          7766158E7D3C1E764DD25BC6BEC5A9D4DD363387536764384902A04417C5EE80
          AEFAAFFCB4C3D9EA14D42C8B48C6200E3443A8D900EDC4A9F4DF5DD0148C03AF
          B312478864C2C69231A4A53C81DA6A46E8F43E88A100B2A75F2C550F6726B5A6
          25D4E0CE3572498759B099C474C3AEC3DBA1A5076E1B3104C9083247174AC9A7
          AFABCFA416440287354FDF0C1FB92CADD9F16F19028B1826821E90E743FEA0B9
          E4BA164331A80C518F57AA8E10CF05ADA48A23998A8C308A68F3012289F9081D
          D805D5A859E08AAA209011A4C8A83B223CAE559CBA78465EEA8B8E980126990F
          97941C978E0062E75727A29EC9E954B4542E57853ACF6CF94441325724E44912
          9752694C872A465EBB282DC62A84A8178E82217BC3012F1E79E243ECAFE9C0A8
          AA69183E74B03466F95BF7F08FBF7F8D086C6A17CB3358AD5669F0C4DAB55BA5
          C10B77DD3C11668309BE40DBF854DA692117B1C9E7E978DCDD7BFCC7E964A440
          4E32331A7623AB78FCB30AB5690B17935BED15D357CA542958B4696CD825A0B9
          992ED2007C182E78F84CD6B8076DE9201140110A1BF9F2E80012753B88373443
          55320EE60B2F42B2D34F24F0CBF98B99D80083725E9182FFF017B08F9F27CD96
          9131AFCB8992B17C194296663A11AFD0E7EAD1B5ED3329CA50386B21220341A9
          33EECB0667A61CD87AEB0C46789D9DD8FCF28A4C2CE2BF9192FEF20476565F90
          8C0611F37B31FE27CF4016502365CE23EDC846E20A998E7AE9ECC7342D147D76
          A105C17DBB11A9DD0D457129F88A69489BF221B83C52A4B04B694565FBA197E7
          451A6E4B114A79C33C168EECC2E8E23E04224A29D69088F82E532964BCD7D570
          4B28D03747C98E52569BB791BBDB96937FE127167D51C780EFF85C7F545867C9
          56C75DBD665C74D1C3B4BE3EDCBDE276E466E792DB8A7CFB7EDE79E7DDAFFE91
          19C996C499336724E2E5F7F9D5AD2D7DB1E1C37370FD3523890891357A5B96A9
          957C3D6FB42606DA0FCED3E98BEB83DE331F44235D590A4576D45A3241A7816F
          994A57EAE12C453B8C9A24DCBE14DEDD10801813C00EAA7A593DF340D0513ED1
          91704B0F89D71AE84B8964E37684B7AE8275E92DD0568D45AA3F962973579C73
          13B4AB58A99B6FEFE7509A1C3057B10E693228A9453E333FE94B83608BAD62E7
          20D61E23A388C03E760A128472B22FA34AC8D412A7A5988311CED613D8F6CA3D
          50698D99A3717E70F7B3858F100F217F6DCB950C2AE26CC3D0ABFE085BC974F4
          EEDF04EBCCA588135A490780B25959AC93991D4D94A545ACA31EEE77FE0ACDD4
          4B4819CC23A29B8610F44B2978A7CA0AB3AFA3E17AD78EE1324114DBBD6A8CAE
          88E292E97E440485D481160EB9169B4D36B9C63C74CDB15D4F84D2C990CE9157
          FDA4DE32F8CFBD1DBB9FB1670DFE5CA7718412F4A77536CBF6483092DCB23389
          BF3EF51A22B459AFBCFC4A14E6179C6F08FBF61FFCEA1F6C72C8C0C0000E1F3A
          8463478FDC42FE2C6FC8E0617F6C6A6DC1430F4E4779792EBA5A3AA74643DDA5
          1C9FEAF7F49E7E44632C7D9F7CEA4677CFE16DE1C080A370F0A2797285EA44C4
          D3F15B7BC1A8279369BEDB618AE340830A9F1F5422D728A027CAE57C9E3BFF0C
          67B21A0C51D62FC04B0BA8CA279DDD760A818F9F8761DA25D0545C00A5D52E8D
          E093DAE31432E2025A247ACF20D65E8BEC0B2F97E62AC9F90CD4331EC18A4F20
          754F71D254F3A4DF8D48772BACA434A436F5735AFACB10334BC9B2811CCDFB37
          A2E6FD07A07794FC2B1820230811F92CA6AF12B4EFFE188940170AA7DE80F1BF
          7D0C8DAF7D06655621D4A563C855F825D2CD8E459713B7614D2AD1D623086CFD
          18FAF9374239622262847A52291C197058A947C01F16EFF66E193E561F6AE84D
          B0821D01332E8842ABE3108DB39CAB90E3F336FC8C5CF2DF12F1E025035DC79F
          56A9F5315BCE98EB3B1A37BE6FB29534DA0BC6FE3899146614148FD923A6B4B5
          6FAD3C92D69A72F1C4E30F5C1A8F09C7AFB9F2EA96ECAC6C4463DF2E4EE10E1D
          39F6D53FD859C2B16814EBD7AFBDF0A30F57AD18316AE4BD23AB4674ACF96C03
          664E1F8D5FAC18039D49616D6C3CB244ABB237CB958AE2E6531FBFA5E00D8795
          2A8D23A7786E715FC72E64158CAEE6598B6B343A4A6FAD788B4D3949D1EE786B
          8B881E8F885263183551ED853B0B966CD51312A8126169A7C992047C2576C40E
          EC202279049AE242BA422D74A3A691019820FA428410241573CCF06D5F056DC9
          7068F307938C0C4B102DCDA7C0B93916525E81976633FA4FEE8675EC2C48AD44
          5C6680F8D79C590143B60607DFFA03BA4F7E01BDADE007F901C72B10ECAC45C9
          AC9B31FA867B50FBF12AF85B6B903BED46A8E961BB0E7E01F38CE588BBC28400
          99C3BAD88936C1937B4932FA11EFED81CC5101DDACF988B57A9196731202A7C8
          B8DD2935AADAB75F7A8DDAF589C32047B72785EA915E941647E10BF224A93588
          847A966834C6B090E27ADB1B369E1E7EC1FD3873FC19447CAD30D8871C19346C
          C1A2DED6E3F373F20ACFE495CFDCFBCC5F36E3D889264524E6BEB5AEB68E773A
          9DC5CB975DB667EAA4299FF8FCDFEEDCE21E7BECF1AF0D41A144201828DABE63
          DB53D168ACC6E5746E983A755AA13FE0932704CDDA211506FCE181698846A38E
          80DB7599D69CB7554838AD9DF53B3786435DE68A9177201CEC82AB774FF3E031
          3F9E2D247CF97A8541C8720C3F047918FDEE145EDB144330254324D88DFD62D9
          759D6316BC698A85C0930B6053C09842E0F53C8463EBA1AA1C8E24B17071A017
          AA9C1268074FA0EF99A55074F4D44124DD9DB05DB49C48964F42854CD1099789
          3D486719F0D2B457E7BECF60A11DA8D0931A90EA12328C99C50FB416E2075D67
          70E8D55BA0D459A4C2D26F83802C9385647D0852B7960C63577C0885314F3A31
          5E8A0D10A51858BF06329D0DBA89D3A41109A96800E1338711EF6986CC6C85A2
          6C2CA2F547C91DCC412AC14BAD704CB5A4942A788940E69EDE7C6F59A2FB99D1
          261549612FC68C3162E9E22C2996C31449C0DB511E8B29EC6A6D5E63DDA1BF1D
          56A8ADA53A4311FA7B763935BA92570B4AA73CC8AB5413A2DE0E63C5C8715F6C
          DCDC8575EBDBE1F3763B0ED51C7C58ABD51DF18702FA11C3AA06D1867F36994C
          B67CEB3EEFBDE7DE6F1882022E8FDBD470A671A84EA79B100985BBBABA3B6FAF
          185CB962DCB889CDD1480277DC5A8CC23C0D067AC2C658D4B9DC60B61E88C663
          03035D27972463A14544899626A26E7A48A61EB2D0D9446A4AA3FEE431B5D6DE
          EBB0C571B2B60F2F6E52239C4EC29700FA72AA7E199EB0E0495580B8402C2C3D
          70059124D1D984C4E93DB05E7533C9CA7E241A695785BDC40D48A91412120CA9
          8077DB7AE8E8BFD9A24008492451CA2C7299861AA9C59F16DA77782B198411A6
          E1E3910C86BEAA4565FD8B7A720B6737BD89B31B9F82317708BE6EFCC8708984
          7F403A2D8691528E487119EB4C1A351FA13EE23CACA358AE8598A4453F5B03E3
          CC4588B4B7D26E3F05C137004E632603180FC5906278DF7F13F2D251E00B4711
          CF6223EE4408BC0A01A301F6B52F3E31B275EB7D7C6E115A7B0270D80C78F6BF
          96233FCF4ED79894B8CCD9FA750B3899AE63A0E3C047217F4BA5569FD52CE7D5
          6FF27243AD296B687D243160D780B39694147EBA7E6B089BF7B8E172764D1A5F
          3D3630E0729AD6AF5B3723273BE7B856AFD57476768A6AB57ACD379B76B8DF3F
          F8F5C414768C4F3C11C78EDDBB54BD7D3D578C1D3DA6CCE372075A3BDAD7FCFC
          9E9F37A7523CAD53104BE6A9A1D7AAC887E5689DBD479712C4859C032D439231
          7F8B25A7D4994CC47FE1EC38B0D86819BC8BF4EC5CA7A765894699B35EAF1542
          716F23566DF1E2ADB53DC8B1F030A642383D7CF943A925BFF88396E08A97268C
          715064DB209CD88CB4DB05E3C2ABC031EDEFEA43B2FD1444F2CBBCD582943340
          0BAC47F6E59722D10DA94035CDDC0CEB4A6699498E1982058193FB8868A660AE
          9E86049B71CC65A2862C97C20E0E3BB5F24E5AD846280D8E6FF5330A513FCC25
          63E018310FC9A41CBADC4AA8C80544FC01706A353333280B00E7A7EB68E1FBC1
          E73B20B029B2866C284A4610372884A802025FAC01D47228272E86D0E7911499
          A8D6C0AFD6A1B479FF3F07EDFCDB1D0922826E510FAB4989BFFC7E010A721308
          78C86D880AF8BD6D73488D9D1CE83874737FE7EE474DB6215D4A9D75055DDFE0
          44C43F3FAB78EC8772DE50673569F73CFBB775D8BA4FC4D22573F1C1FB2B2F4D
          89E2BD77DDF593B97F7FF1458DCD669F515656BA8FB88BCC6EB7F724935F471A
          B93F3CF8F5747616AB678670F0E861A6490B1242E24642516D524C0923468E5C
          190987CE729C19B3670EC192851A7AB82604A3012E1CE99BA9E0D2D59D4D3B7E
          0699A649A3CB51C5235D9398765219C78D366799FBB56AF3F8442CB433EC6E0D
          68D449B40687E3F50F8EA2A1BE0EDE532761BCFBD9DFC616DEF428D7178642A0
          C5E4945038CC88EE7C1FBCD908CD9805526F84D26694065426DA1B487E7A113E
          BC09CAEC22E8864C9726B4284DC550980D9982ED5852EA568EF7B720DA741C96
          0B16232DE51C326A4163B3C2D75483C6F77E0E05A9902F0D84F18D44C8091919
          FED85F6F82DC464611CECC956359DC54304C0AA493205E40A4691FE21DCDD056
          CF24359B0565F11040A387E00E206D34225EB71D899E0EA8675F4FAECCCF6651
          4220171C24ED9F7DF093A767711DBFE8EFEB405B531F8ACA0AF0C40317A120DF
          8281EE3DB43173E0F5F826F575D6E8ECD94376077C9D6F063D0D57A854D6402C
          EA3172329960CF1B72B34C91E5CC2D1ABB4548C5934386DD81A14347182FBFFC
          92E48E1DDB23B15874B9C7E59DDB3FD0F7E18F2EBFA267D8F0AA3A7668AB96E5
          F6BFE91AEEBFFF816FF8C3CC487A8FD70376B02741C8B8A3478FCE1D3D7AF4E1
          BAFABA864020D0B164F112188C591837D688654B2710B9E4E173358CF47B4ECF
          92A91C6D7D2D07FE100FB58E51682CA4F90D315B6ED524775FC394ECA231A7E5
          BC96F774B71CE6F9887FCCCC3BD1DB6FC03577FD067B576FC4A415F72230F586
          9FBA75F9CF29492EAA425E704A62CE6C5CDCA67F4255311ACA615390EE774AA7
          BDC8757A28AC84602D0D086EFB0CA66973116B3A0485369B763A4BF368A1CE2B
          2617A505AF312072E6104C132E043BA153DAF4E416D47619FA0F6C46CB87F741
          9335E89CA090493C2211712367F895C859B802D1DE6E7A2E41C4BB7B682183F4
          FB4A520BBD500F9988C0AE8DD04E9C05EDE8F184064924434176B0196459E4DF
          C945448F6F85E6E23B483AD39F8EF910539B4846D2265AFDF2038EAD2B1F9D70
          FD6D38B6E7200C62082F3C7B050AC81D047C3E72376D8C4B8C8CC4D2DAA6531F
          8DB7E50CAB49A5521739BB6A1E660A49A5B56FCF291AF7402A1E1B2D5372ED95
          A36FDDBA7EFDF6F8ED77FC170A0A722628948AE8B0A1C3EA87550D4FEEDBB3F7
          8FE4E83E9F3061E22181D0B2A5A5493AF8FD9BA498BBEFB7DF18C19BCE180393
          91ECC5A68DBFF7DE3BE37C5EDF91858B162B3F5CF5C1EA05F317DC5E5850DCE5
          F246F0E06FAE81D59685EED6B5B2BEEE5D5394EAACD12A75D187F160EB5CBFB7
          FE4EB2FE62B5367B3B69DFF1F40465D69CE1BF49C5E3BE642270BA64E8B27E47
          FE3C9C3AF932E64CFD0514CB1F41C1C48908351EFE517CC6F5EF426B962BFD7D
          522513A71011DDFC1A34232743515A8D34C12F8B2D4801A91C1B624736130A64
          413B7614620D5D40B897766D403AFC9315B4827C7BF8D45E687272A1CAABA407
          9C6227714065B6C1DFBC13CE636F4B85B45F49C498072A450E0C5933C8C79749
          278A8AEC604E851A727A809C3617EACA4244EA1B20F4364333612112FD04F97C
          665C2FC78E32EC6D44E4C00668E65C8BB4CC8014F19B98CE0A91F4BBC3DF7C93
          B8EFA3D795A70FA1F4925B106CDD8D07AEC8C5F80B2F26B2ED274356C3EB3C5C
          15F2F92C42429831D059F3B0DA90B52A95080D119329A73DBFEA439ED7BC9348
          24176567E73909BDB7767ACAF1E4931F980D7ADE974EA7A67DB8EAC32B965F76
          7963241A6DB259AD354545456E16DE56934BFA5E43F8F57DBFFE21D12C15801E
          2537515C50C246DF3CB279CB2636B43A4A84EACF975D7E55AA6A0431E1C0595C
          77E520B4B5EE452C26AB48A5544BB4C6DC7753F168C0D9777C994A6F89C603FD
          B74582BD170942DC5B5836F509ADC1BE49671ADE9D9577617FC4F536F66CDC80
          BF77CCC43EE564D88E7E807C876974F3846BDE4E17940C577B7C50A8B4123789
          6F7A0DCAD1B3A122062E0EB8A5E3716404B3BC2289D09695D05F7029E4963CE2
          0A292920C6283D87B8F473815D9F93AB08403F7E1A41743033959450CF77FA0B
          380FBF027556A5147F48903270CCB9113AC37084DB3A609ABD4C9A9002369887
          3508A75252104C24421C24B7A59D75257D949E8C2B2A9D092DCF226ED3594F46
          F03934B3AF465A41C8100A206AB44119E86B293CF8FE8DC82DD935D0DE82C0C6
          F55870E3F5B866EA690C2D74C04C1B234DD71B0A7616BAFB3B0A9CDD27AF080C
          D4FD4CA13608467BC5E3BC4C735263B079146AC5FEEED66377548E98B497E3EC
          073FFAE80422A921387A64DB95A74E1C1BAA516BDA9A5B9AE7558F1BF75A5F7F
          5FB8B8A878DF983163A565D7EB0D686E3E7BBE213CF0E083F8A1179BAB6123EB
          3E75FAD4F57B77EFBE4E2EE71F361A0D3FAA3974A8E12F4F3FFDFCAC5917A5AB
          C78CC2F2CBE6E2FEFB9620CB4C7E3365CE8EC785E509211C4C8423CA60B8B792
          B8872E9D8ADE9148843916C0C92D19F7A82D6FEA9F93422CE41B380BBB832E28
          11C4DF6A0AB06A6F0A86B01B698BD92016563EE7AE9A7D032FC8A0E1D8513411
          C4B6BD0B65D9702847CC2296C6463F26A0B0D890EAAE43FCF44E2296B7224D0A
          04E78EBE630D2D6CE41E970C21D9791ABAB13348DA65824A72927D62D887AE77
          564020A8E7892C269C6791B3EC2FC46D462025234431E6428C84A4F246E92B2D
          036F33C1B7FE1542A75150943397E0948698B3D4B2D0489CA1B606CA19579201
          DAC09A0CD31A255427777CA474B5DD5610EDF176144E41EB9163B8C9780877AD
          980079AA0F1121D384A3D465C3A0B5E7F7B6EFBCDFD97B7A85825048A9319F25
          3FB93A9DE27496ECD2239190D3A2538436C90CE5B557DDF809860DA9C68F7EB4
          98F884C7F0E20B7F7F282EC44F84C3616EE890A103E3274CD8C022C60603B952
          DA343E9F176D6DAD30127FF996213CF5D433F8572FC615881F5C5A5373F06477
          5757382B3BEB418BD97AB4ACAC2C198D45DF7CF38D37C0ABAC78E79D55282F68
          44712E317F6595ACAB7DFBB2749AE71389D0E890AFF572D2CD656CAE0F4BBE24
          69D17307CD2A4C936817853879016B2BE24EE4E99538D5A7C4CFDE97A125598C
          D1FD9FC33D74C635B1EA65CF86B5B9361D2B554FF911DFF321782277AA49CB80
          103D6ADA712A62ECB1C31B910EFAA09B7325924E1FC944519291CC18647A1D22
          FB3E26AE410FDE9C4FEA2233F3485D44EE61EFC718F8F4D7D00C9A40505F0FC3
          A43BA1B28CA59F1D86542C33549919412A497F3FC78AE8AE35D2F996EAC94B20
          74BB881C6AA5B1BDF1C3EB21F4B4423DED7224545948B290C44047D0DE7AF457
          59DD47FFD9E9A884CC1B8621DB8ADBC63463612547979FC080274690AD436FC7
          6E9D316B06673558A6B4D6BDB951C1662AA6048960CA95BA2D96AC112B532931
          5A5EA43DDADCE66C5E71FF5EECDDD580FBEEBB1B6DED6DE5B4B86D4B2E59AA7F
          FC89C75ED519F4F74E9B32AD7DF4E83170BBDD1088B7A86843B4B63611F7EB38
          DF10FEF297A7FFA521B0E190DD3DDD58BDE6638C1A359A602B78497B5B7B29E9
          F5D2DABA3A56DDF9E8D8EA31CD7FFAD3D32412541894D786C19506F437ED4114
          DA29B168CA9012C2390921382BE8ED5A2826A3368198BB4A6D6E30594B577A9D
          A77F672B1A7F2FC7ABFEAEE20CB068FA51DBE6C2077523B061E7003DA03406D9
          F5799DC366FF3E5C30F676994903255D7F6ACF7B4847BDD05C702564CCF7BA3D
          50643195F11E114C23D4931623D5EF95924C4C42C80935E227764823F8583575
          CAE33957C94AEAC4423E79C363F06D7A0C86E9E4162AAF442A92847AF47424A5
          9FCBA4AD795AC0E8B18D10FAFBA09D7D2D52037EA9E43C9DF023B67FB5142AE7
          675C8328ABD2F687A0ECA8791387373D64D59ADBE45A030EA30CD5B266FC7176
          2BA68FD6A3DD6F46C01F3937B9C73F3625046ED699CBDEEA6DFAE2C364225CC4
          8E33D6684D5E8D31FB3551541CD41BACC87218F67CFAE9F1DEC79FDB8FA6766F
          CED0C1B9972E98BF78E3D1634767161616BCF5E36BAE49BEFAD2CBD549516899
          3EE342AF46A5C69707BFB201685D5D1DE8E868FF9F1902F91B6CDEBA09575F7D
          35EAEBEA515F5B3747A9525EDDD7DFBFEBDA6BAF5BBB7FFFFE99959515C71D8E
          FCB3A150848C7800232B62B8FAA6694424C3AAAECEFA6166FBF8E342AC373BE8
          6DBA8C978727D09FCE211DEE2619B4281E711BD4FA9C2D3985137F29A4132764
          91462844358EF7EB71B4D38ECF0F92EECE2FA01BF24E94978C7850A89CBE48CC
          514276E810D2F57BA1A8ACA6AF69201C868C1310DBF516E40E2274E31620E5A4
          C562350D6C540E1BEDD7B817DA0BC8EF47A252012BF3F972BD590A32793EB813
          FA59B7B0FE59703A13E4F61262FA114965C81D56723D3B20B4D64233EB26A438
          8D34793DD9740042ED01A07C2C30613AD2EE2414ED47B6679F39F0A8ACB7764B
          97863882BC14653619CA737A71FDD07694D8E50829F3491E1AA5713DE1E0C08D
          FEFEC3AF68F4395D623ABD2E9DF02E55A88D6D629ADB985D34F35551B4C422BE
          03F9A5832B4F9E6DD1E28E9FBE839A9AADA81A3E942742BFDD6CB61C3A72F4C8
          81D163461F193F7E42775B5B5B4C480A183D7A2C6C569B340CF43F62082DAD2D
          F862F346CC9B374F9A3EAA56AB55F4C7668F1A3D727D7FBF336BDFBE3D9F911F
          BA715049717D2B11AC9EFE20A64F9E8ABBEFBA0025B9513807EA88688D851CC4
          9C23BDD0DA8782573BE0EFDB3B3195F0DF9D0877FE381A0E4863FB3546EBAB69
          DEFC904626EF2ACA674D365AAC3DD88DADF139F8627B2D4AC41ED6453CD7553A
          F5E7C9EA6917B3767671FFA750246250564C86BC74B094808AAD7B15329315EA
          29CB90F6C5083D42E073ED88ED5E0DB935178A8A4910039ECCCC6476149E8264
          668E06F1865AE9043AEDACAB90EA23D8576B21B369113BB89660BF13BA857722
          4DA24A686F82D0700022CB294C5C480FCA04D5899A1DDA96837F35C79D6BB878
          0AA4265117B5E0E65101DC302D863C590F820287049F074B4E3E1936671A683B
          F856C0D37409CF6BE1C8ABD8934826FEA2332F580FB8857884AE433F14B2741E
          0CEA23385CAB42CD51038E1DDF3BE5F3CF575F3978F0E0DF56540E9E100D45AE
          A635F225C554DD9DB7DDF13A1B03DED5D385929252B004D3FF8A2124A289CC11
          371E374A4B0761DBD66D0F8DA81A213F7EE2789054C6AE68347A802769377AE4
          3898CD85B05B129835B907454553E17476C13BD0085D2EB16316BB776D36684D
          264BD4EF3342CE8D228C9D1AF2745DCC2B8D21F2337B0DF6C2577895F9301F3D
          428664C3BEDE22ACDCA746C3F15A0CC9B72028D34F89565F74B33878DCB2684F
          BD39ED6A835C2462563C9A485C31E2BBD9F3EC87A27A2191BE2CA423ACF1B60D
          42CB01A8A75F03D1E7CF142FB2575294187F74C7FB90E793A1E60D435AA9403A
          E645E2C85A227C06A8662C2552DA8B78CB1169645E2A6B10D4398343DACED39F
          D91B77BF96F2FBB6B247AE76E4A0A9C98B21B618AE5D64C7ECBCB388A62270FB
          0D843CE472348440BCF8CBBED69A2759518B5A6B3E2C579A77CB158A4D66A3B6
          3E299BDD1E13C858532F2327B71216D3086CDABA13F73FB29310C46F19595539
          39180C2FDDB479A363CE9CB9AB0D7A83F9D3CFD69CCD2B28D870DBCDB74A2180
          B68E360C1A54F6BF67080C115840A7B3AB13032E76765168A2C362FD51674767
          3BA92A8BC7E3FEB4B4AC3C317278D5D4AAE1235E6A257FAFD3B930714C3E8AF2
          92C4A988B8A8272344C82CF87713021811F6F44367B14B15D3C91891BF64609C
          C7D33757A5360EE7A0EC4DA402FB353261DFD0D28A5E9F66199EFCB086D44517
          B2839DD0E4E5429E3734DF995DBE8853C42F4B04FC13A2E1B489D3E8A01E368A
          64662738672F417B01F88211B4EB55887EFE99544DA498301F628F2B53B594EB
          40F2E40E885E37D44B2E43CA95A2453F85645F2B442BEB421A8268FD71884446
          551A31AC72141E2A86F871FBC13D6BD589605BA12A0EB72A17EE401C514E8D25
          2339DC77691EF2941D38D1D48E1841B52CA5E252C9D08DA4A07E2C88C96CA3D1
          FE36AF367D961422F5C9B452AA32B2EA047A168B48248C4073C34B38762A0227
          5DA29032E2830FD891CA296B5959F942BDD1F8D9A9D3276FCFCDCE354FBA60D2
          9F76EDDE156107894D993459E2040C11FEBF18425777175CC4465D640C850505
          C57DBD7DE389995E69B59A5F335BAC13BABB3ADD13275CF0FCB871D558B57A3D
          F6EF3F845BAF9F8BE9138192611721BFC08EF6BA4F2053E911F53BA136904FE6
          1552852F8718226CDC2D6B5C4DC6E6704AFD6841888E546BAD27C64EB9EDAF44
          D3930FBFB10BCFBDB115E5A387429153069FDF0BDD89CD904F5C52902C1C322B
          D1D334C5E7764EE4F30A070B0A9D5620A62C775800FA593591DED8CE2FC0150E
          83A6B4500AA4C5BA3D101BF64373E142C41A1A906CAF23D2E08522378715C9C6
          85F6338D4693F5B0A678C49E54D7D11DDAE69AD641C59538E14B409029F07FDA
          FB0EF02AAB6CEDF73BBDF793DE13D268A1858E141169822836EC5DEC6D2CA3DE
          71D419BB82150BD850105044408A800A48EF25A4917E92939CE4F4DEFEB57760
          C699D119E7DEB9F7B9F7FE373E3C89C939E7FBBEBDDEBDD6FBEEBDF65A79221F
          5A832ACECE6F999589BB2EA06B41899A6347E073359BC331EF85A2847844341A
          49E88C69DF2875195FB222625E7737A4F45E0949BB4492556D91A2DB3704276B
          630806E3D8B3E7004E541DC1F4A9E761E38675D97ABDA1A5B6B6F6C979575ED5
          DAE3ECAE1609E2DD77DC7947846595F510B15DBF6E1DFFDED9DD893E4525484F
          4B47F80C1014048466F2144D4D8DBC38C8BF0C08DD744187A30B1534B0D535D5
          B07774DCAAD7E9B28BFA14B7EF3FB0DF6ED01B3AEEBEE7EE9D5F7FBD3671E4D0
          214C183F1527ABAB48310878E09EE9C8B6D89095A3434F4707622225A15ECA7B
          1FB045205F20D0DB1291E79F2B49A21AAC12A968606AC1AC1F0C1A5344460F75
          C7531F616D8D1F39E503D01389437D9C8C5B301A06A30A712280DE8408B2D603
          85B69AFA3E46735A5EB0AB2D93AC92E7551B7364994516C1D1A68B0F9D28631D
          B5457BB68605A3D51776B474A97A3A9A95666BB3D494DADADDE56A4CCFCAACF3
          A497D69854A430C8D00E077930672D32F32B50453C8235CFC88207273D5A3C3A
          558C5B2E4943B72D8284482D74B51DBDCBE76A1F0689B037E4EFFE41A1CE3CAC
          21E9CB32AC456478A35E2039D78966D6DF429E0A7B673656ADDE8AEADA63F8ED
          C38FE154D5711C3E7AC4D0AF5FFFD26DDBB6CC27F9B830114F382C56CB73F9F9
          F9AF4C9D3275CF808103932C97C4EFF763F7EE5DF07ABC707A9CC8CACCE1EB40
          0C9CDC23C8E4E8B0B7E3D4A92A9E7BF2D34CE67F0910CACBCA39CA323232D4A4
          597FD3D5E528108BC5EBAD16ABC8E7F3D64B64D2DD6E8AC713CF9980D60E1BD6
          AF5D0F9DDE8239178E47499112A9460F868DE883B454191AEB6CD0A8C5BCA196
          D79B409215B262BD1E9516BE5A985278113D8006294623DEFB64251EFDAA1EA5
          8387101062509FF89680300A6A96792D95234C715FEAA94757630B32DC3684FC
          0148756AB4AC5F892C9282B985C5AA1DBB772B63F4DE11A347849C2471EA5BED
          483B673AF43A2DCBFB46833A1F56522C1E2D5BE851422E88E1B2371310EA9099
          D79F80D0CD816089B8000A3FCFCFF4439770C11BE1559B04B1A8EB5CA9545C1B
          89C41A7D9E560A2BA9506953A0A5FB3019C4387AB4054FBDB887247A0213264C
          427FD64A60FD0AD437D4E389C7FE0DFBF6EECD24C5F62429832DF1443CABDBE1
          28D11B0C379E3871A228273BA7B46FDFF2F54EA72BD1DBDD4FE039A7677F6633
          9ECFFAB3077AE83F96B4CABC445161D15F6429FDCB80C056ABACD6140C1F3182
          6D678F59BAF4E331E48A580EC8C7A158640221B06150FF8A3DDDEE9EE8CE1DDB
          89481A505034803EC307B7DB8EA2022DF2B2D5B8E3B6393872F8085ADA7D3877
          8C18A41BE00D2A21559A79DA7A2A01412CD6C0ACD7E2E57756E085AD6DE83370
          D0CF0221444090B9EBD1494A2635C0144B00628514F6FD3F22DBA0426E6E3E76
          1CD88B583884112346A3A7BD09A7BBFD30950F26A0EA2050AC6D91A521E55700
          C114EA210E528CD7E61210A20E747A92E4DCC474CF4EC8A422723A6108891E08
          9214A46566221255E2A3CFF6E1E5857B7896525161261FBBF4D41461CBD66D62
          BBBD437DC515F3C66FD9B429DBE3F72A4A4BCA9C070F1D282042FE0DC5FC5DE4
          2DE3AC5B6D534B9320655541CE9C661309A23FCDF4BFCEB4622FF2783C98387E
          22C68C1E43E1D4F59F03041369D6F2F2724C9A742E162C7CB5E0C4F1E3C19292
          D211629138DFE9727A060FAC38ED09F8767CBB6953C4442EAB820CE80F06B802
          397EAC960647826D5BD7E3D34F3E4555752B2E985A84C1E5ADD069E2D0197228
          7408D0A44F271065402149C31B1F2FC6131B6DE837AC123D812054075643281A
          FBAB809065549392C9C38F870E201609A372D870383B9AD1E0F0FD2210744A39
          115A0D7AEC2DD0771EA5D0301055CE2022B13852636EBEFD7CF72817525551A4
          67EAE0E5A5083A6036CAB0FF6017D66E384264AE14758D441CA579F872CD2EB8
          9CEDE47D94629A44FA11C347F6D8C863D6D7D6DD7DE2E4C9AB8657562E22B2E7
          77387BC6AB95EA2339B9D96F1C397A84E7959EDD20F4783DBCFADCAFFD62AFAF
          1C5A89614387D1FD79F81A49906C2A3CFDCC0B3C33892DC7FEAB80306AD4682C
          58F00AE2344095C32A876DFD6EEB708BD9AABBF4924B167CBAECB3DBF6EFDF97
          535050F05A7979BF5A1FB9AA6EFA0C229BAC351DDE7FFF23AC59FD05C5CD26E4
          170E24F715C0C841641C5D189654030656DE0BB7D78B1F77EEC7975F6DC5C1C6
          4EE8079E8306E217BA96C350148F85CA62E42960A17004727F13ECD53504841E
          0242F0DF0784F40CB8CC79D093F6D7F5B4C1D57C8AA6A30B5944361BC885B3CA
          26C3B42154EFDC46F13846785063E4904C5C376F00D42A079A6C56FCFED91DE4
          F237C26CD5221848E2E2B9B3D0D25CCBD7FE29EE0B56AB656445C5A0D683870E
          CE0E0543061A6337CDED90C7EF6313E9EDCC8C8C3D63C78EC5FA0DEB3941FF57
          0081E52D269222180D6A082B572E415B6B0F314B1958AF1FB138F91F06026BBE
          FDC20BCF21D5928239B3E7E0F5456F14D2DFBC12B1C4DC6E6BBB4C2A93D93B3A
          EDD3CACACADE2602F37D577797B79DF4B98C74FBE2C51F1210BE2476DB8C32FA
          AC402046B3500E224A30E923F8DDEF9FC1A38F3C898E0E0F06F42F436BDD71B4
          B6DB51505109434E1FD426ADB064A5C12748119468A0B61F81BDDB83144F2782
          3E1F947A0D6C64B02CD3CF03A1B6C385948A11BD402092D5AA2B82B9A098F885
          0FF1BA83C80B7740CE4E38970E428AC182D58B5F430571947E6525D8B0711304
          A9929F0F91484D185A618086C24951D9547CB16A297EF861333DA382C0A1C4B4
          E9D371E0C0013EC65AAD7640BBBD7DE6D85163D6D7D7D75F5E575F2F2A2D2939
          9C9B9FDF79E8D0C1668FDB73AAB4A414151515A049F5EF06027B3D7966540C18
          82E1C34793FDDCC8CE00665D300DC2AE1F97A3AE661FBA9D6A7A000398D210CE
          F45662AD7BB46A0242E33F0F84975E7A017AAD0E33A7CDC4F2559F931273C2E3
          F38CAC18505119F007225D8E2E45666646613C1AAFA21858DFDADA7A52221637
          AF59B30ECB3FFD144DA475870C1D4A84D1CB377858B7F55D3BF643A51281C828
          CE3BEF3CA467A483B9CAA686064C9D3481D48209FB0E1EE6C5BFD93A82489F8A
          D3BBB7405B5806929E88067CBC6885EDE05E145A75282E2EC3D6DD3F22408339
          71E2B9E86E3B8D160FE9F8BC12E8888CB223F7B54434B30B4A60083BD1B0EB5B
          A495F6878100DEB7A8801F045AF0F6DB184EB3ABAC5F3F6CDAB49977AA61076E
          B38807343691BA506970FB6DD763C9078BB165EB16BE89C79A90CFB9E822ECDB
          B72F978C7A4B7E5E9E100E479AA412493681C2535B571B5628955F3FF4C8A3F5
          1F2C598C63478F72123968D0A07F0A0867138D0281DEF39721B25D8424F9CC19
          5330B2B20C91701732D3341838E43C08DBB67E8AE68603F0F97B485B66D2E76B
          E1F6D09B42624869868A455AD4D4D660F5D75F60F6AC0B11F40778CDE4269AB1
          AC0AB8DBDD83B2D2B2BF0B84CF562CA378C44AD12898945110992C494F4D2BF3
          FABC0389F038CD2673C8D66E33064321FF638F3FF1F2CEEDDBB177CF9EDF0822
          D1DBC5C5C52E66F053D5A770ECF031BEAAE9A7D9397CF808A491C6670DBC5B5B
          5A3076EC3818C978278F1F43341481C56CE0DD55761E380C9D4A8E11E74C2183
          7BB165CB26BE799688506C8F44D14EF136951D924D807755D398AD3C842854AC
          5ABA80FA23FB919F91056B4636AA1A4819656741A7D5A2B0B090AFE3BFF3DE3B
          184A1E8179AFCD9BFF0C04C6CC999C6347D1EFBFFF412C5DFAC9941FB67FDFEE
          26664C4060CFA4A60975515A6AFA01674FCF84A2A23E3BF7ECDB7D614B73CB37
          7979F9DF69B41ADCFFE06FF0FE7BEF127F3AF6AB8070D6F03E7F88C77E522A9C
          60676598A0D3A93064700914747F03FA67D1A42789D9ED206F948ABE8326F702
          A1A981F57074D3031AC1485C87AD01B1981CE6147A43428C9ABA56D454D763E8
          D0622429163BDD49BE30D1D8DC8953350D183E6C304E9FAE4766461AFAD1CC18
          3162E4CF024146008A92CB51A9D5C8CDCEA5D9EEA9A8ADADBD5DA690074A8B4B
          7E34188DAA3D7BF750DCE850931B4C6B6A6C7EC46432C6478E1C41F7508793C7
          4E7270BA89ED56560EFF592090AC02E96CE80D7AAE950F1C3CC065E7DC0B6693
          46EFC4FA8D1B3063FA4C92B1EDA8ADAF834C906040C5401C397298A7B29B4D7A
          BE3DCD78133BA6D648B23887E9719AFD3575350484ECBF0B04E62D1910B2B3B2
          B9945B4D61EEA1871EC1FEFDFB5FADAFAF0BD2F36CF7FAFDA328FE3FD6D3DDFD
          2E01E6CB78329E535C5C525D75AA6A5BC3E9D3F4DE1C7EFFF7DC773F962C7E1F
          44BA7F11088CF0B17C0336EB83A1DEEEF1F9F969BC537DBFB24C32B40225C519
          C403B474BF29F07983F45A173C7E0FDC4E374C460BFA0FFE1B209849DF9AD169
          2702945010B149258487497B862197C8110879A052E81020A3262549383A43C4
          1FEC249FF4A826420641CD8130FE9CB178F1C53F1210F47F030496CF476E0F39
          F4B06C87ACB9A5591E0804E6D28C90880421DDE7F1269C6E574F5959A9A1ADB5
          ED94CFEB8B8F1839627DBBBD03FBF7EC27F48BB8FE1D464AE1D702818167C6F9
          D389943AB0E9DBCD983861221C341B5A6D6D88D3AC29292B053300634706A301
          0976D08615DEA4DF34123FFA6780C0D2FC42A1A0353B3B476334991B967DBAF4
          A2BEFDFB35A914CA327A1F917FD5D653A74E2D2CEE53FCE48FBB7E0C19F48621
          83870C794F49BC61EFDEBDFC5932C903FD1C10860C198C0D9B361191B6F36564
          B95C4CCFE1E440484DD1A1B4241B832BCAD1AF9C1DC563A060BBAE22F2DC41FE
          3C82A044C01FA671892318F6C1D5E3FA474038CD8160B2A412BAA384A020AF2A
          112252A594A9118FFA10215FAAA558AC9089082009DE4CEAC4892604232A8C18
          3919FFF6BBA76031EA70F92573B174F9A73F0B8410E9F70E924BEC410C06A340
          833280DCF28096B6D68A40C06FA687DD47BAD850D6AFFC331AE001BB77EEB292
          37594E1A3B4912D54740483243373735FDA702219BC282D160200F528BFCA222
          B60622CECBCD8DEBC8E3BDFBFEBB18326830CAFBF66540D0EA743A2F4D86828D
          1B373C9B9E9EB1DCEBF1C4AAAAAA7E5F3168D08BE4B6D5FE807F00FDEE445E4E
          DEF6CEAEAEA34A0A97F9F905D0EAB53878F0202989E6BF0002E308470E1FA6F0
          DB0F03060EC50FDBB7213D358A82BC4CECDCD54C9C4320C367A2A8288DC2510A
          0CFA340A17DDC407D8FA8C977B43F65C4A8582BC95FA3F0604BF3FC80F834462
          110E8458C4CFBB93B1DE08C9789497AD65278AA3C16EB8483C2B95A93870A406
          1EB714E52583F1F5375FFE2210DADB6DDCC5B142150534206DADAD20175946C4
          3485C8D4F8F4F4F47DEDED1DC9A6A6C64B2A870FDFD9B76FBF2F3EF9F8A3DB52
          53D34C058505DFD6D5D7856916FD387DDAF490C56AE5837916086C4185424DBE
          20161A2FBA604ED24FF7B061D3C67F0A080D14F2F2B2F36890D3D87D0D24D234
          95DC7FD3E8D1A33F2B2392FCC28BCFF71F3B7A6C5D9F92E2E8F265CB9E8E84C3
          35B32F9CBDB8E174C3634EA7339562F88F6A95362E120B15DD3DDD878823EDA2
          7FAD0539F9B051786240282C2CFA5920DC7BFF0378F79D45F4FBA31837661846
          8D2825E9D909AB85989C468B7058C71B9CB0D647DE6088D7A0643D3BA5D22811
          413F7C3EFF7F2D1024523919972E42480C93A10562E62633DDA4444F6A418B85
          AF7DC2BA1B932453D30D467E1608E411785CB5D3E0B0D3D8BF79E8612CF9F083
          54835667278BE66CDCBCE9A13BEFBE7B615E6E5EF5ABAFBEF2B04AA5F20783C1
          D17979B93DA4C3F7A8544A0B7996C36E974BF013F3B5A6A6749796963A4F9E3C
          3928352D6D6745FF81B10307F663EBB6AD983471D25F01A10CF575B53C638919
          80793F8D5A833085AE93278E6B2A8754FAF28B0A4C7575B5E7D93BEC391D1D1D
          A2FC8202E9902143777FB566756E415E81313B3BFB833D7B774F235E30F5B1C7
          9EB876C5F2E5731A9B9BFA07C3C123375D77D3B25DBB77A1D3D1498AA78B0334
          9FC0F5F780C00079D7DDF7E2A9679E43E5E0429C3FA52F3FBACFBC275B479110
          9F311A32C9362E0A450402B9080AB91A0A85890CFEDF0008212283ACDC0DCBF7
          60358D53D38BB078C906EC3B7082DF94522E25CF20FF8740987FFB1D58F6F972
          101038FA1B5A9AD22E9C332771BAB6CEB366CD570B535253D66466640E25D9E5
          EE7274E62A95AA76018299E273B2A8A8683F79A0ACFCBC7C653812DE6BB55ABF
          2D292AC1E72B968F3C72F470D1D429D33EB775D8C29D8EAE89415F40575A5EDA
          DAD0D01026FBE83332325404260BC95D555676F67687DD3E3D232353134DC44F
          DA6C6DA30BF30A36BBBD6E65477BC738B54633886EFD5DB54A2D27007C4B6474
          0E01503661FCC477967EFC5120180E4908B0BEEBAFB91E7BF7ED2589DECD7706
          19B3FF7B4060E320952970D3AD77A1D3760C33CFAFE09B751D361B792A098DB1
          9F9F53D5A8D3100CBA4989D198CBFE1B0341AED0D067E492AB16A3FE740B967C
          BC96E46790485E0A499AAC5F0D0426191959645BA7DD5D8ECB280454C815F247
          28E61764A467A86D6D6DE3341AED86B4D4D469BBF7EE89F71BD07F3BC5D5874A
          FA9446DC3EF78ED494D4F7532CD652926E834E9C38DE9F64EE6962F62DADB6D6
          B148A08CE2F77E1ACC6F68E00693DCEA178DC41A6CF6F6FCCCF40C1185B21F4C
          4693A2A1B1B13F85B6EFE452D96492C1DD6289C44BC68F1197F11516157D9797
          95DBFAC38E1F52FDC180BDDDD6DE1B028900B2D97FDDD5D7F175907F04844387
          0EA1A9B1898CA923AF908EDF3F792F0A73655C11EC3BB89F48BA8BF7B3FA1F07
          0456C256ABCF24D212415AAA0135B5CD786BD12AB83C319495941010025C862A
          1572AE0032D33389573888A0D5E3D6F9B763E5172B49ADA848C2D5A3B6B6866F
          AA68B5DAA2F3CE9B222E2E2EAE5EB76E1D860D1E0AE211D8BD6FF71041241E55
          57539395969E4E2A355CD766B39989DD374C9E34F9CBB6B6D694DABABA6BC930
          92C913CEFDB2A9A579CE175F7D211A3C68D0C2583CFEB45167F8AAABDB715957
          57A7ADBCB4DC3660C040D967CB964A0491285EDCA7B42789440AC5FB7D52B134
          190CF89305458587C391085F11650AA2A8A09088E8260A8D11CE514802F7B640
          A67BBEEA8A6B71E8F001B4B5B7A3A5B59DFF2E273D17A79B5AB8BE2F2C2C8181
          64EB8E1D3FA2BDB50113C68FC05D775C86D2E274BE26208864385975143E4FCF
          FF5C20E80C59703A43BC228891E2EFE9C6664423ED34FB33110D25B871F71EA8
          2763BB307040397EDC75043B771E26D5F118DE5BBC0429262D8E1E3F4A0FE0E1
          AF65CA60F2E4C9C8CEC9C357ABBF46499F224C9B3E154E8F9B1DFFAEACAFAB97
          927B3F24954A9BD6AD5D8B5B6EBD5574E1AC39C9B56BBF4E2EF96871E980FE03
          F1D66B6F9D5AF5E5AA8C2F57AFEA3B66ECB86D4DCD4D6533A6CF70BEF2F22B85
          34DB3D444A83A5C5A54D5FAC5A399B424B85C962F6D3D47E219E88878D3A5382
          1D1E65333848B19919BCB0A098987C0636121022B128E741B6561B19474AC608
          E2F1471EC4371BB792BB4F90F10087C347B2BA92E475923C5D08232A8B114F88
          882837432444306DDA5492D60ABE53C8D62258239213FF5B80C016BF2291042C
          5635C68F96D2DF5488054410CBB5E42EDDE8E9B6C19C9687C3FB9A70E444152A
          878F46CDA91AA467C8D1DE11C673CF7F4C60B1F115B4E1A32661FCB8E138B07F
          27C54C2DC68D3F9717B2DCBA79ADA8B5D596341AAD49B60C5D537D1C53A75D80
          9B6EB8115BB66CC41B6FBE81D2D2BE78E5C505F87ADD5AACFF660D468E1ECDCE
          78E2E28BE7E2D93FFC912F060D1D3A9494C5241C3CB0D7FCF9CAE5536EBEF996
          CD7D8A4ABA3E5BBE9C9513E215E3CD2956BE9ED1D0D08CD1238760FCD8E1D8B2
          752BBC6CBF3FD5449ECD49DC4681F1E70C416959014E1C3B8982A25C52513A84
          7D49280D7228255E8443EC008BC0C7462189D3B88861EF36A0A1D903B9B4B7DE
          C3FF3A20B02A3174FFA8E847F247A72320D0002424BC6B9B90A40712114FB0A4
          402475C1E513C1A05620120F436B2C2297D984856F7C4E33EB386EBAF1021AF8
          C1208E069BAD93EE4383A3A7BAF1CA82F770AAAA0A8F3D723B860C29431D8513
          9D219D64577F5EE8FBBEFB7F4F0317C3874BDE0679087CF0D14ACCBBE22234B7
          34F195CA85AF2DE23BA0E5E5651837761CBEDDBC0DEFBDFF1E2E27D77EE30DF3
          60B7D7D2A0B35ACF61A814620A0371B89C2E14930B1F32B43F19CA8D70C403B5
          DC408A290462903052C8EB68EF845A16E61B7B5E7F37345235BC64BCB0DF4E40
          36D033B27307225E2E98D5414C8A882B758579F3B2FF114060154904223E32B9
          0A2A8D0E7E77275D2022654020DD1C952BD4506BD30908C15F04423429E52B60
          89980B82DC023569E140988C2B334188B3AB442095A741AB4C406FD4A0BB334C
          D254444089F27D11E26310D3BD79FD09ACDFBC9F8790CB2FBB08466B061FDC70
          C845B3B393B88591757B428FCB05834EC3133A1928B46A6DEF5175BA5624D95B
          E19D8D1CDB17A939D5884D9BB6A26FFFFE388766BC56AF023BE99A4CBA78F1CF
          7842CC4BF385022174F604A190D1F3C4BC48C688240A0148E8F3C23111E2EC94
          5498DE2356D347FB20171408D37562A12E92813A24584DEAE42F03414A13ADAA
          FA24FC5E5E7F52120C7B05B94C16D569B3C86EDD64740ABDD2240141F35F0F04
          D6994C2651221CF4652492F173A291C0A4483850124BC453D97A3731E31A6B4A
          F647D6B492CFDB6D5DBC8E213B322695CB30B44242D7D1FC2A2024040684741A
          5C3F2F30A126461D2523304FC2CAEDF2A65DAC143A5D343D2B8DB79AB7DB0208
          844474AF495E409125C3B283AC72859697EC0B07237CA99A2D078743715EB12D
          C10ECE2AA5FC002D7B6D2814A5F19041A93120167693FE0F82B50B49B25ED460
          7D24C288C5055ED893A99A5892D5818E72200809552F105856902063A53F7F35
          10785F6C59367A9C11DEC08CAD1B48A43AECD9F7C38C0E5BED0D7299B48CB88A
          88F0E09049D53512897C1BBDF73BA546D52427C92993B1AAB141E26181FF2C20
          C4B90BD3B1EDDCB057E4F677CF8D8723738221CFAC782C224F2462BC2C9DD0BB
          0DC6CBDEB3B2F0798523EF4C49AB783D1E8FB0031D34786EF42DF6D2EC32FD7A
          20283281988FB7C79588D41091DB8D25A4F49D1D1C8D4096140BB144522C627D
          0584B828915489E349994A264E509C1191CF8832F7A120F6AD1244492D9992AD
          19D805B2201996EDD9F1534F098627E61E924923393A56B7D79E4CC43CF43A71
          32291593C9BDF4FA2E01DEA084A0484008D1138505B1281163CFC18010751310
          340400322A9B1022792F10423DBF0A08AC7E45B73B1B758D11A855625E63D2EB
          3A72F9A953FB3E150429DF4D3C9B84188F4779AB234110C7E54ACD5AB5DAF485
          D992BF5CA512877D5E07A93502AC54F2AF024284746C980C2063724F1B0CB86F
          08FA7A6E0E85BC652C078EC52F11F3FBC9B3DDD392DC55C9C955A935B2836AFD
          F0D919B9D3DAA512512C145123C5708066F561C895F948B01A833F058222051A
          B10AFE10492FB9956C1AA1BF04D2A4B2948C643C98954826CC6241962112E205
          347F7522B14C2320A9235E6DA030254D0A4923F30162B14C2216C4AA04AFAC2D
          F04166CBDB12918493B233A99D7FDABE8DB392C3AC80266FFC2126FD2FE1FB2B
          71DEFE2FC1ABB8B24ACAEC24379BFCF164DC9F2497178FC5BCF4FB802024FDB1
          78C209F67B445D143E5AC8CC2D64024285D44640688B47FC3691441B4A923751
          9C01423468FF1B20E8F522D437A760F3F74E92DC6A56BF4912F0EC33ABE48E15
          E148706C3422F0923FA233053FF97DD37DF14C65FA5F995CD390929AB558ADD1
          2F0A05C35D090227AB35CD7220FE5D4048C4E5B0A464F041F1B8DDA61E47FBED
          417FF7FC70C89BC612576467CAD89F4D9064B12C1261BB5C4490CC699BC311ED
          332D36CF31972B7A61DF7E83BEF1F9E3B6B41462FC83C2FC60AA5C91CA7B3B47
          930A7A6F1CF148B71A3243A64A2CCB09857B060A22E90021991C445728A19F65
          BC79795CC4CBF029E44A6E4C962B48C020E3C958D925B03D7C8335172E7B2B3D
          285D8742576F2B1D620752D6F2975543F1F2C6656CC9DB6449E7299D3DDD76B0
          D9C606D7EFF3B26A24309B957074B6F6F685617513C8D566588D10ABD468A9AF
          216E20437A763EDC1D4D2CE106D9B9A93C8B8925EE78FD5E9E26C72BBB921723
          96401E2CDE48183D40E83E26976A0E8493895A0A176D52A9D19710E2BC3A5B22
          E225434A7906F5175FD7E0F03117F40699BEB3CB31332DC5B035234D922F119C
          F7FBBD9D178668ECA45225CEB61A3A9BB0CA6CC016B3942A8353ADD6BDAD33A4
          BC4E636693B2D64722055F9CFAD540B077D4D3454C309AAC929EEED3F77577D9
          1E08853C5676BE9E62D2997A53C99F2443B08CDD003D80713FA49937BB7DB29A
          C646FBD4D69686672C26A5AEB06870569F02437CFA9434B4D1C0B17E511A6D2A
          A2FE5051281A9C29466C22A17A30592203E82D9CCDBFB38AEC6205391B561136
          49ECBC905FB5A1BE0929E959D09AAC68AF6FE155CF99AEAFAE6EC6A1E36DB8E5
          A68B786E3FCB6E6280359A52B16AD5462EF5EEBBFF56F8BC3DD09BF2F1CEDBEF
          D3802970D5D557A2C7D1C06B08B0D87CC5E537E1D65BAEC6A5975E84CE8E5A1E
          3658BFA7C68636BCBDE8133C70EF0D74AB017CB6622B268D1F8214B31AA74EB7
          2012F4424CB36FEC84E1908AC2A8AF6BE6C5BA9264189934419F21E12DFEC2B1
          08FF4CF2441D5289F420859CEF2412FD9A782C542D164B61B5E8496174E1A3E5
          8D68217F1209B61FB177B852CD29990F666518D765A4CBD245F1CED79DCECEF1
          493E11C43FC958EEF5CC4C49B0D0414AC2ADD41817A4A666BFA4501A3CCCF86C
          532A4864F22F80B07DFB2A1AD87DF0102335E82C349B33D0656F2459D47D5322
          167EC8E3B117B2620D6CEDFBAFBB9E3110F07A07448452D28B1EF786B29FADA9
          699AD56E6B784DAD14A5B31BD1EAD23798ADA6A9B3A6A4B3D3BB686E6F2007E0
          BD84E2DA95B1687006AB582EA668CA4EFA4844ACBE918417CACCCC30C1E10820
          CA4AF4126B5691C1366DABA2FBF2C36CCCC0976BBEC1A0C1A578F8C1EBE87EBB
          A056ABE1F4C9D1A7CF188C193786A4DF1692B3C7E07507919A9681751BB791A7
          73E2BAEBAF85ABBB0506735F0C1C388097FF3F78E8207CCE1AFE2C7A7309468D
          1E81C6461B6C6DCDF0741F20A3C4604D1F8E9917CCC09E3D07E973AAE1E83882
          8C9CC958B9FC059C3F6D3C3233C7E1DE7BAE8695BCE8B2E55FE00F4F5F8FF262
          928E246F9997ECE97132AF00AD4ACEBD4B6E8E11F1640CF5A7DBE9EFBD5E8B78
          D52699D2B254AD362F53A9A291369B076BBF75A3B1BEFE33674F0BCBF564A984
          6EBD39F3FEF23E59EF2B25CDF3DD6EFB1B6CB2882592BF495F676506A3B130E2
          7CC757DD6EB6E63D2B979BDF2441146332B6C7D143A04BC3E0E13320AC5EF952
          AEA3BB6560241ADEA9D59834D14870B6CBD97113918DBE0C9DAC93094F9AFF99
          6AA4FCC084AF0BFD074C987BE8A477D3B1E3273728A5D191325E8349409BAD07
          166BD1F3F7DD79CE4325853199CDE6BD391C71DC4AB2A32FC94B2EE90C463519
          C540C609A2ADD5C53D8E42AB42754D270D642669E624AFF656505688B1A36E27
          972B60E7EEAFB0FDBBEF71EE79D7E1C30F5FC0D557CD40475323AC994558BA74
          2DAEBFE101CC98391DAB577F8580EB0454E46AB76CDBC71F7C2ECDF224298EE3
          478FE39D773FC4C6CDDF61E3C6D5C8CFCB42D0D74D61408BF716BF8767FEF01C
          D6AC598111C32B1025A2D7D119C295575E0F19298F8DDF2C41D0DF8331E3AFC5
          CB2FDC8509E78E4751E124BCB6E07E4C9D7123EE987F2DD6AEDF81AAE34BD0D9
          D64EAA07F007E3987EC15378E8C119B87876259E7FE92B4C9A508ABEA5292415
          9D20BA49E4A3F7C08941AF3C1D8A2A1799CDFA379B3AF4BED7DFDCFE9BFADA43
          CF656519093432BEDB1808278F1515965E307C58767143CD0F1B594DA89F6F36
          22FC296CB3155195D2506BB6A4BF2748C4ABBC6E9F53A5528EB2A615570B9F7E
          F2449FA6D3476BE8D53E4290221CF231A9CA5D6A2FC27EA11C2DB91F3F69F67E
          FD07BDD2E34E7961DDFA6FAB35AA8496CD6CB73B0C5F5068C9CAD63F70E74D63
          36665AA257D9EC6DF7C763813C564A96183DB272AC206060D7AE061CADEEC2D5
          978E445931C5D960120E6F1843463C8A9DDB9E457969265ADB5C28E9DF07B7DC
          F022BA5D41AC5CF53BBA833C4C9A7809264EACC46F1F9B0F476B0B790F09BEDB
          718266F42414159463CE4573B0FCF3CFE9B5DDD8B8610B5C2E372EBDEC32C6A1
          F1DAC205B870CE5CDC79E79DC8CBCBC32BAF2C4024D48AB6B61E8AA321BCF8E2
          ABE8216FF2D56AD629D781F7DEFD8C80D2818D5BF6E2B38F9FE5061932F232BC
          F2D27D3877F21894F4998A679EBE15175F3A078DD507317ECAFDF8EEDB17A190
          B0A451F26269668C1EF7306EBF7D126EB9751EE65DF13876ECAC4253FD8B387E
          B09E5783656B1B5AAD84BC9897E73B52386A27E2F78A37A87AF38B3527C6EDD9
          DBFC4A24E22D4961ED9563310AE7314C9A34B5AFC5D036B7BEAEEA7772B9E617
          ED753664C4A221AEE8A47225F95AC11F8BC5B4E999F9C385A51FFDBEA4A5E9D0
          29561296C93F1697CFB2FFBFF7C5FE2E27D128C8FB0D5AB962C74AAD36DA4780
          828852DC4EC67B72F2C4CCCF870C94F643CCFF6AA7DD5BC10A55B01E8CECA06B
          8A558FDF3CBE0E816082E2F3547CBD661796AFD881AD1B1EC2D0517DB1F99BA3
          386FFABFE19EBB2EC12B0BE6E3D4915A940E2CC595573CCD17893EF9F423D85A
          8EE199673FC4E38F5E4D834D842EC1166EE478EFFDD578E4B70F10C802E4AE73
          70F34D3762D13BEFE2FBAD6BC843D971C5953710076AC4934FBD80FBEEBD176F
          BFFD16F187AF883FB08AB4116CDDB619E1501485F945183DF61CB434552118F2
          1137F818D75E7309CE3B7F16567CF62A4ACBFB92279C8A575F7E0093268F4569
          E9143C78EF35987BD99558B6EC43349E6EC2138F5F43F7D9CC9B976B0C2A4C9E
          F624E6DF762EAEBF71323E797F23AEBAF12D7CFFEDA3E85F9E82A6463B72B274
          D877A80937CE5F89A58B2F45BA55826E879348ADF254767EE15D27AB45FB5E7F
          7BC78CC646CF531409F36862B1452DDF15978F1AE472D41E0D85E24A91E81F75
          9EE9AD489BE4AD8562BC3E445666E97061C9A28786757456EF15CEC4945FFD95
          4CF2EDD48CEC3EE50E6732E5E081D3D32A06E7EDEC5BA2DB9D97162AD4283D4F
          3B9CE189E4C578FF44DE8A57E0DD1050D13F1B1367BE0B835681D56B1FA00F53
          A3ACFC0E5C3B6F0C1E7A68163E5D7A80F4B70ABF79E8351C3BB8081192AFE905
          D9987FCBCB3855DB81FB89ACFDFEA997B17CD96BC82B4845736D13AF1216831C
          1F7CBC1EB32E3817C52543514F44B2A8A818BF7BF209DC7DC7ADD8F4ED7A5C72
          C90D58B1E2339AF93672F5D710A90A12D7184A337E1166CC98CD81C18EA7CF9F
          7F37FAF62BA36BDD455CA23F4E9D3C887957DFC533B6D9F6F0DC4B2F46FFFEA3
          0908BF21209C83BE7DA71049BD9C00D58E93A7AA28DC2C4673CD5EA6358987C4
          A1A1103865EAEF70D71D9371D5BC9158FDE5412C5CB40DD9690A7CB4F426ECDF
          5185C143B330EF9A4FB062E5619C3A74373F0AE7F78568F6B39E9531984DCA3D
          C1B0F2E1D3CD9263D5F5A121878EB64E1C35A2E487B262C3DE5D3FFE68974A05
          D1D9A2A1BFF68B5587B7A4649D2FBCF3E65D13BB1D4D5B983C137EA115DCCFE2
          80D0E40D4A3B2E9E3DFCA982DC1E6F479BA74A63B0644804FFDDCD0D6D13C331
          29AF77C0C20C6B9C21F0C399BD1D9DCB4B5231EFC6657C956EE517B7E3D0FE16
          DC74C727F874F17C7475BA89141EC3E5974F4459FF3BF1DACBB7E08E7BE67024
          DF76F3ABA8AE6BA7C17F16B366CFC398B123F0F1C7EFA2AB792F85480D014186
          8F3EF906732F9A01B33E09AD79284F6E1D3860206EB8FE2AF200B7A1BCDF483C
          F5D453B8ECB28B895896F2CFBDF2AAAB78EE242398EF1220D828DC78D32DC421
          DEC4EB0B5EC51D77DC86F3A74C444E7E392A2B47E1F2CB2EC0BDF7DD43617118
          16BCFC3001611C4A4A26E2AD379E246096A272D814AC5EF502468DE883BADAD3
          C4DCC5501B359872FE13B8E7CEF370F1C5F4BED7B7A24F411A1E7DFC436CDBF0
          0085E204F6EF6FC48A352771FCA40D4F3C300A03FBA6103771738E16671C82E2
          BC4C1A27226DD8158CC85FA019DD6C31694BEA9AE5CA751B8EDF2F9786CBC47F
          A7D7C4CF028126B352A5BF4678EDE56BAEF4F9DC1FFF6397F2975F310A251279
          DA8FE386999789A27B174A15290890B88DC6C4F4C15A4E5C587B635152DA1B6E
          F8DA8E9803A1AC341DF3AEFB8C6BE637DEBC0E2F3CB7168307E5E2E22BCEC333
          4F2D47779707D75E3B1BAFBEFE05F6ED3D8163C717F39070CDBC67C0D6833EFB
          EC53B4B55411CF188D77DF79968C761782EEC3882435F8E0837598337B0A8C7A
          294F35335B0761FF81C318367410CFFFBB78EEC578FFBDF771FF030F12E97241
          A130E0C4F113A8A818C853D70F1F3E083D49D131634683C95CA6D5EF23AFF0DC
          F32FD2FF07C98897223BCB8C575E5D421EA12F16BEFA10264C1A8BB2B2F3F0BB
          C76FC0A557DC85677EFF30DE787B3985A78DB0D51DE75BD35A938E3CC213E461
          A662FC985202DCB778E2993974DDC770F5654371DFC3B3F1D0BD1F62EAD472FC
          F1E52DB87446092E9C598AFA864EDE962EC10A002712BC935C381800ABAD2097
          B196C86ED4B6997F7BAC3A59A192F9E70AFF64773A76EE42A250DD292C7C69DE
          ED3E9FF7F57F164991481C4AA57CFDF8E1AAB589A8EFCD285B9F659B4DA25EF9
          C77E668B3FE2E41910B09E4BDC6D9D01C2F5CB286448F0DA4B17A3A5C58752F2
          12ACF9D4176B4FE2B61B27904434A3DDE1436ED1B5D8F0F5739874FE6C5C7DC5
          6D0846E3E4DA9FA1CF3112ABFF01B366DD800F3F780B13C60F82C7E3C6EB6FAD
          C49DF3AF21B268852F94E4CBD4466B3FF21C1FF3CD9B088502A54286B9732F47
          30E8E3BBA6CC13CE9C310313264C4061511E85A962F429CAA6FB95930BFF8AA4
          5E3AB9FE42520C56E22D77F233109FAF5C81BCDC520A630B30EBC2F3E9B5F958
          FCEE53B8EEC6A960C539CBCA6663F8D0620A550BE0EE3C0C8188C2B9931FC76F
          1FBD0039248D776C3F893B1F24E33FB004C74EB462E14B57E08DB736E195D72E
          C1F8D12F60F2A422DC3DBF1255A7DA79EF090605E685D902155BB7E9FD99ED7E
          7849650D7FE0BB3D5DFDBDCEBA6BD846DF3FD3CF9A8546A339FF31E1C3C5F73D
          D25877E20FEC64CFAFFD62728455E15048959F8F1F2DDB978C055E88C5E5BC2E
          92E8ACC1CF0041825E20B045A19F02E14A02023BCAB6EAB39B514352D162D163
          D3E653E820E3DF7EE324D4D6DA513E742866CE7C0435D5369C38B903B3288677
          7607B06FDFC768AF6B417A510556ADF802EFBEF725CDD459183BBA1F858E56F4
          2B2B465A9A1561DEE3916F20406F2A22F7CA0EDC76C2644AE57D16C5BC3743EF
          3DB3357C97D3C137A30476FE932D6F939CD31B33918838E1743B20A3D77439DC
          B075F420C522C281438D74AD2C988C4ABCB568197991211859D987EF203A4839
          4D9C389F8C3F02575E3E9AE46906060C9A4FA0BD115A8D86A465336EBA7934AA
          4EB6E2EA1B3F446EB615375F3F04E7CF28C78C696F91D7D1E3A53F4EC2C99376
          AE28126796B879673A9AC56CDF852DCD4B850092E2FCFB77ECF51605421DB7C9
          65AA7FAACB7D28E4476676F142E1ADD76F7DD9616FBA5726FFC79D4FCF36BF0E
          4742E411FC484B1FFEDC3995469BCFFDDD82A488350413FF2A209496A4E3AA1B
          96F10D914FDEBF06550484CC4C33CDE6ED1833AA18FD4AB3E0A281CCCCCDC4F7
          3B6A48CAADC08BCFDE02972784503881C10372F85A006B9E955D5888784844DE
          A09B6FC0E88C16B8BBDD60E596599D422121EAF5548CAB90E1D98CE10A2391E4
          4BD3675B86B33E9789045B7C89902B0F83F54914F1E65CB1DEB2BB60CD50FD30
          6A0D902A657074B5C1929A094F670BDC5E27DD47317CF4BBCE2E273D6B143939
          29041A2F3EF86433468F28A450A5C233CFADC26DB74EC489AA76DE99F6DA7995
          BC8DD0F871CFC2E9F4E2C8A1DF22D4DD8D7B7FBB012D36373E5F72214E55DBF9
          3E47E2271EE1A74010C7BD10EB4BEFDBB53FAEEA6C3DFC34CB9364E1EC6CF3B1
          7FF4C5D616345AFDBBC2DBAFCF7FA7B3A3FEA65E97F28B08E02DF4A291305FD3
          D7EB2C7B2331F127D9B9E5EF95E6D89EF7F654DD2192EA91E4153B7E1A1A4467
          4283E44FA1816DAE0C1E9483A9B3DEE75BC05B37DE43B1D989A65637367E5B8D
          3B6E3D177E77EF967398AC69B11868365BD0CAAA9E646641A931A3A5B99B4893
          9CB7D9236085E4AC4A14DBEE4D484262B1382012E4329158BC2F09D151B1583E
          4410C918133E422035938F2E150B12E66FEB492515D18DB102433672A719C924
          AFDD539648C41589647CAF90885BE977AA4432564BF47A18FD6C262F51974844
          53E9EFA9C978242224E332B6B1C3765705024C9C7E660B43217F0F5B1822B058
          D0D3D3CD566AF97E4467BB1BED1D6E0A4F12029F08668B1C3B7EACE7EE7CF8D0
          7498F412BCF4DA0E2C59BA0F8776CE472D01817B039C05C119201057605BE6B1
          901729D9399F1EAFCBBAE1746DF3D50A45E04A9FC739961D6096CAE4BD5CEDEF
          00224C04D468CC5C2E2C7CF19A4FBCDEEE796C21E8973C409435C522E31258BE
          4A49CD7DCB62C9DBD8DDD3813E855A4813A7D604DCED33A5722DEF6FC88CCE13
          5644BD9D385983CE9F9245968F9F96A2C3834F6CE407469FFDB719E876F9E0A2
          7F16B38A37C880A04D4A655AAF58AC8A49659A133285BE5A2C33498868FA2261
          D71EA94C5925966894628956A0CFAB17C4F24C91A06013DB4697F59267940543
          9D8E08C92E859CB5F7ED3DF2CFEFE34CA370E6097A07E88C52E2ED9E922C554D
          C64EB5937708F46EA924B9A7104B946A8958A6F17A5BED528946AB5419FA92DD
          DB0924C6643C9A158F069B13C960462CE2C9A431203C4A2746232CA3BDA33A1A
          0B952463A149C998272B1CF60B526900B1A81F3E92C57122D3EC902AEB06D3DA
          E2406E960EDB779DC68245BBF0D233E78114367CC130DFF86245C37B3942E24F
          9B592CEF40A5D56FF745ADE35A6C46DEFBD1EBED380789E8ED5E6FCFDC783C44
          A4BC57BEFFED12B4C0F724944AED7A228BD77EED7177CE90D2A43ACB31CEBA95
          288500F6B3466BF95290285E96C9153BD8264532618041D78AC25CA0B3A36373
          2CD8732EBB58FC2C107E121E588F260E0CA117086CE3CA1F8841AD16D38C1191
          9E7743AD49834A6D72C814695F41501C932BF59B2CA963DA4381AE6438D4ED56
          E972E87D2A6E32A7E3786F0737A9818CA3E55BC98248FEA7F6BE7C312CC1BAA9
          DB108D878959EB7B81C032AA44BDF2F52C10CE3CED9FBFB10EEE62318FB17132
          3E5F56674D3B1361BE85CBF65C3CEE06FAAE67F7DBBB63C8B6A849EF276221FA
          99347FB80772551A4D1A7D2F190BB7F143A752798644A532163A1D27FA05FD6D
          D9C964F8DC50D07E4E30D0AE8904BBB8449449346025A38C2639DF56B6DBD809
          75193F23CA3C0078E7DA382F57D00B84040F65498964AFD690186EEF4CC1A163
          22683449F2342914FF03955E57D73D1E8FFD72B678C4568BD9189CE51067979E
          D56AE30EE1E5E72FDF16F2FBC6B35EC97F064090C772A54AB74E6F4AFB23CD80
          9DC1909B666B88D0938174AB0246D571BA752923603B8578789458A2F8B34738
          BB66F0272088CF1883A90D2F4F263118F308A9B90195A16CA9429DB9231E0B7D
          1D0D879C4C52C6A2DDE452C7C0EFB581060D1C08244F595A9CC779BCB75FB454
          FF574090FF04080952041DFF6220A8786558AF870141476363E6EC9DCDD4BF04
          8293D405EB909B42E3453336749A80D003852A8F009F4A40AE82881DF421B088
          253A93DF757A5434D27381DB79C4EAF3348C08871C692C3746AB35B11EA608B3
          73A7BD0C858300893F038125D4C4C9238824AA53A9399565CCD08DAD20095C43
          6010F19C51D6C5CEEBB40F0D87BD8F78BC9D73D86C671B88BD1919AC887D849E
          477D5078F6C90BDB29D2A4B17E4E2CA124C989937A975A63F88346635CCB4816
          3B671F0AFBC0BA7F6465A5A0A4880636E102530A4167FDC94424502621B6CA53
          3E78683823177973EFDE566891888BA35E6F2883C13274B1C132F81BB5366D17
          BDA52D1064656D3A28AE3AF8A1984482C244EA38DE318EFD5EA5CBFE1F0E0427
          E4CA6CF2ACE9E8E93A4ED7A2D949214BA1CA4524D0C9ABACB91C47E1EAD9AF93
          48AD0FFADCB557BA1C87F312E4D6E50A0BF7ACACC007EB3AC3430307448CF336
          363909095E6BF6A05CB942E2944842D8B1A38D08AC9E66BA9C6FDF27A26C17D8
          4484DA3EC9E168FD6D2C1298C01E99F5C5E4CBCD8964587873E1CD1BEC1D0D53
          140A15DBEEDD65B266BFAA56993F77F5B470DDCD4E393317C80A5A2A941A9244
          A5BC9B1ACBBB4FC4831A57DBA66682A5910D5282375C3CD3D95DDC9B2C120D3A
          78F692C15AE14ACF99F2A929A5722521661BF30C2C8730CC00166569DDDD847E
          E71956FFFF0710E48A4C7AE60E7A6D26BAEDDFC3E7A98239752264AA7491DF53
          7FB1A3F5DB17DD3DC7B3F9F5651A26743929651C81710A96FB10E7E97C89A4D6
          D4AF80C6A1512A61C531B4D87738C80F104988A74543CCFD138723221BA29F83
          01EF05E1A0E71E525D13287CB07C8DBDC2371B16C98EEC5B3743A936DB345AD3
          6EBDC18A48280C27014141B39301211A4DF2AC9B41FD74C8CDB420108C726590
          4844725C8E830D845291948506DE89B57725314C00600ECD6419E4CECABBF013
          8DB1FC59725DAD6C6C29F6F7E6D1A9E95AFF07843340F8818070123AFD20C8D4
          E950D03F29B9595BE3DA299DB62DB7FA5CA7CF63715EAE4CE9257D89082743BC
          7F24DDBBCE5A3E402C961D63CFAEA0A168B3BB507B9AA4A48475B10F7020B03D
          0BB613CAEE9BD572824418D265AB2F282A1FF18DB0FE9BB771E2F026FE60ACD9
          344B2A4DC492AC71246F26C180E0F3C76135255056D85B87877301C64213B17E
          D170C73136A812B19C5B211C7691A7884067EEE74BCF99F6BCC93A6C914269E8
          0C90DB6747B764321D01CDC1C3C4FF01E1678060184C1E21957B5499CC024FCF
          011A8753E4ADD32F76B4EF78A5AB7D7B16E3634AA5A557D1F0BC4E524432CB18
          9A843BD9BD33EEA05229D1DC6E84BD93B84422F8174060453698B797ABD5E8B2
          D521AFCF1008EBD6BD89134736D38399F82EA1566FFE0B2024C0DAD1CA306684
          8577658F447A2B7912FAC8789EB19DADDFFFC0187D2CE467E99850194ADA5333
          C67E64CD1CFBBE586AAA8D91D1559A5C72490E329C8A6E40FB7F40F8554090D3
          750C7075FD48DCE10032F3AEA071CC4AEFB26DFDF474F5D2F1BEEEA390D17D48
          48B633FE66CEA89CAD50E8BE8A277A93582592042F9D77E8680C1E9797D487EE
          AF80208354A984A3FD340161F03F0602CB19E8DB371B634697C3EDF6FF69E0D8
          8025920963DDF1B51F06BD6DE3B5BA3ED09BCBDF3298073E2D535ABC09D6DF4E
          A4E16706D4DAFCFF03C27F00086EE72118ADE3896897D26733328DD9ADF5ABA6
          D85B364E0DF89B4D32A575AFDE5A7939C588AE24CE74B2A55B576BE4A8AAB2A3
          FEB48BD786FA7B40F87FD9FB88EAC545E6D60000000049454E44AE426082}
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object Memo4: TfrxMemoView
        Align = baCenter
        Top = 1009.134510000000000000
        Width = 718.110700000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = [ftTop]
        Frame.Width = 4.000000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          
            'e-mail da ADPAR adparnamirim@uol.com.br/ Secretaria: adparsec201' +
            '2@gmail.com CNPJ 08.332.785/0018-50'
          
            'Rua Comandante Petit, 905 '#8211' Parnamirim-RN/CEP  59140-140/ fone/f' +
            'ax: (84) 3645-2380')
        ParentFont = False
        VAlign = vaBottom
        Formats = <
          item
          end
          item
          end
          item
          end
          item
          end
          item
          end
          item
          end
          item
          end
          item
          end>
      end
      object Memo5: TfrxMemoView
        Left = 3.779530000000000000
        Top = 653.858690000000000000
        Width = 616.063390000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        HAlign = haCenter
        Memo.UTF8W = (
          
            'OBSERVA'#199#195'O: ESTE DOCUMENTO S'#211' TEM VALIDADE PARA A SECRETARIA GER' +
            'AL DA ADPAR')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 136.063080000000000000
        Top = 7.559060000000000000
        Width = 582.047620000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '[frxdbBuscaIgreja."nome_igreja"]')
        ParentFont = False
        Formats = <
          item
          end
          item
          end
          item
          end>
      end
      object frxdbBuscaIgrejadta_fundacao: TfrxMemoView
        Left = 136.063080000000000000
        Top = 74.149660000000000000
        Width = 582.047620000000000000
        Height = 18.897650000000000000
        DataSet = frxdbBuscaIgreja
        DataSetName = 'frxdbBuscaIgreja'
        DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Fundada em [frxdbBuscaIgreja."dta_fundacao"]')
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Left = 136.063080000000000000
        Top = 102.047310000000000000
        Width = 582.047620000000000000
        Height = 18.897650000000000000
        DataSet = frxdbBuscaIgreja
        DataSetName = 'frxdbBuscaIgreja'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Width = 4.000000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          'Pastor Presidente: [frxdbBuscaIgreja."nome_presidente"]')
        ParentFont = False
        VAlign = vaBottom
      end
      object frxdbBuscaIgrejacidade: TfrxMemoView
        Left = 136.063080000000000000
        Top = 37.795300000000000000
        Width = 582.047620000000000000
        Height = 30.236240000000000000
        DataSet = frxdbBuscaIgreja
        DataSetName = 'frxdbBuscaIgreja'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'no RIO GRANDE do NORTE')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Align = baLeft
        Top = 162.519790000000000000
        Width = 279.685220000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Frame.Color = clLime
        Fill.BackColor = clLime
        Memo.UTF8W = (
          'NOTIFICA'#199#195'O DE OCORR'#202'NCIA')
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        Left = 26.456710000000000000
        Top = 192.756030000000000000
        Width = 498.897960000000000000
        Height = 34.015770000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Color = clLime
        Memo.UTF8W = (
          'Anexar toda documenta'#231#227'o necess'#225'ria, conforme o caso.'
          
            'Marcar com um X o quadrinho correspondente ao seu pedido e preen' +
            'cher os espa'#231'os em branco.')
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Top = 234.330860000000000000
        Width = 396.850650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Frame.Color = 16763904
        Memo.UTF8W = (
          'IDENTIFICA'#199#195'O DO MEMBRO OU CONGREGADO')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Top = 438.425480000000000000
        Width = 154.960730000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Frame.Color = 16763904
        Memo.UTF8W = (
          'VEM COMUNICAR')
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        Top = 457.102660000000000000
        Width = 154.960730000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Frame.Color = 16763904
        Memo.UTF8W = (
          'Ao Secret'#225'rio Geral')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 3.779530000000000000
        Top = 721.890230000000000000
        Width = 170.078850000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Color = 16763904
        Memo.UTF8W = (
          'Em Parnamirim-RN____/____/_____')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 211.653680000000000000
        Top = 718.110700000000000000
        Width = 211.653680000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = [ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'Assinatura Secret'#225'rio(a) da Congrega'#231#227'o')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo13: TfrxMemoView
        Left = 449.764070000000000000
        Top = 718.110700000000000000
        Width = 211.653680000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = [ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'Assinatura Dirigente Congrega'#231#227'o')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo14: TfrxMemoView
        Align = baCenter
        Left = 232.441095000000000000
        Top = 884.410020000000000000
        Width = 253.228510000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = [ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'Assinatura Funcion'#225'ria Secretaria Geral')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo15: TfrxMemoView
        Top = 805.039890000000000000
        Width = 272.126160000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Color = 16763904
        Memo.UTF8W = (
          'Entrada na Secretaria Geral em:          ___/____/_____')
        ParentFont = False
      end
      object Memo16: TfrxMemoView
        Top = 823.937540000000000000
        Width = 272.126160000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Color = 16763904
        Memo.UTF8W = (
          'Conclu'#237'do pela Secretaria Geral em:   ___/____/_____')
        ParentFont = False
      end
      object Line1: TfrxLineView
        Top = 782.362710000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo17: TfrxMemoView
        Top = 763.465060000000000000
        Width = 204.094620000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Frame.Color = 16763904
        Fill.BackColor = clSilver
        Memo.UTF8W = (
          'USO EXCLUSIVO DA SECRETARIA GERAL')
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Left = 491.338900000000000000
        Top = 801.260360000000000000
        Width = 226.771800000000000000
        Height = 34.015770000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'N'#186' PROTOCOLO SECRETARIA')
        ParentFont = False
      end
      object CheckBox1: TfrxCheckBoxView
        Left = 7.559060000000000000
        Top = 192.756030000000000000
        Width = 15.118120000000000000
        Height = 15.118120000000000000
        CheckColor = clBlack
        CheckStyle = csCheck
        Frame.Color = clNavy
      end
      object CheckBox2: TfrxCheckBoxView
        Left = 7.559060000000000000
        Top = 207.874150000000000000
        Width = 15.118120000000000000
        Height = 15.118120000000000000
        CheckColor = clBlack
        CheckStyle = csCheck
        Frame.Color = clNavy
      end
      object Memo19: TfrxMemoView
        Top = 264.567100000000000000
        Width = 264.567100000000000000
        Height = 34.015770000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          'CIDADE/UF')
        ParentFont = False
      end
      object frxDBDataset1cidade: TfrxMemoView
        Top = 280.685220000000000000
        Width = 264.567100000000000000
        Height = 15.118120000000000000
        DataField = 'cidade'
        DataSet = frxdbBuscaPessoa
        DataSetName = 'frxdbBuscaPessoa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxdbBuscaPessoa."cidade"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo20: TfrxMemoView
        Left = 264.567100000000000000
        Top = 264.567100000000000000
        Width = 49.133890000000000000
        Height = 34.015770000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          'SETOR')
        ParentFont = False
      end
      object frxDBDataset1setor: TfrxMemoView
        Left = 264.567100000000000000
        Top = 278.905690000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        DataSet = frxdbBuscaPessoa
        DataSetName = 'frxdbBuscaPessoa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxdbBuscaPessoa."setorcong"]')
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        Left = 313.700990000000000000
        Top = 264.567100000000000000
        Width = 336.378170000000000000
        Height = 34.015770000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          'CONGREGA'#199#195'O')
        ParentFont = False
      end
      object frxDBDataset1congregacao: TfrxMemoView
        Left = 313.700990000000000000
        Top = 279.685220000000000000
        Width = 287.244280000000000000
        Height = 18.897650000000000000
        DataField = 'congregacao'
        DataSet = frxdbBuscaPessoa
        DataSetName = 'frxdbBuscaPessoa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxdbBuscaPessoa."congregacao"]')
        ParentFont = False
      end
      object Memo22: TfrxMemoView
        Top = 298.582870000000000000
        Width = 532.913730000000000000
        Height = 34.015770000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'NOME COMPLETO DO MEMBRO/CONGREGADO')
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        Left = 532.913730000000000000
        Top = 298.582870000000000000
        Width = 117.165430000000000000
        Height = 34.015770000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'N'#186' ROL IEADERN')
        ParentFont = False
      end
      object frxDBDataset1nro_rol: TfrxMemoView
        Left = 532.913730000000000000
        Top = 313.700990000000000000
        Width = 117.165430000000000000
        Height = 18.897650000000000000
        DataField = 'nro_rol'
        DataSet = frxdbBuscaPessoa
        DataSetName = 'frxdbBuscaPessoa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxdbBuscaPessoa."nro_rol"]')
        ParentFont = False
      end
      object frxDBDataset1nome_pessoa: TfrxMemoView
        Top = 313.700990000000000000
        Width = 483.779840000000000000
        Height = 18.897650000000000000
        DataField = 'nome_pessoa'
        DataSet = frxdbBuscaPessoa
        DataSetName = 'frxdbBuscaPessoa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxdbBuscaPessoa."nome_pessoa"]')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Top = 332.598640000000000000
        Width = 325.039580000000000000
        Height = 34.015770000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'NOME DO PAI')
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        Left = 325.039580000000000000
        Top = 332.598640000000000000
        Width = 325.039580000000000000
        Height = 34.015770000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'NOME DA M'#195'E')
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        Top = 366.614410000000000000
        Width = 139.842610000000000000
        Height = 34.015770000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'DATA NASCIMENTO')
        ParentFont = False
      end
      object Memo26: TfrxMemoView
        Left = 139.842610000000000000
        Top = 366.614410000000000000
        Width = 283.464750000000000000
        Height = 34.015770000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'NATURALIDADE (CIDADE/UF)')
        ParentFont = False
      end
      object Memo27: TfrxMemoView
        Left = 423.307360000000000000
        Top = 366.614410000000000000
        Width = 226.771800000000000000
        Height = 34.015770000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'NACIONALIDADE')
        ParentFont = False
      end
      object frxDBDataset1dta_nascimento: TfrxMemoView
        Top = 381.732530000000000000
        Width = 139.842610000000000000
        Height = 18.897650000000000000
        DataField = 'dta_nascimento'
        DataSet = frxdbBuscaPessoa
        DataSetName = 'frxdbBuscaPessoa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxdbBuscaPessoa."dta_nascimento"]')
        ParentFont = False
      end
      object frxDBDataset1nome_pai: TfrxMemoView
        Top = 347.716760000000000000
        Width = 298.582870000000000000
        Height = 18.897650000000000000
        DataField = 'nome_pai'
        DataSet = frxdbBuscaPessoa
        DataSetName = 'frxdbBuscaPessoa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxdbBuscaPessoa."nome_pai"]')
        ParentFont = False
      end
      object frxDBDataset1nome_mae: TfrxMemoView
        Left = 325.039580000000000000
        Top = 347.716760000000000000
        Width = 302.362400000000000000
        Height = 18.897650000000000000
        DataField = 'nome_mae'
        DataSet = frxdbBuscaPessoa
        DataSetName = 'frxdbBuscaPessoa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxdbBuscaPessoa."nome_mae"]')
        ParentFont = False
      end
      object frxDBDataset1naturalidade: TfrxMemoView
        Left = 139.842610000000000000
        Top = 381.732530000000000000
        Width = 283.464750000000000000
        Height = 18.897650000000000000
        DataField = 'naturalidade'
        DataSet = frxdbBuscaPessoa
        DataSetName = 'frxdbBuscaPessoa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxdbBuscaPessoa."naturalidade"]')
        ParentFont = False
      end
      object frxDBDataset1nacionalidade: TfrxMemoView
        Left = 423.307360000000000000
        Top = 381.732530000000000000
        Width = 211.653680000000000000
        Height = 18.897650000000000000
        DataField = 'nacionalidade'
        DataSet = frxdbBuscaPessoa
        DataSetName = 'frxdbBuscaPessoa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxdbBuscaPessoa."nacionalidade"]')
        ParentFont = False
      end
      object Memo28: TfrxMemoView
        Top = 400.630180000000000000
        Width = 139.842610000000000000
        Height = 34.015770000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'RG')
        ParentFont = False
      end
      object Memo29: TfrxMemoView
        Left = 139.842610000000000000
        Top = 400.630180000000000000
        Width = 249.448980000000000000
        Height = 34.015770000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #211'RG'#195'O EMISSOR/UF')
        ParentFont = False
      end
      object Memo30: TfrxMemoView
        Left = 389.291590000000000000
        Top = 400.630180000000000000
        Width = 260.787570000000000000
        Height = 34.015770000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'CPF')
        ParentFont = False
      end
      object frxDBDataset1cpf: TfrxMemoView
        Left = 389.291590000000000000
        Top = 415.748300000000000000
        Width = 260.787570000000000000
        Height = 18.897650000000000000
        DataField = 'cpf'
        DataSet = frxdbBuscaPessoa
        DataSetName = 'frxdbBuscaPessoa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxdbBuscaPessoa."cpf"]')
        ParentFont = False
      end
      object frxDBDataset1orgaorg: TfrxMemoView
        Left = 139.842610000000000000
        Top = 415.748300000000000000
        Width = 249.448980000000000000
        Height = 18.897650000000000000
        DataField = 'orgaorg'
        DataSet = frxdbBuscaPessoa
        DataSetName = 'frxdbBuscaPessoa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxdbBuscaPessoa."orgaorg"]')
        ParentFont = False
      end
      object frxDBDataset1nrorg: TfrxMemoView
        Top = 415.748300000000000000
        Width = 139.842610000000000000
        Height = 18.897650000000000000
        DataField = 'nrorg'
        DataSet = frxdbBuscaPessoa
        DataSetName = 'frxdbBuscaPessoa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxdbBuscaPessoa."nrorg"]')
        ParentFont = False
      end
      object Memo31: TfrxMemoView
        Left = 56.692950000000000000
        Top = 491.338900000000000000
        Width = 540.472790000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          'ABERTURA de Processo Disciplinar '#8211' Anexar Den'#250'ncia')
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        Left = 56.692950000000000000
        Top = 510.236550000000000000
        Width = 540.472790000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            'FALECIMENTO do membro/congregado supra-identificado em: dd / mm ' +
            '/ aaaa.')
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        Left = 56.692950000000000000
        Top = 529.134200000000000000
        Width = 540.472790000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          'DESLIGAMENTO DO ROL '#8211' Anexar Oficio ')
        ParentFont = False
      end
      object Memo34: TfrxMemoView
        Left = 56.692950000000000000
        Top = 548.031850000000000000
        Width = 540.472790000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          'SUSPENS'#195'O ADMINISTRATIVA '#8211' Anexar Processo')
        ParentFont = False
      end
      object Memo35: TfrxMemoView
        Left = 56.692950000000000000
        Top = 604.724800000000000000
        Width = 540.472790000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            'RECEBIDO POR TRANSFER'#202'NCIA da congrega'#231#227'o da IEADERN: __________' +
            '___________________')
        ParentFont = False
      end
      object Memo36: TfrxMemoView
        Left = 56.692950000000000000
        Top = 623.622450000000000000
        Width = 540.472790000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            'RECONCILIA'#199#195'O do membro/congregado supra-indicado em: dd / mm / ' +
            'aaaa. ')
        ParentFont = False
      end
      object Memo37: TfrxMemoView
        Top = 491.338900000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '12')
        ParentFont = False
      end
      object Memo38: TfrxMemoView
        Top = 510.236550000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '13')
        ParentFont = False
      end
      object Memo39: TfrxMemoView
        Top = 529.134200000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '14')
        ParentFont = False
      end
      object Memo40: TfrxMemoView
        Top = 548.031850000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '15')
        ParentFont = False
      end
      object Memo41: TfrxMemoView
        Top = 604.724800000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '18')
        ParentFont = False
      end
      object Memo42: TfrxMemoView
        Top = 623.622450000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '19')
        ParentFont = False
      end
      object Memo43: TfrxMemoView
        Left = 56.692950000000000000
        Top = 566.929500000000000000
        Width = 540.472790000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          'SUSPENS'#195'O DA COMUNH'#195'O '#8211' Anexar Processo')
        ParentFont = False
      end
      object Memo44: TfrxMemoView
        Top = 566.929500000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '16')
        ParentFont = False
      end
      object Memo45: TfrxMemoView
        Left = 56.692950000000000000
        Top = 585.827150000000000000
        Width = 540.472790000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          'EXCLUS'#195'O '#8211' Anexar Processo ')
        ParentFont = False
      end
      object Memo46: TfrxMemoView
        Top = 585.827150000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '17')
        ParentFont = False
      end
      object CheckBox3: TfrxCheckBoxView
        Left = 7.559060000000000000
        Top = 497.118430000000000000
        Width = 7.559060000000000000
        Height = 7.559060000000000000
        CheckColor = clBlack
        Checked = False
        CheckStyle = csCross
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      end
      object CheckBox4: TfrxCheckBoxView
        Left = 7.559060000000000000
        Top = 515.795610000000000000
        Width = 7.559060000000000000
        Height = 7.559060000000000000
        CheckColor = clBlack
        Checked = False
        CheckStyle = csCross
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      end
      object CheckBox5: TfrxCheckBoxView
        Left = 7.559060000000000000
        Top = 534.693260000000000000
        Width = 7.559060000000000000
        Height = 7.559060000000000000
        CheckColor = clBlack
        Checked = False
        CheckStyle = csCross
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      end
      object CheckBox6: TfrxCheckBoxView
        Left = 7.559060000000000000
        Top = 553.811380000000000000
        Width = 7.559060000000000000
        Height = 7.559060000000000000
        CheckColor = clBlack
        Checked = False
        CheckStyle = csCross
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      end
      object CheckBox7: TfrxCheckBoxView
        Left = 7.559060000000000000
        Top = 573.488560000000000000
        Width = 7.559060000000000000
        Height = 7.559060000000000000
        CheckColor = clBlack
        Checked = False
        CheckStyle = csCross
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      end
      object CheckBox8: TfrxCheckBoxView
        Left = 7.559060000000000000
        Top = 591.386210000000000000
        Width = 7.559060000000000000
        Height = 7.559060000000000000
        CheckColor = clBlack
        Checked = False
        CheckStyle = csCross
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      end
      object CheckBox9: TfrxCheckBoxView
        Left = 7.559060000000000000
        Top = 610.283860000000000000
        Width = 7.559060000000000000
        Height = 7.559060000000000000
        CheckColor = clBlack
        Checked = False
        CheckStyle = csCross
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      end
      object CheckBox10: TfrxCheckBoxView
        Left = 7.559060000000000000
        Top = 629.401980000000000000
        Width = 7.559060000000000000
        Height = 7.559060000000000000
        CheckColor = clBlack
        Checked = False
        CheckStyle = csCross
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      end
      object Memo47: TfrxMemoView
        Top = 264.346630000000000000
        Width = 650.079160000000000000
        Height = 170.078850000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 3.000000000000000000
        ParentFont = False
      end
      object Memo48: TfrxMemoView
        Left = 0.220470000000000000
        Top = 229.551330000000000000
        Width = 650.079160000000000000
        Height = 34.015770000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 3.000000000000000000
        ParentFont = False
      end
    end
  end
end
