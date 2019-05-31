inherited frmCadClasse: TfrmCadClasse
  Caption = 'Cadastro de Classes'
  ExplicitWidth = 806
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    ActivePage = tabManutencao
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 792
      ExplicitHeight = 390
      inherited grdListagem: TDBGrid
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_classe'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'classe'
            Width = 240
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 401
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 792
      ExplicitHeight = 390
      object lbledtCodClasse: TLabeledEdit
        Tag = 1
        Left = 8
        Top = 20
        Width = 49
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
        Left = 334
        Top = 20
        Width = 371
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o'
        MaxLength = 45
        TabOrder = 2
      end
      object lbledtClasse: TLabeledEdit
        Tag = 2
        Left = 63
        Top = 20
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        MaxLength = 45
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
      'SELECT cod_classe, classe, descricao'
      'FROM tb_classe;')
    object fdtncfldQryListagemcod_classe: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_classe'
      Origin = 'cod_classe'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldQryListagemclasse: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'classe'
      Origin = 'classe'
    end
    object strngfldQryListagemdescricao: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
  end
end
