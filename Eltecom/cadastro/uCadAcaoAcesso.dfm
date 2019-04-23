inherited frmCadAcaoAcesso: TfrmCadAcaoAcesso
  Caption = 'Cadastro de A'#231#227'o de Acesso'
  ClientWidth = 785
  ExplicitWidth = 791
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 785
    ActivePage = tabManutencao
    ExplicitWidth = 785
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 777
      ExplicitHeight = 390
      inherited pnlListagem: TPanel
        Width = 777
        ExplicitWidth = 777
      end
      inherited grdListagem: TDBGrid
        Width = 777
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_acao_acesso'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 336
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'chave'
            Width = 307
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 777
      ExplicitHeight = 390
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
        Left = 3
        Top = 60
        Width = 590
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o'
        MaxLength = 100
        TabOrder = 1
      end
      object lbledtChave: TLabeledEdit
        Tag = 2
        Left = 3
        Top = 100
        Width = 590
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 31
        EditLabel.Height = 13
        EditLabel.Caption = 'Chave'
        MaxLength = 60
        TabOrder = 2
      end
    end
  end
  inherited pnlRodape: TPanel
    Width = 785
    ExplicitWidth = 785
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
    inherited btnFechar: TBitBtn
      Left = 693
      ExplicitLeft = 693
    end
  end
  inherited QryListagem: TFDQuery
    SQL.Strings = (
      'SELECT cod_acao_acesso, descricao, chave'
      'FROM tb_acao_acesso')
    object fdtncfldQryListagemcod_acao_acesso: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_acao_acesso'
      Origin = 'cod_acao_acesso'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldQryListagemdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 100
    end
    object strngfldQryListagemchave: TStringField
      DisplayLabel = 'Chave'
      FieldName = 'chave'
      Origin = 'chave'
      Required = True
      Size = 60
    end
  end
end
