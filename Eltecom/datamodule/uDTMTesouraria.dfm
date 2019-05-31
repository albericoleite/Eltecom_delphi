object dtmTesouraria: TdtmTesouraria
  OldCreateOrder = False
  Height = 521
  Width = 935
  object frxrprtFechamento: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42225.645197615700000000
    ReportOptions.LastChange = 42864.813471666690000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 296
    Top = 17
    Datasets = <
      item
        DataSet = frxdbBuscaIgreja
        DataSetName = 'frxdbBuscaIgreja'
      end
      item
        DataSet = frxdbCongregacao
        DataSetName = 'frxdbCongregacao'
      end
      item
        DataSet = frxdbdtstTes_valores
        DataSetName = 'frxdbdtstTes_valores'
      end>
    Variables = <
      item
        Name = ' Variaveis'
        Value = Null
      end
      item
        Name = 'Semana'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtstTes_valores
        DataSetName = 'frxdbdtstTes_valores'
        RowCount = 0
        object frxdbTes_Entradanro_documento: TfrxMemoView
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxdbdtstTes_valores."nro_documento"]')
          ParentFont = False
        end
        object frxdbTes_Entradadta_movimento: TfrxMemoView
          Left = 79.370130000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd.mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxdbdtstTes_valores."dta_movimento"]')
          ParentFont = False
        end
        object frxdbTes_Entradadescricao: TfrxMemoView
          Left = 132.283550000000000000
          Width = 427.086890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxdbdtstTes_valores."descricao"]')
          ParentFont = False
        end
        object frxdbTes_Entradavalor: TfrxMemoView
          Left = 559.370440000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Highlight.ApplyFrame = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = 'Value = 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxdbdtstTes_valores."ENTRADA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Highlight.ApplyFrame = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = 'Value = 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxdbdtstTes_valores."SAIDA"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 154.960730000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Top = 136.063080000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'N'#186' CANHOTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 79.370130000000000000
          Top = 136.063080000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 132.283550000000000000
          Top = 136.063080000000000000
          Width = 427.086890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'HIST'#211'RICO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 559.370440000000000000
          Top = 136.063080000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ENTRADAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 638.740570000000000000
          Top = 136.063080000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SA'#205'DAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxdbBuscaIgrejanome_igreja: TfrxMemoView
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbBuscaIgreja."nome_igreja"] EM [frxdbBuscaIgreja."cidade"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object frxdbBuscaIgrejalogradouro: TfrxMemoView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Rua Ot'#225'vio Gomes de Castro, 27 - Centro - Parnamirim/RN - CNPJ 0' +
              '8.332.785/0018-50')
          ParentFont = False
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
            end>
        end
        object Memo22: TfrxMemoView
          Top = 49.133889999999990000
          Width = 763.465060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'MAPA PRESTA'#199#195'O DE CONTAS SEMANAL  - CONGREGA'#199#195'O/SUBCONGREGA'#199#195'O/P' +
              '.PREGA'#199#195'O')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Top = 71.811070000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          DisplayFormat.FormatStr = 'mmmm '
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'M'#234's: [frxdbdtstTes_valores."dta_movimento"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo25: TfrxMemoView
          Left = 638.740570000000000000
          Top = 71.811070000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo26: TfrxMemoView
          Top = 98.267780000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            
              'Congrega'#231#227'o:  [frxdbCongregacao."congregacao"]  Setor: [frxdbCon' +
              'gregacao."setor"]                                               ' +
              '                                   C.CUSTO: [frxdbCongregacao."c' +
              'od_cc"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              FormatStr = 'yyyy'
              Kind = fkDateTime
            end
            item
            end
            item
            end>
        end
        object Memo24: TfrxMemoView
          Left = 102.047310000000000000
          Top = 71.811070000000000000
          Width = 536.693260000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Semana: [Semana]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Left = 559.370440000000000000
          Top = 1.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdbdtstTes_valores."ENTRADA">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 638.740570000000000000
          Top = 1.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdbdtstTes_valores."SAIDA">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 222.992270000000000000
          Top = 64.252009999999990000
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'REPASSE PARA TESOURARIA GERAL (Entradas - Sa'#237'das)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 604.724800000000000000
          Top = 64.252009999999990000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxdbdtstTes_valores."ENTRADA">,MasterData1)-SUM(<frxdbdts' +
              'tTes_valores."SAIDA">,MasterData1)]')
          ParentFont = False
          Formats = <
            item
              FormatStr = '%2.2m'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo63: TfrxMemoView
          Align = baCenter
          Left = 111.496135000000000000
          Top = 30.236240000000010000
          Width = 495.118430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Formul'#225'rio em duas vias - 1'#170' via Tesouraria Central / 2'#170' via par' +
              'a Congrega'#231#227'o - use carbono')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo21: TfrxMemoView
          Left = 340.157700000000000000
          Top = 2.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SOMA ENTRADAS E SA'#205'DAS........')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 124.724490000000000000
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        object Memo70: TfrxMemoView
          Top = 68.031540000000010000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Dirigente da Congrega'#231#227'o')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 249.448980000000000000
          Top = 68.031540000000010000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tesoureiro')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 498.897960000000000000
          Top = 68.031540000000010000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Aux. da Tesouraria')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Align = baCenter
          Left = 105.826840000000000000
          Top = 94.488250000000000000
          Width = 506.457020000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Recebido por: ___________________________________ Em: ____/____/' +
              '_______')
          ParentFont = False
          VAlign = vaCenter
        end
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
    Left = 168
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
    Left = 48
    Top = 16
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
  object fdqryBuscaCongregacao: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      
        'SELECT a.cod_congregacao, a.cod_central, a.congregacao, a.setor,' +
        ' a.polo, a.situacao, a.telefone, a.cnpj, a.siteblog, a.endereco'
      
        ', a.complemento, a.bairro, a.cep, a.cidade, a.diasculto, a.diaco' +
        'a, a.diacom, a.diacoi, a.diacv, a.data_aber_sub, a.data_aber_con' +
        'g, '
      
        'a.data_fun_coa, a.data_fun_com, a.data_fun_coi, a.data_fun_cv, a' +
        '.data_cadastro, a.usuario_cadastro'
      
        ', a.cong_principal, a.dirigente, a.cod_setor, a.cod_igreja, a.co' +
        'd_cc, a.sigla,c.setor'
      'FROM igreja.tb_congregacao a'
      
        'join tb_parametro_sistema b on b.cod_congregacao = a.cod_congreg' +
        'acao'
      'left join tb_setor c on c.cod_congregacao = b.cod_congregacao')
    Left = 48
    Top = 91
    object intgrfldTesourariaDescricaoBuscaCongregacaocod_igreja: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_igreja'
      Origin = 'cod_igreja'
    end
    object fdtncfldBuscaCongregacaocod_congregacao: TFDAutoIncField
      FieldName = 'cod_congregacao'
      Origin = 'cod_congregacao'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object intgrfldTesourariaDescricaoBuscaCongregacaocod_central: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_central'
      Origin = 'cod_central'
    end
    object strngfldBuscaCongregacaocongregacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'congregacao'
      Origin = 'congregacao'
      Size = 25
    end
    object intgrfldTesourariaDescricaoBuscaCongregacaocod_setor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_setor'
      Origin = 'cod_setor'
    end
    object intgrfldTesourariaDescricaoBuscaCongregacaosituacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'situacao'
      Origin = 'situacao'
    end
    object strngfldBuscaCongregacaotelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
    end
    object strngfldBuscaCongregacaocnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'cnpj'
    end
    object strngfldBuscaCongregacaositeblog: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'siteblog'
      Origin = 'siteblog'
      Size = 50
    end
    object strngfldBuscaCongregacaoendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 100
    end
    object strngfldBuscaCongregacaocomplemento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 25
    end
    object strngfldBuscaCongregacaobairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 25
    end
    object strngfldBuscaCongregacaocep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      Size = 25
    end
    object strngfldBuscaCongregacaocidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 50
    end
    object strngfldBuscaCongregacaodiasculto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'diasculto'
      Origin = 'diasculto'
      Size = 25
    end
    object strngfldBuscaCongregacaodiacoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'diacoa'
      Origin = 'diacoa'
      Size = 25
    end
    object strngfldBuscaCongregacaodiacom: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'diacom'
      Origin = 'diacom'
      Size = 25
    end
    object strngfldBuscaCongregacaodiacoi: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'diacoi'
      Origin = 'diacoi'
      Size = 25
    end
    object strngfldBuscaCongregacaodiacv: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'diacv'
      Origin = 'diacv'
      Size = 25
    end
    object dtfldBuscaCongregacaodata_aber_sub: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_aber_sub'
      Origin = 'data_aber_sub'
    end
    object dtfldBuscaCongregacaodata_aber_cong: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_aber_cong'
      Origin = 'data_aber_cong'
    end
    object dtfldBuscaCongregacaodata_fun_coa: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_fun_coa'
      Origin = 'data_fun_coa'
    end
    object dtfldBuscaCongregacaodata_fun_com: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_fun_com'
      Origin = 'data_fun_com'
    end
    object dtfldBuscaCongregacaodata_fun_coi: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_fun_coi'
      Origin = 'data_fun_coi'
    end
    object dtfldBuscaCongregacaodata_fun_cv: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_fun_cv'
      Origin = 'data_fun_cv'
    end
    object dtfldBuscaCongregacaodata_cadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
    end
    object strngfldBuscaCongregacaousuario_cadastro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'usuario_cadastro'
      Origin = 'usuario_cadastro'
      Size = 50
    end
    object strngfldBuscaCongregacaocong_principal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cong_principal'
      Origin = 'cong_principal'
      Size = 10
    end
    object strngfldBuscaCongregacaodirigente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'dirigente'
      Origin = 'dirigente'
      Size = 30
    end
    object strngfldBuscaCongregacaosetor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'setor'
      Origin = 'setor'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object intgrfldBuscaCongregacaocod_cc: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_cc'
      Origin = 'cod_cc'
    end
  end
  object frxdbCongregacao: TfrxDBDataset
    UserName = 'frxdbCongregacao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cod_igreja=cod_igreja'
      'cod_congregacao=cod_congregacao'
      'cod_central=cod_central'
      'congregacao=congregacao'
      'cod_setor=cod_setor'
      'situacao=situacao'
      'telefone=telefone'
      'cnpj=cnpj'
      'siteblog=siteblog'
      'endereco=endereco'
      'complemento=complemento'
      'bairro=bairro'
      'cep=cep'
      'cidade=cidade'
      'diasculto=diasculto'
      'diacoa=diacoa'
      'diacom=diacom'
      'diacoi=diacoi'
      'diacv=diacv'
      'data_aber_sub=data_aber_sub'
      'data_aber_cong=data_aber_cong'
      'data_fun_coa=data_fun_coa'
      'data_fun_com=data_fun_com'
      'data_fun_coi=data_fun_coi'
      'data_fun_cv=data_fun_cv'
      'data_cadastro=data_cadastro'
      'usuario_cadastro=usuario_cadastro'
      'cong_principal=cong_principal'
      'dirigente=dirigente'
      'setor=setor'
      'cod_cc=cod_cc')
    DataSet = fdqryBuscaCongregacao
    BCDToCurrency = False
    Left = 168
    Top = 91
  end
  object fdqryTes_valores: TFDQuery
    Active = True
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      
        'SELECT t.nro_documento,t.dta_movimento,t.descricao,case t.tipo w' +
        'hen '#39'ENTRADA'#39' then t.valor end as ENTRADA,case t.tipo when '#39'SAID' +
        'A'#39' then t.valor end as SAIDA '
      
        'FROM tb_tesouraria t join tb_parametro_sistema c on c.cod_congre' +
        'gacao = t.cod_congregacao where  t.dta_movimento between '
      ':dtini'
      'and '
      ':dtfim'
      'ORDER BY T.TIPO,2')
    Left = 44
    Top = 168
    ParamData = <
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 43466d
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 43800d
      end>
    object intgrfldTes_valoresnro_documento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nro_documento'
      Origin = 'nro_documento'
    end
    object dtfldTes_valoresdta_movimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_movimento'
      Origin = 'dta_movimento'
    end
    object strngfldTes_valoresdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 50
    end
    object fltfldTes_valoresENTRADA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      ProviderFlags = []
      ReadOnly = True
    end
    object fltfldTes_valoresSAIDA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SAIDA'
      Origin = 'SAIDA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object frxdbdtstTes_valores: TfrxDBDataset
    UserName = 'frxdbdtstTes_valores'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nro_documento=nro_documento'
      'dta_movimento=dta_movimento'
      'descricao=descricao'
      'ENTRADA=ENTRADA'
      'SAIDA=SAIDA')
    DataSet = fdqryTes_valores
    BCDToCurrency = False
    Left = 188
    Top = 168
  end
  object fdqryTotalLancamentos: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      
        'SELECT X.TOTAL,X.TIPO FROM(SELECT sum(t.valor)as total,t.tipo FR' +
        'OM tb_tesouraria t '
      
        'join tb_parametro_sistema a on a.cod_congregacao = t.cod_congreg' +
        'acao '
      'where t.tipo = '#39'ENTRADA'#39' AND t.dta_movimento between '
      ':dtini'
      'and '
      ':dtfim'
      'union all'
      'SELECT sum(t.valor)as total,t.tipo FROM tb_tesouraria t '
      
        'join tb_parametro_sistema a on a.cod_congregacao = t.cod_congreg' +
        'acao '
      'where t.tipo = '#39'SAIDA'#39' AND t.dta_movimento between '
      ':dtini'
      'and '
      ':dtfim)X'
      ''
      ' ')
    Left = 103
    Top = 241
    ParamData = <
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 43466d
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 43800d
      end>
    object fltfldTes_Entrada_Totaltotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
  end
end
