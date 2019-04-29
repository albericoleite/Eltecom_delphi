inherited frmCadCargoPessoa: TfrmCadCargoPessoa
  Caption = 'Cadastrar Obreiros'
  ClientWidth = 751
  ExplicitTop = -24
  ExplicitWidth = 757
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
    Width = 751
    ActivePage = tabManutencao
    ExplicitWidth = 751
    inherited tabListagem: TTabSheet
      ExplicitWidth = 743
      inherited pnlListagem: TPanel
        Width = 743
        ExplicitWidth = 743
      end
      inherited grdListagem: TDBGrid
        Width = 743
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_MEMBRO'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 271
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CARGO'
            Width = 242
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 743
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
        Width = 29
        Height = 13
        Caption = 'Cargo'
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
        Tag = 2
        Left = 63
        Top = 20
        Width = 322
        Height = 21
        KeyField = 'cod_pessoa'
        ListField = 'nome_pessoa'
        ListSource = dsPessoas
        TabOrder = 1
      end
      object dblkcbbCargo: TDBLookupComboBox
        Tag = 2
        Left = 391
        Top = 20
        Width = 206
        Height = 21
        KeyField = 'cod_cargo'
        ListField = 'cargo'
        ListSource = dsCargos
        TabOrder = 2
      end
      object dblkcbbSitucao: TDBLookupComboBox
        Tag = 2
        Left = 603
        Top = 20
        Width = 102
        Height = 21
        Hint = 'Situa'#231#227'o'
        KeyField = 'TIPO'
        ListField = 'SITUACAO'
        ListSource = dsSituacao
        TabOrder = 3
      end
    end
  end
  inherited pnlRodape: TPanel
    Width = 751
    ExplicitWidth = 751
    inherited btnNavigator: TDBNavigator
      Left = 413
      Hints.Strings = ()
      ExplicitLeft = 413
    end
    inherited btnFechar: TBitBtn
      Left = 659
      ExplicitLeft = 659
    end
  end
  inherited QryListagem: TFDQuery
    Active = True
    SQL.Strings = (
      
        'SELECT COD_CARG_PESSOA, COD_MEMBRO, NOME, COD_CARGO, CARGO, STAT' +
        'US, COD_CONGREGACAO'
      'FROM tb_obreiro_cargo')
    Left = 448
    Top = 96
    object QryListagemCOD_MEMBRO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_MEMBRO'
      Origin = 'COD_MEMBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryListagemNOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object QryListagemCOD_CARGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_CARGO'
      Origin = 'COD_CARGO'
    end
    object QryListagemCARGO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cargo'
      FieldName = 'CARGO'
      Origin = 'CARGO'
      Size = 50
    end
    object QryListagemCOD_CARG_PESSOA: TIntegerField
      FieldName = 'COD_CARG_PESSOA'
      Origin = 'COD_CARG_PESSOA'
      Required = True
    end
    object QryListagemSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = '`STATUS`'
      Size = 1
    end
    object QryListagemCOD_CONGREGACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_CONGREGACAO'
      Origin = 'COD_CONGREGACAO'
    end
  end
  inherited dtsListagem: TDataSource
    Left = 536
    Top = 96
  end
  object fdqryPessoas: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT cod_pessoa, nome_pessoa'
      'FROM tb_pessoa a inner join tb_parametro_sistema b '
      'on a.cod_congregacao = b.cod_congregacao'
      'where sexo ='#39'M'#39
      'and cod_pessoa not in (select cod_membro from tb_obreiro_cargo)')
    Left = 448
    Top = 168
  end
  object dsPessoas: TDataSource
    DataSet = fdqryPessoas
    Left = 392
    Top = 232
  end
  object dsCargos: TDataSource
    DataSet = fdqryCargos
    Left = 592
    Top = 208
  end
  object fdqryCargos: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT cod_cargo , cargo from tb_cargo'
      '')
    Left = 592
    Top = 136
    object fdtncfldCargoscod_cargo: TFDAutoIncField
      FieldName = 'cod_cargo'
      Origin = 'cod_cargo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldCargoscargo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cargo'
      Origin = 'cargo'
      Size = 50
    end
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
    Left = 288
    Top = 176
  end
end
