object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Splendor Gest'#227'o de Igrejas - 2019.1'
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
  OnPaint = FormPaint
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
    Height = 33
    Align = alTop
    Alignment = taLeftJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = pnl5Click
  end
  object pgcDashs: TPageControl
    Left = 0
    Top = 56
    Width = 1269
    Height = 487
    ActivePage = Principal
    Align = alClient
    MultiLine = True
    TabOrder = 2
    object Principal: TTabSheet
      Caption = 'Principal'
      object pnlGeral: TPanel
        Left = 0
        Top = 0
        Width = 1261
        Height = 459
        Align = alClient
        TabOrder = 0
        object spl3: TSplitter
          Left = 562
          Top = 1
          Height = 457
          ExplicitLeft = 608
          ExplicitTop = 224
          ExplicitHeight = 100
        end
        object pnlDireita: TPanel
          Left = 565
          Top = 1
          Width = 695
          Height = 457
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
            Height = 196
            Align = alClient
            TabOrder = 0
            object dbcht2: TDBChart
              Left = 1
              Top = 1
              Width = 691
              Height = 194
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
              DefaultCanvas = 'TGDIPlusCanvas'
              PrintMargins = (
                15
                26
                15
                26)
              ColorPaletteIndex = 10
              object brsrs1: TBarSeries
                BarBrush.Gradient.EndColor = 11842740
                ColorEachPoint = True
                Marks.Angle = 31
                DataSource = dtmGrafico.fdqryDizimosAnual
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
          Height = 457
          Align = alLeft
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
          object pnl4: TPanel
            Left = 1
            Top = 258
            Width = 559
            Height = 198
            Align = alClient
            TabOrder = 1
            object lbl2: TLabel
              Left = 1
              Top = 1
              Width = 557
              Height = 13
              Align = alTop
              Caption = 'Aniversariantes do M'#234's'
              ExplicitWidth = 112
            end
            object dbgrd1: TDBGrid
              Left = 1
              Top = 14
              Width = 557
              Height = 183
              Align = alClient
              DataSource = dtmGrafico.dsAniver
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
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
    object Financeiro: TTabSheet
      Caption = 'Financeiro'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnl6: TPanel
        Left = 0
        Top = 0
        Width = 1261
        Height = 459
        Align = alClient
        TabOrder = 0
        object spl4: TSplitter
          Left = 562
          Top = 1
          Height = 457
          ExplicitLeft = 608
          ExplicitTop = 224
          ExplicitHeight = 100
        end
        object pnl7: TPanel
          Left = 565
          Top = 1
          Width = 695
          Height = 457
          Align = alClient
          TabOrder = 0
          object spl5: TSplitter
            Left = 1
            Top = 257
            Width = 693
            Height = 3
            Cursor = crVSplit
            Align = alTop
            ExplicitWidth = 283
          end
          object pnl8: TPanel
            Left = 1
            Top = 260
            Width = 693
            Height = 196
            Align = alClient
            TabOrder = 0
            object dbcht4: TDBChart
              Left = 1
              Top = 1
              Width = 691
              Height = 194
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
              object psrs1: TPieSeries
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
          object pnl9: TPanel
            Left = 1
            Top = 1
            Width = 693
            Height = 256
            Align = alTop
            TabOrder = 1
            object dbcht5: TDBChart
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
              DefaultCanvas = 'TGDIPlusCanvas'
              PrintMargins = (
                15
                26
                15
                26)
              ColorPaletteIndex = 10
              object brsrs2: TBarSeries
                BarBrush.Gradient.EndColor = 11842740
                ColorEachPoint = True
                Marks.Angle = 31
                DataSource = dtmGrafico.fdqryDizimosAnual
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
          Width = 561
          Height = 457
          Align = alLeft
          TabOrder = 1
          object spl6: TSplitter
            Left = 1
            Top = 255
            Width = 559
            Height = 3
            Cursor = crVSplit
            Align = alTop
            ExplicitTop = 259
            ExplicitWidth = 283
          end
          object pnl11: TPanel
            Left = 1
            Top = 1
            Width = 559
            Height = 254
            Align = alTop
            TabOrder = 0
            object dbcht6: TDBChart
              Left = 1
              Top = 1
              Width = 557
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
                26
                15
                26)
              ColorPaletteIndex = 13
              object brsrsSeries2: TBarSeries
                ColorEachPoint = True
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
            Width = 559
            Height = 198
            Align = alClient
            TabOrder = 1
            object dbcht7: TDBChart
              Left = 1
              Top = 1
              Width = 557
              Height = 196
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
                ColorEachPoint = True
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnl13: TPanel
        Left = 0
        Top = 0
        Width = 1261
        Height = 459
        Align = alClient
        TabOrder = 0
        object spl7: TSplitter
          Left = 562
          Top = 1
          Height = 457
          ExplicitLeft = 608
          ExplicitTop = 224
          ExplicitHeight = 100
        end
        object pnl14: TPanel
          Left = 565
          Top = 1
          Width = 695
          Height = 457
          Align = alClient
          TabOrder = 0
          object spl8: TSplitter
            Left = 1
            Top = 257
            Width = 693
            Height = 3
            Cursor = crVSplit
            Align = alTop
            ExplicitWidth = 283
          end
          object pnl15: TPanel
            Left = 1
            Top = 260
            Width = 693
            Height = 196
            Align = alClient
            TabOrder = 0
          end
          object pnl16: TPanel
            Left = 1
            Top = 1
            Width = 693
            Height = 256
            Align = alTop
            TabOrder = 1
          end
        end
        object pnl17: TPanel
          Left = 1
          Top = 1
          Width = 561
          Height = 457
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
          end
          object pnl19: TPanel
            Left = 1
            Top = 258
            Width = 559
            Height = 198
            Align = alClient
            TabOrder = 1
            object dbcht11: TDBChart
              Left = 1
              Top = 1
              Width = 557
              Height = 196
              Title.Color = clBlack
              Title.Font.Color = clBlack
              Title.Text.Strings = (
                'Alunos por Classe')
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
              object psrs6: TPieSeries
                Marks.Angle = 34
                Marks.Callout.Length = 20
                DataSource = dtmGrafico.fdqryClassesAlunos
                XLabelsSource = 'classe'
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
                Emboss.Transparency = 36
                OtherSlice.Legend.Visible = False
              end
            end
          end
        end
      end
    end
  end
  object acttb1: TActionToolBar
    Left = 0
    Top = 33
    Width = 1269
    Height = 23
    Caption = 'acttb1'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 7171437
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Spacing = 0
  end
  object MainMenu1: TMainMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 488
    Top = 80
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Clientes1: TMenuItem
        Caption = 'Membros / Congregados'
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
      object Departamentos1: TMenuItem
        Caption = 'Departamentos'
        object mniDepartamentos2: TMenuItem
          Caption = 'Departamentos'
          OnClick = mniDepartamentos2Click
        end
        object mniDepartamentoPessoas1: TMenuItem
          Caption = 'Departamento / Pessoas'
          OnClick = mniDepartamentoPessoas1Click
        end
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
          Caption = 'Cargos / Pessoas'
          OnClick = mniCargosPessoas1Click
        end
      end
      object mniFunes1: TMenuItem
        Caption = 'Fun'#231#245'es'
        object mniFunes2: TMenuItem
          Caption = 'Fun'#231#245'es'
          OnClick = mniFunes2Click
        end
        object mniFunesPessoas1: TMenuItem
          Caption = 'Fun'#231#245'es / Pessoas'
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
      Caption = 'Financeiro'
      object EntradasSadas1: TMenuItem
        Caption = 'Entradas  |  Sa'#237'das'
        OnClick = EntradasSadas1Click
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
      object mniRelatrios3: TMenuItem
        Caption = 'Relat'#243'rios'
        OnClick = mniRelatrios3Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object CartaseDocumentos1: TMenuItem
        Caption = 'Cartas e Documentos'
        OnClick = CartaseDocumentos1Click
      end
      object mniAniversariantes1: TMenuItem
        Caption = 'Aniversariantes'
        OnClick = mniAniversariantes1Click
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
        object mniAluno1: TMenuItem
          Caption = 'Aluno'
          OnClick = mniAluno1Click
        end
      end
      object mniRelatrios2: TMenuItem
        Caption = 'Relat'#243'rios'
        OnClick = mniRelatrios2Click
      end
    end
    object Configurao1: TMenuItem
      Caption = 'Ferramentas'
      object mniConfigurao2: TMenuItem
        Caption = 'Configura'#231#227'o'
        OnClick = mniConfigurao2Click
      end
      object mniConsultarDados1: TMenuItem
        Caption = 'Consultar Dados'
        OnClick = mniConsultarDados1Click
      end
      object BackupeRestore1: TMenuItem
        Caption = 'Backup e Restore'
        OnClick = BackupeRestore1Click
      end
      object mniImportarCadastros1: TMenuItem
        Caption = 'Importar Cadastros'
        OnClick = mniImportarCadastros1Click
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
    Left = 696
    Top = 96
  end
end
