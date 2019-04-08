inherited frmCadCargo: TfrmCadCargo
  Caption = 'Cadastro de Cargos Eclesi'#225'ticos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    ActivePage = tabManutencao
    inherited tabListagem: TTabSheet
      inherited grdListagem: TDBGrid
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_cargo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cargo'
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      object lbledtCargo: TLabeledEdit
        Tag = 2
        Left = 79
        Top = 20
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 29
        EditLabel.Height = 13
        EditLabel.Caption = 'Cargo'
        MaxLength = 45
        TabOrder = 0
      end
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
        TabOrder = 1
      end
    end
  end
  inherited pnlRodape: TPanel
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited QryListagem: TFDQuery
    SQL.Strings = (
      'SELECT cod_cargo, cargo'
      'FROM igreja.tb_cargo')
    object fdtncfldQryListagemcod_cargo: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_cargo'
      Origin = 'cod_cargo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldQryListagemcargo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cargo'
      FieldName = 'cargo'
      Origin = 'cargo'
      Size = 50
    end
  end
end
