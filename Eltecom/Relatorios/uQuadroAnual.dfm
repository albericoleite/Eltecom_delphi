object frmQuadroAnual: TfrmQuadroAnual
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Sele'#231#227'o do Ano'
  ClientHeight = 240
  ClientWidth = 255
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 0
    Top = 0
    Width = 255
    Height = 19
    Align = alTop
    Alignment = taCenter
    Caption = 'Quadro Anual de Dizimistas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 225
  end
  object lbl2: TLabel
    Left = 80
    Top = 33
    Width = 32
    Height = 19
    Caption = 'Ano'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dblkcbbAnos: TDBLookupComboBox
    Left = 118
    Top = 33
    Width = 75
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'key'
    ListField = 'ano'
    ListSource = dsAnos
    ParentFont = False
    TabOrder = 0
  end
  object btnImprimir: TBitBtn
    Left = 24
    Top = 189
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
    TabOrder = 1
    OnClick = btnImprimirClick
  end
  object btnSair: TBitBtn
    Left = 145
    Top = 189
    Width = 90
    Height = 36
    Caption = 'Sair'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FF244E6E
      0A6B9BA6B2F19FA4DAA29CBFAD9BAAB69E9EB69E9EB69F9FB69F9FB69F9FB69F
      9F3C9DBE244E6EFF00FFFF00FF244E6E0A6B9B95AAFC8199FC6F8BFC5D7DFC56
      72F06272D47A79B899879CAB9090AB90903FA0BF244E6EFF00FFFF00FF244E6E
      0A6B9B849CFC728DFC607FFC4E71FC3C62FC2A54FC1745FC0A3AFAA08181A081
      8142A3C1244E6EFF00FFFF00FF244E6E0D6E9D7490FC6282FC5074FC3E64FC2C
      56FC1A48FC0A3BFC0A34F095727295727245A6C2244E6EFF00FFFF00FF244E6E
      10719F6684FC5475FC4267FC3059FC1E4AFC0C3CFC0A36F20A2FE58963638963
      6348A9C4244E6EFF00FFFF00FF244E6E1374A15778FC4569FC335BFC214DFC0F
      3EFC0A37F40A2FE60A2ADA7E54547E54544BACC6244E6EFF00FFFF00FF244E6E
      1575A3486CFC365EFC244FFC1240FC0A37F50A31E80A2ADC0A24D07446467446
      464EAEC8244E6EFF00FFFF00FF244E6E1778A53960FC2751FC1543FC0A38F70A
      32EA0A2BDE0A7ED80AA0E16A3C3C6B3B3B50B1CA244E6EFF00FFFF00FF244E6E
      1A7BA72A54FC1744FC0A39F90A33ED0A2CE00A27D30B91EA4DC9F3693D3E6B3B
      3B53B4CC244E6EFF00FFFF00FF244E6E1D7EA91947FC0A3AFB0A34EF0A2DE30A
      28D50A21C90A1BBD0A15B06B3B3B6B3B3B56B7CE244E6EFF00FFFF00FF244E6E
      2081AB0A3BFC0A35F10A2EE40A29D80A22CB0A1CBF0A16B20A0EA56B3B3B6B3B
      3B59BAD0244E6EFF00FFFF00FF244E6E2384AC0A36F30A2FE60A2ADA0A23CE0A
      1DC00A15B10A0FA40A0A9B6B3B3B6B3B3B5CBDD1244E6EFF00FFFF00FF244E6E
      2687AE0A31E80A2ADC0A24D00A1BBE0A13AD0A0EA30A0A9C0A0A9B6B3B3B6B3B
      3B5EBFD3244E6EFF00FFFF00FF244E6E2989B00A2BDE0A21C90A17B40A11AA0A
      0EA20A0B9C0A0A9B0A0A9B6B3B3B6B3B3B61C1D5244E6EFF00FFFF00FF244E6E
      2B8CB23192B53697B93C9CBC3FA0BF45A6C24AABC64FB0C954B5CD59BAD15FBF
      D363C4D7244E6EFF00FFFF00FF244E6E244E6E244E6E244E6E244E6E244E6E24
      4E6E244E6E244E6E244E6E244E6E244E6E244E6E244E6EFF00FF}
    TabOrder = 2
    OnClick = btnSairClick
  end
  object rg1: TRadioGroup
    Left = 24
    Top = 63
    Width = 211
    Height = 50
    Caption = 'Tipo'
    TabOrder = 3
  end
  object rbNormal: TRadioButton
    Left = 56
    Top = 80
    Width = 56
    Height = 17
    Caption = 'Normal'
    TabOrder = 4
  end
  object rbValor: TRadioButton
    Left = 137
    Top = 80
    Width = 56
    Height = 17
    Caption = 'Valores'
    TabOrder = 5
  end
  object pnl1: TPanel
    Left = 24
    Top = 119
    Width = 209
    Height = 64
    TabOrder = 6
    object rg2: TRadioGroup
      Left = 5
      Top = 0
      Width = 196
      Height = 57
      Caption = 'Filtro'
      TabOrder = 0
    end
    object rbSomenteObreiros: TRadioButton
      Left = 82
      Top = 20
      Width = 107
      Height = 17
      Caption = 'Somente Obreiros'
      TabOrder = 1
    end
    object rbTodos: TRadioButton
      Left = 20
      Top = 20
      Width = 56
      Height = 17
      Caption = 'Todos'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
  end
  object fdqryAnos: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select x.ano,x.ano as '#39'key'#39' from '
      '(select distinct(year(data))ano  from tb_dizimista) x')
    Left = 344
    Top = 8
    object intgrfldAnosano: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ano'
      Origin = 'ano'
      ProviderFlags = []
      ReadOnly = True
    end
    object intgrfldAnoskey: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'key'
      Origin = 'ano'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsAnos: TDataSource
    DataSet = fdqryAnos
    Left = 256
    Top = 8
  end
end
