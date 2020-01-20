object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Splendor Gest'#227'o de Igrejas - 2020.01'
  ClientHeight = 560
  ClientWidth = 1269
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object statMenu: TStatusBar
    Left = 0
    Top = 543
    Width = 1269
    Height = 17
    Panels = <
      item
        Width = 400
      end
      item
        Width = 350
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object pnl5: TPanel
    Left = 0
    Top = 0
    Width = 1269
    Height = 9
    Align = alTop
    Alignment = taLeftJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    OnClick = pnl5Click
  end
  object pgcDashs: TPageControl
    Left = 0
    Top = 9
    Width = 1269
    Height = 534
    ActivePage = Principal
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 2
    object Principal: TTabSheet
      Caption = 'Principal'
      object pnlGeral: TPanel
        Left = 0
        Top = 0
        Width = 1261
        Height = 506
        Align = alClient
        TabOrder = 0
        object spl3: TSplitter
          Left = 562
          Top = 1
          Height = 504
          ExplicitLeft = 608
          ExplicitTop = 224
          ExplicitHeight = 100
        end
        object pnlDireita: TPanel
          Left = 565
          Top = 1
          Width = 695
          Height = 504
          Align = alClient
          TabOrder = 0
          object spl2: TSplitter
            Left = 1
            Top = 257
            Width = 693
            Height = 3
            Cursor = crVSplit
            Align = alTop
            ExplicitWidth = 283
          end
          object pnl3: TPanel
            Left = 1
            Top = 260
            Width = 693
            Height = 243
            Align = alClient
            TabOrder = 0
            object dbcht2: TDBChart
              Left = 1
              Top = 1
              Width = 691
              Height = 241
              Title.Color = clBlack
              Title.Font.Color = clBlack
              Title.Text.Strings = (
                'Pessoas por Cargos')
              ClipPoints = False
              Legend.Visible = False
              View3DOptions.Elevation = 315
              View3DOptions.Orthogonal = False
              View3DOptions.Perspective = 0
              View3DOptions.Rotation = 360
              Align = alClient
              Color = clWhite
              TabOrder = 0
              DefaultCanvas = 'TGDIPlusCanvas'
              PrintMargins = (
                15
                26
                15
                26)
              ColorPaletteIndex = 13
              object psrshrzbrsrspsrshrzbrsrspsrsbrsrs2: TPieSeries
                Marks.Angle = 17
                Marks.Callout.Length = 20
                DataSource = dtmGrafico.fdqryPessoasCargos
                XLabelsSource = 'CARGO'
                XValues.Order = loAscending
                XValues.ValueSource = 'qtd'
                YValues.Name = 'Pie'
                YValues.Order = loNone
                YValues.ValueSource = 'qtd'
                Frame.InnerBrush.BackColor = clRed
                Frame.InnerBrush.Gradient.EndColor = clGray
                Frame.InnerBrush.Gradient.MidColor = clWhite
                Frame.InnerBrush.Gradient.StartColor = 4210752
                Frame.InnerBrush.Gradient.Visible = True
                Frame.MiddleBrush.BackColor = clYellow
                Frame.MiddleBrush.Gradient.EndColor = 8553090
                Frame.MiddleBrush.Gradient.MidColor = clWhite
                Frame.MiddleBrush.Gradient.StartColor = clGray
                Frame.MiddleBrush.Gradient.Visible = True
                Frame.OuterBrush.BackColor = clGreen
                Frame.OuterBrush.Gradient.EndColor = 4210752
                Frame.OuterBrush.Gradient.MidColor = clWhite
                Frame.OuterBrush.Gradient.StartColor = clSilver
                Frame.OuterBrush.Gradient.Visible = True
                Frame.Width = 4
                OtherSlice.Legend.Visible = False
              end
            end
          end
          object pnl2: TPanel
            Left = 1
            Top = 1
            Width = 693
            Height = 256
            Align = alTop
            TabOrder = 1
            object dbcht1: TDBChart
              Left = 1
              Top = 1
              Width = 691
              Height = 254
              Title.Color = clBlack
              Title.Font.Color = clBlack
              Title.Text.Strings = (
                'Resumo de Dizimistas')
              ClipPoints = False
              Legend.CheckBoxesStyle = cbsRadio
              Legend.LegendStyle = lsValues
              Legend.TextStyle = ltsRightValue
              Align = alClient
              Color = clWhite
              TabOrder = 0
              ExplicitTop = 16
              ExplicitHeight = 239
              DefaultCanvas = 'TGDIPlusCanvas'
              PrintMargins = (
                15
                26
                15
                26)
              ColorPaletteIndex = 10
              object brsrs1: TBarSeries
                BarBrush.Gradient.EndColor = 11842740
                Marks.Style = smsPercent
                Marks.Angle = 31
                DataSource = dtmGrafico.fdqryDizimosAnual
                SeriesColor = 10309376
                XLabelsSource = 'sigla'
                Emboss.Color = 33280
                Gradient.EndColor = 11842740
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'mes'
                YValues.Name = 'Bar'
                YValues.Order = loNone
                YValues.ValueSource = 'valor'
              end
            end
          end
        end
        object pnlEsquerda: TPanel
          Left = 1
          Top = 1
          Width = 561
          Height = 504
          Align = alLeft
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object spl1: TSplitter
            Left = 1
            Top = 255
            Width = 559
            Height = 3
            Cursor = crVSplit
            Align = alTop
            ExplicitTop = 259
            ExplicitWidth = 283
          end
          object pnl1: TPanel
            Left = 1
            Top = 1
            Width = 559
            Height = 254
            Align = alTop
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object img1: TImage
              Left = 1
              Top = 1
              Width = 557
              Height = 252
              Align = alClient
              ParentShowHint = False
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000001D90000
                010A08060000005EED2F830000000467414D410000B18F0BFC61050000000662
                4B474400FF00FF00FFA0BDA793000000097048597300000EC300000EC301C76F
                A86400001ECA4944415478DAEDDD09FC5573FEC7F16FFC556664446845D1A668
                A57D51D65251514412CD2885467B4A8A68CF568D28D14ADA6CA555299592B417
                893643312326C3CC7CFFF77BEADCCE3DBF73F7F3B9F7F7BBBFD7F3F1F0A8EE72
                EEFD7EEFF17D9FEFF77CCFF7E451000040449E747F0100003215210B00801042
                16000021842C000042085900008410B2000008216401001042C8020020849005
                004008210B0080104216000021842C000042085900008410B200000821640100
                1042C8020020849005004008210B0080104216000021842C0000420859000084
                10B2000008216401001042C8020020849005004008210B008010421600002184
                2C000042085900008410B2000008216401001042C8020020849005004008210B
                0080104216000021842C000042085900008410B2000008216401001042C80200
                20849005004008210B0080104216000021842C000042085900008410B2000008
                216401001042C8020020849005004008210B0080104216000021842C00004208
                5900008410B2000008216401001042C8020020849005004008210B0080104216
                000021842C000042085900008410B2000008216401001042C802002084900500
                4008210B0080104216000021842C000042085900008410B20000082164010010
                42C8020020849005004008210B0080104216000021842C000042085900008410
                B2000008216401001042C8020020849005004008210B0080104216000021842C
                000042085900008410B2000008216401001042C822C4C81265F5E979F3AAD3F3
                E553E6CFD3F205FE9E37F077EBCFBC27FF3CF5EFD33C9E3BED8C33028F9FA14E
                377F06FE3B3DAFF933EF89BF9F7CEED4DFBD1FBFA85409F64D00391E0D19D4BA
                1973748D3B5A5AFB8209D9747F9F732E2DA5EA8F1AAECA54BB82FD13408E4623
                96CB6D9CF79E3EB2659BBA6140CF6C11B2E7962FA71A0402F6D22BCAB26F02C8
                F168C872B1CD0B97E9A59DBBA90A1D3B648B903DBFD295811EEC3055B26C29F6
                4B001981C62C97DAB6628D5EDAA59BFAEDD8CFEA8A3FDF9FF6902D7C55752B60
                2F2A599C7D1240C6A041CB8576AEDB64F5608F7FFFBDF5EF74876CD13AB5D59D
                3327B32F02C838346CB9CC179B77583DD863DFEC0F3E96CE902DD1A8A16A33E5
                6FC1FD70D1E0E13AFFB90555D1DAB554E9AA15D93F01E4683462B9C8BEDD5F59
                3DD81F77EF09793C5D217BC98DD7ABD6139F0FEE83EF3DF6A4DE3EE5F5E0F3A6
                877B41954AEAFCCA9555A51B1AB2AF02C87168B87291294D5BEBEF3FDF92E5F1
                74846CA9E637AB962F8E0AEE7FEFF41EA8774E9F15F29A8265CBA81AFD7AAB8A
                8DEAB29F02C89168BC7289A9ADEFD2DFAEFBC4F3B954876CE9D62D558B314F07
                F7BDF9DDFBEA3DB3E7049F3F3D7F7E55E5A10755C36E7F66FF0490A3D1882528
                521855EED6455DDBEBE16C53B733EFEAA40F7CB832ECF3A90CD97277B655370F
                7B225837731F7C547FB9E09DE0F3259BDCA8AE0EF45E4B5C5C34DBD41F00248A
                862C0E6BA7BEA96BDE755B4C617475DF5EAA7E97FBD25EBFB33B75D3FB167E10
                F135A90AD90A1DDAAB9B86F40FD6C99B1DBBE8AF172FB5FE5EE88A8AAA72D7CE
                AA72936BD35E6700E0171AB418AD7A698AFED7DFBF8B2B8CEA0C1DAC6ADDDD26
                6D753CAF5B4FFDC5BC05515F978A90757E8631BD6D077D68F5C7EA0F175EA8CA
                DCDE2A5BF5FC01C02F346C31583E76BCDE386A6CFC6194278FBAE6D951AADAAD
                4D535ECF6FF71AA077CD7823A6D74A87ACE9A15EDBFB116BFBDFEC3DA0573CF2
                A8FA7EF3E7EAD25B9AAB4A5DFEC20A4F0032168D5B148B878ED29BC7BF64FD3D
                9130CA5BA0806A1808DA2BAF6B90B2BA7E7FE050BD6DF294985F2F19B2D5FEFA
                B0BAA67B176BDB5FEDDAAB973DF8B0FAC3F9E7ABD2AD6F55D55B3563FF0390D1
                68E422705FB7996818FDB16811D570CC4855BE7675F1FA5E3C7474E0A0E06F71
                BD472A64AFEAD3533578F07E6BBB5F6ED9A9378C1C632D9FD8A06B27F63B00B9
                028D5D1873BBF6D05FCE7F3BE4B164C2A86099D2AAC1E811EAB24AE5C5EA7CF9
                98717AE3E867E37E9F44C8D61CD85FD5EDD4DEDAE6AE4F36EBEF3EDDA40AD7B8
                4A95AE5C817D0E40AE4183E7B27FDF41BDAA777F7568CDC7599E4B368C2EAC56
                55D51FF98CBAF8B28B7DAFF795E327E9F5438725F45E3F4336CF69A7A9DA831F
                57B5EE691B2CE3975B77EB4B2B96615F0390EBD0F039ECDDBE472FEFD63DCBB2
                83363FC2A87883FAAAEDD489BED6FB9A5767E835030625FC7EBF42F6FFF2E757
                B502016BDF001E00723B1AC304251346A56E6EA25A8E1FE34BDDAF9F3957AFEA
                D35FE9FFFE37E16DF811B279CF3E5BD51EF2B8AADEF266F629003889063141C9
                0EAB966D7BBB6A36624852F5BF71FEFBFAA3DEFDD5EFBFFC925459920DD933CF
                2F640D1157B9F97AF6270070A0514C901F13842ADED741DD38A86F42BFC1E645
                CBAD803D7EF468D265492664CF2A56D40AD82BAFE72E3900E046C39820BF66E1
                9A85F01BF77C28AEDF61DB871F5B93B37E3E78D097B2241AB26797BCC40AD88A
                0D6BB31F0180071AC704F9793D693CEB1CEF5AFF592060FBA97F7CF1A56F6549
                2464CD6DE84CC0A6E2DA5F00C8A9682013E4F7CA48759E7C22E4B2172F5F7CBE
                D30AD8A35BB7F95A967843D62CE66F02B64CF52BD97F0020021AC904F91DB2A7
                9D7186AA3FFC6955BDB5F75283FBF6ECD3AB7AF5537FDFB0D1F7B2C413B2E65A
                5F7399CE65579663DF01802868281324B1907EFE730BAABACF3CA52ADFD438CB
                EF32E38E8EFAE047AB45CA126BC816A95533D0831DA84A96BB94FD0600624063
                9920A95BC2152851DC0ADA0AF56B067F9B37EEEDA2BF59B254AC2CB1846CF106
                F5AC21E28B4A95609F018018D16026482A64FF54AAA4AA376CA82A57B3AAF5DB
                CCE9DC5DEF7DE73DD1B2440BD98BAF6BAC6E9B348E7D0500E244C39920899075
                07ECFCEE7DF59ED973C4CB1229644B36BD49B59A3096FD04001240E39920BF43
                D61DB0EFF67B42EF787D7A4ACA122E642FBBB585BAE5B9E1EC230090201AD004
                F919B2EE805D347898DE327152CACAE215B265DBDCA69A8D7C92FD0300924023
                9A20BF42D61DB04B863FAB3F7B7E5C4ACBE20ED9F277B7534D870E64DF008024
                D19026C88F907507EC8AE7FEA6378C189DF2B2384376E1A067F48D83FA88EF17
                BBF77DAB771D38A276ED3FA2767E73441D3AFA53D2DB6C5EBB9C7AE096134B3C
                2EDFB8478F98B54ABCEE8CF786770CD6D723CF2DD0BB03E5B295295E488D7DA8
                B9687DA6AAAC91CA99A8B2250AA96285CEB6FE6C56B762C47AF2B39CD5CB1653
                E54A9C1FF8DCF354B5F291EFEF3C61DE1ABD60CDCEA43FB3E87967AB7217158A
                A9AC46935E93442657BA0DEB7483BAA27431B24008159BA06443D61DB01FBD34
                45AF1D32342D6571866C2A4C5BB4510F7875A93AF6AF7FFBBADDCECDAE5683EF
                BFC12AC782555BF57D23E7A6A43CDFCF1F10ACBB9B7A4ED21B769F5A53BA7A99
                62EAFD111D45EB3655658D544E3F98101AFB6013754DB5D29EF52555CEBBAEAD
                64ED3B652E29ECF9B9035F5EA4C7BFBDDEF7B20EB9B7B16A5E2F7CD89EDF6248
                4A4276E133EDA31E682071546C825EBFE58EA4FE07B8AA4FCF60C07EFCDA2CFD
                C59C79692BCB05D5AAA624644DEFD584EBB24D7B45B64FC8A6AF9C7EEADC3CF0
                3BDE7743963A932C67A4809708595BA48027643303158B946933689A960A5883
                904D5F39FDE6FC2D5355CE027FC8A7DE1CD8264BE04886ACD1AE7125CF530AA9
                0AD965233B325C2C888A454A98F35A0326675DB5EAAC33F35AE7C6FCD0A2CEA9
                73B25E0DB209BC649973C7878E1E0B792CDD216BCE550E9F297F4ED6590E7739
                93F91DC385F51B03DB86F42CBD7E53737EB3C099F9E2FE4CAFDFD1B8AA6CB190
                73CF863B6425CAFA4A8F5BB30C1DBB4336D1B2462BB773FF85FFA8DC246CFF68
                9DDE38726CBABF46D2EE9E3743743FD8B8E36B7DDBE05959CEC17AF556FCE2D5
                20FBD198B81BDCA2E715509B273D92D6904D073FCB694E233C3679895AFED957
                218F970B84CAAA173A470C59AF708A95D9DE80C0E7BA43C79C2BB50FD60CF76F
                9E6C59C72D58AFA62DDD1CF2B819AEDE3CE9E188219B4C59EDCFBEB1EF6B21FF
                1F9AE0FEC851C7F01F959BA42D4B56EAD58F0DF2ED06EAA976F93D77A9264FCA
                1EC99A894E8F8C0B5D1A5232600DA99035333E3FD9153E5C08D9C4DDFEF854ED
                0E5AE7F942BF43D630A300B70F9E19F2D835954BAA379EB84B24646D6676B63B
                68DD65F13B64EF1F365BCF5FB323E431F70105FC47E5FA60D3BB8BF59A40D01E
                3F92FC250DA976C39457D4158DEA8AEE07D17A7F12244276C4F4157AB8EB1212
                F7C102219B38D3D3AAF3F0C490C7C67669A2DADD504D2C640D77E0B97B951221
                EB55D65E6DEAA99E7736140959AF8035C3DE8B9EB927ECAC6AF883CAF5C98639
                EF5841FBDBB163C96F2C450A5D7985EAF0EE6CF17DC0DD20BB7B0A12FC0C59D3
                DB99106864DD93B64C2335FBF1B621136508D9E454EA38563B876FA34D66F323
                64BD465A563FDB29183E1221EB5587E63AEF577ADFE65BC89AD3341B761D5266
                78DAEB3A74E7010CE450C13E5A37FD2DBDFAB1C7D5FF7EFF3DDD5F2526551FE9
                A61A3DDA35E5212B25D5B38BDD3D0FAFB2E696D9C552C1938A908DB6DD5485AC
                7BBB92B38BDD810E3954B2CFD64C9EAED70C7C22DD5F23262D16CC51A5AB54C8
                B37ED65C7D759B5BC5F6854C0CD9700D2D219B1C42563E6409D8D4A2A205AC9C
                3059AF7FEA99747F8D888A37A8AFDA4E9D78E28604434668C9C528322D64C35D
                D7E8555642363E84AC7CC8BA2F8D822C2A5AC8F2B1E3F5C651D9F7F29E5A4F0C
                54753AB6CBB3FFEB437AFB6BD344577CCA949035973B9821E2488D3A219B1C42
                563E64CDA21BA67C046D6A50C982960C1BAB3F7B617CBABF4616F90B16B4868A
                4B5C5234CFCA71AFE8E3477F100D59B310C5A123FE4F0873AFC213AD4136CFC7
                AB68A102D66CD3581BF27484AC99E0327F75F20BD847938A59D4D925649DBDBD
                EC12B26698B758605F8CD5CEFDDF5B37E0F05A7423DCEA56F01F152C2CD5F786
                8D85F366EC536E6EAD0BD7A891D21B04F8C1EB120867832B759D6C34CC2EF677
                BBA90859AF4BB39CFB4AB4E7A5EAD0AF4B78CC41EEB099ABD4CFC77F0B79BC51
                95526AD6A07619B76F663754700ABCDB6FB0DEF1FAB4747F8DA06B9E1FA3AADD
                D224CF9E4FB7EAF92D5AA5FC2E3C7EF05A4F36DAC205846CF62F673A42B65ED7
                F17AE7FE53D7B8BBCBE2F5B97E5CFE92AA9035CC6847C71173B3F46AFDA83F44
                46E5A6C88247FBEBDD6FCC4EF7D7B06EB1D7E9C385C1094F5B5E7A39C785AC57
                A367AE59FD6A66EF880D23219BFDCB99EA90F55AA4C16B629B3BF0FC38AF99CA
                900D577FCC349647E5A6D0DCAE3DF497F3DF4EEB77A8D8B183BAF189BED6EF3E
                A15623FDF38183E2216B1673F8F978F2F78E3DF6AFDFAC0521DC8DA2E1BE6635
                BB84AC597FB757DB7ABE7F8E5935CBEEB59BA1F35D3EDC403D1AE78DC6B34BC8
                F60ED4AD9990162F3347C0EC47CE25320DAF05468C7077E231B7AABBAA6CF140
                E8E68DFB3B989B3A44EA41FB1DB2C67DC3DE0CB901BD3958D83BA317392088CA
                4DB1D9F777D3FB167D90B6CFBF69EAABAA42835A793E5FBC527FD0B193F59874
                C84ACF2EF65A412ABB84AC9474DCD62F3BCE2EF65BA461E0BA5DC7EB5DFBE50E
                665211B252E797111E959B0633EFFEB33EB0E2C3947FEE85D5ABAABBE79EB8E3
                CEFCEE7DF59ED973ACC77372C89A1EDD9B03DB66597F9590F55FA6876CB4A153
                3322D371C49C2C1388FC928A90F5AA436EDA2E8B8A4D9369B7B7D7873F5E97D2
                CFACD6A3BBBAE6E107ACDF7C74C90AFA7FFFF98FF5784E0D5973EEAC4BF3AB3D
                17382764FD97A9216B8688BB34AF9165894C2FE16ECBE7875484ACD776095959
                546C9AECDBFD955ED9A38FFA6ED36729F9BCD3F3E757CDE7CC52975E51CE5A46
                D17CB62D2785ACE9B99A73702D6A978F38BB9390F55FA685ACD98FCC7FE6402D
                DE9031371598BA6473D89BBF278290CD4C546C1A7DF9F94EBDB2671F7574FB8E
                E43716C5C5D73556B74D1A67FDDEB3DAFF45EF5FBE22F85C2A263EB96FD89E08
                338928D6DB72991EC74ED7F9B3545CAAE05759A329562874E2D34EC173853667
                FDB9CB6926D0F8B182907BBB12E5F4EBBBDAA4BE9739A8703E1FCFFE1F897BBB
                5CC2238BCA4DB35D9F6CB682F69F5FEE4D7E6311D4796AB0AAD5BE8DB58CE2AC
                BAD7843C97D32EE101809C8286351BD8BE6A5D2068FBAA9F0FCA0C33FEB14861
                D579FD87D66F6D96515CFFF4F090E70959009041C39A4D6C59B2D20ADAE347FC
                1FF62B737B6BD57CD453D66F3DF9A696FAE8D66D21CF13B2B17961E17ADD7BF6
                4A55BEC8796A78EB7A6AF1F6AFD5734B37A969F73751B7D4BC9CFA0390050D43
                36B2E99DC57A55AFBEEAB763FE2EA6DF78DCF3AA4AB3EB83CB28BA11B2B1B9E6
                A9A97AFD57DFAA62E79CA58EFDFA9B2A5FF43CB56EEF6142164058340CD9CC86
                B7DEB67AB4FFFBFD775FB677DEE5E5D5BD8BE6852CA3E846C8C6C60ED94F07DE
                ADDA4D7C57ED38FC832A903FAFFAF68587A83B009E681CB2A175D366EB557DFA
                FBB2AD2BFFD2495DFF580FEB777EA1524DFDEB0F3F66790D211B9B659BBFD03F
                1DFF4DD52855C4FAB7E9C59ADE6CD98B2EA4EE0078A271C8A6564F9AA63F7E7C
                70D2DB693273AABABCCE5521CB28BAA522643FD9B55FCFF9748F5AF7D5E1B0AF
                79AC690DD5A8D265270E0816AEB75E1F8DF33D2F06DE6382EFC03F7E0EFB5AE3
                C977635B04A465D5D2AAEB8D5787D44BDF194BF5BA406FD636FEAE6B3D4376D7
                377FD7CF2FFD54ADDDFB6DA0C77B34CBB64D50B70A6CFF41D7F6DDA2D543F173
                CE52D75E7EB16ADFB072703BE6602096327A95CFEB739D751C4B3D972F7CAE7A
                B1E34DC1D7371A3A2DECCDC7CFCE9FD7AA8BBEB7D40DF91E91DE13EE73BCDE1F
                AE8CF3D66ED7CF2DDB14FCF7438DAA841DF237AF5DB2E36BB5FDF00F717F0F80
                1D231BF39A091C8FA2756BAB3B674CCEB28CA29B74C89A46BFDDC4F7D44FBF46
                5E8ECE796ED384999954148DFD1ED3A89A863FDA6B8D762FBF17D3F77EA87115
                F5F41D8D43EAA548D7E7B4B31CC35AD7F76CC463F93E46FFA63555BF5BEB86AD
                FB58EBA143ED0AC186DE84422C65F42A9FD7E73A7F97F6E3E6EBB7A21CFC5C5D
                B2B05ADEFFD45AD27FBC7F64D4C03441BBAC5FBBB8DEE3FE1C27FBFDE1CA7877
                A01CCE831713C6AF776991E575B1D4BF39C899FF57EE64036FEC18D9DCF231E3
                F4C6D1CF26F4DEABFBF652F5BBDC67FDC6234B940DDB684987ACB341330D63CD
                93C3AD4E05F2E70B091B67E3661A4A2FF67B5E5BF199EE3C75C9C9C7F25A3DC4
                B3CFCCEBF9DA133DEADDC1C70FFCF8B30AF7DD3AD4A918D24B757E8ECDAB8135
                0715CD9E9F17FC3E8FDD5CD3EA71DA4C6FDE2E9B99A9BC61C8BD3185AC0982E2
                054F6DC70C5DBFBAE6D44C7173AED87C5F67C886AB6FAFF285FB5C3B64DDE5F2
                AA67E3BA409D387BBE76E0B9BF8BF9FE26B08F9D3C68718679B8F744FA1CA768
                21EB3E58323DEAC31EE7D69D61EFAEFF58EA1160C7C801163F3D466F1E3721AE
                F7E43BE74FAAE9ACE9AAD4E597655946D14D3A64ED0943F14C127236F2BFBCDC
                234FACAF35C3B7CEA1D3689C8114A96767380F164C836BFFDD0E37AF6D86EBE9
                DA7512AD7CE17A94B60727BDAFEDA0B59F8FA74CF17CAE73BBD17AE04E9102CF
                79E0E27C3E5A48FAF599CEDFD1BDEF38CBEB1C2900E2C14E93432C1CF4B4DEFA
                CAAB31BFBE54B3A6AAE5B8D1D6EF3BBDCD3DFAD09AB5615F9BAA908D34BCE796
                68C8C67B394D3C8164F77E4CEFD5F4E2EC86DA1DA4CE6D86FB3E7E856CB43094
                0AD978EA3952E085FBAE92216B1F2C9983BE4D8103A4CBFABD623DEE1E32F6A3
                1E01769A1CE49D3E83F4CE6933627A6DBDE14FAB1A77B4F45C46D12DA787ACBD
                488461C2AF439D0A618711DD626D489DBD1F3B540B0742F7D8C9D0750E1913B2
                A1B25BC83A0F9626047AAF0F047ED725DBBFCE32646C26AF551DFCBAF57733AC
                3FE0E69AAA458DF2B499880B3B4C0E13690293ED4F252F519D562E0ABB8CA25B
                BA4376FEBA1D56835820FF19C1707436F2353CCEC93967BC9AC6B0C1F059C173
                7B866930CDE535354A1609FC5738E2CCD15802C93954BCA2671B7555D912795A
                8C7E539BC6D9700E1967A79035E7108B152C10B2CD48B38A63DDAED77731E7BB
                0F9D9C715CAEC8B9C1FA8814785D27BFAF27AF3E31DCED1C82B6DFE3F5FD6399
                CD1BEE339D074BA6DE0F7FF7A33591CB3E48730F193B7FA7E0E70702B766A9C2
                D69FD1668703EC2039D09CCEDDF5DE77C2CF1EBDBCFD5DAAC953276E4BF652BD
                EBF54FFBBE8EB8BD7487AC73928BFD7CB4599DEE46DE4CCA19F2CE5AE56E106D
                6692CC3C8F19A0B186ACDDFB291F088F0D433A062F33B21B67E79071760A592F
                B1F40E1309D970DF359699C2867DF012ED3DB18C88840B59E7C1923930320763
                452E2898C77EBD7BC8D81CC03D19D8AFC25D46650E024C30C73A7282DC871D23
                877AA36317FDCDE2A59ECF5D3771BCAA7463A3B0CB28BA65F790F59A5DDCB26A
                996083EC641AC51D878E5A3378D7EE3D6CADCA64F770BD26EBC412B2E126E738
                87139D43C6D92964BD66E79ADE7DB4A1DE5486AC3D03DBD9BB8E34BBD8F46CA3
                F5C4C385ACF360E9ED6EB7065FDFECF9B9D6BE126E96B1FDBB9A6B65CDBE65F6
                B183277BED5CC28348D83172B01977DEA70FAEFA28E4B10BAA5651EDE7CFB47E
                D7F71F1FAAB74D9A12753BD93D64A39D938DC40C61361C31CBFABB5763184BC8
                3A7B3F6688D079D98AF35A58AF4B68D21DB2A93C271B2D644D2FD19C3337CCCD
                15EC59D15E33B025CEC93A0F96DCC3D0077F3C665DCE65C43A43BDFA80497AC7
                C9052A92D94791D9D83172B8A9ADDAE96FD76F08FEBBCAC3DD54E31E5DADDF75
                74A98A3A963590333964C36DDF164B20B9AFA90CC70E0B42D63B64DDA300F679
                74D37B5CD1AB4DC865501221EB5E80229C700B5324FA1B227763C7C8E1BED9BB
                5F2FEBD65D1DF97C8B3A3D5F5ED564DA6BAA6C8D2A119751744B55C87A35A686
                64C83A877413095967EFC70C319A73BB4ECE0521EC9E722CD793E6F4EB64BDB6
                1B4FC81ACE73DAEE604B26649DA317CEF7DB074B6678FADE3A15B2BCCF4CC0B2
                43FF700CD773571F3059DB4B6612B208871D2303ECDDFE855EFE507755A04471
                75FBE4F1D66F3ABB5337BD6FE10731BD3F952B3E99613A1354660526DB734B3F
                B5FE0C7F4EB66AD86D9BC6D90CF5ADF398F0641E37C392762F349E4B48BCBE7B
                B88525EC4B790C33646C82D76EE44D836D5604727FAFB782C3CFA726527971D6
                83196A750E719A067EF1F65393DAEC86DE59263333DB9C83F51269D6B557603A
                C3CB30BFA3193EB7997395F6F0792C216B94E93141DBE736BDDE13E9FB170BEC
                4B66252DF76F6FEAC40E3FFB20C7BD0085574FD5F95B9B21635336AF9EEFB15F
                FF1DB22675B4DF10B91B3B4686D8B369ABFE6ED36655A763BBA8CB28BA4987AC
                699CCDC4926351865CE3995D6C330DB37399C2704C4338AD53D32CBDE86821EB
                1C2A76AFEC647336CE7650382FEF8924DAF9BF58EBC1D963965CBBD8D9738EF6
                BBC412B2CEDEAC3900DB35E281986724DB93A2C2D58FE9B17E7872E424968325
                77CFDA1CD444AB47F319D33B35617631C262C7C820FBF6ECD39794BE24CFBA19
                73AC9BBFC72A1577E131C3B66F6DDC631DFD1FF8D1FBA6F497077A0EF6F58FA6
                C17B6BE3EEA8DB350B0498199FE15E6BB6697A7FE19600B42FFD315A552B93A5
                F135C3BAE6CFE2816D843B4F677A4993576F0D7E1FE7B5BE6BC3DC24E0EC33F3
                A97B6B57883ACB375A3DD43CD9D3F3BA9C291AAFF27A7DAEB34C7679CDEFB836
                C20D109CEFB1EB30DCE79903929F8EFFDBFABB7D9065BF2712F3DB9A6BA1BDEA
                C7FC5E6604C49E816E0E0EB69FEC794EB8FBBAB0774E7AE0F5C5C16DB7AA565A
                85AB47B37D7350106E963B6063E7C840AF3669A58F6CD91AF3EBB99F2C00C8A0
                61CD30B12CA3E846C802800C1AD60CB36CD40BFAD3B1CFC7F51E42160064D0B0
                6698172BD7D6C78F1E8DEB3D842C00C8A061CD20B12EA3E846C802800C1AD60C
                B2E0D17E7AF71B6FC5FD3E42160064D0B0669078AE8D7522640140060D6B86D8
                F4EE62BDF481AE09BD979005001934AC19627ADB7BF5A1D56B127A2F210B0032
                68583344A243C506210B0032685833C047135FD36B073F95F0FB0959009041C3
                9A213E7973BEFEEC85F1EA9F7BBF8AFBBD842C00C8A061CD302BC74FD29B5F1C
                AFFEFDCF9F627E0F210B0032685833D4A22123F496975E8EE9B5842C00C8A061
                CD70F31FE9A3F7BC3537E26B0859009041C39A0BECD9B44D6F1C35561DF870A5
                E7F3842C00C8A061CD45B62C59A93704C2F6E8D66D218F13B20020838635175A
                3F6B9EDE38728CFAE5DB6FAD7F13B20020838635175B39EE15BD2110B615EEBD
                879005000134ACB0662213B200E03F1A5600008410B2000008216401001042C8
                020020849005004008210B0080104216000021842C000042085900008410B200
                0008216401001042C8020020849005004008210B0080104216000021842C0000
                42085900008410B2000008216401001042C8020020849005004008210B008010
                4216000021842C000042085900008410B2000008216401001042C80200208490
                05004008210B0080104216000021842C000042085900008410B2000008216401
                001042C8020020849005004008210B0080104216000021842C00004208590000
                8410B2000008216401001042C8020020849005004008210B0080104216000021
                842C000042085900008410B2000008216401001042C802002084900500400821
                0B0080104216000021842C000042085900008410B2000008216401001042C802
                0020849005004008210B0080104216000021842C000042085900008410B20000
                08216401001042C8020020849005004008210B0080104216000021842C000042
                085900008410B2000008216401001042C8020020849005004008210B00801042
                16000021842C0000420859000084FC3F3B778C28D051BAEE0000002574455874
                646174653A63726561746500323031392D30382D30355431353A32373A30302B
                30323A30303773E5CA0000002574455874646174653A6D6F6469667900323031
                392D30382D30355431353A32373A30302B30323A3030462E5D76000000004945
                4E44AE426082}
              ShowHint = False
              ExplicitLeft = 46
              ExplicitTop = 23
              ExplicitWidth = 435
              ExplicitHeight = 194
            end
          end
          object pnl4: TPanel
            Left = 1
            Top = 258
            Width = 559
            Height = 245
            Align = alClient
            TabOrder = 1
            object dbgrd1: TDBGrid
              Left = 1
              Top = 42
              Width = 557
              Height = 134
              Align = alTop
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataSource = dsAniver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBackground
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clMenuHighlight
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'nome_pessoa'
                  Width = 243
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'sexo'
                  Width = 29
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'membro_congregado'
                  Width = 68
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dta_nascimento'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'idade'
                  Width = 44
                  Visible = True
                end>
            end
            object pnlQtdMembros: TPanel
              Left = 1
              Top = 176
              Width = 136
              Height = 68
              Align = alLeft
              Caption = '10'
              Color = 1536760
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -37
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
              object Label5: TLabel
                Left = 1
                Top = 1
                Width = 134
                Height = 19
                Align = alTop
                Alignment = taCenter
                Caption = 'Membros /Cong.'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 114
              end
            end
            object pnlMediaIdade: TPanel
              Left = 137
              Top = 176
              Width = 120
              Height = 68
              Align = alLeft
              Caption = '10'
              Color = 1536760
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -37
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 2
              object Label6: TLabel
                Left = 1
                Top = 1
                Width = 118
                Height = 19
                Align = alTop
                Alignment = taCenter
                Caption = 'Media Idade'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 85
              end
            end
            object pnlTopo: TPanel
              Left = 1
              Top = 1
              Width = 557
              Height = 41
              Align = alTop
              TabOrder = 3
              object lbl2: TLabel
                Left = 1
                Top = 1
                Width = 190
                Height = 39
                Align = alLeft
                Caption = 'Aniversariantes do M'#234's'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ExplicitHeight = 19
              end
              object dblkcbbMes: TDBLookupComboBox
                Left = 191
                Top = 1
                Width = 184
                Height = 24
                Align = alLeft
                DropDownRows = 12
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                KeyField = 'valor'
                ListField = 'mes'
                ListSource = dsMes
                ParentFont = False
                TabOrder = 0
                Visible = False
                OnClick = dblkcbbMesClick
              end
              object cbbMeses: TComboBox
                Left = 381
                Top = 5
                Width = 145
                Height = 21
                Enabled = False
                ItemIndex = 0
                TabOrder = 1
                Text = 'janeiro'
                Visible = False
                OnClick = cbbMesesClick
                Items.Strings = (
                  'janeiro'
                  'Fevereiro'
                  'Mar'#231'o'
                  'Abril'
                  'Maio'
                  'Junho'
                  'Julho'
                  'Agosto'
                  'Setembro'
                  'Outubro'
                  'Novembro'
                  'Dezembro')
              end
            end
          end
        end
      end
    end
    object Financeiro: TTabSheet
      Caption = 'Financeiro'
      ImageIndex = 1
      object pnl6: TPanel
        Left = 0
        Top = 0
        Width = 1261
        Height = 506
        Align = alClient
        TabOrder = 0
        object spl4: TSplitter
          Left = 641
          Top = 1
          Height = 504
          ExplicitLeft = 608
          ExplicitTop = 224
          ExplicitHeight = 100
        end
        object pnl7: TPanel
          Left = 644
          Top = 1
          Width = 616
          Height = 504
          Align = alClient
          TabOrder = 0
          object spl5: TSplitter
            Left = 1
            Top = 257
            Width = 614
            Height = 3
            Cursor = crVSplit
            Align = alTop
            ExplicitWidth = 283
          end
          object pnl8: TPanel
            Left = 1
            Top = 260
            Width = 614
            Height = 243
            Align = alClient
            TabOrder = 0
            object dbcht4: TDBChart
              Left = 1
              Top = 1
              Width = 612
              Height = 241
              Title.Color = clBlack
              Title.Font.Color = clBlack
              Title.Text.Strings = (
                'Entradas x Sa'#237'das')
              ClipPoints = False
              Legend.LegendStyle = lsSeries
              View3DOptions.Elevation = 315
              View3DOptions.Orthogonal = False
              View3DOptions.Perspective = 0
              View3DOptions.Rotation = 360
              Align = alClient
              Color = clWhite
              TabOrder = 0
              DefaultCanvas = 'TGDIPlusCanvas'
              PrintMargins = (
                15
                26
                15
                26)
              ColorPaletteIndex = 13
              object Series1: TFastLineSeries
                Marks.Style = smsPointIndex
                DataSource = dtmGrafico.fdqryEntrasAnual
                Title = 'Entradas'
                XLabelsSource = 'sigla'
                LinePen.Color = 10708548
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'mes'
                YValues.Name = 'Y'
                YValues.Order = loNone
                YValues.ValueSource = 'valor'
              end
              object Series2: TFastLineSeries
                DataSource = dtmGrafico.fdqrySaidasAnual
                Title = 'Saidas'
                XLabelsSource = 'sigla'
                LinePen.Color = 3513587
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'mes'
                YValues.Name = 'Y'
                YValues.Order = loNone
                YValues.ValueSource = 'valor'
              end
            end
          end
          object pnl9: TPanel
            Left = 1
            Top = 1
            Width = 614
            Height = 256
            Align = alTop
            TabOrder = 1
            object dbcht5: TDBChart
              Left = 1
              Top = 1
              Width = 612
              Height = 254
              Title.Color = clBlack
              Title.Font.Color = clBlack
              Title.Text.Strings = (
                'Resumo de Dizimistas')
              ClipPoints = False
              Legend.CheckBoxesStyle = cbsRadio
              Legend.LegendStyle = lsValues
              Legend.TextStyle = ltsRightValue
              Align = alClient
              Color = clWhite
              TabOrder = 0
              DefaultCanvas = 'TGDIPlusCanvas'
              PrintMargins = (
                15
                26
                15
                26)
              ColorPaletteIndex = 10
              object brsrs2: TBarSeries
                BarBrush.Gradient.EndColor = 11842740
                Marks.Angle = 31
                DataSource = dtmGrafico.fdqryDizimosAnual
                SeriesColor = 9915136
                XLabelsSource = 'sigla'
                Emboss.Color = 33280
                Gradient.EndColor = 11842740
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'mes'
                YValues.Name = 'Bar'
                YValues.Order = loNone
                YValues.ValueSource = 'valor'
              end
            end
          end
        end
        object pnl10: TPanel
          Left = 1
          Top = 1
          Width = 640
          Height = 504
          Align = alLeft
          TabOrder = 1
          object spl6: TSplitter
            Left = 1
            Top = 255
            Width = 638
            Height = 3
            Cursor = crVSplit
            Align = alTop
            ExplicitTop = 259
            ExplicitWidth = 283
          end
          object pnl11: TPanel
            Left = 1
            Top = 1
            Width = 638
            Height = 254
            Align = alTop
            TabOrder = 0
            object dbcht6: TDBChart
              Left = 1
              Top = 1
              Width = 636
              Height = 252
              Title.Color = clBlack
              Title.Font.Color = clBlack
              Title.Text.Strings = (
                'Entradas Mensais')
              ClipPoints = False
              View3DOptions.Elevation = 315
              View3DOptions.Orthogonal = False
              View3DOptions.Perspective = 0
              View3DOptions.Rotation = 360
              Align = alClient
              Color = clWhite
              TabOrder = 0
              DefaultCanvas = 'TGDIPlusCanvas'
              PrintMargins = (
                15
                27
                15
                27)
              ColorPaletteIndex = 13
              object brsrsSeries2: TBarSeries
                Marks.Style = smsPercent
                DataSource = dtmGrafico.fdqryEntrasAnual
                XLabelsSource = 'sigla'
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'mes'
                YValues.Name = 'Bar'
                YValues.Order = loNone
                YValues.ValueSource = 'valor'
              end
            end
          end
          object pnl12: TPanel
            Left = 1
            Top = 258
            Width = 638
            Height = 245
            Align = alClient
            TabOrder = 1
            object dbcht7: TDBChart
              Left = 1
              Top = 1
              Width = 636
              Height = 243
              Title.Color = clBlack
              Title.Font.Color = clBlack
              Title.Text.Strings = (
                'Sa'#237'das Mensais')
              ClipPoints = False
              View3DOptions.Elevation = 315
              View3DOptions.Orthogonal = False
              View3DOptions.Perspective = 0
              View3DOptions.Rotation = 360
              Align = alClient
              Color = clWhite
              TabOrder = 0
              DefaultCanvas = 'TGDIPlusCanvas'
              PrintMargins = (
                15
                30
                15
                30)
              ColorPaletteIndex = 13
              object brsrs3: TBarSeries
                Marks.Style = smsPercent
                DataSource = dtmGrafico.fdqrySaidasAnual
                XLabelsSource = 'sigla'
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'mes'
                YValues.Name = 'Bar'
                YValues.Order = loNone
                YValues.ValueSource = 'valor'
              end
            end
          end
        end
      end
    end
    object EBD: TTabSheet
      Caption = 'EBD'
      ImageIndex = 2
      object pnl13: TPanel
        Left = 0
        Top = 0
        Width = 1261
        Height = 506
        Align = alClient
        TabOrder = 0
        object spl7: TSplitter
          Left = 562
          Top = 1
          Width = 1
          Height = 504
          ExplicitHeight = 480
        end
        object pnl14: TPanel
          Left = 563
          Top = 1
          Width = 697
          Height = 504
          Align = alClient
          TabOrder = 0
          object spl8: TSplitter
            Left = 1
            Top = 257
            Width = 695
            Height = 3
            Cursor = crVSplit
            Align = alTop
            ExplicitWidth = 283
          end
          object pnl15: TPanel
            Left = 1
            Top = 260
            Width = 695
            Height = 243
            Align = alClient
            TabOrder = 0
          end
          object pnl16: TPanel
            Left = 1
            Top = 1
            Width = 695
            Height = 256
            Align = alTop
            TabOrder = 1
            object pnlKpiProfessores: TPanel
              Left = 491
              Top = 9
              Width = 152
              Height = 75
              Caption = '15'
              Color = 13078576
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -37
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
              object lbl3: TLabel
                Left = 1
                Top = 1
                Width = 150
                Height = 19
                Align = alTop
                Alignment = taCenter
                Caption = 'Professores'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 78
              end
            end
            object pnlAlunos: TPanel
              Left = 173
              Top = 9
              Width = 153
              Height = 76
              Caption = '50'
              Color = clRed
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -37
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
              object Label1: TLabel
                Left = 1
                Top = 1
                Width = 151
                Height = 19
                Align = alTop
                Alignment = taCenter
                Caption = 'Alunos'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 47
              end
            end
            object pnlClasses: TPanel
              Left = 332
              Top = 9
              Width = 153
              Height = 76
              Caption = '10'
              Color = 1536760
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -37
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 2
              object Label2: TLabel
                Left = 1
                Top = 1
                Width = 151
                Height = 19
                Align = alTop
                Alignment = taCenter
                Caption = 'Classes'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 46
              end
            end
            object pnlPessoas: TPanel
              Left = 14
              Top = 9
              Width = 153
              Height = 76
              Caption = '10'
              Color = 1536760
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -37
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 3
              object Label4: TLabel
                Left = 1
                Top = 1
                Width = 151
                Height = 19
                Align = alTop
                Alignment = taCenter
                Caption = 'Membros /Cong.'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 114
              end
            end
          end
        end
        object pnl17: TPanel
          Left = 1
          Top = 1
          Width = 561
          Height = 504
          Align = alLeft
          TabOrder = 1
          object spl9: TSplitter
            Left = 1
            Top = 255
            Width = 559
            Height = 3
            Cursor = crVSplit
            Align = alTop
            ExplicitTop = 259
            ExplicitWidth = 283
          end
          object pnl18: TPanel
            Left = 1
            Top = 1
            Width = 559
            Height = 254
            Align = alTop
            TabOrder = 0
            object dbchtPessoas: TDBChart
              Left = 1
              Top = 1
              Width = 557
              Height = 252
              Title.Color = clBlack
              Title.Font.Color = clBlack
              Title.Text.Strings = (
                'Quantidade de Cadastros')
              ClipPoints = False
              View3DOptions.Elevation = 315
              View3DOptions.Orthogonal = False
              View3DOptions.Perspective = 0
              View3DOptions.Rotation = 360
              Align = alClient
              Color = clWhite
              TabOrder = 0
              DefaultCanvas = 'TGDIPlusCanvas'
              PrintMargins = (
                15
                26
                15
                26)
              ColorPaletteIndex = 13
              object brsrsSeries1: TBarSeries
                Active = False
                ColorEachPoint = True
                DataSource = dtmGrafico.fdqryPessoas
                XLabelsSource = 'tipo'
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'qtd'
                YValues.Name = 'Bar'
                YValues.Order = loNone
                YValues.ValueSource = 'qtd'
              end
              object psrsSeries1: TPieSeries
                DataSource = dtmGrafico.fdqryPessoas
                XLabelsSource = 'tipo'
                XValues.Order = loAscending
                YValues.Name = 'Pie'
                YValues.Order = loNone
                YValues.ValueSource = 'qtd'
                Frame.InnerBrush.BackColor = clRed
                Frame.InnerBrush.Gradient.EndColor = clGray
                Frame.InnerBrush.Gradient.MidColor = clWhite
                Frame.InnerBrush.Gradient.StartColor = 4210752
                Frame.InnerBrush.Gradient.Visible = True
                Frame.MiddleBrush.BackColor = clYellow
                Frame.MiddleBrush.Gradient.EndColor = 8553090
                Frame.MiddleBrush.Gradient.MidColor = clWhite
                Frame.MiddleBrush.Gradient.StartColor = clGray
                Frame.MiddleBrush.Gradient.Visible = True
                Frame.OuterBrush.BackColor = clGreen
                Frame.OuterBrush.Gradient.EndColor = 4210752
                Frame.OuterBrush.Gradient.MidColor = clWhite
                Frame.OuterBrush.Gradient.StartColor = clSilver
                Frame.OuterBrush.Gradient.Visible = True
                Frame.Width = 4
                OtherSlice.Legend.Visible = False
              end
            end
          end
          object pnl19: TPanel
            Left = 1
            Top = 258
            Width = 559
            Height = 245
            Align = alClient
            TabOrder = 1
            object Label3: TLabel
              Left = 1
              Top = 1
              Width = 557
              Height = 19
              Align = alTop
              Caption = 'Alunos aniversariantes do M'#234's '
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clHighlight
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              ExplicitWidth = 253
            end
            object DBGrid1: TDBGrid
              Left = 1
              Top = 20
              Width = 557
              Height = 224
              Align = alClient
              DataSource = dtmGrafico.dsAniver
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clDefault
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'nome_pessoa'
                  Width = 243
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'sexo'
                  Width = 29
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'membro_congregado'
                  Width = 68
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dta_nascimento'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'idade'
                  Width = 44
                  Visible = True
                end>
            end
          end
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 464
    Top = 96
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Clientes1: TMenuItem
        Caption = 'Membros | Congregados'
        OnClick = Clientes1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Igreja1: TMenuItem
        Caption = 'Igreja'
        OnClick = Igreja1Click
      end
      object Congregaes1: TMenuItem
        Caption = 'Congrega'#231#245'es'
        OnClick = Congregaes1Click
      end
      object Setores1: TMenuItem
        Caption = 'Setores'
        OnClick = Setores1Click
      end
      object mniFornecedores1: TMenuItem
        Caption = 'Fornecedores'
        OnClick = mniFornecedores1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object mniCargos1: TMenuItem
        Caption = 'Cargos'
        object mniCargos2: TMenuItem
          Caption = 'Cargos'
          OnClick = mniCargos2Click
        end
        object mniCargosPessoas1: TMenuItem
          Caption = 'Cargos | Pessoas'
          OnClick = mniCargosPessoas1Click
        end
      end
      object Departamentos1: TMenuItem
        Caption = 'Departamentos'
        object mniDepartamentos2: TMenuItem
          Caption = 'Departamentos'
          OnClick = mniDepartamentos2Click
        end
        object mniDepartamentoPessoas1: TMenuItem
          Caption = 'Departamento | Pessoas'
          OnClick = mniDepartamentoPessoas1Click
        end
      end
      object mniFunes1: TMenuItem
        Caption = 'Fun'#231#245'es'
        object mniFunes2: TMenuItem
          Caption = 'Fun'#231#245'es'
          OnClick = mniFunes2Click
        end
        object mniFunesPessoas1: TMenuItem
          Caption = 'Fun'#231#245'es | Pessoas'
          OnClick = mniFunesPessoas1Click
        end
      end
      object mniN5: TMenuItem
        Caption = '-'
      end
      object mniUsurios1: TMenuItem
        Caption = 'Usu'#225'rios'
        OnClick = mniUsurios1Click
      end
      object mniAlterarSenha1: TMenuItem
        Caption = 'Alterar Senha'
        OnClick = mniAlterarSenha1Click
      end
      object mniAoAcesso1: TMenuItem
        Caption = 'A'#231#227'o Acesso'
        OnClick = mniAoAcesso1Click
      end
      object mniUsuriosVSAes1: TMenuItem
        Caption = 'Usu'#225'rios VS A'#231#245'es'
        OnClick = mniUsuriosVSAes1Click
      end
      object mniN4: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Movimentao1: TMenuItem
      Caption = 'Tesouraria'
      object Lanamentos1: TMenuItem
        Caption = 'Lan'#231'amentos'
        object EntradasSadas1: TMenuItem
          Caption = 'Lan'#231'amento Simples'
          OnClick = EntradasSadas1Click
        end
        object mniLanamentoUnificado1: TMenuItem
          Caption = 'Lan'#231'amento Detalhado'
          OnClick = mniLanamentoUnificado1Click
        end
        object N4: TMenuItem
          Caption = '-'
        end
        object mniLancamentos1: TMenuItem
          Caption = 'Tipos de Lancamentos'
          OnClick = mniLancamentos1Click
        end
      end
      object mniDizimo: TMenuItem
        Caption = 'Dizimos'
        OnClick = mniDizimoClick
      end
      object mniDoaoAjudadeCusto1: TMenuItem
        Caption = 'Doa'#231#227'o | Ajuda de Custo'
        OnClick = mniDoaoAjudadeCusto1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object mniControledeDzimo1: TMenuItem
        Caption = 'Controle de D'#237'zimo'
        OnClick = mniControledeDzimo1Click
      end
      object mniFormasdePagamento1: TMenuItem
        Caption = 'Formas de Pagamento'
        OnClick = mniFormasdePagamento1Click
      end
      object mniRelatrios3: TMenuItem
        Caption = 'Relat'#243'rios'
        OnClick = mniRelatrios3Click
      end
      object CentrodeCusto1: TMenuItem
        Caption = 'Centro de Custo'
        object mniCadastro2: TMenuItem
          Caption = 'Cadastro'
          OnClick = mniCadastro2Click
        end
        object ipo1: TMenuItem
          Caption = 'Tipo'
          OnClick = ipo1Click
        end
      end
      object iposdeCulto1: TMenuItem
        Caption = 'Tipos de Culto'
        OnClick = iposdeCulto1Click
      end
      object iposdeSadas1: TMenuItem
        Caption = 'Tipos de Sa'#237'das'
        OnClick = iposdeSadas1Click
      end
      object mniDespesaFixa1: TMenuItem
        Caption = 'Despesa Fixa'
        OnClick = mniDespesaFixa1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object mniAniversariantes1: TMenuItem
        Caption = 'Aniversariantes'
        OnClick = mniAniversariantes1Click
      end
      object CartaseDocumentos1: TMenuItem
        Caption = 'Cartas e Documentos'
        OnClick = CartaseDocumentos1Click
      end
      object mniDepartamentos3: TMenuItem
        Caption = 'Departamentos'
        OnClick = mniDepartamentos3Click
      end
    end
    object mniEBD1: TMenuItem
      Caption = 'EBD'
      object mniCadastros1: TMenuItem
        Caption = 'Cadastros'
        object mniAluno1: TMenuItem
          Caption = 'Aluno'
          OnClick = mniAluno1Click
        end
        object mniClasse1: TMenuItem
          Caption = 'Classe'
          OnClick = mniClasse1Click
        end
        object mniProfessor1: TMenuItem
          Caption = 'Professor'
          object mniProfessor2: TMenuItem
            Caption = 'Professor'
            OnClick = mniProfessor2Click
          end
          object mniProfessorClasse1: TMenuItem
            Caption = 'Professor | Classe'
            OnClick = mniProfessorClasse1Click
          end
        end
      end
      object mniRelatrios2: TMenuItem
        Caption = 'Relat'#243'rios'
        OnClick = mniRelatrios2Click
      end
      object mniPresenadeAlunos1: TMenuItem
        Caption = 'Presen'#231'a de Alunos'
        OnClick = mniPresenadeAlunos1Click
      end
    end
    object Configurao1: TMenuItem
      Caption = 'Ferramentas'
      object BackupeRestore1: TMenuItem
        Caption = 'Backup e Restore'
        OnClick = BackupeRestore1Click
      end
      object mniImportarCadastros1: TMenuItem
        Caption = 'Importar Cadastros'
        OnClick = mniImportarCadastros1Click
      end
      object mniConfigurao2: TMenuItem
        Caption = 'Configura'#231#227'o'
        OnClick = mniConfigurao2Click
      end
      object mniConsultarDados1: TMenuItem
        Caption = 'Consultar Dados'
        OnClick = mniConsultarDados1Click
      end
    end
    object mniSobre: TMenuItem
      Caption = 'Sobre'
      Enabled = False
      OnClick = mniSobreClick
    end
  end
  object tmrDashboard: TTimer
    Interval = 60000
    OnTimer = tmrDashboardTimer
    Left = 400
    Top = 168
  end
  object dsMes: TDataSource
    DataSet = dtmRelatorio.fdqryMeses
    Left = 114
    Top = 120
  end
  object fdqryAniverariantesMes: TFDQuery
    OnFilterRecord = fdqryAniverariantesMesFilterRecord
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      
        'select x.cod_pessoa,x.nome_pessoa,x.sexo,x.membro_congregado,x.d' +
        'ta_nascimento, x.idade,x.filtro ,DAYOFMONTH(x.dta_nascimento)dia' +
        ' ,MONTH(x.dta_nascimento)mes from ('
      
        'select a.cod_pessoa,a.nome_pessoa,a.sexo,a.membro_congregado,a.d' +
        'ta_nascimento, '
      
        'YEAR(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS(a.dta_nascimento)))as idad' +
        'e , a.membro_congregado as filtro'
      ' from tb_pessoa a '
      
        'inner join tb_parametro_sistema c on c.cod_congregacao =a.cod_co' +
        'ngregacao'
      
        'where Month(a.dta_nascimento) = month(sysdate()) and a.cod_pesso' +
        'a not in (select x.cod_membro from tb_obreiro_cargo x'
      
        'inner join tb_parametro_sistema c on c.cod_congregacao =x.cod_co' +
        'ngregacao)'
      'union all'
      
        'select a.cod_pessoa,a.nome_pessoa,a.sexo,a.membro_congregado,a.d' +
        'ta_nascimento, '
      
        'YEAR(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS(a.dta_nascimento)))as idad' +
        'e , b.cargo'
      ' from tb_pessoa a'
      
        'inner join tb_parametro_sistema c on c.cod_congregacao =a.cod_co' +
        'ngregacao'
      
        'inner join tb_obreiro_cargo b on b.cod_membro = a.cod_pessoa whe' +
        're Month(a.dta_nascimento) = month(sysdate())'
      '  )x'
      'where x.filtro like :filtro'
      'order by dia,x.nome_pessoa'
      ''
      ''
      ''
      '')
    Left = 368
    Top = 217
    ParamData = <
      item
        Name = 'FILTRO'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
      end>
    object fdtncfldAniverariantescod_pessoa: TFDAutoIncField
      FieldName = 'cod_pessoa'
      Origin = 'cod_pessoa'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldAniverariantesnome_pessoa: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'nome_pessoa'
      Origin = 'nome_pessoa'
      Size = 50
    end
    object strngfldAniverariantessexo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sexo'
      FieldName = 'sexo'
      Origin = 'sexo'
      Size = 1
    end
    object strngfldAniverariantesmembro_congregado: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'membro_congregado'
      Origin = 'membro_congregado'
      Size = 15
    end
    object dtfldAniverariantesdta_nascimento: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data Nascimento'
      FieldName = 'dta_nascimento'
      Origin = 'dta_nascimento'
    end
    object lrgntfldAniverariantesidade: TLargeintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Idade'
      FieldName = 'idade'
      Origin = 'idade'
      ProviderFlags = []
      ReadOnly = True
    end
    object strngfldAniverariantesfiltro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'filtro'
      Origin = 'filtro'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object lrgntfldAniverariantesMesdia: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'dia'
      Origin = 'dia'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqryAniverariantesMesmes: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'mes'
      Origin = 'mes'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsAniver: TDataSource
    DataSet = fdqryAniverariantesMes
    Left = 480
    Top = 216
  end
end
