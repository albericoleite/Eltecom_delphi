inherited frmCadTipoLancamento: TfrmCadTipoLancamento
  Caption = 'Cadastro de tipo de Receitas / Despesas'
  ClientWidth = 736
  ExplicitWidth = 742
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlRodape: TPanel
    Width = 736
    ExplicitWidth = 736
    inherited dbnvgrNavigator: TDBNavigator
      Left = 415
      Hints.Strings = ()
      ExplicitLeft = 415
    end
    inherited btnFechar: TBitBtn
      Left = 644
      ExplicitLeft = 644
    end
  end
  inherited pgcPrincipal: TPageControl
    Width = 736
    ExplicitWidth = 736
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 728
      ExplicitHeight = 303
      inherited pnlListagem: TPanel
        Width = 728
        ExplicitWidth = 728
      end
      inherited dbgrdListagem: TDBGrid
        Width = 728
        DataSource = dsListagem
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 728
      ExplicitHeight = 303
      object Label7: TLabel
        Left = 398
        Top = 1
        Width = 20
        Height = 13
        Caption = 'Tipo'
      end
      object lbl1: TLabel
        Left = 495
        Top = 1
        Width = 37
        Height = 13
        Caption = 'Tipo Pai'
      end
      object lbledtDescricao: TLabeledEdit
        Tag = 2
        Left = 127
        Top = 20
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o'
        MaxLength = 45
        TabOrder = 1
        Text = '2'
      end
      object lbledtCodigo: TLabeledEdit
        Left = 56
        Top = 20
        Width = 65
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        TabOrder = 0
        Text = '2'
      end
      object lbledtID: TLabeledEdit
        Left = 3
        Top = 20
        Width = 47
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 11
        EditLabel.Height = 13
        EditLabel.Caption = 'ID'
        Enabled = False
        MaxLength = 45
        TabOrder = 4
      end
      object dblkcbbTipoCC: TDBLookupComboBox
        Left = 398
        Top = 20
        Width = 91
        Height = 21
        ListSource = dsTipoCC
        TabOrder = 2
      end
      object dblkcbbPai: TDBLookupComboBox
        Left = 495
        Top = 20
        Width = 225
        Height = 21
        KeyField = 'id'
        ListField = 'descricao'
        ListSource = dsPai
        TabOrder = 3
      end
    end
  end
  inherited dsListagem: TDataSource
    OnDataChange = dsListagemDataChange
  end
  object dsTipoCC: TDataSource
    Left = 360
    Top = 184
  end
  object dsPai: TDataSource
    DataSet = fdqryPai
    Left = 464
    Top = 120
  end
  object fdqryPai: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      
        'select a.id,concat(a.codigo,'#39' - '#39',a.descricao)as descricao,a.id_' +
        'tipo_centro_custo  '
      'from tipo_lancamento a ')
    Left = 256
    Top = 168
  end
end
