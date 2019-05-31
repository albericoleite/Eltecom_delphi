object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Eltecom - 2019.1'
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
  object pnlGeral: TPanel
    Left = 0
    Top = 41
    Width = 1269
    Height = 502
    Align = alClient
    TabOrder = 1
    object spl3: TSplitter
      Left = 562
      Top = 1
      Height = 500
      ExplicitLeft = 608
      ExplicitTop = 224
      ExplicitHeight = 100
    end
    object pnlDireita: TPanel
      Left = 565
      Top = 1
      Width = 703
      Height = 500
      Align = alClient
      TabOrder = 0
      object spl2: TSplitter
        Left = 1
        Top = 257
        Width = 701
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitWidth = 283
      end
      object pnl3: TPanel
        Left = 1
        Top = 260
        Width = 701
        Height = 239
        Align = alClient
        TabOrder = 0
        object dbcht2: TDBChart
          Left = 1
          Top = 1
          Width = 699
          Height = 237
          Title.Color = clBlack
          Title.Font.Color = clBlack
          Title.Text.Strings = (
            'Pessoas por Cargos')
          ClipPoints = False
          Legend.Visible = False
          Align = alClient
          TabOrder = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          PrintMargins = (
            15
            26
            15
            26)
          ColorPaletteIndex = 13
          object brsrs2: TBarSeries
            ColorEachPoint = True
            Marks.Angle = 17
            DataSource = dtmGrafico.fdqryPessoasCargos
            XLabelsSource = 'CARGO'
            XValues.Name = 'X'
            XValues.Order = loAscending
            XValues.ValueSource = 'qtd'
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'qtd'
          end
        end
      end
      object pnl2: TPanel
        Left = 1
        Top = 1
        Width = 701
        Height = 256
        Align = alTop
        TabOrder = 1
        object dbcht1: TDBChart
          Left = 1
          Top = 1
          Width = 699
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
          TabOrder = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          PrintMargins = (
            15
            26
            15
            26)
          ColorPaletteIndex = 13
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
      Height = 500
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
        Height = 241
        Align = alClient
        TabOrder = 1
        object dbcht3: TDBChart
          Left = 1
          Top = 1
          Width = 557
          Height = 239
          Title.Color = clBlack
          Title.Font.Color = clBlack
          Title.Text.Strings = (
            'Alunos por Classe')
          ClipPoints = False
          Align = alClient
          TabOrder = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          PrintMargins = (
            15
            26
            15
            26)
          ColorPaletteIndex = 13
          object brsrs3: TBarSeries
            ColorEachPoint = True
            Marks.Angle = 34
            DataSource = dtmGrafico.fdqryClassesAlunos
            XLabelsSource = 'classe'
            XValues.Name = 'X'
            XValues.Order = loAscending
            XValues.ValueSource = 'qtd'
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'qtd'
          end
        end
      end
    end
  end
  object pnl5: TPanel
    Left = 0
    Top = 0
    Width = 1269
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    Caption = 'Dashboard'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = pnl5Click
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 8
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
        Caption = 'Entradas & Sa'#237'das'
        OnClick = EntradasSadas1Click
      end
      object mniDizimo: TMenuItem
        Caption = 'Dizimos'
        OnClick = mniDizimoClick
      end
      object mniDoaoAjudadeCusto1: TMenuItem
        Caption = 'Doa'#231#227'o / Ajuda de Custo'
        OnClick = mniDoaoAjudadeCusto1Click
      end
      object N3: TMenuItem
        Caption = '-'
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
          OnClick = mniProfessor1Click
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
    end
    object mniSobre: TMenuItem
      Caption = 'Sobre'
      OnClick = mniSobreClick
    end
  end
  object tmrDashboard: TTimer
    Interval = 60000
    OnTimer = tmrDashboardTimer
    Left = 632
    Top = 296
  end
end
