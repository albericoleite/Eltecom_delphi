inherited frmCadDizimos: TfrmCadDizimos
  Caption = 'Cadastro de Dizimos'
  ClientWidth = 841
  ExplicitWidth = 847
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 841
    ActivePage = tabManutencao
    ExplicitWidth = 841
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 833
      ExplicitHeight = 390
      inherited pnlListagem: TPanel
        Width = 833
        Height = 97
        ExplicitWidth = 833
        ExplicitHeight = 97
        object lblDataNascimento: TLabel [1]
          Left = 350
          Top = 5
          Width = 53
          Height = 13
          Caption = 'Data Inicial'
        end
        object lbl5: TLabel [2]
          Left = 450
          Top = 7
          Width = 48
          Height = 13
          Caption = 'Data Final'
        end
        object Label1: TLabel [3]
          Left = 10
          Top = 44
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
        object Label3: TLabel [4]
          Left = 666
          Top = 67
          Width = 36
          Height = 19
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        inherited mskPesquisar: TMaskEdit
          Top = 19
          Width = 184
          ExplicitTop = 19
          ExplicitWidth = 184
        end
        inherited btnPesquisar: TBitBtn
          Left = 265
          ExplicitLeft = 265
        end
        object dtdtIni: TDateEdit
          Left = 350
          Top = 21
          Width = 83
          Height = 21
          Hint = 'Data Inicial'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 2
          Text = '01/04/2019'
        end
        object dtdtFim: TDateEdit
          Left = 450
          Top = 23
          Width = 84
          Height = 21
          Hint = 'Data Finaal'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 3
          Text = '10/04/2019'
        end
        object btnBuscar: TBitBtn
          Left = 544
          Top = 21
          Width = 49
          Height = 25
          Caption = 'Buscar'
          TabOrder = 4
          OnClick = btnBuscarClick
        end
        object btnImprimir: TBitBtn
          Left = 716
          Top = 12
          Width = 97
          Height = 36
          Caption = 'Imprimir'
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
          TabOrder = 5
          OnClick = btnImprimirClick
        end
        object chkobreiro: TCheckBox
          Left = 605
          Top = 24
          Width = 106
          Height = 17
          Caption = 'Somente Obreiros'
          TabOrder = 6
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
          TabOrder = 7
          OnClick = dblkcbbMesClick
        end
        object crncydtTotal: TCurrencyEdit
          Left = 713
          Top = 64
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
      end
      inherited grdListagem: TDBGrid
        Top = 97
        Width = 833
        Height = 293
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_dizimo'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_talao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 317
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cargo'
            Width = 196
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 833
      ExplicitHeight = 390
      object lbl1: TLabel
        Left = 546
        Top = 3
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object lbl2: TLabel
        Left = 647
        Top = 3
        Width = 29
        Height = 13
        Caption = 'Cargo'
      end
      object lbl3: TLabel
        Left = 470
        Top = 3
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object lbl4: TLabel
        Left = 199
        Top = 3
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object lbledtCodDizimo: TLabeledEdit
        Tag = 1
        Left = 8
        Top = 20
        Width = 49
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 1
      end
      object lbledtNome: TLabeledEdit
        Left = 131
        Top = 236
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        MaxLength = 45
        TabOrder = 5
        Visible = False
        OnChange = lbledtNomeChange
      end
      object lbledtCodtalao: TLabeledEdit
        Tag = 2
        Left = 63
        Top = 20
        Width = 62
        Height = 21
        EditLabel.Width = 52
        EditLabel.Height = 13
        EditLabel.Caption = 'Cod. Tal'#227'o'
        MaxLength = 45
        NumbersOnly = True
        TabOrder = 2
      end
      object lbledtCodCheque: TLabeledEdit
        Left = 131
        Top = 20
        Width = 62
        Height = 21
        EditLabel.Width = 63
        EditLabel.Height = 13
        EditLabel.Caption = 'Cod. Cheque'
        Enabled = False
        MaxLength = 45
        NumbersOnly = True
        TabOrder = 3
        Text = '0'
      end
      object dtdtData: TDateEdit
        Left = 546
        Top = 20
        Width = 87
        Height = 21
        Hint = 'Data de abertura como Sub Congrega'#231#227'o.'
        ClickKey = 114
        DialogTitle = 'Selecione a Data'
        NumGlyphs = 2
        CalendarStyle = csDialog
        TabOrder = 7
        Text = '01/01/2019'
      end
      object dblkcbbCargo: TDBLookupComboBox
        Left = 647
        Top = 22
        Width = 171
        Height = 21
        KeyField = 'list'
        ListField = 'cargo'
        ListSource = dsCargos
        TabOrder = 8
      end
      object crncydtValor: TCurrencyEdit
        Left = 470
        Top = 20
        Width = 65
        Height = 21
        DisplayFormat = '0.00;-0.00'
        TabOrder = 6
      end
      object chkCheque: TCheckBox
        Left = 712
        Top = -1
        Width = 106
        Height = 17
        Caption = 'Cadastar Cheque'
        TabOrder = 0
        OnClick = chkChequeClick
      end
      object jvdblkpcmbNome: TJvDBLookupCombo
        Left = 199
        Top = 20
        Width = 265
        Height = 21
        LookupField = 'cod_pessoa'
        LookupDisplay = 'nome_pessoa'
        LookupSource = dsPessoa
        TabOrder = 4
      end
    end
  end
  inherited pnlRodape: TPanel
    Width = 841
    ExplicitWidth = 841
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
    inherited btnFechar: TBitBtn
      Left = 749
      ExplicitLeft = 749
    end
  end
  inherited QryListagem: TFDQuery
    SQL.Strings = (
      
        'SELECT t.cod_dizimo, t.cod_talao, t.cod_cheque, t.nome, t.valor,' +
        ' t.`data`, t.cargo, t.cod_congregacao,b.nivel'
      
        'FROM tb_dizimista t inner join tb_parametro_sistema a on a.cod_c' +
        'ongregacao = t.cod_congregacao '
      'left join tb_cargo b on b.cargo = t.cargo'
      'where t.`data` between '
      ':dtini'
      'and '
      ':dtfim'
      'order by b.nivel desc')
    Left = 264
    Top = 0
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
    object fdtncfldQryListagemcod_dizimo: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_dizimo'
      Origin = 'cod_dizimo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object intgrfldQryListagemcod_talao: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo do Tal'#227'o'
      FieldName = 'cod_talao'
      Origin = 'cod_talao'
    end
    object intgrfldQryListagemcod_cheque: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo do Cheque'
      FieldName = 'cod_cheque'
      Origin = 'cod_cheque'
    end
    object strngfldQryListagemnome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object fltfldQryListagemvalor: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
    end
    object dtfldQryListagemdata: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data'
      FieldName = 'data'
      Origin = '`data`'
    end
    object strngfldQryListagemcargo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cargo'
      FieldName = 'cargo'
      Origin = 'cargo'
      Size = 50
    end
    object intgrfldQryListagemcod_congregacao: TIntegerField
      DisplayLabel = 'C'#243'digo da Congrega'#231#227'o'
      FieldName = 'cod_congregacao'
      Origin = 'cod_congregacao'
      Required = True
    end
    object intgrfldQryListagemnivel: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nivel'
      Origin = 'nivel'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  inherited dtsListagem: TDataSource
    Left = 336
    Top = 0
  end
  object fdqryCargos: TFDQuery
    Active = True
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select cargo as list ,cargo from tb_cargo'
      'union'
      'select "MEMBRO", "MEMBRO" ')
    Left = 376
    Top = 152
  end
  object dsCargos: TDataSource
    DataSet = fdqryCargos
    Left = 536
    Top = 136
  end
  object fdqryDizimistas: TFDQuery
    Active = True
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      '##DIZIMISTA GERAL'
      
        'SELECT t.cod_dizimo, t.cod_talao, t.cod_cheque, t.nome, t.valor,' +
        ' t.`data`, t.cargo, t.cod_congregacao,0 as nivel,coalesce(y.nro_' +
        'rol,0) as rol,date(:dtini)data_mes'
      
        'FROM tb_dizimista t inner join tb_parametro_sistema a on a.cod_c' +
        'ongregacao = t.cod_congregacao '
      'left join tb_pessoa y on y.nome_pessoa = t.nome'
      'where t.`data` between '
      ':dtini'
      'and '
      ':dtfim'
      'and t.cargo = '#39'MEMBRO'#39
      'union all'
      '##DIRIGENTE'
      
        'select e.cod_dizimo,e.cod_talao,e.cod_cheque, c.nome_pessoa as n' +
        'ome,e.valor,e.`data`,"DIRIGENTE",c.cod_congregacao,100,c.nro_rol' +
        ' ,date(:dtini)data_mes'
      'from tb_congregacao a '
      
        'inner join tb_parametro_sistema b on a.cod_congregacao = b.cod_c' +
        'ongregacao'
      'left join tb_pessoa c on c.cod_pessoa = a.cod_dirigente'
      'inner join tb_obreiro_cargo d on d.COD_MEMBRO = c.cod_pessoa'
      
        'left join tb_dizimista e on e.NOME = c.nome_pessoa and e.CARGO =' +
        ' d.CARGO '
      'and e.`data` between :dtini and :dtfim'
      'union all '
      '##OBREIROS'
      
        'select c.cod_dizimo,c.cod_talao,c.cod_cheque,a.NOME,c.valor,c.`d' +
        'ata`,a.CARGO,a.COD_CONGREGACAO,x.nivel,y.nro_rol,date(:dtini)dat' +
        'a_mes'
      ' from tb_obreiro_cargo a '
      'inner join tb_cargo x on x.cod_cargo = a.COD_CARGO'
      'inner join tb_pessoa y on y.cod_pessoa = a.cod_membro'
      
        'inner join tb_parametro_sistema b on a.COD_CONGREGACAO = b.cod_c' +
        'ongregacao'
      
        'left join tb_dizimista c on c.cod_congregacao = a.COD_CONGREGACA' +
        'O and c.cargo = a.CARGO and c.nome = a.NOME'
      'and c.`data` between :dtini and :dtfim'
      
        'where a.cod_membro <> (select  c.cod_pessoa  from tb_congregacao' +
        ' a '
      
        'inner join tb_parametro_sistema b on a.cod_congregacao = b.cod_c' +
        'ongregacao'
      'left join tb_pessoa c on c.cod_pessoa = a.cod_dirigente)'
      'order by nivel desc')
    Left = 720
    Top = 152
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
        Value = 43495d
      end>
    object intgrfldDizimistascod_dizimo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_dizimo'
      Origin = 'cod_dizimo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object intgrfldDizimistascod_talao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_talao'
      Origin = 'cod_talao'
    end
    object intgrfldDizimistascod_cheque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_cheque'
      Origin = 'cod_cheque'
    end
    object strngfldDizimistasnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object fltfldDizimistasvalor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
    end
    object dtfldDizimistasdata: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = '`data`'
    end
    object strngfldDizimistascargo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cargo'
      Origin = 'cargo'
      Size = 50
    end
    object intgrfldDizimistascod_congregacao: TIntegerField
      FieldName = 'cod_congregacao'
      Origin = 'cod_congregacao'
      Required = True
    end
    object lrgntfldDizimistasnivel: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'nivel'
      Origin = 'nivel'
      ProviderFlags = []
      ReadOnly = True
    end
    object strngfldDizimistasrol: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rol'
      Origin = 'rol'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object fdqryDizimistasdata_mes: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_mes'
      Origin = 'data_mes'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object fdqryDizimosTotal: TFDQuery
    Active = True
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT  sum(t.valor) as total'
      
        'FROM tb_dizimista t inner join tb_parametro_sistema a on a.cod_c' +
        'ongregacao = t.cod_congregacao '
      'where t.`data` between '
      ':dtini'
      'and '
      ':dtfim')
    Left = 736
    Top = 216
    ParamData = <
      item
        Name = 'DTINI'
        DataType = ftDateTime
        ParamType = ptInput
        Value = 43586d
      end
      item
        Name = 'DTFIM'
        DataType = ftDateTime
        ParamType = ptInput
        Value = 43615d
      end>
    object fltfldDizimosTotaltotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object fdqryizimitobreiro: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      '##DIRIGENTE'
      
        'select e.cod_dizimo,e.cod_talao,e.cod_cheque, c.nome_pessoa as n' +
        'ome,e.valor,e.`data`,"DIRIGENTE" as cargo,c.cod_congregacao,100 ' +
        ' nivel,c.nro_rol as rol,date(:dtini)data_mes'
      'from tb_congregacao a '
      
        'inner join tb_parametro_sistema b on a.cod_congregacao = b.cod_c' +
        'ongregacao'
      'left join tb_pessoa c on c.cod_pessoa = a.cod_dirigente'
      'inner join tb_obreiro_cargo d on d.COD_MEMBRO = c.cod_pessoa'
      
        'left join tb_dizimista e on e.NOME = c.nome_pessoa and e.CARGO =' +
        ' d.CARGO '
      'and e.`data` between :dtini and :dtfim'
      'union all '
      '##OBREIROS'
      
        'select c.cod_dizimo,c.cod_talao,c.cod_cheque,a.NOME,c.valor,c.`d' +
        'ata`,a.CARGO,a.COD_CONGREGACAO,x.nivel,y.nro_rol,date(:dtini)dat' +
        'a_mes'
      ' from tb_obreiro_cargo a '
      'inner join tb_cargo x on x.cod_cargo = a.COD_CARGO'
      'inner join tb_pessoa y on y.cod_pessoa = a.cod_membro'
      
        'inner join tb_parametro_sistema b on a.COD_CONGREGACAO = b.cod_c' +
        'ongregacao'
      
        'left join tb_dizimista c on c.cod_congregacao = a.COD_CONGREGACA' +
        'O and c.cargo = a.CARGO and c.nome = a.NOME'
      'and c.`data` between :dtini and :dtfim'
      
        'where a.cod_membro <> (select  c.cod_pessoa  from tb_congregacao' +
        ' a '
      
        'inner join tb_parametro_sistema b on a.cod_congregacao = b.cod_c' +
        'ongregacao'
      'left join tb_pessoa c on c.cod_pessoa = a.cod_dirigente)'
      'order by nivel desc')
    Left = 616
    Top = 144
    ParamData = <
      item
        Name = 'DTINI'
        DataType = ftDateTime
        ParamType = ptInput
        Value = 43586d
      end
      item
        Name = 'DTFIM'
        DataType = ftDateTime
        ParamType = ptInput
        Value = 43615d
      end>
    object intgrfld1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_dizimo'
      Origin = 'cod_dizimo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object intgrfld2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_talao'
      Origin = 'cod_talao'
    end
    object intgrfld3: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_cheque'
      Origin = 'cod_cheque'
    end
    object strngfld1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object fltfld1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
    end
    object dtfld1: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = '`data`'
    end
    object strngfld2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cargo'
      Origin = 'cargo'
      Size = 50
    end
    object intgrfld4: TIntegerField
      FieldName = 'cod_congregacao'
      Origin = 'cod_congregacao'
      Required = True
    end
    object lrgntfld1: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'nivel'
      Origin = 'nivel'
      ProviderFlags = []
      ReadOnly = True
    end
    object strngfld3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rol'
      Origin = 'rol'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object fdqryizimitobreirodata_mes: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_mes'
      Origin = 'data_mes'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsMes: TDataSource
    DataSet = dtmPrincipal.fdqryMeses
    Left = 234
    Top = 72
  end
  object dsPessoa: TDataSource
    DataSet = fdqryPessoa
    Left = 392
    Top = 280
  end
  object fdqryPessoa: TFDQuery
    Active = True
    Connection = dtmPrincipal.ConexaoDB
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
        'do, dta_inclusao, USUARIO_CADASTRO, SITUACAO, '
      'a.cod_congregacao, cod_situacao'
      
        'FROM igreja.tb_pessoa a join tb_parametro_sistema b on a.cod_con' +
        'gregacao = b.cod_congregacao'
      'order by nome_pessoa')
    Left = 441
    Top = 112
    object fdtncfldPessoacod_pessoa: TFDAutoIncField
      FieldName = 'cod_pessoa'
      Origin = 'cod_pessoa'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldPessoanome_pessoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_pessoa'
      Origin = 'nome_pessoa'
      Size = 50
    end
    object blbfldPessoafoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'foto'
      Origin = 'foto'
    end
    object strngfldPessoasexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sexo'
      Origin = 'sexo'
      Size = 1
    end
    object strngfldPessoanome_pai: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_pai'
      Origin = 'nome_pai'
      Size = 50
    end
    object strngfldPessoanome_mae: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_mae'
      Origin = 'nome_mae'
      Size = 50
    end
    object dtfldPessoadta_nascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_nascimento'
      Origin = 'dta_nascimento'
    end
    object strngfldPessoanaturalidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'naturalidade'
      Origin = 'naturalidade'
      Size = 50
    end
    object strngfldPessoauf_nascimento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf_nascimento'
      Origin = 'uf_nascimento'
      Size = 2
    end
    object strngfldPessoanacionalidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nacionalidade'
      Origin = 'nacionalidade'
      Size = 50
    end
    object strngfldPessoanrorg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nrorg'
      Origin = 'nrorg'
    end
    object strngfldPessoaorgaorg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'orgaorg'
      Origin = 'orgaorg'
      Size = 10
    end
    object strngfldPessoacpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
    end
    object strngfldPessoaemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object strngfldPessoagrau_instr_situacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grau_instr_situacao'
      Origin = 'grau_instr_situacao'
      Size = 30
    end
    object strngfldPessoagrau_instrucao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grau_instrucao'
      Origin = 'grau_instrucao'
      Size = 30
    end
    object strngfldPessoaform_teo_situacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'form_teo_situacao'
      Origin = 'form_teo_situacao'
      Size = 30
    end
    object strngfldPessoaformacao_teologica: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'formacao_teologica'
      Origin = 'formacao_teologica'
      Size = 30
    end
    object strngfldPessoaestado_civil_atual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado_civil_atual'
      Origin = 'estado_civil_atual'
    end
    object strngfldPessoaestado_civil_anterior: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado_civil_anterior'
      Origin = 'estado_civil_anterior'
    end
    object strngfldPessoanome_conjugue: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_conjugue'
      Origin = 'nome_conjugue'
      Size = 50
    end
    object dtfldPessoadta_casamento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_casamento'
      Origin = 'dta_casamento'
    end
    object strngfldPessoalogradouro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 250
    end
    object strngfldPessoauf_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf_endereco'
      Origin = 'uf_endereco'
      Size = 2
    end
    object strngfldPessoaestado_casa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado_casa'
      Origin = 'estado_casa'
    end
    object strngfldPessoacomplemento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 50
    end
    object strngfldPessoafone_residencial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone_residencial'
      Origin = 'fone_residencial'
      Size = 30
    end
    object strngfldPessoabairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object strngfldPessoacep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
    end
    object strngfldPessoacidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object strngfldPessoafone_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone_celular'
      Origin = 'fone_celular'
      Size = 30
    end
    object dtfldPessoadta_conversao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_conversao'
      Origin = 'dta_conversao'
    end
    object dtfldPessoadta_batismo_esprito: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_batismo_esprito'
      Origin = 'dta_batismo_esprito'
    end
    object dtfldPessoadta_batismo_aguas: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_batismo_aguas'
      Origin = 'dta_batismo_aguas'
    end
    object dtfldPessoadta_congregado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_congregado'
      Origin = 'dta_congregado'
    end
    object strngfldPessoalocal_descisao_congregado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'local_descisao_congregado'
      Origin = 'local_descisao_congregado'
      Size = 50
    end
    object dtfldPessoadta_membro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_membro'
      Origin = 'dta_membro'
    end
    object strngfldPessoaorigem_eclesiastica: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'origem_eclesiastica'
      Origin = 'origem_eclesiastica'
      Size = 50
    end
    object strngfldPessoaproced_eclesiastica: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'proced_eclesiastica'
      Origin = 'proced_eclesiastica'
      Size = 50
    end
    object strngfldPessoaprofissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'profissao'
      Origin = 'profissao'
      Size = 50
    end
    object strngfldPessoahabilitacao_profissional: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'habilitacao_profissional'
      Origin = 'habilitacao_profissional'
      Size = 30
    end
    object strngfldPessoaemprego_atual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emprego_atual'
      Origin = 'emprego_atual'
      Size = 30
    end
    object strngfldPessoafuncao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'funcao'
      Origin = 'funcao'
      Size = 30
    end
    object strngfldPessoafone_trabalho: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone_trabalho'
      Origin = 'fone_trabalho'
      Size = 30
    end
    object intgrfldTesourariaDescricaoPessoacod_congregacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_congregacao'
      Origin = 'cod_congregacao'
    end
    object strngfldPessoanro_rol: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nro_rol'
      Origin = 'nro_rol'
      Size = 15
    end
    object strngfldPessoanro_cad_congregado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nro_cad_congregado'
      Origin = 'nro_cad_congregado'
      Size = 15
    end
    object strngfldPessoamembro_congregado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'membro_congregado'
      Origin = 'membro_congregado'
      Size = 15
    end
    object dtfldPessoadta_inclusao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_inclusao'
      Origin = 'dta_inclusao'
    end
    object strngfldPessoaUSUARIO_CADASTRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO_CADASTRO'
      Origin = 'USUARIO_CADASTRO'
    end
    object intgrfldTesourariaDescricaoPessoacod_situacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_situacao'
      Origin = 'cod_situacao'
    end
    object strngfldPessoaigreja: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'igreja'
      Origin = 'igreja'
      Size = 30
    end
    object strngfldPessoasetor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'setor'
      Origin = 'setor'
      Size = 15
    end
    object strngfldPessoacongregacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'congregacao'
      Origin = 'congregacao'
      Size = 30
    end
    object strngfldPessoaSITUACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 50
    end
  end
end
