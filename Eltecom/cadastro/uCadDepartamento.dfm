inherited frmCadDepartamento: TfrmCadDepartamento
  Caption = 'Cadastro de Departamento'
  ClientHeight = 462
  ClientWidth = 732
  ExplicitTop = -80
  ExplicitWidth = 738
  ExplicitHeight = 491
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 732
    Height = 424
    ActivePage = tabManutencao
    ExplicitWidth = 732
    ExplicitHeight = 424
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 724
      ExplicitHeight = 396
      inherited pnlListagem: TPanel
        Width = 724
        ExplicitWidth = 724
      end
      inherited grdListagem: TDBGrid
        Width = 724
        Height = 331
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_departamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_departamento'
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 724
      ExplicitHeight = 396
      object lbledtDepartamento: TLabeledEdit
        Tag = 2
        Left = 3
        Top = 68
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
    end
  end
  inherited pnlRodape: TPanel
    Top = 424
    Width = 732
    ExplicitTop = 424
    ExplicitWidth = 732
    inherited btnNavigator: TDBNavigator
      Left = 408
      Hints.Strings = ()
      ExplicitLeft = 408
    end
    inherited btnFechar: TBitBtn
      Left = 640
      ExplicitLeft = 640
    end
  end
  inherited QryListagem: TFDQuery
    SQL.Strings = (
      'SELECT '#9'`cod_departamento`, '
      #9'`nome_departamento`'#9' '
      #9'FROM '
      #9'`igreja`.`tb_departamento` ')
    object fdtncfldQryListagemcod_departamento: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_departamento'
      Origin = 'cod_departamento'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldQryListagemnome_departamento: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Departamento'
      FieldName = 'nome_departamento'
      Origin = 'nome_departamento'
      Size = 50
    end
  end
end
