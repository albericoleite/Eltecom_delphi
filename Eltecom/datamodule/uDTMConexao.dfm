object dtmPrincipal: TdtmPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 429
  Width = 659
  object ConexaoDB: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Password=julia'
      'Server=127.0.0.1'
      'Database=igreja'
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
      'SELECT a.cod_congregacao,b.congregacao,b.setor,b.cod_igreja'
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
    object intgrfldCong_sistemacod_igreja: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_igreja'
      Origin = 'cod_igreja'
      ProviderFlags = []
      ReadOnly = True
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
  object fdqryDepartamentos: TFDQuery
    Connection = ConexaoDB
    SQL.Strings = (
      'select * from tb_departamento')
    Left = 432
    Top = 112
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
  object fdqryMeses: TFDQuery
    Connection = ConexaoDB
    SQL.Strings = (
      'select 1 as valor,'#39'Janeiro'#39' mes from dual'
      'union'
      'select 2,'#39'Fevereiro'#39' from dual'
      'union'
      'select 3,'#39'Mar'#231'o'#39' from dual'
      'union'
      'select 4,'#39'Abril'#39' from dual'
      'union'
      'select 5,'#39'Maio'#39' from dual'
      'union'
      'select 6,'#39'Junho'#39' from dual'
      'union'
      'select 7,'#39'Julho'#39' from dual'
      'union'
      'select 8,'#39'Agosto'#39' from dual'
      'union'
      'select 9,'#39'Setembro'#39' from dual'
      'union'
      'select 10,'#39'Outubro'#39' from dual'
      'union'
      'select 11,'#39'Novembro'#39' from dual'
      'union'
      'select 12,'#39'Dezembro'#39' from dual')
    Left = 320
    Top = 16
    object fdqryMesesvalor: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqryMesesmes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mes'
      Origin = 'mes'
      ProviderFlags = []
      ReadOnly = True
      Size = 9
    end
  end
  object fdqryTipoSaida: TFDQuery
    Connection = ConexaoDB
    SQL.Strings = (
      'SELECT id, tipo'
      'FROM tipo_saida')
    Left = 312
    Top = 200
    object fdtncfldTipoSaidaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object strngfldTipoSaidatipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
      Size = 50
    end
  end
  object fdcmndBancoNovo: TFDCommand
    Connection = ConexaoDB
    CommandText.Strings = (
      'CREATE DATABASE IF NOT EXISTS `igreja`;'
      'USE `igreja`;'
      ''
      ''
      
        'CREATE PROCEDURE `aula_ebd`(cod_cong int, cod_class int, dta_aul' +
        ' datetime,nro_lic int,tlic varchar(100) ,trev varchar(100))'
      'begin'
      #9
      'declare tri int(11);'
      ''
      'set tri = (select  trimestre  '
      'from tb_ebd_calendario'
      
        'where date(dta_inicio) <= date(dta_aul) and  date(dta_fim) >=dat' +
        'e(dta_aul)) ;'
      #9
      'IF NOT exists( SELECT a.codigo'
      'FROM tb_ebd_aula a where a.cod_classe =cod_class '
      'and date(a.dta_aula) = date(dta_aul) '
      'and a.cod_congregacao =cod_cong )'
      ' THEN'
      'INSERT INTO tb_ebd_aula'
      
        '( dta_aula, cod_classe, qtd_biblias, qtd_revistas, trimestre, co' +
        'd_congregacao, nro_licao, titulo_licao, titulo_revista)'
      
        'VALUES( dta_aul, cod_class, 0, 0, tri, cod_cong, nro_lic, tlic, ' +
        'trev);'
      ' END IF;'
      'END ;'
      ''
      '-- Copiando estrutura para tabela igreja.centro_custo'
      'CREATE TABLE IF NOT EXISTS `centro_custo` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `descricao` varchar(50) NOT NULL,'
      '  `id_tipo_cc` int(11) NOT NULL,'
      '  PRIMARY KEY (`id`),'
      '  KEY `centro_custo_tipo_centro_custo_fk` (`id_tipo_cc`),'
      
        '  CONSTRAINT `centro_custo_tipo_centro_custo_fk` FOREIGN KEY (`i' +
        'd_tipo_cc`) REFERENCES `tipo_centro_custo` (`id`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;'
      ''
      
        '-- Copiando dados para a tabela igreja.centro_custo: ~0 rows (ap' +
        'roximadamente)'
      '/*!40000 ALTER TABLE `centro_custo` DISABLE KEYS */;'
      '/*!40000 ALTER TABLE `centro_custo` ENABLE KEYS */;'
      ''
      ''
      
        'CREATE PROCEDURE `chamada_ebd`(cod_cong int, cod_class int, dta_' +
        'chamada datetime)'
      'BEGIN'
      'INSERT INTO tb_ebd_chamada'
      '(cod_aluno, cod_classe, dta_aula, cod_congregacao)'
      
        'select cod_aluno,cod_classe, dta_chamada,cod_congregacao from tb' +
        '_classe_aluno'
      'where cod_congregacao =cod_cong and cod_classe =cod_class'
      'and cod_aluno not in (select x.cod_aluno from tb_ebd_chamada x'
      
        'where date(x.dta_aula) = date(dta_chamada) and x.cod_classe =cod' +
        '_class );'
      ''
      'END ;'
      ''
      '-- Copiando estrutura para tabela igreja.forma_pagamento'
      'CREATE TABLE IF NOT EXISTS `forma_pagamento` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `descricao` varchar(45) DEFAULT NULL,'
      '  PRIMARY KEY (`id`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;'
      ''
      
        '-- Copiando dados para a tabela igreja.forma_pagamento: ~1 rows ' +
        '(aproximadamente)'
      '/*!40000 ALTER TABLE `forma_pagamento` DISABLE KEYS */;'
      'INSERT INTO `forma_pagamento` (`id`, `descricao`) VALUES'
      #9'(1, '#39'DINHEIRO'#39');'
      '/*!40000 ALTER TABLE `forma_pagamento` ENABLE KEYS */;'
      ''
      '-- Copiando estrutura para tabela igreja.fornecedor'
      'CREATE TABLE IF NOT EXISTS `fornecedor` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `nomerazao` varchar(150) NOT NULL,'
      '  `tipo` varchar(1) NOT NULL,'
      '  `cpfcnpj` varchar(20) NOT NULL,'
      '  `email` varchar(45) DEFAULT NULL,'
      '  `telefone` varchar(15) DEFAULT NULL,'
      '  `celular` varchar(15) DEFAULT NULL,'
      '  `rua` varchar(150) DEFAULT NULL,'
      '  `numero` varchar(10) DEFAULT NULL,'
      '  `bairro` varchar(45) DEFAULT NULL,'
      '  `uf` varchar(2) NOT NULL,'
      '  `cidade` varchar(45) NOT NULL,'
      '  `cep` varchar(15) DEFAULT NULL,'
      '  `data_cadastro` datetime DEFAULT NULL,'
      '  `usuario_cadastro` varchar(45) DEFAULT NULL,'
      '  PRIMARY KEY (`id`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;'
      ''
      ''
      '-- Copiando estrutura para tabela igreja.tb_acao_acesso'
      'CREATE TABLE IF NOT EXISTS `tb_acao_acesso` ('
      '  `cod_acao_acesso` int(11) NOT NULL AUTO_INCREMENT,'
      '  `descricao` varchar(100) NOT NULL,'
      '  `chave` varchar(60) NOT NULL,'
      '  PRIMARY KEY (`cod_acao_acesso`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=477 DEFAULT CHARSET=latin1;'
      ''
      ''
      '-- Copiando estrutura para tabela igreja.tb_cargo'
      'CREATE TABLE IF NOT EXISTS `tb_cargo` ('
      '  `cod_cargo` int(10) NOT NULL AUTO_INCREMENT,'
      '  `cargo` varchar(50) DEFAULT NULL,'
      '  `nivel` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  PRIMARY KEY (`cod_cargo`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;'
      ''
      
        '-- Copiando dados para a tabela igreja.tb_cargo: ~7 rows (aproxi' +
        'madamente)'
      '/*!40000 ALTER TABLE `tb_cargo` DISABLE KEYS */;'
      'INSERT INTO `tb_cargo` (`cod_cargo`, `cargo`, `nivel`) VALUES'
      #9'(1, '#39'COOPERADOR'#39', 1),'
      #9'(2, '#39'AUXILIAR DE CONGREGA'#199#195'O'#39', 2),'
      #9'(3, '#39'AUXILIAR'#39', 3),'
      #9'(4, '#39'DI'#193'CONO'#39', 4),'
      #9'(5, '#39'PRESBITERO'#39', 5),'
      #9'(6, '#39'EVANGELISTA'#39', 6),'
      #9'(7, '#39'PASTOR'#39', 7);'
      '/*!40000 ALTER TABLE `tb_cargo` ENABLE KEYS */;'
      ''
      '-- Copiando estrutura para tabela igreja.tb_categoria'
      'CREATE TABLE IF NOT EXISTS `tb_categoria` ('
      '  `ID_CATEGORIA` int(10) NOT NULL AUTO_INCREMENT,'
      '  `NOME_CAT` varchar(20) NOT NULL,'
      
        '  `DTACADASTRO` timestamp NOT NULL DEFAULT '#39'0000-00-00 00:00:00'#39 +
        ','
      '  `USUCADASTRO` varchar(50) NOT NULL,'
      '  PRIMARY KEY (`ID_CATEGORIA`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      ''
      '-- Copiando estrutura para tabela igreja.tb_classe'
      'CREATE TABLE IF NOT EXISTS `tb_classe` ('
      '  `cod_classe` int(11) NOT NULL AUTO_INCREMENT,'
      '  `classe` varchar(20) DEFAULT NULL,'
      '  `descricao` varchar(100) DEFAULT NULL,'
      '  PRIMARY KEY (`cod_classe`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;'
      ''
      ''
      '-- Copiando estrutura para tabela igreja.tb_classe_aluno'
      'CREATE TABLE IF NOT EXISTS `tb_classe_aluno` ('
      '  `codigo` int(11) NOT NULL AUTO_INCREMENT,'
      '  `cod_aluno` int(11) DEFAULT NULL,'
      '  `aluno` varchar(50) DEFAULT NULL,'
      '  `cod_classe` int(11) DEFAULT NULL,'
      '  `classe` varchar(50) DEFAULT NULL,'
      '  `cod_congregacao` int(11) DEFAULT NULL,'
      '  PRIMARY KEY (`codigo`),'
      '  KEY `tb_classe_aluno_tb_classe_fk` (`cod_classe`),'
      
        '  CONSTRAINT `tb_classe_aluno_tb_classe_fk` FOREIGN KEY (`cod_cl' +
        'asse`) REFERENCES `tb_classe` (`cod_classe`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;'
      ''
      '-- Copiando estrutura para tabela igreja.tb_classe_professor'
      'CREATE TABLE IF NOT EXISTS `tb_classe_professor` ('
      '  `codigo` int(11) NOT NULL AUTO_INCREMENT,'
      '  `cod_professor` int(11) DEFAULT NULL,'
      '  `professor` varchar(50) DEFAULT NULL,'
      '  `cod_classe` int(11) DEFAULT NULL,'
      '  `classe` varchar(20) DEFAULT NULL,'
      '  `cod_congregacao` int(11) NOT NULL,'
      '  PRIMARY KEY (`codigo`),'
      '  KEY `tb_classe_professor_tb_classe_fk` (`cod_classe`),'
      '  KEY `tb_classe_professor_tb_professor_fk` (`cod_professor`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;'
      ''
      ''
      '-- Copiando estrutura para tabela igreja.tb_congregacao'
      'CREATE TABLE IF NOT EXISTS `tb_congregacao` ('
      '  `cod_congregacao` int(11) NOT NULL AUTO_INCREMENT,'
      '  `cod_central` int(11) DEFAULT NULL,'
      '  `congregacao` varchar(25) DEFAULT NULL,'
      '  `setor` varchar(25) DEFAULT NULL,'
      '  `polo` varchar(25) DEFAULT NULL,'
      '  `situacao` int(11) DEFAULT NULL,'
      '  `telefone` varchar(20) DEFAULT NULL,'
      '  `cnpj` varchar(20) DEFAULT NULL,'
      '  `siteblog` varchar(50) DEFAULT NULL,'
      '  `endereco` varchar(100) DEFAULT NULL,'
      '  `complemento` varchar(25) DEFAULT NULL,'
      '  `bairro` varchar(25) DEFAULT NULL,'
      '  `cep` varchar(25) DEFAULT NULL,'
      '  `cidade` varchar(50) DEFAULT NULL,'
      '  `diasculto` varchar(25) DEFAULT NULL,'
      '  `diacoa` varchar(25) DEFAULT NULL,'
      '  `diacom` varchar(25) DEFAULT NULL,'
      '  `diacoi` varchar(25) DEFAULT NULL,'
      '  `diacv` varchar(25) DEFAULT NULL,'
      '  `data_aber_sub` date DEFAULT NULL,'
      '  `data_aber_cong` date DEFAULT NULL,'
      '  `data_fun_coa` date DEFAULT NULL,'
      '  `data_fun_com` date DEFAULT NULL,'
      '  `data_fun_coi` date DEFAULT NULL,'
      '  `data_fun_cv` date DEFAULT NULL,'
      '  `data_cadastro` date DEFAULT NULL,'
      '  `usuario_cadastro` varchar(50) DEFAULT NULL,'
      '  `cong_principal` varchar(10) DEFAULT NULL,'
      '  `dirigente` varchar(30) DEFAULT NULL,'
      '  `cod_setor` int(11) DEFAULT NULL,'
      '  `cod_igreja` int(11) NOT NULL,'
      '  `cod_cc` int(11) DEFAULT NULL,'
      '  `sigla` varchar(25) DEFAULT NULL,'
      '  `cod_dirigente` int(11) DEFAULT NULL,'
      '  `percentual_central` varchar(1) DEFAULT NULL,'
      '  `percentual_valor` double DEFAULT NULL,'
      '  `meta_central` varchar(1) DEFAULT NULL,'
      '  `meta_valor` double DEFAULT NULL,'
      '  PRIMARY KEY (`cod_congregacao`),'
      '  KEY `tb_congregacao_tb_setor_fk` (`cod_setor`),'
      '  KEY `tb_congregacao_tb_igreja_fk` (`cod_igreja`),'
      
        '  CONSTRAINT `tb_congregacao_tb_igreja_fk` FOREIGN KEY (`cod_igr' +
        'eja`) REFERENCES `tb_igreja` (`cod_igreja`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;'
      ''
      '-- Copiando estrutura para tabela igreja.tb_departamento'
      'CREATE TABLE IF NOT EXISTS `tb_departamento` ('
      '  `cod_departamento` int(11) NOT NULL AUTO_INCREMENT,'
      '  `nome_departamento` varchar(50) DEFAULT NULL,'
      '  `sigla` varchar(10) DEFAULT NULL,'
      '  PRIMARY KEY (`cod_departamento`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;'
      ''
      
        '-- Copiando dados para a tabela igreja.tb_departamento: ~11 rows' +
        ' (aproximadamente)'
      '/*!40000 ALTER TABLE `tb_departamento` DISABLE KEYS */;'
      
        'INSERT INTO `tb_departamento` (`cod_departamento`, `nome_departa' +
        'mento`, `sigla`) VALUES'
      #9'(1, '#39'DEPARTAMENTO INFANTIL'#39', '#39'DEPIN'#39'),'
      #9'(2, '#39'DEPARTAMENTO DE JOVENS E ADOLESCENTES'#39', '#39'DEJAD'#39'),'
      #9'(3, '#39'DEPARTAMENTO FEMININO DA ASSEMBLEIA DE DEUS'#39', '#39'DEFAD'#39'),'
      #9'(4, '#39' DEPARTAMENTO DA 3'#170' IDADE'#39', '#39'DE3ID'#39'),'
      #9'(5, '#39'DEPARTAMENTO DE EVANGELIZA'#199#195'O E MISS'#213'ES'#39', '#39'DEPEM'#39'),'
      #9'(6, '#39'DEPARTAMENTO DE NOVOS CONVERTIDOS'#39', '#39'DENOC'#39'),'
      #9'(7, '#39'DEPARTAMENTO DE ENSINO E EDUCA'#199#195'O CRIST'#195#39', '#39'DENEC'#39'),'
      #9'(8, '#39'DEPARTAMENTO DE M'#218'SICA DA ASSEMBLEIA DE DEUS'#39', '#39'DEMAD'#39'),'
      #9'(9, '#39'DEPARTAMENTO DA FAM'#205'LIA'#39', '#39'DEFAM'#39'),'
      #9'(10, '#39' DEPARTAMENTO DE ARQUITETURA E ENGENHARIA'#39', '#39'DAE'#39'),'
      #9'(11, '#39'MINIST'#201'RIO'#39', '#39'MIN'#39');'
      '/*!40000 ALTER TABLE `tb_departamento` ENABLE KEYS */;'
      ''
      '-- Copiando estrutura para tabela igreja.tb_dept_pessoa'
      'CREATE TABLE IF NOT EXISTS `tb_dept_pessoa` ('
      '  `cod_dept_pessoa` int(25) NOT NULL AUTO_INCREMENT,'
      '  `cod_departamento` int(25) NOT NULL,'
      '  `nome_departamento` varchar(50) DEFAULT NULL,'
      '  `cod_pessoa` int(25) DEFAULT NULL,'
      '  `nome_pessoa` varchar(50) DEFAULT NULL,'
      '  `dta_inclusao` datetime DEFAULT CURRENT_TIMESTAMP,'
      '  `dta_alteracao` datetime DEFAULT NULL,'
      '  `status` varchar(1) DEFAULT NULL,'
      '  `usuario_inclusao` varchar(50) DEFAULT NULL,'
      '  `usuario_alteracao` varchar(50) DEFAULT NULL,'
      '  PRIMARY KEY (`cod_dept_pessoa`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;'
      ''
      '-- Copiando estrutura para tabela igreja.tb_dizimista'
      'CREATE TABLE IF NOT EXISTS `tb_dizimista` ('
      '  `cod_dizimo` int(11) NOT NULL AUTO_INCREMENT,'
      '  `cod_talao` int(11) DEFAULT NULL,'
      '  `cod_cheque` int(11) DEFAULT NULL,'
      '  `nome` varchar(50) DEFAULT NULL,'
      '  `valor` double DEFAULT NULL,'
      '  `data` date DEFAULT NULL,'
      '  `cargo` varchar(50) DEFAULT NULL,'
      '  `cod_congregacao` int(11) NOT NULL,'
      '  `cod_pessoa` int(11) DEFAULT NULL,'
      '  PRIMARY KEY (`cod_dizimo`),'
      '  KEY `tb_dizimista_tb_congregacao_fk` (`cod_congregacao`),'
      '  KEY `tb_dizimista_tb_pessoa_fk` (`cod_pessoa`),'
      
        '  CONSTRAINT `tb_dizimista_tb_congregacao_fk` FOREIGN KEY (`cod_' +
        'congregacao`) REFERENCES `tb_congregacao` (`cod_congregacao`),'
      
        '  CONSTRAINT `tb_dizimista_tb_pessoa_fk` FOREIGN KEY (`cod_pesso' +
        'a`) REFERENCES `tb_pessoa` (`cod_pessoa`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=latin1;'
      ''
      ''
      '-- Copiando estrutura para tabela igreja.tb_ebd_aula'
      'CREATE TABLE IF NOT EXISTS `tb_ebd_aula` ('
      '  `codigo` int(11) NOT NULL AUTO_INCREMENT,'
      '  `dta_aula` datetime NOT NULL,'
      '  `cod_classe` int(11) NOT NULL,'
      '  `qtd_biblias` int(11) DEFAULT NULL,'
      '  `qtd_revistas` int(11) DEFAULT NULL,'
      '  `trimestre` int(11) DEFAULT NULL,'
      '  `cod_congregacao` int(11) NOT NULL,'
      '  `nro_licao` int(11) NOT NULL,'
      '  `titulo_licao` varchar(100) DEFAULT NULL,'
      '  `titulo_revista` varchar(100) DEFAULT NULL,'
      '  `qtd_visitante_amigo` int(11) DEFAULT '#39'0'#39','
      '  `qtd_visitante_evang` int(11) DEFAULT '#39'0'#39','
      '  PRIMARY KEY (`codigo`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;'
      ''
      ''
      '-- Copiando estrutura para tabela igreja.tb_ebd_calendario'
      'CREATE TABLE IF NOT EXISTS `tb_ebd_calendario` ('
      '  `codigo` int(11) NOT NULL AUTO_INCREMENT,'
      '  `ano` int(11) DEFAULT NULL,'
      '  `trimestre` varchar(50) DEFAULT NULL,'
      '  `dta_inicio` datetime DEFAULT NULL,'
      '  `dta_fim` datetime DEFAULT NULL,'
      '  PRIMARY KEY (`codigo`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;'
      ''
      ''
      '-- Copiando estrutura para tabela igreja.tb_ebd_chamada'
      'CREATE TABLE IF NOT EXISTS `tb_ebd_chamada` ('
      '  `codigo` int(11) NOT NULL AUTO_INCREMENT,'
      '  `cod_aluno` int(11) NOT NULL,'
      '  `cod_classe` int(11) NOT NULL,'
      '  `dta_aula` datetime NOT NULL,'
      '  `cod_congregacao` int(11) NOT NULL,'
      '  `presente` tinyint(4) NOT NULL DEFAULT '#39'1'#39','
      '  PRIMARY KEY (`codigo`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;'
      ''
      ''
      '-- Copiando estrutura para tabela igreja.tb_funcao'
      'CREATE TABLE IF NOT EXISTS `tb_funcao` ('
      '  `cod_funcao` int(11) NOT NULL AUTO_INCREMENT,'
      '  `funcao` varchar(50) DEFAULT NULL,'
      '  `cod_departamento` int(11) DEFAULT NULL,'
      '  `nome_departamento` varchar(50) DEFAULT NULL,'
      '  PRIMARY KEY (`cod_funcao`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;'
      ''
      
        '-- Copiando dados para a tabela igreja.tb_funcao: ~18 rows (apro' +
        'ximadamente)'
      '/*!40000 ALTER TABLE `tb_funcao` DISABLE KEYS */;'
      
        'INSERT INTO `tb_funcao` (`cod_funcao`, `funcao`, `cod_departamen' +
        'to`, `nome_departamento`) VALUES'
      #9'(1, '#39'DIRIGENTE'#39', 11, '#39'MINIST'#201'RIO'#39'),'
      #9'(2, '#39'1'#186' VICE- DIRIGENTE'#39', 11, '#39'MINIST'#201'RIO'#39'),'
      #9'(3, '#39'2'#186' VICE- DIRIGENTE'#39', 11, '#39'MINIST'#201'RIO'#39'),'
      #9'(4, '#39'1'#186' TESOUREIRO'#39', 11, '#39'MINIST'#201'RIO'#39'),'
      #9'(5, '#39'2'#186' TESOUREIRO'#39', 11, '#39'MINIST'#201'RIO'#39'),'
      #9'(6, '#39'1'#186' SECRET'#193'RIO'#39', 11, '#39'MINIST'#201'RIO'#39'),'
      #9'(7, '#39'2'#186' SECRET'#193'RIO'#39', 11, '#39'MINIST'#201'RIO'#39'),'
      #9'(8, '#39'DIRETOR(A) DEPIN'#39', 1, '#39'DEPARTAMENTO INFANTIL'#39'),'
      
        #9'(9, '#39'DIRETOR(A) DEJAD'#39', 2, '#39'DEPARTAMENTO DE JOVENS E ADOLESCENT' +
        'ES'#39'),'
      
        #9'(10, '#39'DIRETOR(A) DEFAD'#39', 3, '#39'DEPARTAMENTO FEMININO DA ASSEMBLEI' +
        'A DE DEUS'#39'),'
      #9'(11, '#39'DIRETOR(A) DEFAM'#39', 11, '#39'MINIST'#201'RIO'#39'),'
      #9'(12, '#39'DIRETOR(A) DE3ID'#39', 11, '#39'MINIST'#201'RIO'#39'),'
      #9'(13, '#39'DIRETOR(A) DEPEM'#39', 6, '#39'EVANGELISMO E MISS'#213'ES'#39'),'
      #9'(14, '#39'DIRETOR(A) DENEC'#39', 5, '#39'DISCIPULADO'#39'),'
      
        #9'(15, '#39'DIRETOR(A) DENOC'#39', 6, '#39'DEPARTAMENTO DE NOVOS CONVERTIDOS'#39 +
        '),'
      
        #9'(16, '#39'DIRETOR(A) DEMAD'#39', 8, '#39'DEPARTAMENTO DE M'#218'SICA DA ASSEMBLE' +
        'IA DE DEUS'#39'),'
      #9'(17, '#39'REPRES. PATRIM'#212'NIO'#39', 1, '#39'MINISTERIO'#39'),'
      #9'(18, '#39'REPRES. A'#199#195'O SOCIAL'#39', 1, '#39'MINISTERIO'#39');'
      '/*!40000 ALTER TABLE `tb_funcao` ENABLE KEYS */;'
      ''
      '-- Copiando estrutura para tabela igreja.tb_func_pessoa'
      'CREATE TABLE IF NOT EXISTS `tb_func_pessoa` ('
      '  `cod_func_pessoa` int(11) NOT NULL AUTO_INCREMENT,'
      '  `cod_funcao` int(25) NOT NULL,'
      '  `nome_funcao` varchar(50) DEFAULT NULL,'
      '  `cod_pessoa` int(11) DEFAULT NULL,'
      '  `nome_pessoa` varchar(50) DEFAULT NULL,'
      '  `dta_inclusao` datetime DEFAULT CURRENT_TIMESTAMP,'
      
        '  `status` varchar(20) DEFAULT '#39'ATIVO'#39' COMMENT '#39'ATIVO / INATIVO'#39 +
        ','
      '  `dta_alteracao` datetime DEFAULT NULL,'
      '  `usuario_inclusao` varchar(50) DEFAULT NULL,'
      '  `usuario_alteracao` varchar(50) DEFAULT NULL,'
      '  PRIMARY KEY (`cod_func_pessoa`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;'
      ''
      '-- Copiando estrutura para tabela igreja.tb_igreja'
      'CREATE TABLE IF NOT EXISTS `tb_igreja` ('
      '  `cod_igreja` int(11) NOT NULL AUTO_INCREMENT,'
      '  `nome_igreja` varchar(50) DEFAULT NULL,'
      '  `cidade` varchar(50) DEFAULT NULL,'
      '  `dta_fundacao` date DEFAULT NULL,'
      '  `nome_presidente` varchar(50) DEFAULT NULL,'
      '  `dta_inclusao` datetime DEFAULT NULL,'
      '  `sigla_igreja` varchar(20) DEFAULT NULL,'
      '  `site` varchar(50) DEFAULT NULL,'
      '  `email` varchar(50) DEFAULT NULL,'
      '  `cnpj` varchar(50) DEFAULT NULL,'
      '  `logradouro` varchar(50) DEFAULT NULL,'
      '  `bairro` varchar(50) DEFAULT NULL,'
      '  `uf` varchar(2) DEFAULT NULL,'
      '  `fone` varchar(25) DEFAULT NULL,'
      '  `foto` mediumblob,'
      '  `percentual_ajuste` int(11) DEFAULT '#39'35'#39','
      '  `sistema` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `situacao` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `email_secretaria` varchar(50) DEFAULT NULL,'
      '  `cep` varchar(20) DEFAULT NULL,'
      '  PRIMARY KEY (`cod_igreja`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;'
      ''
      ''
      '-- Copiando estrutura para tabela igreja.tb_obreiro_cargo'
      'CREATE TABLE IF NOT EXISTS `tb_obreiro_cargo` ('
      '  `COD_CARG_PESSOA` int(10) NOT NULL AUTO_INCREMENT,'
      '  `COD_MEMBRO` int(10) NOT NULL,'
      '  `NOME` varchar(50) DEFAULT NULL,'
      '  `COD_CARGO` int(10) DEFAULT NULL,'
      '  `CARGO` varchar(50) DEFAULT NULL,'
      '  `STATUS` varchar(1) DEFAULT '#39'0'#39','
      '  `COD_CONGREGACAO` int(10) DEFAULT NULL,'
      '  PRIMARY KEY (`COD_CARG_PESSOA`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;'
      ''
      '-- Copiando estrutura para tabela igreja.tb_parametro_servidor'
      'CREATE TABLE IF NOT EXISTS `tb_parametro_servidor` ('
      '  `computador` varchar(20) DEFAULT NULL,'
      '  `ip` varchar(20) DEFAULT NULL,'
      '  `tipo` varchar(20) DEFAULT NULL'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;'
      ''
      ''
      '-- Copiando estrutura para tabela igreja.tb_parametro_sistema'
      'CREATE TABLE IF NOT EXISTS `tb_parametro_sistema` ('
      '  `cod_congregacao` int(11) NOT NULL AUTO_INCREMENT,'
      '  PRIMARY KEY (`cod_congregacao`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;'
      ''
      '-- Copiando estrutura para tabela igreja.tb_pessoa'
      'CREATE TABLE IF NOT EXISTS `tb_pessoa` ('
      '  `cod_pessoa` int(11) NOT NULL AUTO_INCREMENT,'
      '  `nome_pessoa` varchar(50) DEFAULT NULL,'
      '  `foto` mediumblob,'
      '  `sexo` varchar(1) DEFAULT NULL,'
      '  `nome_pai` varchar(50) DEFAULT NULL,'
      '  `nome_mae` varchar(50) DEFAULT NULL,'
      '  `dta_nascimento` date DEFAULT NULL,'
      '  `naturalidade` varchar(50) DEFAULT NULL,'
      '  `uf_nascimento` varchar(2) DEFAULT NULL,'
      '  `nacionalidade` varchar(50) DEFAULT '#39'BRASILEIRA'#39','
      '  `nrorg` varchar(20) DEFAULT NULL,'
      '  `orgaorg` varchar(10) DEFAULT NULL,'
      '  `cpf` varchar(20) DEFAULT NULL,'
      '  `email` varchar(50) DEFAULT NULL,'
      '  `grau_instr_situacao` varchar(30) DEFAULT NULL,'
      '  `grau_instrucao` varchar(30) DEFAULT NULL,'
      '  `form_teo_situacao` varchar(30) DEFAULT NULL,'
      '  `formacao_teologica` varchar(30) DEFAULT NULL,'
      '  `estado_civil_atual` varchar(20) DEFAULT NULL,'
      '  `estado_civil_anterior` varchar(20) DEFAULT NULL,'
      '  `nome_conjugue` varchar(50) DEFAULT NULL,'
      '  `dta_casamento` date DEFAULT NULL,'
      '  `logradouro` varchar(250) DEFAULT NULL,'
      '  `uf_endereco` varchar(2) DEFAULT NULL,'
      '  `estado_casa` varchar(20) DEFAULT NULL,'
      '  `complemento` varchar(50) DEFAULT NULL,'
      '  `fone_residencial` varchar(30) DEFAULT NULL,'
      '  `bairro` varchar(30) DEFAULT NULL,'
      '  `cep` varchar(20) DEFAULT NULL,'
      '  `cidade` varchar(30) DEFAULT '#39'PARNAMIRIM'#39','
      '  `fone_celular` varchar(30) DEFAULT NULL,'
      '  `dta_conversao` date DEFAULT NULL,'
      '  `dta_batismo_esprito` date DEFAULT NULL,'
      '  `dta_batismo_aguas` date DEFAULT NULL,'
      '  `dta_congregado` date DEFAULT NULL,'
      '  `local_descisao_congregado` varchar(50) DEFAULT NULL,'
      '  `dta_membro` date DEFAULT NULL,'
      '  `origem_eclesiastica` varchar(50) DEFAULT NULL,'
      '  `proced_eclesiastica` varchar(50) DEFAULT NULL,'
      '  `profissao` varchar(50) DEFAULT NULL,'
      '  `habilitacao_profissional` varchar(30) DEFAULT NULL,'
      '  `emprego_atual` varchar(30) DEFAULT NULL,'
      '  `funcao` varchar(30) DEFAULT NULL,'
      '  `fone_trabalho` varchar(30) DEFAULT NULL,'
      '  `igreja` varchar(30) DEFAULT '#39'ASSEMBLEIA DE DEUS'#39','
      '  `setor` varchar(15) DEFAULT NULL,'
      '  `congregacao` varchar(30) DEFAULT NULL,'
      '  `nro_rol` varchar(15) DEFAULT NULL,'
      '  `nro_cad_congregado` varchar(15) DEFAULT NULL,'
      '  `membro_congregado` varchar(15) DEFAULT NULL,'
      '  `dta_inclusao` date DEFAULT NULL,'
      '  `USUARIO_CADASTRO` varchar(20) DEFAULT NULL,'
      '  `SITUACAO` varchar(50) DEFAULT NULL,'
      '  `cod_congregacao` int(11) NOT NULL,'
      '  `cod_situacao` int(11) DEFAULT NULL,'
      '  PRIMARY KEY (`cod_pessoa`),'
      '  KEY `tb_pessoa_tb_congregacao_fk` (`cod_congregacao`),'
      
        '  CONSTRAINT `tb_pessoa_tb_congregacao_fk` FOREIGN KEY (`cod_con' +
        'gregacao`) REFERENCES `tb_congregacao` (`cod_congregacao`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;'
      ''
      '-- Copiando estrutura para tabela igreja.tb_pessoa_situacao'
      'CREATE TABLE IF NOT EXISTS `tb_pessoa_situacao` ('
      '  `cod_situacao` int(11) NOT NULL AUTO_INCREMENT,'
      '  `situacao` varchar(45) DEFAULT NULL,'
      '  PRIMARY KEY (`cod_situacao`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;'
      ''
      '-- Copiando estrutura para tabela igreja.tb_professor'
      'CREATE TABLE IF NOT EXISTS `tb_professor` ('
      '  `cod_professor` int(11) NOT NULL AUTO_INCREMENT,'
      '  `cod_pessoa` int(11) NOT NULL,'
      '  `nome` varchar(50) DEFAULT NULL,'
      '  `usuario_cadastro` varchar(20) DEFAULT NULL,'
      
        '  `dta_cadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPD' +
        'ATE CURRENT_TIMESTAMP,'
      '  `status` varchar(10) DEFAULT '#39'ATIVO'#39','
      '  PRIMARY KEY (`cod_professor`),'
      '  KEY `fk_pessoa_prof` (`cod_pessoa`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;'
      ''
      ''
      '-- Copiando estrutura para tabela igreja.tb_recibo'
      'CREATE TABLE IF NOT EXISTS `tb_recibo` ('
      '  `cod_recibo` int(11) NOT NULL AUTO_INCREMENT,'
      '  `descricao` varchar(255) NOT NULL,'
      '  `data_recibo` date NOT NULL,'
      '  `valor` double NOT NULL,'
      '  `endereco` varchar(255) NOT NULL,'
      '  `bairro` varchar(100) DEFAULT NULL,'
      '  `cidade` varchar(100) NOT NULL,'
      '  `uf` varchar(2) NOT NULL,'
      '  `cpf` varchar(25) NOT NULL,'
      '  `cod_operacao` int(11) DEFAULT NULL,'
      '  `data_lancamento` date DEFAULT NULL,'
      '  `cod_congregacao` int(11) DEFAULT NULL,'
      '  PRIMARY KEY (`cod_recibo`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;'
      ''
      ''
      '-- Copiando estrutura para tabela igreja.tb_recibo_tipo'
      'CREATE TABLE IF NOT EXISTS `tb_recibo_tipo` ('
      '  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,'
      '  `desc_tipo` varchar(45) DEFAULT NULL,'
      '  PRIMARY KEY (`id_tipo`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=latin1;'
      ''
      
        '-- Copiando dados para a tabela igreja.tb_recibo_tipo: ~2 rows (' +
        'aproximadamente)'
      '/*!40000 ALTER TABLE `tb_recibo_tipo` DISABLE KEYS */;'
      'INSERT INTO `tb_recibo_tipo` (`id_tipo`, `desc_tipo`) VALUES'
      #9'(272, '#39'Doa'#231#227'o Assistencial'#39'),'
      #9'(274, '#39'Doa'#231#227'o Evangel'#237'stica'#39');'
      '/*!40000 ALTER TABLE `tb_recibo_tipo` ENABLE KEYS */;'
      ''
      '-- Copiando estrutura para tabela igreja.tb_setor'
      'CREATE TABLE IF NOT EXISTS `tb_setor` ('
      '  `cod_setor` int(11) NOT NULL AUTO_INCREMENT,'
      '  `setor` varchar(45) DEFAULT NULL,'
      '  `cod_igreja` int(11) NOT NULL,'
      '  `cod_congregacao` int(11) DEFAULT NULL,'
      '  `data_cadastro` date DEFAULT NULL,'
      '  `usuario_cadastro` int(11) DEFAULT NULL,'
      '  PRIMARY KEY (`cod_setor`),'
      '  KEY `tb_setor_tb_igreja_fk` (`cod_igreja`),'
      '  KEY `tb_setor_tb_congregacao_fk` (`cod_congregacao`),'
      '  KEY `tb_setor_tb_usuario_fk` (`usuario_cadastro`),'
      
        '  CONSTRAINT `tb_setor_tb_congregacao_fk` FOREIGN KEY (`cod_cong' +
        'regacao`) REFERENCES `tb_congregacao` (`cod_congregacao`),'
      
        '  CONSTRAINT `tb_setor_tb_igreja_fk` FOREIGN KEY (`cod_igreja`) ' +
        'REFERENCES `tb_igreja` (`cod_igreja`),'
      
        '  CONSTRAINT `tb_setor_tb_usuario_fk` FOREIGN KEY (`usuario_cada' +
        'stro`) REFERENCES `tb_usuario` (`codigo`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;'
      ''
      ''
      '-- Copiando estrutura para tabela igreja.tb_tesouraria'
      'CREATE TABLE IF NOT EXISTS `tb_tesouraria` ('
      '  `cod_entrada` int(11) NOT NULL AUTO_INCREMENT,'
      '  `nro_documento` int(11) DEFAULT NULL,'
      '  `dta_movimento` date DEFAULT NULL,'
      '  `dta_inclusao` datetime DEFAULT CURRENT_TIMESTAMP,'
      '  `usuario_inclusao` varchar(50) DEFAULT NULL,'
      '  `descricao` varchar(50) DEFAULT NULL,'
      '  `valor` double DEFAULT NULL,'
      '  `tipo` varchar(20) DEFAULT '#39'ENTRADA'#39','
      '  `status` varchar(20) DEFAULT '#39'ABERTO'#39','
      '  `cod_congregacao` int(11) NOT NULL,'
      '  `situacao` int(11) DEFAULT NULL,'
      '  `cod_tipo_saida` int(11) DEFAULT NULL,'
      '  `id_centro_custo` int(11) DEFAULT NULL,'
      '  `id_tipo_lancamento` int(11) DEFAULT NULL,'
      '  `id_forma_pagamento` int(11) DEFAULT NULL,'
      '  `id_fornecedor` int(11) DEFAULT NULL,'
      '  `id_tipo_culto` int(11) DEFAULT NULL,'
      '  PRIMARY KEY (`cod_entrada`),'
      '  KEY `tb_tesouraria_tb_congregacao_fk` (`cod_congregacao`),'
      '  KEY `tb_tesouraria_centro_custo_fk_idx` (`id_centro_custo`),'
      
        '  KEY `tb_tesouraria_tb_tipo_lancamento_fk_idx` (`id_tipo_lancam' +
        'ento`),'
      '  KEY `tb_tesouratia_forma_pgto_fk_idx` (`id_forma_pagamento`),'
      '  KEY `tb_tesouraria_fornecedor_fk_idx` (`id_fornecedor`),'
      '  KEY `tb_tesouraria_tipo_culto_fk_idx` (`id_tipo_culto`),'
      
        '  CONSTRAINT `tb_tesouraria_tb_congregacao_fk` FOREIGN KEY (`cod' +
        '_congregacao`) REFERENCES `tb_congregacao` (`cod_congregacao`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=latin1;'
      ''
      ''
      '-- Copiando estrutura para tabela igreja.tb_usuario'
      'CREATE TABLE IF NOT EXISTS `tb_usuario` ('
      '  `codigo` int(11) NOT NULL AUTO_INCREMENT,'
      '  `usuario` varchar(12) DEFAULT NULL,'
      '  `senha` varchar(12) DEFAULT NULL,'
      '  `setor` varchar(50) DEFAULT NULL,'
      '  `status` varchar(20) DEFAULT NULL,'
      '  `tema` varchar(50) DEFAULT '#39'LUNA'#39','
      '  PRIMARY KEY (`codigo`),'
      '  UNIQUE KEY `Codigo` (`codigo`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;'
      ''
      
        '-- Copiando dados para a tabela igreja.tb_usuario: ~6 rows (apro' +
        'ximadamente)'
      '/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;'
      
        'INSERT INTO `tb_usuario` (`codigo`, `usuario`, `senha`, `setor`,' +
        ' `status`, `tema`) VALUES'
      #9'(1, '#39'ADMIN'#39', '#39'tosjg'#39', '#39#39', '#39#39', '#39'Luna'#39');'
      '/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;'
      ''
      '-- Copiando estrutura para tabela igreja.tb_usuarios_acao_acesso'
      'CREATE TABLE IF NOT EXISTS `tb_usuarios_acao_acesso` ('
      '  `cod_usuario` int(11) NOT NULL,'
      '  `cod_acao_acesso` int(11) NOT NULL,'
      '  `ativo` bit(1) NOT NULL DEFAULT b'#39'1'#39','
      '  PRIMARY KEY (`cod_usuario`,`cod_acao_acesso`),'
      
        '  KEY `tb_usuarios_acao_acesso_tb_acao_acesso_fk` (`cod_acao_ace' +
        'sso`),'
      
        '  CONSTRAINT `tb_usuarios_acao_acesso_tb_acao_acesso_fk` FOREIGN' +
        ' KEY (`cod_acao_acesso`) REFERENCES `tb_acao_acesso` (`cod_acao_' +
        'acesso`),'
      
        '  CONSTRAINT `tb_usuarios_acao_acesso_tb_usuario_fk` FOREIGN KEY' +
        ' (`cod_usuario`) REFERENCES `tb_usuario` (`codigo`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;'
      ''
      #9
      '-- Copiando estrutura para tabela igreja.tipo_centro_custo'
      'CREATE TABLE IF NOT EXISTS `tipo_centro_custo` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `descricao` varchar(50) NOT NULL,'
      '  PRIMARY KEY (`id`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;'
      ''
      
        '-- Copiando dados para a tabela igreja.tipo_centro_custo: ~2 row' +
        's (aproximadamente)'
      '/*!40000 ALTER TABLE `tipo_centro_custo` DISABLE KEYS */;'
      'INSERT INTO `tipo_centro_custo` (`id`, `descricao`) VALUES'
      #9'(1, '#39'RECEITA'#39'),'
      #9'(2, '#39'DESPESA'#39');'
      '/*!40000 ALTER TABLE `tipo_centro_custo` ENABLE KEYS */;'
      ''
      '-- Copiando estrutura para tabela igreja.tipo_culto'
      'CREATE TABLE IF NOT EXISTS `tipo_culto` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `descricao` varchar(100) NOT NULL,'
      '  `objetivo` varchar(100) NOT NULL,'
      '  PRIMARY KEY (`id`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;'
      ''
      
        '-- Copiando dados para a tabela igreja.tipo_culto: ~7 rows (apro' +
        'ximadamente)'
      '/*!40000 ALTER TABLE `tipo_culto` DISABLE KEYS */;'
      'INSERT INTO `tipo_culto` (`id`, `descricao`, `objetivo`) VALUES'
      #9'(1, '#39'CULTO DE SANTA CEIA'#39', '#39'CELEBRAR A SANTA CEIA'#39'),'
      #9'(2, '#39'CULTO DE DOUTRINA'#39', '#39'ENSINO DA PALAVRA PELO PASTOR'#39'),'
      #9'(3, '#39'CULTO DE MISS'#213'ES'#39', '#39'COM A TEM'#193'TICA DE MISS'#213'ES'#39'),'
      #9'(4, '#39'CULTO DE SENHORAS'#39', '#39'DIRIGIDO PELO DEPATAMENTO FEMININO'#39'),'
      
        #9'(5, '#39'CULTO DE MOCIDADE'#39', '#39'DIRIGIDO PELO DEPARTAMENTO DE JOVENS'#39 +
        '),'
      
        #9'(6, '#39'CULTO DO NOVO VIVER'#39', '#39'DIRIGIDO PELOS LIDERES DOS NOVOS CO' +
        'NVERTIDOS'#39'),'
      #9'(7, '#39'CULTO INFANTIL'#39', '#39'DEPATAMENTO INFANTIL'#39');'
      '/*!40000 ALTER TABLE `tipo_culto` ENABLE KEYS */;'
      ''
      '-- Copiando estrutura para tabela igreja.tipo_lancamento'
      'CREATE TABLE IF NOT EXISTS `tipo_lancamento` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `codigo` varchar(10) DEFAULT NULL,'
      '  `descricao` varchar(45) DEFAULT NULL,'
      '  `id_tipo_centro_custo` int(11) DEFAULT NULL,'
      '  `id_pai` int(11) DEFAULT NULL,'
      '  PRIMARY KEY (`id`),'
      '  KEY `kf_tipo_cc_idx` (`id_tipo_centro_custo`),'
      
        '  CONSTRAINT `kf_tipo_cc` FOREIGN KEY (`id_tipo_centro_custo`) R' +
        'EFERENCES `tipo_centro_custo` (`id`) ON DELETE NO ACTION ON UPDA' +
        'TE NO ACTION'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;'
      ''
      '-- Copiando estrutura para tabela igreja.tipo_saida'
      'CREATE TABLE IF NOT EXISTS `tipo_saida` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `tipo` varchar(50) NOT NULL,'
      '  `descricao` varchar(100) NOT NULL,'
      '  PRIMARY KEY (`id`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;'
      ''
      
        '-- Copiando dados para a tabela igreja.tipo_saida: ~3 rows (apro' +
        'ximadamente)'
      '/*!40000 ALTER TABLE `tipo_saida` DISABLE KEYS */;'
      'INSERT INTO `tipo_saida` (`id`, `tipo`, `descricao`) VALUES'
      #9'(1, '#39'FIXA'#39', '#39'DESPESAS FIXAS MENSAIS'#39'),'
      #9'(2, '#39'VARIAVEL'#39', '#39'DESPESAS QUE VARIAM'#39'),'
      #9'(3, '#39'INVESTIMENTO'#39', '#39'COMPRA DE TERRENO, IM'#211'VEL'#39');'
      '/*!40000 ALTER TABLE `tipo_saida` ENABLE KEYS */;'
      ''
      '-- Copiando estrutura para view igreja.v_dizimistas'
      
        '-- Criando tabela tempor'#225'ria para evitar erros de depend'#234'ncia de' +
        ' VIEW'
      'CREATE TABLE `v_dizimistas` ('
      #9'`cod_dizimo` INT(11) NULL,'
      #9'`cod_talao` INT(11) NULL,'
      #9'`cod_cheque` INT(11) NULL,'
      #9'`nome` VARCHAR(50) NULL COLLATE '#39'latin1_swedish_ci'#39','
      #9'`valor` DOUBLE NULL,'
      #9'`data` DATE NULL,'
      #9'`cargo` VARCHAR(50) NULL COLLATE '#39'latin1_swedish_ci'#39','
      #9'`cod_congregacao` INT(11) NULL,'
      #9'`nivel` BIGINT(20) NOT NULL,'
      #9'`rol` VARCHAR(15) NULL COLLATE '#39'latin1_swedish_ci'#39
      ') ENGINE=MyISAM;'
      ''
      '-- Copiando estrutura para view igreja.v_dizimista_total_mes_ano'
      
        '-- Criando tabela tempor'#225'ria para evitar erros de depend'#234'ncia de' +
        ' VIEW'
      'CREATE TABLE `v_dizimista_total_mes_ano` ('
      #9'`nome` VARCHAR(50) NULL COLLATE '#39'latin1_swedish_ci'#39','
      #9'`valor` DOUBLE NULL,'
      #9'`nro_mes` INT(2) NULL,'
      #9'`ano` INT(4) NULL'
      ') ENGINE=MyISAM;'
      ''
      '-- Copiando estrutura para view igreja.v_lancamentos_total'
      
        '-- Criando tabela tempor'#225'ria para evitar erros de depend'#234'ncia de' +
        ' VIEW'
      'CREATE TABLE `v_lancamentos_total` ('
      #9'`valor` DOUBLE NULL,'
      #9'`tipo` VARCHAR(20) NULL COLLATE '#39'latin1_swedish_ci'#39','
      #9'`data` DATE NULL,'
      #9'`ano` INT(4) NULL,'
      #9'`mes` INT(2) NULL,'
      #9'`semana` INT(2) NULL,'
      #9'`dia` INT(1) NULL'
      ') ENGINE=MyISAM;'
      ''
      '-- Copiando estrutura para view igreja.v_dizimista_total_mes_ano'
      '-- Removendo tabela tempor'#225'ria e criando a estrutura VIEW final'
      'DROP TABLE IF EXISTS `v_dizimista_total_mes_ano`;'
      
        'CREATE ALGORITHM=UNDEFINED DEFINER=`igreja`@`localhost` SQL SECU' +
        'RITY DEFINER VIEW `v_dizimista_total_mes_ano` AS select `x`.`nom' +
        'e` AS `nome`,sum(`x`.`valor`) AS `valor`,`x`.`nro_mes` AS `nro_m' +
        'es`,`x`.`ano` AS `ano` from (select `igreja`.`tb_dizimista`.`nom' +
        'e` AS `nome`,`igreja`.`tb_dizimista`.`data` AS `data`,`igreja`.`' +
        'tb_dizimista`.`valor` AS `valor`,month(`igreja`.`tb_dizimista`.`' +
        'data`) AS `nro_mes`,year(`igreja`.`tb_dizimista`.`data`) AS `ano' +
        '` from `igreja`.`tb_dizimista`) `x` group by `x`.`nome`,`x`.`nro' +
        '_mes`,`x`.`ano` order by `x`.`nome`,`x`.`nro_mes` ;'
      ''
      '-- Copiando estrutura para view igreja.v_lancamentos_total'
      '-- Removendo tabela tempor'#225'ria e criando a estrutura VIEW final'
      'DROP TABLE IF EXISTS `v_lancamentos_total`;'
      
        'CREATE ALGORITHM=UNDEFINED DEFINER=`igreja`@`localhost` SQL SECU' +
        'RITY DEFINER VIEW `v_lancamentos_total` AS select `x`.`valor` AS' +
        ' `valor`,`x`.`tipo` AS `tipo`,`x`.`data` AS `data`,`x`.`ano` AS ' +
        '`ano`,`x`.`mes` AS `mes`,`x`.`semana` AS `semana`,`x`.`dia` AS `' +
        'dia` from (select sum(`t`.`valor`) AS `valor`,`t`.`tipo` AS `tip' +
        'o`,`t`.`dta_movimento` AS `data`,year(`t`.`dta_movimento`) AS `a' +
        'no`,month(`t`.`dta_movimento`) AS `mes`,week(`t`.`dta_movimento`' +
        ',0) AS `semana`,weekday(`t`.`dta_movimento`) AS `dia` from (`igr' +
        'eja`.`tb_tesouraria` `t` join `igreja`.`tb_parametro_sistema` `a' +
        '` on((`a`.`cod_congregacao` = `t`.`cod_congregacao`))) group by ' +
        'year(`t`.`dta_movimento`),month(`t`.`dta_movimento`),`t`.`tipo`,' +
        '`t`.`dta_movimento`) `x` ;')
    Left = 312
    Top = 136
  end
end
