object dtmEbd: TdtmEbd
  OldCreateOrder = False
  Height = 356
  Width = 599
  object frxrprtRelatorio: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43657.432077916700000000
    ReportOptions.LastChange = 43657.432077916700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 336
    Top = 56
    Datasets = <
      item
        DataSet = dtmRelatorio.frxdbBuscaIgreja
        DataSetName = 'frxdbBuscaIgreja'
      end
      item
        DataSet = dtmRelatorio.frxdbCongregacao
        DataSetName = 'frxdbCongregacao'
      end
      item
        DataSet = frxdbRelatorio
        DataSetName = 'frxdbRelatorio'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 162.519790000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 1046.929810000000000000
          Height = 83.149660000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbBuscaIgreja."nome_igreja"] EM [frxdbBuscaIgreja."cidade"]'
            
              'CONGREGA'#199#195'O DE [frxdbCongregacao."congregacao"] - SETOR [frxdbCo' +
              'ngregacao."setor"]'
            'SUPERINTEND'#202'NCIA DA ESCOLA B'#205'BLICA DOMINICAL'
            'SECRETARIA DA ESCOLA B'#205'BLICA DOMINICAL')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 90.708720000000000000
          Width = 1046.929810000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[frxdbRelatorio."trimestre"]'#186' TRIMESTRE DE [frxdbRelatorio."dta_' +
              'aula"]'
            'Li'#231#227'o 01'
            '[frxdbBuscaIgreja."cidade"] - [frxdbBuscaIgreja."uf"], [Date]')
          ParentFont = False
          Formats = <
            item
            end
            item
              FormatStr = 'yyyy'
              Kind = fkDateTime
            end
            item
              FormatStr = 'dd '#39'De'#39' mmmm  yyyy'
              Kind = fkDateTime
            end
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.897650000000000000
        Top = 317.480520000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbRelatorio
        DataSetName = 'frxdbRelatorio'
        RowCount = 0
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 33.795300000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'classe'
          DataSet = frxdbRelatorio
          DataSetName = 'frxdbRelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbRelatorio."classe"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 150.425196850000000000
          Top = 0.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'tprofessor'
          DataSet = frxdbRelatorio
          DataSetName = 'frxdbRelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbRelatorio."tprofessor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 199.937007870000000000
          Top = 0.559060000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'talunos'
          DataSet = frxdbRelatorio
          DataSetName = 'frxdbRelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbRelatorio."talunos"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 252.472440940000000000
          Top = 0.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'asstotal_matri'
          DataSet = frxdbRelatorio
          DataSetName = 'frxdbRelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbRelatorio."asstotal_matri"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 305.385826770000000000
          Top = 0.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'tprofessor_presente'
          DataSet = frxdbRelatorio
          DataSetName = 'frxdbRelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbRelatorio."tprofessor_presente"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 354.897637800000000000
          Top = 0.559060000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[<frxdbRelatorio."tprofessor_presente">*100/<frxdbRelatorio."tpr' +
              'ofessor">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 407.433070870000000000
          Top = 0.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'taluno_presente'
          DataSet = frxdbRelatorio
          DataSetName = 'frxdbRelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbRelatorio."taluno_presente"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 460.346456690000000000
          Top = 0.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[<frxdbRelatorio."taluno_presente">*100/<frxdbRelatorio."talunos' +
              '">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 513.259842520000000000
          Top = 1.000000000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'asstotal'
          DataSet = frxdbRelatorio
          DataSetName = 'frxdbRelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbRelatorio."asstotal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 565.417322834646000000
          Top = 0.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'qtd_visitante_amigo'
          DataSet = frxdbRelatorio
          DataSetName = 'frxdbRelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbRelatorio."qtd_visitante_amigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 625.511811023622000000
          Top = 1.000000000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'qtd_visitante_evang'
          DataSet = frxdbRelatorio
          DataSetName = 'frxdbRelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbRelatorio."qtd_visitante_evang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 686.362204720000000000
          Top = 0.881880000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'asstotalgeral'
          DataSet = frxdbRelatorio
          DataSetName = 'frxdbRelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbRelatorio."asstotalgeral"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 758.173228350000000000
          Top = 0.881880000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'qtd_biblias'
          DataSet = frxdbRelatorio
          DataSetName = 'frxdbRelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbRelatorio."qtd_biblias"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 829.984251970000000000
          Top = 0.881880000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[<frxdbRelatorio."qtd_biblias">*100/<frxdbRelatorio."asstotalger' +
              'al">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 901.795275590000000000
          Top = 0.881880000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'qtd_biblias'
          DataSet = frxdbRelatorio
          DataSetName = 'frxdbRelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbRelatorio."qtd_biblias"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 973.425790000000000000
          Top = -0.118120000000000000
          Width = 73.700787400000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[<frxdbRelatorio."qtd_revistas">*100/<frxdbRelatorio."asstotalge' +
              'ral">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 241.889920000000000000
        Width = 1046.929810000000000000
        Condition = 'frxdbBuscaIgreja."nome_igreja"'
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = -0.220470000000000000
          Top = 15.338590000000000000
          Width = 151.181200000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CLASSES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 150.488250000000000000
          Top = 34.015770000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Prof.'#186)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 199.842610000000000000
          Top = 33.795300000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Alunos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 252.535560000000000000
          Top = 34.015770000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 150.488250000000000000
          Top = 15.118120000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'MATRICULADOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 305.448980000000000000
          Top = 34.015770000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Prof.'#186)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 354.803340000000000000
          Top = 33.795300000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 407.496290000000000000
          Top = 34.015770000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Alunos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 305.448980000000000000
          Top = 15.118120000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PRESENTES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 460.409710000000000000
          Top = 34.015770000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 513.102660000000000000
          Top = 34.236240000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 565.236550000000000000
          Top = 34.015770000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Amigos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 625.488560000000000000
          Top = 34.236240000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Evang.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 565.236550000000000000
          Top = 15.118120000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'VISITANTES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 686.181510000000000000
          Top = 15.118120000000000000
          Width = 71.811070000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ASIST. '
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 757.992580000000000000
          Top = 15.118120000000000000
          Width = 71.811070000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'B'#205'BLIAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 829.803650000000000000
          Top = 15.118120000000000000
          Width = 71.811070000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 901.614720000000000000
          Top = 15.118120000000000000
          Width = 71.811070000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'REVISTAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 973.425790000000000000
          Top = 15.118120000000000000
          Width = 73.700787401574800000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 411.968770000000000000
        Top = 396.850650000000000000
        Width = 1046.929810000000000000
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Top = 0.031540000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 513.259842520000000000
          Top = 0.031540000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbRelatorio."asstotal">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 565.417322830000000000
          Top = -0.188930000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbRelatorio."qtd_visitante_amigo">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 625.511811020000000000
          Top = 0.031540000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbRelatorio."qtd_visitante_evang">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 686.362204720000000000
          Top = -0.086580000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbRelatorio."asstotalgeral">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 758.173228350000000000
          Top = -0.086580000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbRelatorio."qtd_biblias">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 829.984251970000000000
          Top = -0.086580000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 657.638220000000000000
          Top = 68.063080000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbCongregacao."dirigente"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 143.653680000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Superintendente')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Top = 18.929190000000000000
          Width = 200.315090000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'CalIbri'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 3.000000000000000000
          Memo.UTF8W = (
            'RELAT'#211'RIO RESUMO')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Top = 39.606370000000000000
          Width = 151.181200000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'CalIbri'
          Font.Style = [fsBold]
          Frame.Color = clNone
          Frame.Typ = []
          Frame.Width = 3.000000000000000000
          Memo.UTF8W = (
            'MATRICULADOS TOTAL')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Top = 52.504020000000000000
          Width = 151.181200000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'CalIbri'
          Font.Style = []
          Frame.Color = clNone
          Frame.Typ = []
          Frame.Width = 3.000000000000000000
          Memo.UTF8W = (
            'PROFESSORES')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Top = 67.401670000000000000
          Width = 151.181200000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'CalIbri'
          Font.Style = []
          Frame.Color = clNone
          Frame.Typ = []
          Frame.Width = 3.000000000000000000
          Memo.UTF8W = (
            'ALUNOS')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 88.519790000000000000
          Width = 200.315090000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 42107
          Font.Height = -12
          Font.Name = 'CalIbri'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Frame.Width = 3.000000000000000000
          Memo.UTF8W = (
            'PRESENTES MATRICULADOS')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 105.637910000000000000
          Width = 151.181200000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 42107
          Font.Height = -12
          Font.Name = 'CalIbri'
          Font.Style = []
          Frame.Color = clNone
          Frame.Typ = []
          Frame.Width = 3.000000000000000000
          Memo.UTF8W = (
            'PROFESSORES')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 121.535560000000000000
          Width = 151.181200000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 42107
          Font.Height = -12
          Font.Name = 'CalIbri'
          Font.Style = []
          Frame.Color = clNone
          Frame.Typ = []
          Frame.Width = 3.000000000000000000
          Memo.UTF8W = (
            'ALUNOS')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Top = 140.960730000000000000
          Width = 200.315090000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 42107
          Font.Height = -12
          Font.Name = 'CalIbri'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Frame.Width = 3.000000000000000000
          Memo.UTF8W = (
            'VISITANTES')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Top = 157.858380000000000000
          Width = 200.315090000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 42107
          Font.Height = -12
          Font.Name = 'CalIbri'
          Font.Style = []
          Frame.Color = clNone
          Frame.Typ = []
          Frame.Width = 3.000000000000000000
          Memo.UTF8W = (
            'EVANG'#201'LICOS')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 204.094620000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Secret'#225'rio')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Top = 171.535560000000000000
          Width = 200.315090000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 42107
          Font.Height = -12
          Font.Name = 'CalIbri'
          Font.Style = []
          Frame.Color = clNone
          Frame.Typ = []
          Frame.Width = 3.000000000000000000
          Memo.UTF8W = (
            'AMIGOS DO EVANGELHO')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Top = 194.212740000000000000
          Width = 200.315090000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 3.000000000000000000
          Memo.UTF8W = (
            'ASSIST'#202'NCIA TOTAL')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Top = 211.771800000000000000
          Width = 200.315090000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'META 80%')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Top = 232.448980000000000000
          Width = 200.315090000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 3.000000000000000000
          Memo.UTF8W = (
            '% B'#205'BLIAS')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Top = 251.228510000000000000
          Width = 200.315090000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 3.000000000000000000
          Memo.UTF8W = (
            '% REVISTAS')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 973.339210000000000000
          Width = 73.700787400000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 901.795275590000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = frxdbRelatorio
          DataSetName = 'frxdbRelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbRelatorio."qtd_revistas">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 0.000000000000000028
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataSet = frxdbRelatorio
          DataSetName = 'frxdbRelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbRelatorio."taluno_presente">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 0.000000000000000028
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbRelatorio."tprofessor_presente">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbRelatorio."asstotal_matri">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataSet = frxdbRelatorio
          DataSetName = 'frxdbRelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbRelatorio."talunos">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbRelatorio."tprofessor">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 38.574830000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbRelatorio."asstotal_matri">,MasterData1)]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 52.913420000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbRelatorio."tprofessor">,MasterData1)]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 67.031540000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbRelatorio."talunos">,MasterData1)]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 105.826840000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbRelatorio."tprofessor_presente">,MasterData1)]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 119.944960000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbRelatorio."taluno_presente">,MasterData1)]')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 158.740260000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbRelatorio."qtd_visitante_evang">,MasterData1)]')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 172.858380000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbRelatorio."qtd_visitante_amigo">,MasterData1)]')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 143.622140000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxdbRelatorio."visitantegeral">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object fdqryRelatorio: TFDQuery
    Active = True
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select a.cod_classe,b.classe,date(a.dta_aula)as dta_aula'
      ',(select coalesce(trimestre,0) as valor  '
      ' from tb_ebd_calendario  '
      'where date(dta_inicio) <= date(a.dta_aula)'
      'and  date(dta_fim)  >=date(a.dta_aula))as trimestre'
      
        ', (select count(b.cod_aluno) from tb_ebd_chamada b where b.cod_c' +
        'lasse = a.cod_classe and date(b.dta_aula)= date(a.dta_aula))as t' +
        'alunos'
      
        ', (select count(b.cod_aluno) from tb_ebd_chamada b where b.cod_c' +
        'lasse = a.cod_classe and date(b.dta_aula)= date(a.dta_aula) and ' +
        'b.presente = true )taluno_presente'
      
        ', (select count(1) from tb_classe_professor b where b.cod_classe' +
        ' = a.cod_classe )as tprofessor'
      
        ', (select count(1) from tb_classe_professor b where b.cod_classe' +
        ' = a.cod_classe )as tprofessor_presente'
      
        ',(select count(1) from tb_classe_professor b where b.cod_classe ' +
        '= a.cod_classe )+'
      
        '(select count(b.cod_aluno) from tb_ebd_chamada b where b.cod_cla' +
        'sse = a.cod_classe and date(b.dta_aula)= date(a.dta_aula) and b.' +
        'presente = true ) asstotal'
      
        ',(select count(1) from tb_classe_professor b where b.cod_classe ' +
        '= a.cod_classe )+'
      
        '(select count(b.cod_aluno) from tb_ebd_chamada b where b.cod_cla' +
        'sse = a.cod_classe and date(b.dta_aula)= date(a.dta_aula)) assto' +
        'tal_matri'
      
        ',(select count(1) from tb_classe_professor b where b.cod_classe ' +
        '= a.cod_classe )+'
      
        '(select count(b.cod_aluno) from tb_ebd_chamada b where b.cod_cla' +
        'sse = a.cod_classe and date(b.dta_aula)= date(a.dta_aula) and b.' +
        'presente = true )'
      '+ a.qtd_visitante_amigo + a.qtd_visitante_evang asstotalgeral'
      ',a.qtd_biblias'
      ',a.qtd_revistas'
      ',a.qtd_visitante_amigo'
      ',a.qtd_visitante_evang'
      ',a.qtd_visitante_amigo + a.qtd_visitante_evang as visitantegeral'
      'from tb_ebd_aula a'
      'inner join tb_classe b on b.cod_classe = a.cod_classe'
      'where date(a.dta_aula) = :dta_aula;')
    Left = 168
    Top = 88
    ParamData = <
      item
        Name = 'DTA_AULA'
        DataType = ftDateTime
        ParamType = ptInput
        Value = 43660d
      end>
    object fdqryRelatoriocod_classe: TIntegerField
      FieldName = 'cod_classe'
      Origin = 'cod_classe'
      Required = True
    end
    object fdqryRelatorioclasse: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'classe'
      Origin = 'classe'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqryRelatoriodta_aula: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_aula'
      Origin = 'dta_aula'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqryRelatoriotalunos: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'talunos'
      Origin = 'talunos'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqryRelatoriotaluno_presente: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'taluno_presente'
      Origin = 'taluno_presente'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqryRelatorioqtd_biblias: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtd_biblias'
      Origin = 'qtd_biblias'
    end
    object fdqryRelatorioqtd_revistas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtd_revistas'
      Origin = 'qtd_revistas'
    end
    object fdqryRelatorioqtd_visitante_amigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtd_visitante_amigo'
      Origin = 'qtd_visitante_amigo'
    end
    object fdqryRelatorioqtd_visitante_evang: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtd_visitante_evang'
      Origin = 'qtd_visitante_evang'
    end
    object fdqryRelatoriotrimestre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'trimestre'
      Origin = 'trimestre'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdqryRelatoriotprofessor: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'tprofessor'
      Origin = 'tprofessor'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqryRelatoriotprofessor_presente: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'tprofessor_presente'
      Origin = 'tprofessor_presente'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqryRelatorioasstotal: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'asstotal'
      Origin = 'asstotal'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqryRelatorioasstotal_matri: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'asstotal_matri'
      Origin = 'asstotal_matri'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqryRelatorioasstotalgeral: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'asstotalgeral'
      Origin = 'asstotalgeral'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqryRelatoriovisitantegeral: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'visitantegeral'
      Origin = 'visitantegeral'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object frxdbRelatorio: TfrxDBDataset
    UserName = 'frxdbRelatorio'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cod_classe=cod_classe'
      'classe=classe'
      'dta_aula=dta_aula'
      'talunos=talunos'
      'taluno_presente=taluno_presente'
      'qtd_biblias=qtd_biblias'
      'qtd_revistas=qtd_revistas'
      'qtd_visitante_amigo=qtd_visitante_amigo'
      'qtd_visitante_evang=qtd_visitante_evang'
      'trimestre=trimestre'
      'tprofessor=tprofessor'
      'tprofessor_presente=tprofessor_presente'
      'asstotal=asstotal'
      'asstotal_matri=asstotal_matri'
      'asstotalgeral=asstotalgeral'
      'visitantegeral=visitantegeral')
    DataSet = fdqryRelatorio
    BCDToCurrency = False
    Left = 352
    Top = 240
  end
end
