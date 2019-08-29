object frmChamadaEbd: TfrmChamadaEbd
  Left = 0
  Top = 0
  Caption = 'Presen'#231'a de Alunos'
  ClientHeight = 468
  ClientWidth = 452
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
    Left = 16
    Top = 5
    Width = 97
    Height = 21
    Caption = 'Data da Aula'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 160
    Top = 8
    Width = 48
    Height = 21
    Caption = 'Classe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblTrimestre: TLabel
    Left = 16
    Top = 59
    Width = 72
    Height = 21
    Caption = 'Trimestre'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dtdtAula: TDateEdit
    Left = 16
    Top = 32
    Width = 121
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 0
  end
  object dblkcbbClasses: TDBLookupComboBox
    Left = 160
    Top = 32
    Width = 281
    Height = 29
    DropDownRows = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'cod_classe'
    ListField = 'classe'
    ListSource = dsClasses
    ParentFont = False
    TabOrder = 1
    OnClick = dblkcbbClassesClick
  end
  object btnBuscar: TBitBtn
    Left = 527
    Top = 30
    Width = 106
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 2
    Visible = False
    OnClick = btnBuscarClick
  end
  object dbgrdChamada: TDBGrid
    Left = 0
    Top = 169
    Width = 452
    Height = 299
    Align = alBottom
    DataSource = dsChamada
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrdChamadaCellClick
    OnDrawColumnCell = dbgrdChamadaDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'Aluno'
        Width = 288
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'presente'
        Width = 53
        Visible = True
      end>
  end
  object btnSalvar: TBitBtn
    Left = 384
    Top = 67
    Width = 57
    Height = 25
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 4
    OnClick = btnSalvarClick
  end
  object dbgrdAula: TDBGrid
    Left = 8
    Top = 107
    Width = 361
    Height = 46
    DataSource = dsAula
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbgrdAulaDrawColumnCell
    OnDblClick = dbgrdAulaDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'qtd_biblias'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd_revistas'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd_visitante_amigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd_visitante_evang'
        Visible = True
      end>
  end
  object btnRelatorio: TBitBtn
    Left = 378
    Top = 128
    Width = 66
    Height = 25
    Caption = 'Relat'#243'rio'
    TabOrder = 6
    OnClick = btnRelatorioClick
  end
  object dsClasses: TDataSource
    DataSet = fdqryClasses
    Left = 744
    Top = 72
  end
  object fdqryClasses: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select cod_classe,classe from tb_classe')
    Left = 752
    Top = 16
    object fdqryClassescod_classe: TFDAutoIncField
      FieldName = 'cod_classe'
      Origin = 'cod_classe'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdqryClassesclasse: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'classe'
      Origin = 'classe'
    end
  end
  object dsChamada: TDataSource
    DataSet = fdqryChamada
    Left = 576
    Top = 65528
  end
  object fdqryChamada: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT codigo, dta_aula, presente,cod_classe ,cod_aluno'
      'FROM tb_ebd_chamada'
      'where cod_classe =:cod_classe'
      'and cod_congregacao=:cod_congregacao'
      'and date(dta_aula) =:dta_aula')
    Left = 232
    Top = 136
    ParamData = <
      item
        Name = 'COD_CLASSE'
        DataType = ftInteger
        ParamType = ptInput
        Value = 3
      end
      item
        Name = 'COD_CONGREGACAO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 12
      end
      item
        Name = 'DTA_AULA'
        DataType = ftDateTime
        ParamType = ptInput
        Value = 43659d
      end>
    object fdqryChamadacodigo: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdqryChamadapresente: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Presen'#231'a'
      FieldName = 'presente'
      Origin = 'presente'
    end
    object fdqryChamadadta_aula: TDateTimeField
      FieldName = 'dta_aula'
      Origin = 'dta_aula'
      Required = True
    end
    object fdqryChamadacod_classe: TIntegerField
      FieldName = 'cod_classe'
      Origin = 'cod_classe'
      Required = True
    end
    object fdqryChamadacod_aluno: TIntegerField
      FieldName = 'cod_aluno'
      Origin = 'cod_aluno'
      Required = True
    end
    object fdqryChamadaAluno: TStringField
      FieldKind = fkLookup
      FieldName = 'Aluno'
      LookupDataSet = fdqryAlunos
      LookupKeyFields = 'cod_aluno'
      LookupResultField = 'aluno'
      KeyFields = 'cod_aluno'
      ReadOnly = True
      Size = 50
      Lookup = True
    end
  end
  object FDStoredProcChamada: TFDStoredProc
    Connection = dtmPrincipal.ConexaoDB
    StoredProcName = 'igreja.chamada_ebd'
    Left = 328
    Top = 240
    ParamData = <
      item
        Position = 1
        Name = 'cod_cong'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'cod_class'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'dta_chamada'
        DataType = ftDateTime
        ParamType = ptInput
      end>
  end
  object fdqryAlunos: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT cod_aluno, aluno,cod_classe'
      'FROM tb_classe_aluno'
      'where cod_classe =:cod_classe'
      'and cod_congregacao=:cod_congregacao'
      '')
    Left = 112
    Top = 152
    ParamData = <
      item
        Name = 'COD_CLASSE'
        DataType = ftInteger
        ParamType = ptInput
        Value = 3
      end
      item
        Name = 'COD_CONGREGACAO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 12
      end>
    object fdqryAlunoscod_aluno: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_aluno'
      Origin = 'cod_aluno'
    end
    object fdqryAlunosaluno: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno'
      Origin = 'aluno'
      Size = 50
    end
    object fdqryAlunoscod_classe: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_classe'
      Origin = 'cod_classe'
    end
  end
  object ilcheck: TImageList
    Left = 288
    Top = 8
    Bitmap = {
      494C010102000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000A9B3A900518C5800237A2B000E6912000D6611002271280051835700A9B1
      A9000000000000000000000000000000000000000000A9A9D3004343B9004D4D
      AF00000000000000000000000000000000000000000000000000000000000000
      00001A1A840002028B009797C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C3C5C3005296
      5A00168F22002EB543003DBD510050C1610056C2640045BD550034B04200106F
      1300507F5300C3C4C3000000000000000000ABABD7005050C3002222C8003030
      C8005757BA000000000000000000000000000000000000000000000000002626
      8F000505A1000101A20002028B009797C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C3C5C3003897430025B1
      3A003CBE53004BBF5D0087D28E008BD2910072CA7B0066C670006DC874005DC2
      670026A03200316E3700C3C4C300000000005858C8002929D2001717D0001616
      CE003838D1005F5FC0000000000000000000000000000000000034349B000E0E
      A7000101A6000101A6000101A20002028B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000055AD620027B63F0038BE
      4F0042BF5800AFE2B500FCF9F600FCF9F400FAF7F1007BCE820068C672006FC8
      76006CC7740029A1340050805400000000006363C6004444DD001C1CDB001B1B
      D9001A1AD5003F3FD8006565C60000000000000000004545A9001A1AB3000202
      A8000101A6000101A60002029F00191983000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A9BFAC0021B236002FBE4F003CBF
      5600BFE7C400FCFAF800FCFAF700FCF9F600FCF9F400CBE8C80062C56D0069C7
      720071C9780061C46B0013771700A9B1A900000000006E6ED0004C4CE6002121
      E3001F1FDF001C1CDA004242DC006464C6005757BA002A2AC4000A0AB6000505
      AE000101A7000505A0001A1A8600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000057BA6A0030BF500037BF5600D1EF
      D700FCFBFA00FCFBF900FCFAF800FCFAF700FCF9F600FCF9F40081D0870063C6
      6F006BC7740072C9790037B346004C82500000000000000000007A7AD9005656
      ED002424E8002121E3001D1DDD003F3FDA003838D3001111C5000D0DBC000808
      B4000F0FA90023238B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000039BD520031C157002CBE4F00B3E5
      BF00FCFCFC00FCFBFB00A3DFAC00BCE5C000FCFAF700FCF9F600D3ECD1005EC4
      6B0064C670006CC875004FC060001F7826000000000000000000000000008282
      DD005959EF002626EA002121E4001D1DDC001919D4001414CB001010C2001C1C
      B700323299000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000039C1540031C259002EBF530032C0
      5300C4EBCD0086D7980039BF540058C76C00F7F9F500FCFAF700FCF9F60088D3
      91005FC56C0066C772005DC46B00157E1B000000000000000000000000000000
      00008282DA005757EC002626EA002121E3001C1CDA001717D0002828C5003E3E
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000040C75D0033C45D0030C157002EBF
      53002DBF4F002EBE4F0034BF52003BBF5500ACE2B500FCFAF800FCFAF700DDEF
      DA005CC56B0061C56E0058C3680016841E000000000000000000000000000000
      00008F8FD9007676EE003636ED002424E8001E1EDE001919D5002929C7003E3E
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004ECC6D0036C6610032C35B0030C1
      57002FC053002DBF4F0030BF500036BF53004EC56500F4F8F200FCFAF800FCFA
      F7008FD699005BC469004AC05F0024902C000000000000000000000000009797
      D9008D8DED006E6EF2006363F1004F4FEE003636E5002121D9001616CD001F1F
      BD0032329B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073CF8B003CC9630034C55F0032C3
      5B0031C257002FC053002DBF4F0031BF510037BF54009EDEAB00FCFBF900FCFA
      F800E5F3E4005AC56B0037BB4D00509E580000000000000000009C9CD7009E9E
      EB008787F5007D7DF4007272F3007777E6006D6DE1005555E3004646D9003434
      CE002B2BB8003535980000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5CABB0054D7760037C8630034C5
      5F0033C45B0031C257002FC053002DBF500033BF530042C25D00EFF8F000FCFB
      F900CCEBCF005BC76E001CAB2B00AABAAB0000000000A0A0D500ACACEA009C9C
      F7009494F6008A8AF5008B8BE7007E7ECC007272C5006C6CDA005B5BDE005252
      D5004848CC004141B8003F3F9800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084D69D0047D06E0036C7
      620034C55F0033C45B0031C257002FC054002EBF510034BF530077D28B0071D0
      840043C15B0031BC470058B3650000000000A0A0D100B4B4E700AEAEF800A7A7
      F8009F9FF7009B9BE6008888CD0000000000000000006C6CBB006B6BD2005D5D
      D7005151CE004747C5004141B40041419A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C5C8C60077DD970048D1
      6E0037C7630035C65F0033C45B0031C257002FC0540030BF520035BF550039C0
      570034BF4C0041B65300C3C6C40000000000A7A7C500B8B8EF00B5B5F900AFAF
      F800A8A8E5008E8ECD00000000000000000000000000000000006464B4006565
      CB005555CE004B4BC5004545BB004242A2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C5C8C6008EDD
      A80062DF86003FCC660037C7610034C55D0033C35B0032C3580035C3570037C2
      4F0065C17500C3C7C4000000000000000000C3C3E900A8A8C400BABAEE00B1B1
      E4009494CB000000000000000000000000000000000000000000000000006060
      B1005C5CC5004F4FC1004C4CA800A0A0C9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BACEC00089DBA20068DB890059D9780051D46F0055CE730071C98600AFC6
      B3000000000000000000000000000000000000000000C2C2E800AAAAC4009C9C
      CE00000000000000000000000000000000000000000000000000000000000000
      00005B5BAD005757AD00A2A2CB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F00F8FF100000000C00307E000000000
      800103C000000000800101800000000000008001000000000000C00300000000
      0000E007000000000000F00F000000000000F00F000000000000E00700000000
      0000C0030000000000008001000000008001018000000000800103C000000000
      C00307E000000000F00F8FF10000000000000000000000000000000000000000
      000000000000}
  end
  object fdqryAula: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      
        'SELECT codigo, dta_aula, cod_classe, qtd_biblias, qtd_revistas, ' +
        'trimestre, cod_congregacao, nro_licao, titulo_licao, titulo_revi' +
        'sta,qtd_visitante_amigo, qtd_visitante_evang'
      'FROM tb_ebd_aula'
      'where date(dta_aula) = date(:dta_aula)'
      'and cod_classe =:cod_classe'
      'and cod_congregacao =:cod_congregacao')
    Left = 352
    Top = 208
    ParamData = <
      item
        Name = 'DTA_AULA'
        DataType = ftDateTime
        ParamType = ptInput
        Value = 43659d
      end
      item
        Name = 'COD_CLASSE'
        DataType = ftInteger
        ParamType = ptInput
        Value = 3
      end
      item
        Name = 'COD_CONGREGACAO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 12
      end>
    object fdqryAulacodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdqryAuladta_aula: TDateTimeField
      FieldName = 'dta_aula'
      Origin = 'dta_aula'
      Required = True
    end
    object fdqryAulacod_classe: TIntegerField
      FieldName = 'cod_classe'
      Origin = 'cod_classe'
      Required = True
    end
    object fdqryAulaqtd_biblias: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Qtd. B'#237'blias'
      FieldName = 'qtd_biblias'
      Origin = 'qtd_biblias'
    end
    object fdqryAulaqtd_revistas: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'qtd. Revistas'
      FieldName = 'qtd_revistas'
      Origin = 'qtd_revistas'
    end
    object fdqryAulatrimestre: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Trimestre'
      FieldName = 'trimestre'
      Origin = 'trimestre'
    end
    object fdqryAulacod_congregacao: TIntegerField
      FieldName = 'cod_congregacao'
      Origin = 'cod_congregacao'
      Required = True
    end
    object fdqryAulanro_licao: TIntegerField
      FieldName = 'nro_licao'
      Origin = 'nro_licao'
      Required = True
    end
    object fdqryAulatitulo_licao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'titulo_licao'
      Origin = 'titulo_licao'
      Size = 100
    end
    object fdqryAulatitulo_revista: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'titulo_revista'
      Origin = 'titulo_revista'
      Size = 100
    end
    object fdqryAulaqtd_visitante_amigo: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Visitantes Amigos'
      FieldName = 'qtd_visitante_amigo'
      Origin = 'qtd_visitante_amigo'
    end
    object fdqryAulaqtd_visitante_evang: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Visitantes Evang'#233'licos'
      FieldName = 'qtd_visitante_evang'
      Origin = 'qtd_visitante_evang'
    end
  end
  object dsAula: TDataSource
    DataSet = fdqryAula
    Left = 288
    Top = 192
  end
  object FDStoredProcAula: TFDStoredProc
    Connection = dtmPrincipal.ConexaoDB
    StoredProcName = 'igreja.aula_ebd'
    Left = 648
    Top = 80
    ParamData = <
      item
        Position = 1
        Name = 'cod_cong'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'cod_class'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'dta_aul'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'nro_lic'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'tlic'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 6
        Name = 'trev'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end>
  end
end
