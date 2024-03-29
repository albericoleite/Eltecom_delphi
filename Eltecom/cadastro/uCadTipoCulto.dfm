inherited frmTipoCulto: TfrmTipoCulto
  Caption = 'Cadastrar tipo de Culto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    inherited tabListagem: TTabSheet
      inherited grdListagem: TDBGrid
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 307
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'objetivo'
            Width = 300
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
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
      object lbledtObjetivo: TLabeledEdit
        Tag = 2
        Left = 367
        Top = 20
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 41
        EditLabel.Height = 13
        EditLabel.Caption = 'Objetivo'
        MaxLength = 45
        TabOrder = 2
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
      'SELECT id, descricao, objetivo'
      'FROM tipo_culto;')
    object QryListagemdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 100
    end
    object QryListagemobjetivo: TStringField
      DisplayLabel = 'Objetivo'
      FieldName = 'objetivo'
      Origin = 'objetivo'
      Required = True
      Size = 100
    end
    object fdtncfldQryListagemid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
  end
end
