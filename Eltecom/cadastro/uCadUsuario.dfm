inherited frmCadUsuario: TfrmCadUsuario
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 347
  ClientWidth = 731
  ExplicitWidth = 737
  ExplicitHeight = 376
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 731
    Height = 309
    ExplicitWidth = 731
    ExplicitHeight = 309
    inherited tabListagem: TTabSheet
      ExplicitWidth = 723
      ExplicitHeight = 281
      inherited pnlListagem: TPanel
        Width = 723
        ExplicitWidth = 723
      end
      inherited grdListagem: TDBGrid
        Width = 723
        Height = 216
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'usuario'
            Width = 297
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tema'
            Width = 138
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitWidth = 723
      ExplicitHeight = 281
      object lbl4: TLabel
        Left = 344
        Top = 50
        Width = 41
        Height = 13
        Caption = 'Situa'#231#227'o'
      end
      object lbledt_codigo: TLabeledEdit
        Tag = 1
        Left = 3
        Top = 20
        Width = 44
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
      end
      object lbledtNome: TLabeledEdit
        Tag = 2
        Left = 53
        Top = 19
        Width = 277
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 36
        EditLabel.Height = 13
        EditLabel.Caption = 'Usu'#225'rio'
        MaxLength = 45
        TabOrder = 1
      end
      object lbledtSenha: TLabeledEdit
        Tag = 2
        Left = 53
        Top = 67
        Width = 277
        Height = 21
        EditLabel.Width = 30
        EditLabel.Height = 13
        EditLabel.Caption = 'Senha'
        MaxLength = 45
        TabOrder = 2
      end
      object dblkcbbStatus: TDBLookupComboBox
        Left = 344
        Top = 67
        Width = 134
        Height = 21
        KeyField = 'TIPO'
        ListField = 'SITUACAO'
        ListSource = dsFuncoes
        TabOrder = 3
      end
    end
  end
  inherited pnlRodape: TPanel
    Top = 309
    Width = 731
    ExplicitTop = 309
    ExplicitWidth = 731
    inherited btnNavigator: TDBNavigator
      Left = 408
      Hints.Strings = ()
      ExplicitLeft = 408
    end
    inherited btnFechar: TBitBtn
      Left = 639
      ExplicitLeft = 639
    end
  end
  inherited QryListagem: TFDQuery
    SQL.Strings = (
      'SELECT codigo, usuario, senha, setor, status, tema'
      'FROM igreja.tb_usuario')
    object fdtncfldQryListagemcodigo: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldQryListagemusuario: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 12
    end
    object strngfldQryListagemsenha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'senha'
      Origin = 'senha'
      Size = 12
    end
    object strngfldQryListagemsetor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'setor'
      Origin = 'setor'
      Size = 50
    end
    object strngfldQryListagemstatus: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'status'
      Origin = '`status`'
    end
    object strngfldQryListagemtema: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tema'
      FieldName = 'tema'
      Origin = 'tema'
      Size = 50
    end
  end
  object fdqrySituacao: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select '#39'ATIVO'#39' AS TIPO, '#39'ATIVO'#39' SITUACAO from dual'
      'union all'
      'select '#39'INATIVO'#39', '#39'INATIVO'#39' from dual')
    Left = 520
    Top = 112
  end
  object dsFuncoes: TDataSource
    DataSet = fdqrySituacao
    Left = 448
    Top = 104
  end
end
