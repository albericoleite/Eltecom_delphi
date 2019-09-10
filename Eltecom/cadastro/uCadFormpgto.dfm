inherited frmCadFormpgto: TfrmCadFormpgto
  Caption = 'Cadastro de Formas de Pagamento'
  ClientHeight = 280
  ClientWidth = 740
  ExplicitWidth = 746
  ExplicitHeight = 309
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlRodape: TPanel
    Top = 242
    Width = 740
    ExplicitTop = 242
    ExplicitWidth = 740
    inherited dbnvgrNavigator: TDBNavigator
      Left = 415
      Hints.Strings = ()
      ExplicitLeft = 415
    end
    inherited btnFechar: TBitBtn
      Left = 648
      ExplicitLeft = 648
    end
  end
  inherited pgcPrincipal: TPageControl
    Width = 740
    Height = 242
    ActivePage = tabManutencao
    ExplicitWidth = 740
    ExplicitHeight = 242
    inherited tabListagem: TTabSheet
      ExplicitWidth = 732
      ExplicitHeight = 214
      inherited pnlListagem: TPanel
        Width = 732
        ExplicitWidth = 732
      end
      inherited dbgrdListagem: TDBGrid
        Width = 732
        Height = 149
        DataSource = dsListagem
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 732
      ExplicitHeight = 214
      object lbledtCodigo: TLabeledEdit
        Tag = 1
        Left = 8
        Top = 20
        Width = 65
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
      end
      object lbledtDescricao: TLabeledEdit
        Tag = 2
        Left = 79
        Top = 20
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o'
        MaxLength = 45
        TabOrder = 1
      end
    end
  end
  inherited dsListagem: TDataSource
    OnDataChange = dsListagemDataChange
    Left = 424
    Top = 56
  end
end
