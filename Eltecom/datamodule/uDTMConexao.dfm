object dtmPrincipal: TdtmPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
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
      'SELECT cod_congregacao'
      'FROM tb_parametro_sistema')
    Left = 48
    Top = 96
    object fdtncfldCong_sistemacod_congregacao: TFDAutoIncField
      FieldName = 'cod_congregacao'
      Origin = 'cod_congregacao'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
  object fdqryCriartb_dept_pessoa: TFDQuery
    Connection = ConexaoDB
    SQL.Strings = (
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
      ')')
    Left = 544
    Top = 24
  end
  object fdqryCriartb_congregacao: TFDQuery
    Connection = ConexaoDB
    SQL.Strings = (
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
      '  PRIMARY KEY (`cod_congregacao`),'
      '  KEY `tb_congregacao_tb_setor_fk` (`cod_setor`),'
      '  KEY `tb_congregacao_tb_igreja_fk` (`cod_igreja`),'
      
        '  CONSTRAINT `tb_congregacao_tb_igreja_fk` FOREIGN KEY (`cod_igr' +
        'eja`) REFERENCES `tb_igreja` (`cod_igreja`)'
      ');')
    Left = 544
    Top = 88
  end
  object fdqryCriartb_departamento: TFDQuery
    Connection = ConexaoDB
    SQL.Strings = (
      'CREATE TABLE IF NOT EXISTS `tb_departamento` ('
      '  `cod_departamento` int(11) NOT NULL AUTO_INCREMENT,'
      '  `nome_departamento` varchar(50) DEFAULT NULL,'
      '  PRIMARY KEY (`cod_departamento`)'
      ') ')
    Left = 408
    Top = 24
  end
  object fdqryCriartb_funcao: TFDQuery
    Connection = ConexaoDB
    SQL.Strings = (
      'CREATE TABLE IF NOT EXISTS `tb_funcao` ('
      '  `cod_funcao` int(11) NOT NULL AUTO_INCREMENT,'
      '  `funcao` varchar(50) DEFAULT NULL,'
      '  `cod_departamento` int(11) DEFAULT NULL,'
      '  `nome_departamento` varchar(50) DEFAULT NULL,'
      '  PRIMARY KEY (`cod_funcao`)'
      ')')
    Left = 408
    Top = 88
  end
  object fdqryCriartb_seguranca: TFDQuery
    Connection = ConexaoDB
    SQL.Strings = (
      'CREATE TABLE IF NOT EXISTS `tb_seguranca` ('
      '  `codigo_modulo` int(11) DEFAULT NULL,'
      '  `nome_modulo` varchar(50) DEFAULT NULL,'
      '  `cod_usuario` int(11) DEFAULT NULL,'
      '  `nome_usuario` varchar(50) DEFAULT NULL,'
      '  `acessar` varchar(3) DEFAULT '#39'N'#195'O'#39','
      '  `inserir` varchar(3) DEFAULT '#39'N'#195'O'#39','
      '  `excluir` varchar(3) DEFAULT '#39'N'#195'O'#39','
      '  `editar` varchar(3) DEFAULT '#39'N'#195'O'#39
      ')')
    Left = 416
    Top = 144
  end
  object fdqryCriartb_usuario: TFDQuery
    Connection = ConexaoDB
    SQL.Strings = (
      'CREATE TABLE IF NOT EXISTS `tb_usuario` ('
      '  `codigo` int(11) NOT NULL AUTO_INCREMENT,'
      '  `usuario` varchar(12) DEFAULT NULL,'
      '  `senha` varchar(12) DEFAULT NULL,'
      '  `setor` varchar(50) DEFAULT NULL,'
      '  `status` varchar(20) DEFAULT NULL,'
      '  `tema` varchar(50) DEFAULT '#39'LUNA'#39','
      '  PRIMARY KEY (`codigo`),'
      '  UNIQUE KEY `C'#195#179'digo` (`codigo`)'
      ')')
    Left = 552
    Top = 144
  end
  object fdqrySetores: TFDQuery
    Active = True
    Connection = ConexaoDB
    SQL.Strings = (
      'SELECT cod_setor, setor'
      'FROM igreja.tb_setor;')
    Left = 560
    Top = 240
  end
end
