inherited frmCadSetores: TfrmCadSetores
  Caption = 'Cadastro de Setores'
  ClientHeight = 312
  ClientWidth = 734
  ExplicitWidth = 740
  ExplicitHeight = 341
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 734
    Height = 274
    ActivePage = tabManutencao
    ExplicitWidth = 734
    ExplicitHeight = 274
    inherited tabListagem: TTabSheet
      ExplicitWidth = 726
      ExplicitHeight = 246
      inherited pnlListagem: TPanel
        Width = 726
        ExplicitWidth = 726
      end
      inherited grdListagem: TDBGrid
        Width = 726
        Height = 181
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_setor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'setor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_igreja'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'cod_congregacao'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'data_cadastro'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'usuario_cadastro'
            Visible = False
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitWidth = 726
      ExplicitHeight = 246
      object edtcod_setor: TLabeledEdit
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
      object edtsetor: TLabeledEdit
        Tag = 2
        Left = 3
        Top = 68
        Width = 265
        Height = 21
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o'
        MaxLength = 45
        TabOrder = 1
      end
    end
  end
  inherited pnlRodape: TPanel
    Top = 274
    Width = 734
    ExplicitTop = 274
    ExplicitWidth = 734
    inherited btnNavigator: TDBNavigator
      Left = 408
      Hints.Strings = ()
      ExplicitLeft = 408
    end
    inherited btnFechar: TBitBtn
      Left = 642
      ExplicitLeft = 642
    end
    inherited btnGravar: TBitBtn
      Left = 246
      ExplicitLeft = 246
    end
  end
  inherited QryListagem: TFDQuery
    SQL.Strings = (
      'SELECT cod_setor, setor'
      'FROM igreja.tb_setor')
    object QryListagemcod_setor: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_setor'
      Origin = 'cod_setor'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryListagemsetor: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'setor'
      Origin = 'setor'
      Size = 45
    end
  end
end
