object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Eltecom - 2019.1'
  ClientHeight = 463
  ClientWidth = 1225
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
    Top = 446
    Width = 1225
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
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 497
    Height = 249
    Align = alCustom
    TabOrder = 1
    object dbchtPessoas: TDBChart
      Left = 10
      Top = 9
      Width = 479
      Height = 232
      Title.Color = clBlack
      Title.Font.Color = clBlack
      Title.Text.Strings = (
        'Quantidade de Cadastros')
      ClipPoints = False
      Align = alCustom
      TabOrder = 0
      DefaultCanvas = 'TGDIPlusCanvas'
      PrintMargins = (
        15
        26
        15
        26)
      ColorPaletteIndex = 13
      object brsrsSeries1: TBarSeries
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
    end
  end
  object pnl2: TPanel
    Left = 503
    Top = 0
    Width = 722
    Height = 249
    Align = alCustom
    TabOrder = 2
    object dbcht1: TDBChart
      Left = 10
      Top = 9
      Width = 703
      Height = 232
      Title.Color = clBlack
      Title.Font.Color = clBlack
      Title.Text.Strings = (
        'Resumo de Dizimistas')
      ClipPoints = False
      Legend.CheckBoxesStyle = cbsRadio
      Legend.LegendStyle = lsValues
      Legend.TextStyle = ltsRightValue
      Align = alCustom
      TabOrder = 0
      DefaultCanvas = 'TGDIPlusCanvas'
      PrintMargins = (
        15
        26
        15
        26)
      ColorPaletteIndex = 13
      object brsrs1: TBarSeries
        ColorEachPoint = True
        DataSource = dtmGrafico.fdqryDizimosAnual
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
    end
    object mniSobre: TMenuItem
      Caption = 'Sobre'
      OnClick = mniSobreClick
    end
  end
end
