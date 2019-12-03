inherited frmCadFuncao: TfrmCadFuncao
  Caption = 'Cadastro de Fun'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    inherited tabListagem: TTabSheet
      inherited grdListagem: TDBGrid
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_funcao'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'funcao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_departamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_departamento'
            Width = 195
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      object lbl2: TLabel
        Left = 350
        Top = 3
        Width = 69
        Height = 13
        Caption = 'Departamento'
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
        TabOrder = 0
      end
      object lbledtFuncao: TLabeledEdit
        Tag = 2
        Left = 79
        Top = 20
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 35
        EditLabel.Height = 13
        EditLabel.Caption = 'Fun'#231#227'o'
        MaxLength = 45
        TabOrder = 1
      end
      object dblkcbbDepartamento: TDBLookupComboBox
        Left = 350
        Top = 20
        Width = 203
        Height = 21
        KeyField = 'cod_departamento'
        ListField = 'nome_departamento'
        ListSource = dsDepartamentos
        TabOrder = 2
      end
    end
  end
  inherited pnlRodape: TPanel
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
    inherited btnNovo: TBitBtn
      Left = -1
      ExplicitLeft = -1
    end
  end
  inherited QryListagem: TFDQuery
    SQL.Strings = (
      'SELECT cod_funcao, funcao, cod_departamento, nome_departamento'
      'FROM igreja.tb_funcao')
    Left = 624
    Top = 112
    object fdtncfldQryListagemcod_funcao: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_funcao'
      Origin = 'cod_funcao'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldQryListagemfuncao: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'funcao'
      Origin = 'funcao'
      Size = 50
    end
    object intgrfldQryListagemcod_departamento: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo do Departamento'
      FieldName = 'cod_departamento'
      Origin = 'cod_departamento'
    end
    object strngfldQryListagemnome_departamento: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Departamento'
      FieldName = 'nome_departamento'
      Origin = 'nome_departamento'
      Size = 50
    end
  end
  object dsDepartamentos: TDataSource
    DataSet = dtmPrincipal.fdqryDepartamentos
    Left = 256
    Top = 112
  end
end
