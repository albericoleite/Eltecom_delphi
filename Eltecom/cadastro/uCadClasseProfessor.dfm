inherited frmCadClasseProfessor: TfrmCadClasseProfessor
  Caption = 'Cadastrar Professor na Classe'
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
        DataSource = dsClasses
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
      object dblkcbbPessoa: TDBLookupComboBox
        Left = 63
        Top = 20
        Width = 322
        Height = 21
        DropDownRows = 15
        KeyField = 'cod_pessoa'
        ListField = 'nome_pessoa'
        ListSource = dsPessoas
        TabOrder = 0
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
      'SELECT codigo, cod_professor, professor, cod_classe, classe'
      'FROM tb_classe_professor;')
    object fdtncfldQryListagemcodigo: TFDAutoIncField
      FieldName = 'Codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object intgrfldQryListagemcod_professor: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cod. Professor'
      FieldName = 'cod_professor'
      Origin = 'cod_professor'
    end
    object strngfldQryListagemprofessor: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Professor'
      FieldName = 'professor'
      Origin = 'professor'
      Size = 50
    end
    object intgrfldQryListagemcod_classe: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cod. Classe'
      FieldName = 'cod_classe'
      Origin = 'cod_classe'
    end
    object strngfldQryListagemclasse: TStringField
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
      'SELECT c.cod_pessoa, a.nome_pessoa'
      'FROM tb_pessoa a inner join tb_parametro_sistema b '
      'on a.cod_congregacao = b.cod_congregacao'
      'inner join tb_professor c on c.cod_pessoa = a.cod_pessoa'
      'where c.status = true'
      'order by 2')
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
