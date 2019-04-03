inherited frmCaddeparPessoa: TfrmCaddeparPessoa
  Caption = 'Cadastrar pessoas nos Departamentos'
  ExplicitTop = -34
  ExplicitWidth = 806
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel [0]
    Left = 383
    Top = 27
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
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
            FieldName = 'cod_dept_pessoa'
            Width = 51
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
            Width = 172
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_pessoa'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_pessoa'
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
        Width = 69
        Height = 13
        Caption = 'Departamento'
      end
      object lbl4: TLabel
        Left = 603
        Top = 3
        Width = 41
        Height = 13
        Caption = 'Situa'#231#227'o'
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
        TabOrder = 0
      end
      object dblkcbbPessoa: TDBLookupComboBox
        Left = 63
        Top = 20
        Width = 322
        Height = 21
        KeyField = 'cod_pessoa'
        ListField = 'nome_pessoa'
        ListSource = dsPessoas
        TabOrder = 1
      end
    end
  end
  inherited pnlRodape: TPanel
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  object dblkcbbDepartamento: TDBLookupComboBox [3]
    Left = 395
    Top = 44
    Width = 206
    Height = 21
    KeyField = 'cod_departamento'
    ListField = 'nome_departamento'
    ListSource = dsDepartamentos
    TabOrder = 2
  end
  object dblkcbbSitucao: TDBLookupComboBox [4]
    Left = 607
    Top = 44
    Width = 134
    Height = 21
    KeyField = 'TIPO'
    ListField = 'SITUACAO'
    ListSource = dsSituacao
    TabOrder = 3
  end
  inherited QryListagem: TFDQuery
    SQL.Strings = (
      
        'SELECT cod_dept_pessoa, cod_departamento, nome_departamento, cod' +
        '_pessoa, nome_pessoa, dta_inclusao, dta_alteracao, status, usuar' +
        'io_inclusao, usuario_alteracao'
      'FROM igreja.tb_dept_pessoa;')
    Left = 448
    Top = 96
    object fdtncfldQryListagemcod_dept_pessoa: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_dept_pessoa'
      Origin = 'cod_dept_pessoa'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object intgrfldQryListagemcod_departamento: TIntegerField
      DisplayLabel = 'C'#243'digo Departamento'
      FieldName = 'cod_departamento'
      Origin = 'cod_departamento'
      Required = True
    end
    object strngfldQryListagemnome_departamento: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Departamento'
      FieldName = 'nome_departamento'
      Origin = 'nome_departamento'
      Size = 50
    end
    object intgrfldQryListagemcod_pessoa: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo da Pessoa'
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
    object dtmfldQryListagemdta_alteracao: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dta_alteracao'
      Origin = 'dta_alteracao'
    end
    object strngfldQryListagemstatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = '`status`'
      Size = 1
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
    Left = 536
    Top = 96
  end
  object fdqryPessoas: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT cod_pessoa, nome_pessoa '
      'FROM tb_pessoa a inner join tb_parametro_sistema b '
      'on a.cod_congregacao = b.cod_congregacao')
    Left = 448
    Top = 168
  end
  object dsPessoas: TDataSource
    DataSet = fdqryPessoas
    Left = 392
    Top = 232
  end
  object dsDepartamentos: TDataSource
    DataSet = fdqryDepartamentos
    Left = 592
    Top = 208
  end
  object fdqryDepartamentos: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT cod_departamento, nome_departamento'
      'FROM igreja.tb_departamento;'
      '')
    Left = 592
    Top = 136
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
      'select 0 AS TIPO, '#39'ATIVO'#39' SITUACAO from dual'
      'union all'
      'select 1, '#39'INATIVO'#39' from dual')
    Left = 720
    Top = 232
  end
end
