object dtmTesouraria: TdtmTesouraria
  OldCreateOrder = False
  Height = 521
  Width = 935
  object frxrprtFechamento: TfrxReport
    Version = '6.2.1'
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
      Frame.Typ = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtstTes_valores
        DataSetName = 'frxdbdtstTes_valores'
        RowCount = 0
        object frxdbTes_Entradanro_documento: TfrxMemoView
          AllowVectorExport = True
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
          AllowVectorExport = True
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
          AllowVectorExport = True
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
          AllowVectorExport = True
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
          AllowVectorExport = True
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
        Frame.Typ = []
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
          AllowVectorExport = True
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
          AllowVectorExport = True
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
          AllowVectorExport = True
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
          AllowVectorExport = True
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
          AllowVectorExport = True
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
          AllowVectorExport = True
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
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
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
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
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 763.465060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'MAPA PRESTA'#199#195'O DE CONTAS SEMANAL  - CONGREGA'#199#195'O/SUBCONGREGA'#199#195'O/P' +
              '.PREGA'#199#195'O')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
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
          AllowVectorExport = True
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
          AllowVectorExport = True
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
          AllowVectorExport = True
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
        Frame.Typ = []
        Height = 257.008040000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 1.779529999999990000
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
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 1.779529999999990000
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
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 64.252010000000000000
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REPASSE PARA TESOURARIA GERAL (Entradas - Sa'#237'das)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 64.252010000000000000
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
          AllowVectorExport = True
          Left = 111.496135000000000000
          Top = 30.236240000000000000
          Width = 495.118430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Formul'#225'rio em duas vias - 1'#170' via Tesouraria Central / 2'#170' via par' +
              'a Congrega'#231#227'o - use carbono')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 340.157700000000000000
          Top = 2.559059999999990000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'SOMA ENTRADAS E SA'#205'DAS........')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Top = 162.519790000000000000
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
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 162.519790000000000000
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
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 162.519790000000000000
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
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 188.976500000000000000
          Width = 506.457020000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
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
    Active = True
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
        DataType = ftDateTime
        ParamType = ptInput
        Value = 43466d
      end
      item
        Name = 'DTFIM'
        DataType = ftDateTime
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
    Left = 63
    Top = 241
    ParamData = <
      item
        Name = 'DTINI'
        DataType = ftDateTime
        ParamType = ptInput
        Value = 43466d
      end
      item
        Name = 'DTFIM'
        DataType = ftDateTime
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
  object fdqryQuadroDizimistas: TFDQuery
    Active = True
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select a.nome_pessoa,'
      
        '(select x.valor from v_dizimista_total_mes_ano x where x.nome = ' +
        'a.nome_pessoa and x.nro_mes = 1 and x.ano = :ano)as JANEIRO,'
      
        '(select x.valor from v_dizimista_total_mes_ano x where x.nome = ' +
        'a.nome_pessoa and x.nro_mes = 2 and x.ano = :ano)as FEVEREIRO,'
      
        '(select x.valor from v_dizimista_total_mes_ano x where x.nome = ' +
        'a.nome_pessoa and x.nro_mes = 3 and x.ano = :ano)as MAR'#199'O,'
      
        '(select x.valor from v_dizimista_total_mes_ano x where x.nome = ' +
        'a.nome_pessoa and x.nro_mes = 4 and x.ano = :ano)as ABRIL,'
      
        '(select x.valor from v_dizimista_total_mes_ano x where x.nome = ' +
        'a.nome_pessoa and x.nro_mes = 5 and x.ano = :ano)as MAIO,'
      
        '(select x.valor from v_dizimista_total_mes_ano x where x.nome = ' +
        'a.nome_pessoa and x.nro_mes = 6 and x.ano = :ano)as JUNHO,'
      
        '(select x.valor from v_dizimista_total_mes_ano x where x.nome = ' +
        'a.nome_pessoa and x.nro_mes = 7 and x.ano = :ano)as JULHO,'
      
        '(select x.valor from v_dizimista_total_mes_ano x where x.nome = ' +
        'a.nome_pessoa and x.nro_mes = 8 and x.ano = :ano)as AGOSTO,'
      
        '(select x.valor from v_dizimista_total_mes_ano x where x.nome = ' +
        'a.nome_pessoa and x.nro_mes = 9 and x.ano = :ano)as SETEMBRO,'
      
        '(select x.valor from v_dizimista_total_mes_ano x where x.nome = ' +
        'a.nome_pessoa and x.nro_mes = 10 and x.ano = :ano)as OUTUBRO,'
      
        '(select x.valor from v_dizimista_total_mes_ano x where x.nome = ' +
        'a.nome_pessoa and x.nro_mes = 11 and x.ano = :ano)as NOVEMBRO,'
      
        '(select x.valor from v_dizimista_total_mes_ano x where x.nome = ' +
        'a.nome_pessoa and x.nro_mes = 12 and x.ano = :ano)as DEZEMBRO'
      'from tb_pessoa a')
    Left = 408
    Top = 168
    ParamData = <
      item
        Name = 'ANO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 2019
      end>
    object strngfldQuadroDizimistasnome_pessoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_pessoa'
      Origin = 'nome_pessoa'
      Size = 50
    end
    object fltfldQuadroDizimistasJANEIRO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'JANEIRO'
      Origin = 'JANEIRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fltfldQuadroDizimistasFEVEREIRO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'FEVEREIRO'
      Origin = 'FEVEREIRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fltfldQuadroDizimistasMARÇO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MAR'#199'O'
      Origin = '`MAR'#199'O`'
      ProviderFlags = []
      ReadOnly = True
    end
    object fltfldQuadroDizimistasABRIL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ABRIL'
      Origin = 'ABRIL'
      ProviderFlags = []
      ReadOnly = True
    end
    object fltfldQuadroDizimistasMAIO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MAIO'
      Origin = 'MAIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fltfldQuadroDizimistasJUNHO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'JUNHO'
      Origin = 'JUNHO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fltfldQuadroDizimistasJULHO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'JULHO'
      Origin = 'JULHO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fltfldQuadroDizimistasAGOSTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AGOSTO'
      Origin = 'AGOSTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fltfldQuadroDizimistasSETEMBRO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SETEMBRO'
      Origin = 'SETEMBRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fltfldQuadroDizimistasOUTUBRO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'OUTUBRO'
      Origin = 'OUTUBRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fltfldQuadroDizimistasNOVEMBRO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NOVEMBRO'
      Origin = 'NOVEMBRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fltfldQuadroDizimistasDEZEMBRO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DEZEMBRO'
      Origin = 'DEZEMBRO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object frxdbQuadroDizimistas: TfrxDBDataset
    UserName = 'frxdbQuadroDizimistas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nome_pessoa=nome_pessoa'
      'JANEIRO=JANEIRO'
      'FEVEREIRO=FEVEREIRO'
      'MAR'#199'O=MAR'#199'O'
      'ABRIL=ABRIL'
      'MAIO=MAIO'
      'JUNHO=JUNHO'
      'JULHO=JULHO'
      'AGOSTO=AGOSTO'
      'SETEMBRO=SETEMBRO'
      'OUTUBRO=OUTUBRO'
      'NOVEMBRO=NOVEMBRO'
      'DEZEMBRO=DEZEMBRO')
    DataSet = fdqryQuadroDizimistas
    BCDToCurrency = False
    Left = 472
    Top = 224
  end
  object frxrprtDizimistasAnual: TfrxReport
    Version = '6.2.1'
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
    Left = 240
    Top = 241
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
      end
      item
        DataSet = frxdbQuadroDizimistas
        DataSetName = 'frxdbQuadroDizimistas'
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbQuadroDizimistas
        DataSetName = 'frxdbQuadroDizimistas'
        RowCount = 0
        object frxdbTes_Entradanro_documento: TfrxMemoView
          AllowVectorExport = True
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataField = 'nome_pessoa'
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."nome_pessoa"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 986.457330000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbQuadroDizimistas."DEZEMBRO"> = 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."DEZEMBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbQuadroDizimistas."NOVEMBRO"> = 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."NOVEMBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 865.512370000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbQuadroDizimistas."OUTUBRO"> = 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."OUTUBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039890000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbQuadroDizimistas."SETEMBRO"> = 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."SETEMBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 744.567410000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbQuadroDizimistas."AGOSTO"> = 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."AGOSTO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbQuadroDizimistas."JULHO"> = 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."JULHO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbQuadroDizimistas."JUNHO"> = 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."JUNHO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbQuadroDizimistas."MAIO"> = 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxdbQuadroDizimistas."MAIO">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbQuadroDizimistas."ABRIL"> = 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."ABRIL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbQuadroDizimistas."MAR'#199'O"> = 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."MAR'#199'O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbQuadroDizimistas."FEVEREIRO"> = 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."FEVEREIRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'JANEIRO'
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."JANEIRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 154.960730000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 136.063080000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxdbBuscaIgrejanome_igreja: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 145.511905000000000000
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
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
          Align = baCenter
          AllowVectorExport = True
          Left = 0.000000000000044298
          Top = 22.677180000000000000
          Width = 1046.929810000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[frxdbBuscaIgreja."logradouro"], [frxdbBuscaIgreja."bairro"]- [f' +
              'rxdbBuscaIgreja."cidade"]/[frxdbBuscaIgreja."uf"] - CNPJ [frxdbB' +
              'uscaIgreja."cnpj"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 71.811070000000000000
          Width = 876.850960000000000000
          Height = 26.456710000000000000
          DisplayFormat.FormatStr = 'yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Quadro de Dizimistas do Ano: [frxdbdtstTes_valores."dta_moviment' +
              'o"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 98.267780000000000000
          Width = 876.850960000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            
              'Congrega'#231#227'o:  [frxdbCongregacao."congregacao"]  Setor: [frxdbCon' +
              'gregacao."setor"]      C.CUSTO: [frxdbCongregacao."cod_cc"] Diri' +
              'gente: [frxdbCongregacao."dirigente"]')
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
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 986.457330000000000000
          Top = 135.842610000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DEZ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOV')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 865.512370000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'OUT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039890000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SET')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 744.567410000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'AGO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'JUL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'JUN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'MAI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ABR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'MAR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'FEV')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'JAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 120.944960000000000000
          Center = True
          DataField = 'foto'
          DataSet = frxdbBuscaIgreja
          DataSetName = 'frxdbBuscaIgreja'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 241.889920000000000000
        Top = 238.110390000000000000
        Width = 1046.929810000000000000
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 102.047310000000000000
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
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 102.047310000000000000
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
          AllowVectorExport = True
          Left = 763.465060000000000000
          Top = 102.047310000000000000
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
          AllowVectorExport = True
          Left = 474.331015000000000000
          Top = 181.417440000000000000
          Width = 506.457020000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Recebido por: ___________________________________ Em: ____/____/' +
              '_______')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Cambria'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 986.457330000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."DEZEMBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."NOVEMBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 865.512370000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."OUTUBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039890000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."SETEMBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 744.567410000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."AGOSTO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."JULHO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbQuadroDizimistas."JUNHO">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."MAIO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbQuadroDizimistas."ABRIL">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbQuadroDizimistas."MAR'#199'O">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbQuadroDizimistas."FEVEREIRO">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbQuadroDizimistas."JANEIRO">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 540.472790000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'Splendor - Gest'#227'o')
          ParentFont = False
        end
      end
    end
  end
  object frxrprt1: TfrxReport
    Version = '6.2.1'
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
    Left = 512
    Top = 321
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
      end
      item
        DataSet = frxdbQuadroDizimistas
        DataSetName = 'frxdbQuadroDizimistas'
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 181.417440000000000000
        Top = 196.535560000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbQuadroDizimistas
        DataSetName = 'frxdbQuadroDizimistas'
        RowCount = 0
        object frxdbTes_Entradanro_documento: TfrxMemoView
          AllowVectorExport = True
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataField = 'nome_pessoa'
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."nome_pessoa"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 986.457330000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbQuadroDizimistas."DEZEMBRO"> = 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."DEZEMBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbQuadroDizimistas."NOVEMBRO"> = 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."NOVEMBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 865.512370000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'OUTUBRO'
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."OUTUBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039890000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbQuadroDizimistas."SETEMBRO"> = 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."SETEMBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 744.567410000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'AGOSTO'
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."AGOSTO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'JULHO'
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."JULHO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'JUNHO'
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."JUNHO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbQuadroDizimistas."MAIO"> = 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."MAIO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'ABRIL'
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."ABRIL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbQuadroDizimistas."MAR'#199'O"> = 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."MAR'#199'O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'FEVEREIRO'
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."FEVEREIRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'JANEIRO'
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistas."JANEIRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 154.960730000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 136.063080000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxdbBuscaIgrejanome_igreja: TfrxMemoView
          AllowVectorExport = True
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
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
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
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
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 763.465060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'MAPA PRESTA'#199#195'O DE CONTAS SEMANAL  - CONGREGA'#199#195'O/SUBCONGREGA'#199#195'O/P' +
              '.PREGA'#199#195'O')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
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
          AllowVectorExport = True
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
          AllowVectorExport = True
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
          AllowVectorExport = True
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
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 986.457330000000000000
          Top = 135.842610000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DEZ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOV')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 865.512370000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'OUT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039890000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SET')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 744.567410000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'AGO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'JUL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'JUN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'MAI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ABR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'MAR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'FEV')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'JAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 200.315090000000000000
        Top = 400.630180000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 1.779529999999990000
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
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 1.779529999999990000
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
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 64.252010000000000000
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REPASSE PARA TESOURARIA GERAL (Entradas - Sa'#237'das)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 64.252010000000000000
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
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 30.236240000000000000
          Width = 495.118430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Formul'#225'rio em duas vias - 1'#170' via Tesouraria Central / 2'#170' via par' +
              'a Congrega'#231#227'o - use carbono')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 340.157700000000000000
          Top = 2.559059999999990000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'SOMA ENTRADAS E SA'#205'DAS........')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 128.504020000000000000
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
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 128.504020000000000000
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
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 128.504020000000000000
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
          AllowVectorExport = True
          Left = 270.236395000000000000
          Top = 151.181200000000000000
          Width = 506.457020000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
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
  object frxrprtDizimistasAnualPg: TfrxReport
    Version = '6.2.1'
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
    Left = 240
    Top = 329
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
      end
      item
        DataSet = frxdbQuadroDizimistaspG
        DataSetName = 'frxdbQuadroDizimistasPg'
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbQuadroDizimistaspG
        DataSetName = 'frxdbQuadroDizimistasPg'
        RowCount = 0
        object frxdbTes_Entradanro_documento: TfrxMemoView
          AllowVectorExport = True
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxdbQuadroDizimistasPg."nome_pessoa"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 986.457330000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistasPg."DEZEMBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistasPg."NOVEMBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 865.512370000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistasPg."OUTUBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039890000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistasPg."SETEMBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 744.567410000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistasPg."AGOSTO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistasPg."JULHO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistasPg."JUNHO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbQuadroDizimistasPg."MAIO">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistasPg."ABRIL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistasPg."MAR'#199'O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistasPg."FEVEREIRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbQuadroDizimistas
          DataSetName = 'frxdbQuadroDizimistas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbQuadroDizimistasPg."JANEIRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 154.960730000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 136.063080000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxdbBuscaIgrejanome_igreja: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 145.511905000000000000
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
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
          Align = baCenter
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 1046.929810000000000000
          Height = 98.267780000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[frxdbBuscaIgreja."logradouro"], [frxdbBuscaIgreja."bairro"]- [f' +
              'rxdbBuscaIgreja."cidade"]/[frxdbBuscaIgreja."uf"] - CNPJ [frxdbB' +
              'uscaIgreja."cnpj"]')
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
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 71.811070000000000000
          Width = 876.850960000000000000
          Height = 26.456710000000000000
          DisplayFormat.FormatStr = 'yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Quadro de Dizimistas do Ano: [frxdbdtstTes_valores."dta_moviment' +
              'o"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 98.267780000000000000
          Width = 876.850960000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Congrega'#231#227'o:  [frxdbCongregacao."congregacao"]  Setor: [frxdbCon' +
              'gregacao."setor"]      C.CUSTO: [frxdbCongregacao."cod_cc"] Diri' +
              'gente: [frxdbCongregacao."dirigente"]')
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
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 986.457330000000000000
          Top = 135.842610000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DEZ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOV')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 865.512370000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'OUT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039890000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SET')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 744.567410000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'AGO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'JUL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'JUN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'MAI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ABR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'MAR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'FEV')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'JAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 120.944960000000000000
          Center = True
          DataField = 'foto'
          DataSet = frxdbBuscaIgreja
          DataSetName = 'frxdbBuscaIgreja'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 241.889920000000000000
        Top = 238.110390000000000000
        Width = 1046.929810000000000000
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 102.047310000000000000
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
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 102.047310000000000000
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
          AllowVectorExport = True
          Left = 763.465060000000000000
          Top = 102.047310000000000000
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
          AllowVectorExport = True
          Left = 474.331015000000000000
          Top = 181.417440000000000000
          Width = 506.457020000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Recebido por: ___________________________________ Em: ____/____/' +
              '_______')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 540.472790000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'Splendor - Gest'#227'o')
          ParentFont = False
        end
      end
    end
  end
  object fdqryQuadroDizimistasPg: TFDQuery
    Active = True
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select a.nome_pessoa,'
      
        '(select IF(x.valor>0,'#39'PAGO'#39','#39'false'#39') from v_dizimista_total_mes_' +
        'ano x where x.nome = a.nome_pessoa and x.nro_mes = 1 and x.ano =' +
        ' :ano)as JANEIRO,'
      
        '(select IF(x.valor>0,'#39'PAGO'#39','#39'false'#39') from v_dizimista_total_mes_' +
        'ano x where x.nome = a.nome_pessoa and x.nro_mes = 2 and x.ano =' +
        ' :ano)as FEVEREIRO,'
      
        '(select IF(x.valor>0,'#39'PAGO'#39','#39'false'#39') from v_dizimista_total_mes_' +
        'ano x where x.nome = a.nome_pessoa and x.nro_mes = 3 and x.ano =' +
        ' :ano)as MAR'#199'O,'
      
        '(select IF(x.valor>0,'#39'PAGO'#39','#39'false'#39') from v_dizimista_total_mes_' +
        'ano x where x.nome = a.nome_pessoa and x.nro_mes = 4 and x.ano =' +
        ' :ano)as ABRIL,'
      
        '(select IF(x.valor>0,'#39'PAGO'#39','#39'false'#39') from v_dizimista_total_mes_' +
        'ano x where x.nome = a.nome_pessoa and x.nro_mes = 5 and x.ano =' +
        ' :ano)as MAIO,'
      
        '(select IF(x.valor>0,'#39'PAGO'#39','#39'false'#39') from v_dizimista_total_mes_' +
        'ano x where x.nome = a.nome_pessoa and x.nro_mes = 6 and x.ano =' +
        ' :ano)as JUNHO,'
      
        '(select IF(x.valor>0,'#39'PAGO'#39','#39'false'#39') from v_dizimista_total_mes_' +
        'ano x where x.nome = a.nome_pessoa and x.nro_mes = 7 and x.ano =' +
        ' :ano)as JULHO,'
      
        '(select IF(x.valor>0,'#39'PAGO'#39','#39'false'#39') from v_dizimista_total_mes_' +
        'ano x where x.nome = a.nome_pessoa and x.nro_mes = 8 and x.ano =' +
        ' :ano)as AGOSTO,'
      
        '(select IF(x.valor>0,'#39'PAGO'#39','#39'false'#39') from v_dizimista_total_mes_' +
        'ano x where x.nome = a.nome_pessoa and x.nro_mes = 9 and x.ano =' +
        ' :ano)as SETEMBRO,'
      
        '(select IF(x.valor>0,'#39'PAGO'#39','#39'false'#39') from v_dizimista_total_mes_' +
        'ano x where x.nome = a.nome_pessoa and x.nro_mes = 10 and x.ano ' +
        '= :ano)as OUTUBRO,'
      
        '(select IF(x.valor>0,'#39'PAGO'#39','#39'false'#39') from v_dizimista_total_mes_' +
        'ano x where x.nome = a.nome_pessoa and x.nro_mes = 11 and x.ano ' +
        '= :ano)as NOVEMBRO,'
      
        '(select IF(x.valor>0,'#39'PAGO'#39','#39'false'#39') from v_dizimista_total_mes_' +
        'ano x where x.nome = a.nome_pessoa and x.nro_mes = 12 and x.ano ' +
        '= :ano)as DEZEMBRO'
      'from tb_pessoa a')
    Left = 400
    Top = 336
    ParamData = <
      item
        Name = 'ANO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 2019
      end>
    object strngfldQuadroDizimistasPgnome_pessoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_pessoa'
      Origin = 'nome_pessoa'
      Size = 50
    end
    object strngfldQuadroDizimistasPgJANEIRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'JANEIRO'
      Origin = 'JANEIRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object strngfldQuadroDizimistasPgFEVEREIRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FEVEREIRO'
      Origin = 'FEVEREIRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object strngfldQuadroDizimistasPgMARÇO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAR'#199'O'
      Origin = '`MAR'#199'O`'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object strngfldQuadroDizimistasPgABRIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ABRIL'
      Origin = 'ABRIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object strngfldQuadroDizimistasPgMAIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAIO'
      Origin = 'MAIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object strngfldQuadroDizimistasPgJUNHO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'JUNHO'
      Origin = 'JUNHO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object strngfldQuadroDizimistasPgJULHO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'JULHO'
      Origin = 'JULHO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object strngfldQuadroDizimistasPgAGOSTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGOSTO'
      Origin = 'AGOSTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object strngfldQuadroDizimistasPgSETEMBRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SETEMBRO'
      Origin = 'SETEMBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object strngfldQuadroDizimistasPgOUTUBRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OUTUBRO'
      Origin = 'OUTUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object strngfldQuadroDizimistasPgNOVEMBRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOVEMBRO'
      Origin = 'NOVEMBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object strngfldQuadroDizimistasPgDEZEMBRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DEZEMBRO'
      Origin = 'DEZEMBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
  end
  object frxdbQuadroDizimistaspG: TfrxDBDataset
    UserName = 'frxdbQuadroDizimistasPg'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nome_pessoa=nome_pessoa'
      'JANEIRO=JANEIRO'
      'FEVEREIRO=FEVEREIRO'
      'MAR'#199'O=MAR'#199'O'
      'ABRIL=ABRIL'
      'MAIO=MAIO'
      'JUNHO=JUNHO'
      'JULHO=JULHO'
      'AGOSTO=AGOSTO'
      'SETEMBRO=SETEMBRO'
      'OUTUBRO=OUTUBRO'
      'NOVEMBRO=NOVEMBRO'
      'DEZEMBRO=DEZEMBRO')
    DataSet = fdqryQuadroDizimistasPg
    BCDToCurrency = False
    Left = 384
    Top = 416
  end
end
