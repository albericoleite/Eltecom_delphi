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
        DataSet = frxdbdtstBuscaIgreja
        DataSetName = 'frxdbBuscaIgreja'
      end
      item
        DataSet = frxdbdtstBuscaPessoa
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
  object frxdbdtstBuscaIgreja: TfrxDBDataset
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
  object frxdbdtstBuscaPessoa: TfrxDBDataset
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
      'setor=setor')
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
      
        'select t.*,c.congregacao,d.setor  from tb_pessoa t join tb_param' +
        'etro_sistema a on t.cod_congregacao = a.cod_congregacao '
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
  end
  object dsBuscaPessoaRelatorio: TDataSource
    DataSet = fdqryBuscaPessoaRelatorio
    Left = 504
    Top = 96
  end
end
