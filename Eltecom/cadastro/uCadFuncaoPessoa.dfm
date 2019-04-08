inherited frmCadFuncaoPessoa: TfrmCadFuncaoPessoa
  Caption = 'Cadastro de Pessoas e Fun'#231#245'es'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    inherited tabListagem: TTabSheet
      inherited grdListagem: TDBGrid
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_func_pessoa'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_funcao'
            Width = 205
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_pessoa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_pessoa'
            Width = 268
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status'
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
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
        Width = 35
        Height = 13
        Caption = 'Fun'#231#227'o'
      end
      object lbl4: TLabel
        Left = 603
        Top = 3
        Width = 41
        Height = 13
        Caption = 'Situa'#231#227'o'
      end
      object dblkcbbPessoa: TDBLookupComboBox
        Left = 63
        Top = 20
        Width = 322
        Height = 21
        KeyField = 'cod_pessoa'
        ListField = 'nome_pessoa'
        ListSource = dsPessoas
        TabOrder = 0
      end
      object lbledtCodDeptpessoa: TLabeledEdit
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
      object dblkcbbFuncao: TDBLookupComboBox
        Left = 391
        Top = 20
        Width = 206
        Height = 21
        KeyField = 'cod_funcao'
        ListField = 'funcao'
        ListSource = dsFuncoes
        TabOrder = 2
      end
      object dblkcbbSitucao: TDBLookupComboBox
        Left = 603
        Top = 20
        Width = 134
        Height = 21
        KeyField = 'TIPO'
        ListField = 'SITUACAO'
        ListSource = dsSituacao
        TabOrder = 3
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
      
        'SELECT cod_func_pessoa, cod_funcao, nome_funcao, cod_pessoa, nom' +
        'e_pessoa, dta_inclusao, status, dta_alteracao, usuario_inclusao,' +
        ' usuario_alteracao'
      'FROM tb_func_pessoa')
    Left = 560
    Top = 104
    object fdtncfldQryListagemcod_func_pessoa: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_func_pessoa'
      Origin = 'cod_func_pessoa'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object intgrfldQryListagemcod_funcao: TIntegerField
      DisplayLabel = 'C'#243'digo Fun'#231#227'o'
      FieldName = 'cod_funcao'
      Origin = 'cod_funcao'
      Required = True
    end
    object strngfldQryListagemnome_funcao: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'nome_funcao'
      Origin = 'nome_funcao'
      Size = 50
    end
    object intgrfldQryListagemcod_pessoa: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo Pessoa'
      FieldName = 'cod_pessoa'
      Origin = 'cod_pessoa'
    end
    object strngfldQryListagemnome_pessoa: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'nome_pessoa'
      Origin = 'nome_pessoa'
      Size = 50
    end
    object dtmfldQryListagemdta_inclusao: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dta_inclusao'
      Origin = 'dta_inclusao'
    end
    object strngfldQryListagemstatus: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'status'
      Origin = '`status`'
    end
    object dtmfldQryListagemdta_alteracao: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dta_alteracao'
      Origin = 'dta_alteracao'
    end
    object strngfldQryListagemusuario_inclusao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'usuario_inclusao'
      Origin = 'usuario_inclusao'
      Size = 50
    end
    object strngfldQryListagemusuario_alteracao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'usuario_alteracao'
      Origin = 'usuario_alteracao'
      Size = 50
    end
  end
  inherited dtsListagem: TDataSource
    Left = 640
    Top = 104
  end
  object dsFuncoes: TDataSource
    DataSet = fdqryFuncoes
    Left = 592
    Top = 208
  end
  object fdqryFuncoes: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT cod_funcao, funcao, cod_departamento, nome_departamento'
      'FROM tb_funcao;'
      ''
      '')
    Left = 576
    Top = 160
  end
  object dsPessoas: TDataSource
    DataSet = fdqryPessoas
    Left = 392
    Top = 232
  end
  object fdqryPessoas: TFDQuery
    Active = True
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT cod_pessoa, nome_pessoa '
      'FROM tb_pessoa a inner join tb_parametro_sistema b '
      'on a.cod_congregacao = b.cod_congregacao')
    Left = 448
    Top = 168
  end
  object dsSituacao: TDataSource
    DataSet = fdqrySituacao
    Left = 736
    Top = 97
  end
  object fdqrySituacao: TFDQuery
    Active = True
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select '#39'ATIVO'#39' AS TIPO, '#39'ATIVO'#39' SITUACAO from dual'
      'union all'
      'select '#39'INATIVO'#39', '#39'INATIVO'#39' from dual')
    Left = 720
    Top = 232
  end
end
