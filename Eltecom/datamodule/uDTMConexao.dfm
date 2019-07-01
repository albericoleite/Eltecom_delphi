object dtmPrincipal: TdtmPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 429
  Width = 659
  object ConexaoDB: TFDConnection
    Params.Strings = (
      'Database=igreja'
      'User_Name=igreja'
      'Password=igreja'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 16
  end
  object FlinkMysql: TFDPhysMySQLDriverLink
    VendorLib = 'C:\mysql\libmysql.dll'
    Left = 136
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 224
    Top = 16
  end
  object fdqryCong_sistema: TFDQuery
    Connection = ConexaoDB
    SQL.Strings = (
      'SELECT a.cod_congregacao,b.congregacao,b.setor'
      'FROM tb_parametro_sistema a'
      'inner join tb_congregacao b '
      'on a.cod_congregacao = b.cod_congregacao')
    Left = 64
    Top = 96
    object fdtncfldCong_sistemacod_congregacao: TFDAutoIncField
      FieldName = 'cod_congregacao'
      Origin = 'cod_congregacao'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldCong_sistemacongregacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'congregacao'
      Origin = 'congregacao'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object strngfldCong_sistemasetor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'setor'
      Origin = 'setor'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object fdqryDepartamentos: TFDQuery
    Active = True
    Connection = ConexaoDB
    SQL.Strings = (
      'select * from tb_departamento')
    Left = 552
    Top = 264
    object fdtncfldDepartamentoscod_departamento: TFDAutoIncField
      FieldName = 'cod_departamento'
      Origin = 'cod_departamento'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldDepartamentosnome_departamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_departamento'
      Origin = 'nome_departamento'
      Size = 50
    end
  end
  object fdqryPessoa: TFDQuery
    Connection = ConexaoDB
    SQL.Strings = (
      
        'SELECT cod_pessoa, nome_pessoa, foto, sexo, nome_pai, nome_mae, ' +
        'dta_nascimento, naturalidade, uf_nascimento, nacionalidade, nror' +
        'g, orgaorg, cpf, email, grau_instr_situacao, grau_instrucao, for' +
        'm_teo_situacao, formacao_teologica, estado_civil_atual, estado_c' +
        'ivil_anterior, nome_conjugue, dta_casamento, logradouro, uf_ende' +
        'reco, estado_casa, complemento, fone_residencial, bairro, cep, c' +
        'idade, fone_celular, dta_conversao, dta_batismo_esprito, dta_bat' +
        'ismo_aguas, dta_congregado, local_descisao_congregado, dta_membr' +
        'o, origem_eclesiastica, proced_eclesiastica, profissao, habilita' +
        'cao_profissional, emprego_atual, funcao, fone_trabalho, igreja, ' +
        'setor, congregacao, nro_rol, nro_cad_congregado, membro_congrega' +
        'do, dta_inclusao, USUARIO_CADASTRO, SITUACAO, '
      'a.cod_congregacao, cod_situacao'
      
        'FROM igreja.tb_pessoa a join tb_parametro_sistema b on a.cod_con' +
        'gregacao = b.cod_congregacao')
    Left = 177
    Top = 96
    object fdtncfldPessoacod_pessoa: TFDAutoIncField
      FieldName = 'cod_pessoa'
      Origin = 'cod_pessoa'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldPessoanome_pessoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_pessoa'
      Origin = 'nome_pessoa'
      Size = 50
    end
    object blbfldPessoafoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'foto'
      Origin = 'foto'
    end
    object strngfldPessoasexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sexo'
      Origin = 'sexo'
      Size = 1
    end
    object strngfldPessoanome_pai: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_pai'
      Origin = 'nome_pai'
      Size = 50
    end
    object strngfldPessoanome_mae: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_mae'
      Origin = 'nome_mae'
      Size = 50
    end
    object dtfldPessoadta_nascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_nascimento'
      Origin = 'dta_nascimento'
    end
    object strngfldPessoanaturalidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'naturalidade'
      Origin = 'naturalidade'
      Size = 50
    end
    object strngfldPessoauf_nascimento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf_nascimento'
      Origin = 'uf_nascimento'
      Size = 2
    end
    object strngfldPessoanacionalidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nacionalidade'
      Origin = 'nacionalidade'
      Size = 50
    end
    object strngfldPessoanrorg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nrorg'
      Origin = 'nrorg'
    end
    object strngfldPessoaorgaorg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'orgaorg'
      Origin = 'orgaorg'
      Size = 10
    end
    object strngfldPessoacpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
    end
    object strngfldPessoaemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object strngfldPessoagrau_instr_situacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grau_instr_situacao'
      Origin = 'grau_instr_situacao'
      Size = 30
    end
    object strngfldPessoagrau_instrucao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grau_instrucao'
      Origin = 'grau_instrucao'
      Size = 30
    end
    object strngfldPessoaform_teo_situacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'form_teo_situacao'
      Origin = 'form_teo_situacao'
      Size = 30
    end
    object strngfldPessoaformacao_teologica: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'formacao_teologica'
      Origin = 'formacao_teologica'
      Size = 30
    end
    object strngfldPessoaestado_civil_atual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado_civil_atual'
      Origin = 'estado_civil_atual'
    end
    object strngfldPessoaestado_civil_anterior: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado_civil_anterior'
      Origin = 'estado_civil_anterior'
    end
    object strngfldPessoanome_conjugue: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_conjugue'
      Origin = 'nome_conjugue'
      Size = 50
    end
    object dtfldPessoadta_casamento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_casamento'
      Origin = 'dta_casamento'
    end
    object strngfldPessoalogradouro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 250
    end
    object strngfldPessoauf_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf_endereco'
      Origin = 'uf_endereco'
      Size = 2
    end
    object strngfldPessoaestado_casa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado_casa'
      Origin = 'estado_casa'
    end
    object strngfldPessoacomplemento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 50
    end
    object strngfldPessoafone_residencial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone_residencial'
      Origin = 'fone_residencial'
      Size = 30
    end
    object strngfldPessoabairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object strngfldPessoacep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
    end
    object strngfldPessoacidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object strngfldPessoafone_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone_celular'
      Origin = 'fone_celular'
      Size = 30
    end
    object dtfldPessoadta_conversao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_conversao'
      Origin = 'dta_conversao'
    end
    object dtfldPessoadta_batismo_esprito: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_batismo_esprito'
      Origin = 'dta_batismo_esprito'
    end
    object dtfldPessoadta_batismo_aguas: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_batismo_aguas'
      Origin = 'dta_batismo_aguas'
    end
    object dtfldPessoadta_congregado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_congregado'
      Origin = 'dta_congregado'
    end
    object strngfldPessoalocal_descisao_congregado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'local_descisao_congregado'
      Origin = 'local_descisao_congregado'
      Size = 50
    end
    object dtfldPessoadta_membro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_membro'
      Origin = 'dta_membro'
    end
    object strngfldPessoaorigem_eclesiastica: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'origem_eclesiastica'
      Origin = 'origem_eclesiastica'
      Size = 50
    end
    object strngfldPessoaproced_eclesiastica: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'proced_eclesiastica'
      Origin = 'proced_eclesiastica'
      Size = 50
    end
    object strngfldPessoaprofissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'profissao'
      Origin = 'profissao'
      Size = 50
    end
    object strngfldPessoahabilitacao_profissional: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'habilitacao_profissional'
      Origin = 'habilitacao_profissional'
      Size = 30
    end
    object strngfldPessoaemprego_atual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emprego_atual'
      Origin = 'emprego_atual'
      Size = 30
    end
    object strngfldPessoafuncao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'funcao'
      Origin = 'funcao'
      Size = 30
    end
    object strngfldPessoafone_trabalho: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone_trabalho'
      Origin = 'fone_trabalho'
      Size = 30
    end
    object intgrfldTesourariaDescricaoPessoacod_congregacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_congregacao'
      Origin = 'cod_congregacao'
    end
    object strngfldPessoanro_rol: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nro_rol'
      Origin = 'nro_rol'
      Size = 15
    end
    object strngfldPessoanro_cad_congregado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nro_cad_congregado'
      Origin = 'nro_cad_congregado'
      Size = 15
    end
    object strngfldPessoamembro_congregado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'membro_congregado'
      Origin = 'membro_congregado'
      Size = 15
    end
    object dtfldPessoadta_inclusao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_inclusao'
      Origin = 'dta_inclusao'
    end
    object strngfldPessoaUSUARIO_CADASTRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO_CADASTRO'
      Origin = 'USUARIO_CADASTRO'
    end
    object intgrfldTesourariaDescricaoPessoacod_situacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_situacao'
      Origin = 'cod_situacao'
    end
    object strngfldPessoaigreja: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'igreja'
      Origin = 'igreja'
      Size = 30
    end
    object strngfldPessoasetor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'setor'
      Origin = 'setor'
      Size = 15
    end
    object strngfldPessoacongregacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'congregacao'
      Origin = 'congregacao'
      Size = 30
    end
    object strngfldPessoaSITUACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 50
    end
  end
  object fdqrySetores: TFDQuery
    Connection = ConexaoDB
    SQL.Strings = (
      'SELECT cod_setor, setor'
      'FROM igreja.tb_setor;')
    Left = 416
    Top = 288
    object cod_setor: TFDAutoIncField
      FieldName = 'cod_setor'
      Origin = 'cod_setor'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldSetoressetor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'setor'
      Origin = 'setor'
      Size = 45
    end
  end
end
