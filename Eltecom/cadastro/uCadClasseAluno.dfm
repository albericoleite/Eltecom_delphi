inherited frmCadClasseAluno: TfrmCadClasseAluno
  Caption = 'Cadastrar Alunos nas Classes'
  ExplicitTop = -66
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
            FieldName = 'codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_aluno'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'aluno'
            Width = 248
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_classe'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'classe'
            Width = 228
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 792
      ExplicitHeight = 390
      object lbl2: TLabel
        Left = 63
        Top = 3
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object lbl3: TLabel
        Left = 391
        Top = 3
        Width = 31
        Height = 13
        Caption = 'Classe'
      end
      object lbledtCodigo: TLabeledEdit
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
      object dblkcbbPessoa: TDBLookupComboBox
        Left = 63
        Top = 20
        Width = 322
        Height = 21
        DropDownRows = 15
        KeyField = 'cod_pessoa'
        ListField = 'nome_pessoa'
        ListSource = dsPessoas
        TabOrder = 1
      end
      object dblkcbbClasse: TDBLookupComboBox
        Left = 391
        Top = 20
        Width = 206
        Height = 21
        KeyField = 'cod_classe'
        ListField = 'classe'
        ListSource = dsClasses
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
      'SELECT codigo, cod_aluno, aluno, cod_classe, classe'
      'FROM tb_classe_aluno'
      '')
    Left = 472
    Top = 120
    object QryListagemcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryListagemcod_aluno: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo Aluno'
      FieldName = 'cod_aluno'
      Origin = 'cod_aluno'
    end
    object QryListagemaluno: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Aluno'
      FieldName = 'aluno'
      Origin = 'aluno'
      Size = 50
    end
    object QryListagemcod_classe: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo Classe'
      FieldName = 'cod_classe'
      Origin = 'cod_classe'
    end
    object QryListagemclasse: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Classe'
      FieldName = 'classe'
      Origin = 'classe'
      Size = 50
    end
  end
  object fdqryClasses: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT cod_classe, classe, descricao'
      'FROM tb_classe'
      ''
      '')
    Left = 592
    Top = 136
  end
  object dsClasses: TDataSource
    DataSet = fdqryClasses
    Left = 592
    Top = 208
  end
  object fdqryPessoas: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT cod_pessoa, nome_pessoa'
      'FROM tb_pessoa a inner join tb_parametro_sistema b '
      'on a.cod_congregacao = b.cod_congregacao'
      'order by 2 ')
    Left = 344
    Top = 144
    object fdtncfldPessoascod_pessoa: TFDAutoIncField
      FieldName = 'cod_pessoa'
      Origin = 'cod_pessoa'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldPessoasnome_pessoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_pessoa'
      Origin = 'nome_pessoa'
      Size = 50
    end
  end
  object dsPessoas: TDataSource
    DataSet = fdqryPessoas
    Left = 392
    Top = 232
  end
end
