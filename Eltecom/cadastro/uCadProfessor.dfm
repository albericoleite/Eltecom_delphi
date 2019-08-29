inherited frmCadProfessor: TfrmCadProfessor
  Caption = 'Cadastro de Professor'
  ClientWidth = 736
  ExplicitWidth = 742
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 736
    ActivePage = tabManutencao
    ExplicitWidth = 736
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 728
      ExplicitHeight = 390
      inherited pnlListagem: TPanel
        Width = 728
        ExplicitWidth = 728
      end
      inherited grdListagem: TDBGrid
        Width = 728
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_professor'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_pessoa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 350
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
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 728
      ExplicitHeight = 390
      object lbl2: TLabel
        Left = 63
        Top = 3
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object lbl4: TLabel
        Left = 471
        Top = 3
        Width = 41
        Height = 13
        Caption = 'Situa'#231#227'o'
      end
      object lbledtCodProfessor: TLabeledEdit
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
        Width = 402
        Height = 21
        KeyField = 'cod_pessoa'
        ListField = 'nome_pessoa'
        ListSource = dsPessoas
        TabOrder = 1
      end
      object dblkcbbSitucao: TDBLookupComboBox
        Left = 471
        Top = 20
        Width = 102
        Height = 21
        Hint = 'Situa'#231#227'o'
        KeyField = 'TIPO'
        ListField = 'SITUACAO'
        ListSource = dsSituacao
        TabOrder = 2
      end
    end
  end
  inherited pnlRodape: TPanel
    Width = 736
    ExplicitWidth = 736
    inherited btnNavigator: TDBNavigator
      Left = 415
      Hints.Strings = ()
      ExplicitLeft = 415
    end
    inherited btnAlterar: TBitBtn
      Left = 80
      ExplicitLeft = 80
    end
    inherited btnFechar: TBitBtn
      Left = 644
      ExplicitLeft = 644
    end
  end
  inherited QryListagem: TFDQuery
    SQL.Strings = (
      
        'SELECT cod_professor, cod_pessoa, nome, usuario_cadastro, dta_ca' +
        'dastro, status'
      'FROM igreja.tb_professor')
    Top = 128
    object fdtncfldQryListagemcod_professor: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_professor'
      Origin = 'cod_professor'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object intgrfldQryListagemcod_pessoa: TIntegerField
      DisplayLabel = 'Cod. Membro'
      FieldName = 'cod_pessoa'
      Origin = 'cod_pessoa'
      Required = True
    end
    object strngfldQryListagemnome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object strngfldQryListagemusuario_cadastro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'usuario_cadastro'
      Origin = 'usuario_cadastro'
    end
    object sqltmstmpfldQryListagemdta_cadastro: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'dta_cadastro'
      Origin = 'dta_cadastro'
    end
    object strngfldQryListagemstatus: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'status'
      Origin = '`status`'
      Size = 10
    end
  end
  inherited dtsListagem: TDataSource
    Left = 616
    Top = 120
  end
  object fdqryPessoas: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT cod_pessoa, nome_pessoa'
      'FROM tb_pessoa a inner join tb_parametro_sistema b '
      'on a.cod_congregacao = b.cod_congregacao'
      '##where cod_pessoa not in (select cod_pessoa from tb_professor)'
      'order by 2')
    Left = 448
    Top = 168
  end
  object dsPessoas: TDataSource
    DataSet = fdqryPessoas
    Left = 392
    Top = 232
  end
  object dsSituacao: TDataSource
    DataSet = fdqrySituacao
    Left = 360
    Top = 145
  end
  object fdqrySituacao: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select 1 AS TIPO, '#39'ATIVO'#39' SITUACAO from dual'
      'union all'
      'select 0, '#39'INATIVO'#39' from dual')
    Left = 288
    Top = 176
  end
end
