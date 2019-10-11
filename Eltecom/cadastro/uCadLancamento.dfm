inherited frmCadLancamento: TfrmCadLancamento
  BorderStyle = bsSingle
  Caption = 'Lan'#231'amento Simples'
  ClientHeight = 457
  ClientWidth = 744
  ExplicitWidth = 750
  ExplicitHeight = 486
  PixelsPerInch = 96
  TextHeight = 13
  object lbl4: TLabel [0]
    Left = 474
    Top = 23
    Width = 81
    Height = 13
    Caption = 'Data Nascimento'
  end
  object Label2: TLabel [1]
    Left = 489
    Top = 77
    Width = 67
    Height = 24
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited pgcPrincipal: TPageControl
    Width = 744
    Height = 419
    ExplicitWidth = 744
    ExplicitHeight = 419
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 736
      ExplicitHeight = 391
      inherited pnlListagem: TPanel
        Width = 736
        Height = 121
        ExplicitWidth = 736
        ExplicitHeight = 121
        inherited lblIndice: TLabel
          Top = 8
          ExplicitTop = 8
        end
        object lblDataNascimento: TLabel [1]
          Left = 267
          Top = 5
          Width = 53
          Height = 13
          Caption = 'Data Inicial'
        end
        object lbl5: TLabel [2]
          Left = 357
          Top = 7
          Width = 48
          Height = 13
          Caption = 'Data Final'
        end
        object lbl6: TLabel [3]
          Left = 18
          Top = 91
          Width = 54
          Height = 19
          Caption = 'Per'#237'odo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel [4]
          Left = 199
          Top = 61
          Width = 61
          Height = 19
          Caption = 'Entradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl7: TLabel [5]
          Left = 217
          Top = 91
          Width = 45
          Height = 19
          Caption = 'Sa'#237'das'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel [6]
          Left = 411
          Top = 94
          Width = 58
          Height = 19
          Caption = 'Subtotal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel [7]
          Left = 10
          Top = 46
          Width = 69
          Height = 13
          Caption = 'Filtrar por M'#234's'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel [8]
          Left = 364
          Top = 61
          Width = 105
          Height = 19
          Caption = 'Despesas Fixas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        inherited mskPesquisar: TMaskEdit
          Top = 24
          Width = 184
          ExplicitTop = 24
          ExplicitWidth = 184
        end
        inherited btnPesquisar: TBitBtn
          Left = 200
          Top = 22
          Width = 61
          ExplicitLeft = 200
          ExplicitTop = 22
          ExplicitWidth = 61
        end
        object dtdtIni: TDateEdit
          Left = 267
          Top = 24
          Width = 84
          Height = 21
          Hint = 'Data Inicial'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 2
          Text = '01/04/2019'
          OnChange = dtdtIniChange
        end
        object dtdtFim: TDateEdit
          Left = 357
          Top = 24
          Width = 84
          Height = 21
          Hint = 'Data Finaal'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 3
          Text = '10/04/2019'
          OnChange = dtdtFimChange
        end
        object btnBuscar: TBitBtn
          Left = 449
          Top = 20
          Width = 38
          Height = 25
          Caption = 'Filtrar'
          TabOrder = 4
          OnClick = btnBuscarClick
        end
        object mmoSemana: TMemo
          Left = 74
          Top = 91
          Width = 120
          Height = 24
          Alignment = taRightJustify
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Lines.Strings = (
            '01 a 30 /2019')
          ParentFont = False
          TabOrder = 5
        end
        object crncydtEntrada: TCurrencyEdit
          Left = 267
          Top = 58
          Width = 95
          Height = 27
          DisplayFormat = 'R$ 0.00;-0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object crncydtSaida: TCurrencyEdit
          Left = 268
          Top = 88
          Width = 94
          Height = 27
          DisplayFormat = 'R$ 0.00;-0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object crncydtSubtotal: TCurrencyEdit
          Left = 473
          Top = 88
          Width = 100
          Height = 27
          DisplayFormat = 'R$ 0.00;-0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object dblkcbbMes: TDBLookupComboBox
          Left = 10
          Top = 61
          Width = 184
          Height = 24
          DropDownRows = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'valor'
          ListField = 'mes'
          ListSource = dsMes
          ParentFont = False
          TabOrder = 9
          OnClick = dblkcbbMesClick
        end
        object crncydtDespesaFixa: TCurrencyEdit
          Left = 472
          Top = 58
          Width = 100
          Height = 27
          DisplayFormat = 'R$ 0.00;-0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object pnl2: TPanel
          Left = 618
          Top = 12
          Width = 110
          Height = 99
          TabOrder = 11
          object btnImprimir: TBitBtn
            Left = 8
            Top = 62
            Width = 93
            Height = 29
            Caption = 'Visualizar'
            Glyph.Data = {
              360C0000424D360C000000000000360000002800000020000000200000000100
              180000000000000C0000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF514F4F514F4F514F4F514F4F514F4FFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF646464646464646464B0B0B0C9C7C7C1B7B2B8A79E929292514F4FFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF686868
              A9A9A9D0D0D0C7C0C0D0BFB0D8C1AFCABBA08FD0B68FD1B0A59987A79E9A514F
              4F1B1717201C1C1B1515FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDCDCDCF0F0F0
              998076BA865AF2C593F6D7B2F4CEA1E7C597ABCBA796C7A3C6B47786A643508A
              437D7E77403B3B1B15150C09090403037267637D6F6A776C684E49480D0B0BFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              585857B1A49CCBB19D74A9696ACF6C6BD56D54C24F55A33E31CA2F11BA130BA0
              0C0A6B09576D505A5858110E0E0E0B0B8A7A748A7A747F706C514B4A120E0E0D
              0A0AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF1D1818443F3F7D7E77AAC1A584C0825EC0663AA74519741A0F490E0A29
              09091307090707070707060606100C0D8A7A748A7A747F706C554D4B17121211
              0D0D0C0A0AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF7065607B6D681916150C0A0A2121211617160A09090505050505050907
              070D0A0A140F101B14151D16171D16178A7A748A7A7480726C594F4D1D161616
              10100F0C0CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF897A748A7A741916150B0809181313151011231A1B2A2022291F21251C
              1D1F18191A1415181213140F10100C0D8A7A748A7A7483746E5B514E231B1B19
              1313120E0EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF8A7A748A7A74201C1B2A1F213024262D2324281E1F21181A181213110C
              0D0C09090806060806060B09091917177D6F6A9C8E87A1958E6E6560281E1E1D
              1616140F0FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF8A7A748A7A74151211130F0F130F0F0E0B0C0C0A0A1311111F1C1C2D28
              28454242645E5E7E79798A8888868282797473EFE9E5EBE3E0AFA4A0443D3B1F
              1818161010FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF8A7A748A7A740C0A0A282323403A3A555050746E6E888383989393908C
              8C817D7D787272665E5E5850505047474038385B5453CBBFBCBCB0AC897D7A2A
              2323161010FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF93847EA99C96868181BAB7B7BBB8B8B0AAAA9990907A70705B51514B41
              41433A3A362D2D362D2D2D2424241C1C241C1C231A1A342D2D938786AD9F9D84
              7674332D2CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFE9E1DEACA7A6988A8A775F5F513D3D3E2D2D3527272D2323281E
              1E241C1C251E1D2219191E16161C15151B1313181212171111140F0F908483AF
              A09EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFBBADAB968E8C806464564040413030332626291F1F2219
              191F18181F1C1B1F321E191414090707110D0D231F20443E3F4F47474E4546FF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FF9A8F8C5B4D4D2D24241E17171510100906
              06120D0E4450473B6442242222494747BBBBBBDCDCDCD9D8D8B8ABA95044472F
              282AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2823
              247B7270665E5FA3A3A3E6E6E6E6E6E6E5E5E5E2E2E2DEDEDED3CFCE7A6D6E35
              2D2FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFC9C1C0928788EDEDEDEEEEEEEEEEEEEBEBEBE9E9E9E5E5E5E0E0E0CAC6C67E
              7373FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFAAA0A0F2F2F2F3F3F3F3F3F3F2F2F2EFEFEFEBEBEBE6E6E6E0E0E0AA
              9F9F65595AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFD5CFCEF7F7F7F8F8F8F8F8F8F7F7F7F4F4F4EFEFEFEAEAEAE3E3E3C7
              C2C27B6E6FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFE3E0DEFBFBFBFBFBFBFAFAFAF7F7F7F3F3F3EEEEEEE7E7E7E0
              E0E0998E8E4F4346FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFDDD7D5FBFBFBFBFBFBF7F6F6F0EFEFE7E5E3DDD9D8DCD8D7D9
              D5D5BCB2B1736567FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFE2DEDDDDD7D5D5CFCED5CFCECFC7C6FF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            TabOrder = 0
            OnClick = btnImprimir1Click
          end
          object chkResumido: TRxCheckBox
            Left = 16
            Top = 16
            Width = 73
            Height = 17
            Caption = 'Resumido'
            TabOrder = 1
            WordWrap = True
            OnClick = chkResumidoClick
            HorizontalAlignment = taLeftJustify
            VerticalAlignment = taAlignTop
            Style = vsNormal
          end
          object chkCompleto: TRxCheckBox
            Left = 16
            Top = 39
            Width = 73
            Height = 17
            Caption = 'Completo'
            Checked = True
            State = cbChecked
            TabOrder = 2
            WordWrap = True
            OnClick = chkCompletoClick
            HorizontalAlignment = taLeftJustify
            VerticalAlignment = taAlignTop
            Style = vsNormal
          end
        end
      end
      inherited grdListagem: TDBGrid
        Top = 121
        Width = 736
        Height = 270
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_entrada'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nro_documento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dta_movimento'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 207
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Width = 84
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'tipo'
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TipoSaida'
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 736
      ExplicitHeight = 391
      object pnl1: TPanel
        Left = 3
        Top = 3
        Width = 781
        Height = 118
        TabOrder = 0
        object lbl1: TLabel
          Left = 555
          Top = 4
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object lbl2: TLabel
          Left = 64
          Top = 6
          Width = 20
          Height = 13
          Caption = 'Tipo'
        end
        object lbl3: TLabel
          Left = 646
          Top = 6
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object Label5: TLabel
          Left = 562
          Top = 56
          Width = 64
          Height = 13
          Caption = 'Tipo de Sa'#237'da'
        end
        object cbbTipo: TComboBox
          Tag = 2
          Left = 64
          Top = 22
          Width = 69
          Height = 21
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 0
          Text = 'ENTRADA'
          OnChange = cbbTipoChange
          OnKeyPress = cbbTipoKeyPress
          Items.Strings = (
            'ENTRADA'
            'SAIDA')
        end
        object crncydtValor: TCurrencyEdit
          Left = 646
          Top = 23
          Width = 65
          Height = 21
          DisplayFormat = '0.00;-0.00'
          TabOrder = 4
        end
        object dtdtData: TDateEdit
          Left = 555
          Top = 22
          Width = 84
          Height = 21
          Hint = 'Data de abertura como Sub Congrega'#231#227'o.'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 3
        end
        object lbledtCodTalao: TLabeledEdit
          Tag = 2
          Left = 148
          Top = 23
          Width = 129
          Height = 21
          EditLabel.Width = 128
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#186' do Tal'#227'o ou Documento'
          NumbersOnly = True
          TabOrder = 1
        end
        object lbledtDescricao: TLabeledEdit
          Tag = 2
          Left = 285
          Top = 23
          Width = 264
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 46
          EditLabel.Height = 13
          EditLabel.Caption = 'Descri'#231#227'o'
          TabOrder = 2
        end
        object lbledtCodigo: TLabeledEdit
          Tag = 1
          Left = 6
          Top = 22
          Width = 52
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo'
          NumbersOnly = True
          TabOrder = 5
        end
        object dblkcbbTipoSaida: TDBLookupComboBox
          Left = 562
          Top = 75
          Width = 145
          Height = 21
          Enabled = False
          KeyField = 'id'
          ListField = 'tipo'
          ListSource = dsTipoSaida
          TabOrder = 6
        end
      end
    end
  end
  inherited pnlRodape: TPanel
    Top = 419
    Width = 744
    ExplicitTop = 419
    ExplicitWidth = 744
    DesignSize = (
      744
      38)
    inherited btnNavigator: TDBNavigator
      Left = 413
      Hints.Strings = ()
      ExplicitLeft = 413
    end
    inherited btnFechar: TBitBtn
      Left = 652
      ExplicitLeft = 652
    end
  end
  inherited QryListagem: TFDQuery
    SQL.Strings = (
      'SELECT t.cod_entrada, t.nro_documento, t.dta_movimento'
      ', t.dta_inclusao, t.usuario_inclusao'
      ', t.descricao, t.valor, t.tipo, t.status'
      ', t.cod_congregacao, t.situacao,cod_tipo_saida'
      
        'FROM tb_tesouraria t join tb_parametro_sistema a on a.cod_congre' +
        'gacao = t.cod_congregacao where t.dta_movimento between '
      ':dtini'
      'and '
      ':dtfim')
    Left = 584
    Top = 208
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
        Value = 43586d
      end>
    object cod_entrada: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_entrada'
      Origin = 'cod_entrada'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object intgrfldQryListagemnro_documento: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#186' Documento'
      FieldName = 'nro_documento'
      Origin = 'nro_documento'
    end
    object dtfldQryListagemdta_movimento: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data'
      FieldName = 'dta_movimento'
      Origin = 'dta_movimento'
    end
    object dtmfldQryListagemdta_inclusao: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dta_inclusao'
      Origin = 'dta_inclusao'
    end
    object strngfldQryListagemusuario_inclusao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'usuario_inclusao'
      Origin = 'usuario_inclusao'
      Size = 50
    end
    object strngfldQryListagemdescricao: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 50
    end
    object fltfldQryListagemvalor: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
    end
    object strngfldQryListagemtipo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Origin = 'tipo'
    end
    object strngfldQryListagemstatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = '`status`'
    end
    object intgrfldQryListagemcod_congregacao: TIntegerField
      FieldName = 'cod_congregacao'
      Origin = 'cod_congregacao'
      Required = True
    end
    object intgrfldQryListagemsituacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'situacao'
      Origin = 'situacao'
    end
    object QryListagemcod_tipo_saida: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_tipo_saida'
      Origin = 'cod_tipo_saida'
    end
    object QryListagemTipoSaida: TStringField
      DisplayLabel = 'T. Sa'#237'da'
      FieldKind = fkLookup
      FieldName = 'TipoSaida'
      LookupDataSet = dtmPrincipal.fdqryTipoSaida
      LookupKeyFields = 'id'
      LookupResultField = 'tipo'
      KeyFields = 'cod_tipo_saida'
      Lookup = True
    end
  end
  inherited dtsListagem: TDataSource
    Left = 584
    Top = 280
  end
  object dsMes: TDataSource
    DataSet = dtmRelatorio.fdqryMeses
    Left = 114
    Top = 160
  end
  object dsTipoSaida: TDataSource
    DataSet = dtmPrincipal.fdqryTipoSaida
    Left = 360
    Top = 232
  end
end
