object frmTelaheranca: TfrmTelaheranca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'INFORME AQUI O T'#205'TULO'
  ClientHeight = 456
  ClientWidth = 800
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 800
    Height = 418
    ActivePage = tabListagem
    Align = alClient
    TabOrder = 0
    object tabListagem: TTabSheet
      Caption = 'Listagem'
      object pnlListagem: TPanel
        Left = 0
        Top = 0
        Width = 792
        Height = 65
        Align = alTop
        TabOrder = 0
        object lblIndice: TLabel
          Left = 16
          Top = 0
          Width = 75
          Height = 13
          Caption = 'CampoPesquisa'
        end
        object mskPesquisar: TMaskEdit
          Left = 16
          Top = 16
          Width = 241
          Height = 21
          TabOrder = 0
          Text = ''
          TextHint = 'Digite sua Pesquisa'
          OnChange = mskPesquisarChange
        end
        object btnPesquisar: TBitBtn
          Tag = 99
          Left = 280
          Top = 14
          Width = 75
          Height = 25
          Caption = '&Pesquisar'
          TabOrder = 1
          OnClick = btnPesquisarClick
        end
      end
      object grdListagem: TDBGrid
        Left = 0
        Top = 65
        Width = 792
        Height = 325
        Align = alClient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = grdListagemDblClick
        OnKeyDown = grdListagemKeyDown
        OnTitleClick = grdListagemTitleClick
      end
    end
    object tabManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 418
    Width = 800
    Height = 38
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      800
      38)
    object btnNavigator: TDBNavigator
      Left = 448
      Top = 6
      Width = 224
      Height = 25
      DataSource = dtsListagem
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object btnNovo: TBitBtn
      Tag = 99
      Left = 4
      Top = 6
      Width = 80
      Height = 25
      Caption = '&Novo'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF828282
        828282828282818181818181818181818181818181408D4041A6413CB23C4AA5
        4A009900FF00FFFF00FFFF00FF8F8F8FFDFDFDF9F9F9F9F9F9F9F9F9F9F9F9F9
        F9F936AE3649BB4965BB655FBF5FA8E8A882D5820D9F0DFF00FFFF00FF999999
        F9F9F9E7E7E7E8E8E8E8E8E8E8E8E874C07425A9258AC38AC6C6C6C8D1C846BA
        4665C96547B847009900FF00FFA2A2A2FAFAFAEAEAEAEBEBEBEBEBEBEBEBEB2A
        A82A77C477CCCCCCAAD1AACECECE9ACA9A31AE312CA72C069906FF00FFAAAAAA
        FAFAFAEDEDEDEDEDEDEEEEEEEEEEEE0B9F0B6FC36F89CC8915A2158ACD8AF6F6
        F655BB553BAF3B19A219FF00FFAFAFAFFBFBFBEFEFEFF0F0F0F0F0F0F0F0F053
        BA5374CC7447BB4744BE442EB12EDEF2DEEEF8EE49B8492FAD2FFF00FFB5B5B5
        FCFCFCF1F1F1F2F2F2F2F2F2F2F2F279C57989D28986D18675CC7570CA705EBF
        5EFEFEFE9FD89F41B341FF00FFB8B8B8FCFCFCF3F3F3F4F4F4F5F5F5F5F5F5E5
        EEE53CB03CA2DAA2AFDEAFA6DAA683CC836FC66F41B341FF00FFFF00FFBBBBBB
        FCFCFCF5F5F5F6F6F6F6F6F6F6F6F6F6F6F6E7F0E77AC77A58BC5836AF365ABD
        5A41B341FF00FFFF00FFFF00FFBDBDBDFDFDFDF7F7F7F8F8F8F8F8F8F8F8F8F8
        F8F8F7F7F7F6F6F6F5F5F5F4F4F4FCFCFCBDBDBDFF00FFFF00FFFF00FFBEBEBE
        FDFDFDF8F8F8F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F8F8F8F6F6F6F5F5F5FCFC
        FCBEBEBEFF00FFFF00FFFF00FFBFBFBFFDFDFDF9F9F9FAFAFAFAFAFAFBFBFBFA
        FAFAFAFAFAF9F9F9F8F8F8F6F6F6FDFDFDBFBFBFFF00FFFF00FFFF00FFC0C0C0
        FEFEFEFAFAFAFBFBFBFBFBFBFBFBFBFBFBFBFAFAFAF9F9F9C0C0C0CBCBCBDBDB
        DBC0C0C0FF00FFFF00FFFF00FFC0C0C0FEFEFEFBFBFBFBFBFBFCFCFCFCFCFCFC
        FCFCFBFBFBFAFAFACBCBCBE2E2E2C0C0C0FF00FFFF00FFFF00FFFF00FFC0C0C0
        FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFAFAFADBDBDBC0C0C0FF00
        FFFF00FFFF00FFFF00FFFF00FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0FF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 1
      OnClick = btnNovoClick
    end
    object btnAlterar: TBitBtn
      Tag = 99
      Left = 85
      Top = 6
      Width = 80
      Height = 25
      Caption = '&Alterar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000001FF00FFFF00FF
        FF00FF7F331B8833138A37128A3B168A3B16FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF84351E8E32107C321FFF00FFFF00FFFF00FF93
        4112853F1EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF35221D35221D
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8C4219984A13984A13FF00FFFF00
        FFFF00FFFF00FFFF00FF35221D1C63780076A900699A004C88FF00FFFF00FFFF
        00FFFF00FFFF00FF9A4E15A8590FA55A12A65C14B36810AA6214FF00FF02AAD8
        00B6EA036C970930940B0983FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF0281AB00BEEE03161707119C0C16980B0C83FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0281AB
        056AF2061C7402000007119C0C17990B0C83FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0B1CBB2555FF061C7402000007119C0C
        169C0B0C82FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0F26BF2455FF061C7402000007119C0C169C0B0C83FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1028C22455FF061C7402
        000007119C0C169C0A0C83FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF1129C42454FF061C7402000007119C0B169D0B0C83FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF112CC924
        55FF061C7402000007119C07119C0A0C83FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF132FCD2354FF061C7400000007119C999C
        D9171895FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF1531D11E4EFF061C74A3A19A7B7BD700018FFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1532D2ACBFFF6C76E10000
        A6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF2F31A4020EAAFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 2
      OnClick = btnAlterarClick
    end
    object btnCancelar: TBitBtn
      Left = 166
      Top = 6
      Width = 80
      Height = 25
      Caption = '&Cancelar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFE3BC7C
        E3BC7CE3BC7CE3BC7CE3BC7CE3BC7CE3BC7CE3BC7CE3BC7CE3BC7CE3BC7CE3BC
        7CE3BC7CE3BC7CFF00FFE2AB4BFED054FECD4DFECD4DFECD4DFECD4DFECD4DFE
        CD4DFECD4DFECD4DFECD4DFECD4DFECD4DFECD4DFED054E2AB4BDA9733EFB02E
        EFAC26EFAC26EFAC26EFAC26EFAC26EFAC26EFAC26EFAC26EFAC26EFAC26EFAC
        26EFAC26EFB02EDA9733CD8226DC9322DB8F1CDB8F1CAE5110C16A13C16A13C1
        6A13C16A13C16A13C67115D88B1BDB8F1CDB8F1CDC9322CD8226BE6B19C87516
        C77212C77212A6460CC88D62F3ECE7F3ECE7F3ECE7F4EDE7CD9670B4580FC570
        12C77212C87516BE6B19AF540EB55A0CB4580AB4580AA1400ABC754ADECBC1DB
        C4B8D5B6A3D7BBAAD4D4D4CA9676AC4C09B4580AB55A0CAF540EA23F04A54204
        A54203A54203A54103A13E07C67942A03C05A23F04A03C05DCC4B8E3DDDAA03C
        05A54203A54204A23F049B3500A74C1CA74C1CA64B1BA24315DEC2B3F1F1F1A1
        4011A14212A14112F0EAE7EAE4E1A14112A64A1AA64A199B3500B2653EB86F4A
        B76F4AAB552DE4CABDF9F9F9FCFCFCE5CCBFD6AD99FFFFFFFBFBFBCD9B83A74E
        23AC572CAB562AAD592EB06139B56B44B66C46AB552CEEDED6FEFEFEFEFEFEFA
        F4F1E9D2C8DFBFAFBC7957A5491DA85125A74D20A4481AA64C1FB2653EB9724E
        BA734FB86F4BAD5A32F1E4DEFAF4F2AA532AAA5329A95127AC582EAE5C32AC58
        2CA95326A74E20A84F21B8714DC28464C38566C38666C18060B1623CE6CDC1B0
        603ABD7B59BB7754B9734FB76E49B56A44B3653EB16038AD5B31BF7F5FCB977C
        CD9A80CD9B81CD9A80C99277B56A47B66D4AC89074C68D6FC4896AC28565C081
        60BE7C5BBC7754B56B45C78D70D7AE9AD7AC97D8B09BD7AF9AD7AD98D2A48DD4
        A892D3A58ED1A28ACF9F86CE9B82CC987DC99277C89174BD7C5ACD9B83E1C2B3
        E1C4B4E2C4B5E1C3B4E0C1B2E0BFAFDEBDACDDBAA9DBB8A5DAB5A2D9B29ED7AF
        9BD6AC97D4A993C68C70FF00FFD4AA94D4AB95D5AB95D4AA95D4A993D4A892D3
        A791D2A68FD2A48DD2A38CD1A28BD0A189CFA088CF9E86FF00FF}
      TabOrder = 4
      OnClick = btnCancelarClick
    end
    object btnApagar: TBitBtn
      Tag = 99
      Left = 327
      Top = 6
      Width = 80
      Height = 25
      Caption = 'Apaga&r'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FF5B5B5B1E1E1E2929295656568F8F8FBCBCBCE9E9E9C0C0C0898989FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5757571C1C1C2B2B2B59595991
        9191BCBCBCE9E9E9C0C0C0898989FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        D3D3D3E3E2E1FFFCFBFFFEFBFFFEFCFFFEFEFFFFFEFFFFFFFFFFFFEEEEEEC7C7
        C7FF00FFFF00FFFF00FFFF00FFFF00FFC1C1C1F3EFEBFEFAF6FEFAF7FEFBF8FE
        FBFAFEFCFBFEFEFCFFFEFEFFFFFFBCBCBCFF00FFFF00FFFF00FFFF00FFFF00FF
        AFAFAFFEFAF4FEF8F3FEFAF4FEFAF6FEFBF7EFD1C1FEFCFBFEFEFCFFFEFEB5B5
        B5FF00FFFF00FFFF00FFFF00FFFF00FFBABABAFEF7F2E7BFA7C5693DC15E31EB
        C7B4C26235C15E31DC9F80FEFEFBBFBFBFFF00FFFF00FFFF00FFFF00FFFF00FF
        C9C7C6F7E6DAC77347CB7D53D0825BEED0BDC5693DC96F45C15E31EFD1C1CFCE
        CEFF00FFFF00FFFF00FFFF00FFD4D4D4D9D7D4F7E6D9CA7E53CB7E54F3DDCEFE
        F8F3F6E3D8C96F45C15E31F2DACCE6E5E3CECECEFF00FFFF00FFFF00FFC6C6C6
        E5E0DAFAEEE2DCA786CE875DFEF6EEFEF6EFFAEDE2E0A688E6BBA1FEF8F4F2EE
        EABBBBBBFF00FFFF00FFFF00FFB4B4B2FEF4EBFCF2E6FCF2E7EFD5C1D9A380E9
        C2A9C46538CC784FFEF6EDFEF6EEFEF7F0ADACACFF00FFFF00FFFF00FFABAAA7
        FEEFE1FCEFE1FCEFE1DCAD8ACE8A5FC9794DC46538D08057F6DDCCFEF3E7FEF4
        E9B1AFACFF00FFFF00FFFF00FFB7B2ADFCEBD9FCEBD9FCEBDAF3DAC4D09068C9
        794EC66D41FAE5D1FCEEDEFEEFE1FEF0E1C4BCB6FF00FFFF00FFFF00FFC7BDB4
        FCE7D1FCE7D1FCE7D3FCE9D3FCE9D4FCE9D4FCE9D5FCEAD5FCEAD7FCEBD8FCEB
        D9CFC4B8FF00FFFF00FFFF00FFC9BDB1C9B8A9BBAB9ABBAC9DC0B1A0CABBABDC
        CCBCE6D8C7E9D8C9E5D5C6E1D3C4DED0C1C7BDB1FF00FFFF00FFB2B2B2828282
        4444441B1B1B1F1F1F2A2A2A484848838383AAAAAAADADADA0A0A09393938888
        887F7F7F7A7A7AFF00FFB4B4B48282824444441B1B1B1F1F1F2A2A2A48484883
        8383AAAAAAADADADA0A0A09393938888887F7F7F7A7A7AFF00FF}
      TabOrder = 5
      OnClick = btnApagarClick
    end
    object btnFechar: TBitBtn
      Left = 708
      Top = 6
      Width = 80
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Fechar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFB9B8B8BABABAB3B2B2B3B2B2BAB9B9B9B8B8FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB3B2B2BCBABAD8D5D5D6D2D2CE
        CACAC9C4C4C4BEBEBCB6B6B4B2B2B3B2B2FF00FFFF00FFFF00FFFF00FFFF00FF
        AAA9A9DDDCDCD8D6DF817FBD4E4DC16B6BD96A6AD25151C68582B8C0BBBBB7B2
        B2AAA9A9FF00FFFF00FFFF00FFB4B3B3EEEEEEBBB8D42B2BC55A5AED9393F6A9
        A9F8ABABF89393F75555EF302EC0B0ABB6B8B3B3B3B2B2FF00FFFF00FFC8C7C7
        E0DFE62222BD3C3CD63E3EB24848C38C8CF58D8DF54949C33F3FB23F3FD92929
        BCC4BFBFB5B3B3FF00FFCBCACAECECEC7D7CC92929D35959BCCACACAACACC73A
        3ABC3B3BBCACACC7CACACA5555B82020D57472B8C2BDBDCCCBCBC5C4C4E4E3E3
        1F1FBD2323BA2626B1ACACC7C6C6C6B0B0CAB0B0CAC6C6C6ACACC72424AE2323
        BF2A2AB7CCC8C8C2C2C2B9B8B8CFCECE1313C21212A91E1EB82020ABAFAFCACE
        CECECECECEAFAFCA2121AB1F1FBA1414AC0505B4D3CFCFB4B3B3B9B8B8CCCBCB
        7777D66868D93838CA2020ABC7C7E1E9E9E9E9E9E9C7C7E12121AB3D3DCB6E6E
        DC4747C8D9D6D6B4B3B3BBBABAD6D6D67676CA8383DF3939B6CFCFEAFEFEFECF
        CFEACFCFEAFEFEFECFCFEA3535B28B8BE17B7AC2E4E1E1BABABAB8B8B8D5D5D5
        9291C5A1A1E67F7FCAFEFEFECFCFEA4242BF4242BFCFCFEAFEFEFE7878C6A2A2
        E78382BBE6E5E5B9B8B8FF00FFBEBEBEC5C5CE8484D08484D47979C66D6DCF7E
        7EDB7E7EDB6868CC7979C68787D68181C7E5E4EDBEBEBEFF00FFFF00FFB3B2B2
        D3D3D3C4C4CB8E8ED3B4B4E8A9A9E3A2A2E1A3A3E1ACACE4B5B5E8908FCDBDBC
        D6EDEDEDB4B3B3FF00FFFF00FFFF00FFACACACD3D3D3D3D3D8B7B6D7A8A8DC9E
        9EDA9D9DDAA4A3DBAFAED6E1E1E6E7E7E7ACABABFF00FFFF00FFFF00FFFF00FF
        FF00FFB3B2B2C2C1C1D4D4D4D9D9D9DFDEDEE0E0E0E3E3E3E3E3E3C5C5C5B4B3
        B3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC2C1C1BEBDBDB4
        B3B3B4B3B3BDBCBCC2C1C1FF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 6
      OnClick = btnFecharClick
    end
    object btnGravar: TBitBtn
      Tag = 99
      Left = 247
      Top = 6
      Width = 80
      Height = 25
      Caption = '&Gravar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF9A5314
        9A53149A53147B61418686868787878080809494948787877E7E7E6E6E6E7B61
        419640047F3F087F3F08FF00FF9C5414C66C1CC76C1D7B614183838396400496
        4004B7B7B7BCBCBCA6A6A68787877B614196400495480A91440BFF00FFA65B17
        CA711FCB711F7B61417E7E7E964004964004C6C6C6CFCFCFB5B5B59292927B61
        4196400495490B91440BFF00FFA95F19CE7622CF77227B614179797996400496
        4004D3D3D3E3E3E3C8C8C89D9D9D7B6141964004974B0B92450CFF00FFAC631C
        D27C27D37E297B6141747474747474747474D5D5D5F6F6F6DBDBDBABABAB7B61
        41964004984C0C94470DFF00FFAF6B28D6883AD78A3DA871347B61417B61417B
        61417B61417B61417B61417B6141845121904709A0541195480DFF00FFB27436
        CA8444D1AA89CFA887CDA584CBA381C99F7CC69B77C59975C49874C39774C296
        73C19573B6611F96490EFF00FFB57D45D19D6EF0F0F0EDEDEDE9E9E9E5E5E5E2
        E2E2DEDEDEDBDBDBD7D7D7D6D6D6D6D6D6D6D6D6BB7843974B0EFF00FFB88552
        D09F75E4E4E4E1E1E1DEDEDEDCDCDCD9D9D9D6D6D6D4D4D4D1D1D1CECECECCCC
        CCCACACAB97640974C0FFF00FFBB8C5ED8AB84FEFEFEFCFCFCF9F9F9F5F5F5F2
        F2F2EEEEEEEBEBEBE7E7E7E3E3E3E0E0E0DCDCDCBD7A45984C0FFF00FFBC9167
        D4A985E8E8E8E8E8E8E8E8E8E7E7E7E5E5E5E2E2E2E0E0E0DDDDDDDADADAD8D8
        D8D5D5D5BC7943984C0FFF00FFBD936BDAB18EFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFDFDFDFAFAFAF7F7F7F3F3F3F0F0F0ECECECC27F49994D10FF00FFBD9268
        D4AA86E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E6E6E6E4E4
        E4E1E1E1BF7C46984D0FFF00FFBD9268CA9B75FEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBFBFBBC7B498F450CFF00FFBD9268
        CA9B754229924229924229924229924229924229924229924229924229924229
        92422992BC7B498F450CFF00FFB1805D975C454D1C744D1C744D1C744D1C744D
        1C744D1C744D1C744D1C744D1C744D1C744D1C74853D2687410A}
      TabOrder = 3
      OnClick = btnGravarClick
    end
  end
  object QryListagem: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    Left = 552
    Top = 32
  end
  object dtsListagem: TDataSource
    DataSet = QryListagem
    Left = 632
    Top = 32
  end
end
