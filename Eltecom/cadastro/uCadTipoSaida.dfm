inherited frmTipoSaida: TfrmTipoSaida
  Caption = 'Cadastro de Tipos de Sa'#237'das'
  ClientWidth = 735
  ExplicitWidth = 741
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 735
    ExplicitWidth = 735
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 727
      ExplicitHeight = 390
      inherited pnlListagem: TPanel
        Width = 727
        ExplicitWidth = 727
      end
      inherited grdListagem: TDBGrid
        Width = 727
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipo'
            Width = 224
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 348
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 727
      ExplicitHeight = 390
      object lbledtTipo: TLabeledEdit
        Tag = 2
        Left = 79
        Top = 20
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 20
        EditLabel.Height = 13
        EditLabel.Caption = 'Tipo'
        MaxLength = 50
        TabOrder = 0
      end
      object lbledtDescricao: TLabeledEdit
        Tag = 2
        Left = 350
        Top = 20
        Width = 355
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o'
        MaxLength = 100
        TabOrder = 1
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
        TabOrder = 2
      end
      object mmo1: TMemo
        Left = 8
        Top = 72
        Width = 697
        Height = 89
        Color = clWhite
        Enabled = False
        Lines.Strings = (
          
            'Est'#225' configura'#231#227'o define o  tipo de despesa, as configura'#231#245'es pa' +
            'dr'#227'o s'#227'o:'
          ''
          
            '1 - Fixa (S'#227'o despesas que v'#227'o se repetir todos meses ex: agua, ' +
            'luz, telefone, etc'#8230').'
          
            '2 - Vari'#225'vel (S'#227'o contas espor'#225'dicas que acontecem vez ou outra)' +
            '.'
          '3 - Investimento (Investimento terreno, casa  ou outros)'
          
            'Nada impede que voc'#234' adicione novas, para uso exclusivo de sua i' +
            'greja.')
        TabOrder = 3
        OnChange = mmo1Change
      end
    end
  end
  inherited pnlRodape: TPanel
    Width = 735
    ExplicitWidth = 735
    inherited btnNavigator: TDBNavigator
      Left = 415
      Hints.Strings = ()
      ExplicitLeft = 415
    end
    inherited btnFechar: TBitBtn
      Left = 643
      ExplicitLeft = 643
    end
  end
  inherited QryListagem: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT id, tipo, descricao'
      'FROM tipo_saida')
    object QryListagemtipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
      Size = 50
    end
    object QryListagemdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 100
    end
    object fdtncfldQryListagemid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
  end
end
