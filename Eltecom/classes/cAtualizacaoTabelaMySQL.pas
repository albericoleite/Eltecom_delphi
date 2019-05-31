unit cAtualizacaoTabelaMySQL;

interface
uses System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils,
  cAtualizacaoBancoDeDados,cCadUsuario;

type
 TAtualizacaoTabelaMySQL = class(TAtualizaBancoDados)

 private
  function  TabelaExiste(aNomeTabela:String):Boolean;
  procedure Igreja;
  procedure Cargo;
    procedure Dizimista;
    procedure Departamento;
    procedure Usuario;
    procedure AcaoAcesso;
    procedure Recibo;
    procedure ReciboTipo;
    procedure UsuarioAcaoAcesso;
    procedure Setor;
    procedure ParametroSistema;
    procedure Classe;
    procedure ClasseAluno;
    procedure ClasseProfessor;
    procedure Professor;
    procedure Pessoa;
    procedure Congregacao;
    procedure DepartamentoPessoa;
    procedure Funcao;
    procedure FuncaoPessoa;
    procedure ObreiroCargo;
    procedure ParametroServidor;
    procedure Tesouraria;

 protected

 public

   constructor Create(aConexao: TFDConnection);
   destructor Destroy; override;
 end;

implementation

{ AtualizacaoTabelaMySQL }

constructor TAtualizacaoTabelaMySQL.Create(aConexao: TFDConnection);
begin
  ConexaoDB := aConexao;
  Igreja;
  Cargo;
  Dizimista;
  Departamento;
  Usuario;
  Pessoa;
  AcaoAcesso;
  Recibo;
  ReciboTipo;
  UsuarioAcaoAcesso;
  Setor;
  ParametroSistema;
  Classe;
  ClasseAluno;
  Professor;
  ClasseProfessor;
  Congregacao;
  DepartamentoPessoa;
  Funcao;
  FuncaoPessoa;
  ObreiroCargo;
  ParametroServidor;
  Tesouraria;

end;

destructor TAtualizacaoTabelaMySQL.Destroy;
begin

  inherited;
end;

function TAtualizacaoTabelaMySQL.TabelaExiste(aNomeTabela: String): Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := False;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT count(DISTINCT TABLE_NAME) as ID '+
    ' FROM INFORMATION_SCHEMA.TABLES  '+
    ' WHERE TABLE_NAME = :NomeTabela  '+
    ' and TABLE_SCHEMA ='+QuotedStr('igreja'));
    Qry.ParamByName('NomeTabela').AsString := aNomeTabela;
    Qry.Open;

    if Qry.FieldByName('ID').AsInteger>0 then
     Result := True;

  finally
    Qry.Close;
    if Assigned(Qry) then
      FreeAndNil(Qry)
  end;
end;

procedure TAtualizacaoTabelaMySQL.Igreja;
begin
   if not TabelaExiste('tb_igreja') then
   begin
     ExecutaDiretoBancoDeDados(
          '   CREATE TABLE IF NOT EXISTS `tb_igreja` ( '+
          ' `cod_igreja` int(11) NOT NULL AUTO_INCREMENT, '+
          ' `nome_igreja` varchar(50) DEFAULT NULL, '+
          ' `cidade` varchar(50) DEFAULT NULL, '+
          ' `dta_fundacao` date DEFAULT NULL,   '+
          ' `nome_presidente` varchar(50) DEFAULT NULL,   '+
          ' `dta_inclusao` datetime DEFAULT NULL, '+
          ' `sigla_igreja` varchar(20) DEFAULT NULL, '+
          ' `site` varchar(50) DEFAULT NULL,  '+
          ' `email` varchar(50) DEFAULT NULL,  '+
          ' `cnpj` varchar(50) DEFAULT NULL,  '+
          ' `logradouro` varchar(50) DEFAULT NULL, '+
          ' `bairro` varchar(50) DEFAULT NULL, '+
          ' `uf` varchar(2) DEFAULT NULL,  '+
          ' `fone` varchar(25) DEFAULT NULL,  '+
          ' `foto` mediumblob, '+
          ' `percentual_ajuste` int(11) DEFAULT '+'35'+', '+
          ' `sistema` int(11) NOT NULL DEFAULT '+'0'+', '+
          ' `situacao` int(11) NOT NULL DEFAULT '+'0'+', '+
          ' PRIMARY KEY (`cod_igreja`)  '+
          ' )');
   end;

end;

procedure TAtualizacaoTabelaMySQL.AcaoAcesso;
begin
   if not TabelaExiste('tb_acao_acesso') then
   begin
     ExecutaDiretoBancoDeDados('CREATE TABLE `tb_acao_acesso` ( '+
  ' `cod_acao_acesso` INT NOT NULL AUTO_INCREMENT, '+
  ' `descricao` VARCHAR(100) NOT NULL, '+
  ' `chave` VARCHAR(60) NOT NULL, '+
  ' PRIMARY KEY (`cod_acao_acesso`))');
   end;
end;

procedure TAtualizacaoTabelaMySQL.Cargo;
begin
   if not TabelaExiste('tb_cargo') then
   begin
     ExecutaDiretoBancoDeDados(
          '  CREATE TABLE  `tb_cargo` (  '+
          ' `cod_cargo` int(10) NOT NULL AUTO_INCREMENT, '+
          ' `cargo` varchar(50) DEFAULT NULL, '+
          ' `nivel` int(11) NOT NULL DEFAULT 0, '+
          ' PRIMARY KEY (`cod_cargo`) '+
          ' )');

          ExecutaDiretoBancoDeDados('INSERT INTO tb_cargo (cargo,nivel) VALUES  '+
        ' ('+QuotedStr('COOPERADOR')+',1)   '+
' ,('+QuotedStr('AUXILIAR DE CONGREGAÇÃO')+',2)   '+
' ,('+QuotedStr('AUXILIAR')+',3)   '+
' ,('+QuotedStr('DIÁCONO')+',4)   '+
' ,('+QuotedStr('PRESBITERO')+',5)  '+
' ,('+QuotedStr('EVANGELISTA')+',6)   '+
' ,('+QuotedStr('PASTOR')+',7)  '+
' ;');

   end;

end;

procedure TAtualizacaoTabelaMySQL.Dizimista;
begin
   if not TabelaExiste('tb_dizimista') then
   begin
     ExecutaDiretoBancoDeDados(
          '  CREATE TABLE `tb_dizimista` ( '+
  ' `cod_dizimo` int(11) NOT NULL AUTO_INCREMENT, '+
  ' `cod_talao` int(11) DEFAULT NULL, '+
  ' `cod_cheque` int(11) DEFAULT NULL, '+
  ' `nome` varchar(50) DEFAULT NULL, '+
  ' `valor` double DEFAULT NULL, '+
  ' `data` date DEFAULT NULL, '+
  ' `cargo` varchar(50) DEFAULT NULL, '+
  ' `cod_congregacao` int(11) NOT NULL,  '+
  ' PRIMARY KEY (`cod_dizimo`),  '+
  ' KEY `tb_dizimista_tb_congregacao_fk` (`cod_congregacao`),'+
  ' CONSTRAINT `tb_dizimista_tb_congregacao_fk` FOREIGN KEY (`cod_congregacao`) REFERENCES `tb_congregacao` (`cod_congregacao`)  '+
  ' )');
   end;

end;

procedure TAtualizacaoTabelaMySQL.Departamento;
begin
   if not TabelaExiste('tb_departamento') then
   begin
     ExecutaDiretoBancoDeDados(
     ' CREATE TABLE `tb_departamento` ( '+
      ' `cod_departamento` int(11) NOT NULL AUTO_INCREMENT, '+
      ' `nome_departamento` varchar(50) DEFAULT NULL, '+
      ' PRIMARY KEY (`cod_departamento`) '+
      ' )');
   end;

end;

procedure TAtualizacaoTabelaMySQL.DepartamentoPessoa;
begin
   if not TabelaExiste('tb_dept_pessoa') then
   begin
     ExecutaDiretoBancoDeDados(
     ' CREATE TABLE `tb_dept_pessoa` (  '+
  ' `cod_dept_pessoa` int(25) NOT NULL AUTO_INCREMENT,  '+
  ' `cod_departamento` int(25) NOT NULL,  '+
  ' `nome_departamento` varchar(50) DEFAULT NULL,  '+
  ' `cod_pessoa` int(25) DEFAULT NULL,   '+
  ' `nome_pessoa` varchar(50) DEFAULT NULL,  '+
  ' `dta_inclusao` datetime DEFAULT CURRENT_TIMESTAMP,  '+
  ' `dta_alteracao` datetime DEFAULT NULL, '+
  ' `status` varchar(1) DEFAULT NULL, '+
  ' `usuario_inclusao` varchar(50) DEFAULT NULL, '+
  ' `usuario_alteracao` varchar(50) DEFAULT NULL,  '+
  ' PRIMARY KEY (`cod_dept_pessoa`) '+
  ' )');
   end;
end;

procedure TAtualizacaoTabelaMySQL.Funcao;
begin
   if not TabelaExiste('tb_funcao') then
   begin
     ExecutaDiretoBancoDeDados(
     ' CREATE TABLE `tb_funcao` (   '+
  ' `cod_funcao` int(11) NOT NULL AUTO_INCREMENT,  '+
  ' `funcao` varchar(50) DEFAULT NULL,    '+
  ' `cod_departamento` int(11) DEFAULT NULL,  '+
  ' `nome_departamento` varchar(50) DEFAULT NULL,  '+
  ' PRIMARY KEY (`cod_funcao`)    '+
  ' )');
   end;
end;

procedure TAtualizacaoTabelaMySQL.FuncaoPessoa;
begin
   if not TabelaExiste('tb_func_pessoa') then
   begin
     ExecutaDiretoBancoDeDados(
     ' CREATE TABLE `tb_func_pessoa` (  '+
  ' `cod_func_pessoa` int(11) NOT NULL AUTO_INCREMENT, '+
  ' `cod_funcao` int(25) NOT NULL,      '+
  ' `nome_funcao` varchar(50) DEFAULT NULL, '+
  ' `cod_pessoa` int(11) DEFAULT NULL,     '+
  ' `nome_pessoa` varchar(50) DEFAULT NULL,  '+
  ' `dta_inclusao` datetime DEFAULT CURRENT_TIMESTAMP,  '+
  ' `status` varchar(20) DEFAULT NULL ,   '+
  ' `dta_alteracao` datetime DEFAULT NULL,  '+
  ' `usuario_inclusao` varchar(50) DEFAULT NULL,  '+
  ' `usuario_alteracao` varchar(50) DEFAULT NULL,  '+
  ' PRIMARY KEY (`cod_func_pessoa`)    '+
  ' )');
   end;
end;

procedure TAtualizacaoTabelaMySQL.ObreiroCargo;
begin
   if not TabelaExiste('tb_obreiro_cargo') then
   begin
     ExecutaDiretoBancoDeDados(
     ' CREATE TABLE `tb_obreiro_cargo` (    '+
  ' `COD_CARG_PESSOA` int(10) NOT NULL AUTO_INCREMENT,   '+
  ' `COD_MEMBRO` int(10) NOT NULL,  '+
  ' `NOME` varchar(50) DEFAULT NULL,   '+
  ' `COD_CARGO` int(10) DEFAULT NULL, '+
  ' `CARGO` varchar(50) DEFAULT NULL,  '+
  ' `STATUS` varchar(1) DEFAULT '+QuotedStr('0')+',   '+
  ' `COD_CONGREGACAO` int(10) DEFAULT NULL,  '+
  ' PRIMARY KEY (`COD_CARG_PESSOA`)  '+
  ' )');
   end;
end;

procedure TAtualizacaoTabelaMySQL.Usuario;
var oUsuario:Tusuario;
begin
   if not TabelaExiste('tb_usuario') then
   begin
     ExecutaDiretoBancoDeDados(
     ' CREATE TABLE `tb_usuario` (  '+
  ' `codigo` int(11) NOT NULL AUTO_INCREMENT, '+
  ' `usuario` varchar(12) DEFAULT NULL, '+
  ' `senha` varchar(12) DEFAULT NULL, '+
  ' `setor` varchar(50) DEFAULT NULL, '+
  ' `status` varchar(20) DEFAULT NULL, '+
  ' `tema` varchar(50) DEFAULT '+'LUNA'+',  '+
  ' PRIMARY KEY (`codigo`), '+
  ' UNIQUE KEY `Codigo` (`codigo`)  '+
  ' )');
   end;

   try
    oUsuario:=TUsuario.Create(ConexaoDB);
    oUsuario.usuario:='ADMIN';
    oUsuario.senha:='admin';
    oUsuario.status:='ATIVO';
    if not oUsuario.UsuarioExiste(oUsuario.usuario) then
       oUsuario.Inserir;
   finally
      if Assigned(oUsuario) then
       FreeAndNil(oUsuario);
   end;

end;

procedure TAtualizacaoTabelaMySQL.Recibo;
begin
   if not TabelaExiste('tb_recibo') then
   begin
     ExecutaDiretoBancoDeDados(
     ' CREATE TABLE `tb_recibo` ( '+
  ' `cod_recibo` int(11) NOT NULL AUTO_INCREMENT, '+
  ' `descricao` varchar(255) NOT NULL,  '+
  ' `data_recibo` date NOT NULL,   '+
  ' `valor` double NOT NULL,   '+
  ' `endereco` varchar(255) NOT NULL,   '+
  ' `bairro` varchar(100) DEFAULT NULL,  '+
  ' `cidade` varchar(100) NOT NULL,  '+
  ' `uf` varchar(2) NOT NULL,   '+
  ' `cpf` varchar(25) NOT NULL, '+
  ' `cod_operacao` int(11) DEFAULT NULL,  '+
  ' `data_lancamento` date DEFAULT NULL,  '+
  ' `cod_congregacao` int(11) DEFAULT NULL, '+
  ' PRIMARY KEY (`cod_recibo`) ) ');
   end;

end;

procedure TAtualizacaoTabelaMySQL.ReciboTipo;
begin
   if not TabelaExiste('tb_recibo_tipo') then
   begin
     ExecutaDiretoBancoDeDados(
     ' CREATE TABLE `tb_recibo_tipo` (  '+
  ' `id_tipo` int(11) NOT NULL AUTO_INCREMENT, '+
  ' `desc_tipo` varchar(45) DEFAULT NULL,  '+
  ' PRIMARY KEY (`id_tipo`)) ');

  ExecutaDiretoBancoDeDados('INSERT INTO tb_recibo_tipo '+
  ' (id_tipo, desc_tipo) VALUES(272,'+QuotedStr('Doação Assistencial')+')');
    ExecutaDiretoBancoDeDados('INSERT INTO tb_recibo_tipo '+
  ' (id_tipo, desc_tipo) VALUES(274,'+QuotedStr('Doação Evangelística')+')');
 end;
end;

procedure TAtualizacaoTabelaMySQL.UsuarioAcaoAcesso;
begin
   if not TabelaExiste('tb_usuarios_acao_acesso') then
   begin
     ExecutaDiretoBancoDeDados(
     ' CREATE TABLE tb_usuarios_acao_acesso (  '+
	' cod_usuario int NOT NULL,  '+
	' cod_acao_acesso int NOT NULL,  '+
	' ativo bit DEFAULT 1 NOT NULL,  '+
	' CONSTRAINT tb_usuarios_acao_acesso_pk PRIMARY KEY (cod_usuario,cod_acao_acesso), '+
	' CONSTRAINT tb_usuarios_acao_acesso_tb_usuario_fk FOREIGN KEY (cod_usuario) REFERENCES igreja.tb_usuario(codigo), '+
	' CONSTRAINT tb_usuarios_acao_acesso_tb_acao_acesso_fk FOREIGN KEY (cod_acao_acesso) REFERENCES igreja.tb_acao_acesso(cod_acao_acesso) '+
  ' )');
   end;

end;

procedure TAtualizacaoTabelaMySQL.Setor;
begin
   if not TabelaExiste('tb_setor') then
   begin
     ExecutaDiretoBancoDeDados(
     ' CREATE TABLE `tb_setor` (    '+
  ' `cod_setor` int(11) NOT NULL AUTO_INCREMENT,  '+
  ' `setor` varchar(45) DEFAULT NULL,  '+
  ' `cod_igreja` int(11) NOT NULL, '+
  ' `cod_congregacao` int(11) DEFAULT NULL,  '+
  ' `data_cadastro` date DEFAULT NULL,    '+
  ' `usuario_cadastro` int(11) DEFAULT NULL,   '+
  ' PRIMARY KEY (`cod_setor`),  '+
  ' KEY `tb_setor_tb_igreja_fk` (`cod_igreja`),   '+
  ' KEY `tb_setor_tb_congregacao_fk` (`cod_congregacao`), '+
  ' KEY `tb_setor_tb_usuario_fk` (`usuario_cadastro`),  '+
  ' CONSTRAINT `tb_setor_tb_congregacao_fk` FOREIGN KEY (`cod_congregacao`) REFERENCES `tb_congregacao` (`cod_congregacao`), '+
  ' CONSTRAINT `tb_setor_tb_igreja_fk` FOREIGN KEY (`cod_igreja`) REFERENCES `tb_igreja` (`cod_igreja`),  '+
  ' CONSTRAINT `tb_setor_tb_usuario_fk` FOREIGN KEY (`usuario_cadastro`) REFERENCES `tb_usuario` (`codigo`))');
   end;

end;

procedure TAtualizacaoTabelaMySQL.ParametroSistema;
begin
   if not TabelaExiste('tb_parametro_sistema') then
   begin
     ExecutaDiretoBancoDeDados(
     ' CREATE TABLE `tb_parametro_sistema` (  '+
     ' `cod_congregacao` int(11) NOT NULL AUTO_INCREMENT,  '+
     ' PRIMARY KEY (`cod_congregacao`))');
   end;
end;

procedure TAtualizacaoTabelaMySQL.ParametroServidor;
begin
   if not TabelaExiste('tb_parametro_servidor') then
   begin
     ExecutaDiretoBancoDeDados(
     ' CREATE TABLE `tb_parametro_servidor` (  '+
  ' `computador` varchar(20) DEFAULT NULL,   '+
  ' `ip` varchar(20) DEFAULT NULL,      '+
  ' `tipo` varchar(20) DEFAULT NULL '+
  ' ) ');
   end;
end;

procedure TAtualizacaoTabelaMySQL.Tesouraria;
begin
   if not TabelaExiste('tb_parametro_servidor') then
   begin
     ExecutaDiretoBancoDeDados(
     ' CREATE TABLE `tb_tesouraria` (    '+
  ' `cod_entrada` int(11) NOT NULL AUTO_INCREMENT,   '+
  ' `nro_documento` int(11) DEFAULT NULL,  '+
  ' `dta_movimento` date DEFAULT NULL,    '+
  ' `dta_inclusao` datetime DEFAULT CURRENT_TIMESTAMP,  '+
  ' `usuario_inclusao` varchar(50) DEFAULT NULL,  '+
  ' `descricao` varchar(50) DEFAULT NULL,  '+
  ' `valor` double DEFAULT NULL,   '+
  ' `tipo` varchar(20) DEFAULT '+QuotedStr('ENTRADA')+',   '+
  ' `status` varchar(20) DEFAULT '+QuotedStr('ABERTO')+',  '+
  ' `cod_congregacao` int(11) NOT NULL,   '+
  ' `situacao` int(11) DEFAULT NULL,  '+
  ' PRIMARY KEY (`cod_entrada`),  '+
  ' KEY `tb_tesouraria_tb_congregacao_fk` (`cod_congregacao`), '+
  ' CONSTRAINT `tb_tesouraria_tb_congregacao_fk` FOREIGN KEY (`cod_congregacao`) '+
  ' REFERENCES `tb_congregacao` (`cod_congregacao`)  '+
  ' ) ');
   end;
end;

procedure TAtualizacaoTabelaMySQL.Classe;
begin
   if not TabelaExiste('tb_classe') then
   begin
     ExecutaDiretoBancoDeDados(
     ' CREATE TABLE `tb_classe` (  '+
  ' `cod_classe` int(11) NOT NULL AUTO_INCREMENT, '+
  ' `classe` varchar(20) DEFAULT NULL,  '+
  ' `descricao` varchar(100) DEFAULT NULL,  '+
  ' PRIMARY KEY (`cod_classe`))');
   end;
end;

procedure TAtualizacaoTabelaMySQL.ClasseAluno;
begin
   if not TabelaExiste('tb_classe_aluno') then
   begin
     ExecutaDiretoBancoDeDados(
     ' CREATE TABLE `tb_classe_aluno` (  '+
  ' `codigo` int(11) NOT NULL AUTO_INCREMENT, '+
  ' `cod_aluno` int(11) DEFAULT NULL,   '+
  ' `aluno` varchar(50) DEFAULT NULL, '+
  ' `cod_classe` int(11) DEFAULT NULL, '+
  ' `classe` varchar(50) DEFAULT NULL,  '+
  ' PRIMARY KEY (`codigo`) )');
   end;
end;

procedure TAtualizacaoTabelaMySQL.Professor;
begin
   if not TabelaExiste('tb_professor') then
   begin
     ExecutaDiretoBancoDeDados(
     ' CREATE TABLE `tb_professor` ( '+
  ' `cod_professor` int(11) NOT NULL AUTO_INCREMENT,  '+
  ' `cod_pessoa` int(11) NOT NULL, '+
  ' `nome` varchar(50) DEFAULT NULL,  '+
  ' `usuario_cadastro` varchar(20) DEFAULT NULL,  '+
  ' `dta_cadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,  '+
  ' `STATUS` varchar(1) DEFAULT '+QuotedStr('0')+', '+
  ' PRIMARY KEY (`cod_professor`), '+
  ' KEY `fk_pessoa_prof` (`cod_pessoa`), '+
  ' CONSTRAINT `tb_professor_tb_pessoa_fk` FOREIGN KEY (`cod_pessoa`) REFERENCES `tb_pessoa` (`cod_pessoa`))');
   end;
end;

procedure TAtualizacaoTabelaMySQL.ClasseProfessor;
begin
   if not TabelaExiste('tb_classe_professor') then
   begin
     ExecutaDiretoBancoDeDados(
     ' CREATE TABLE `tb_classe_professor` (  '+
  ' `codigo` int(11) DEFAULT NULL,  '+
  ' `cod_professor` int(11) DEFAULT NULL,  '+
  ' `professor` varchar(20) DEFAULT NULL, '+
  ' `cod_classe` int(11) DEFAULT NULL,  '+
  ' `classe` varchar(20) DEFAULT NULL ) ');
   end;
end;

procedure TAtualizacaoTabelaMySQL.Pessoa;
 begin
   if not TabelaExiste('tb_pessoa') then
   begin
     ExecutaDiretoBancoDeDados(
     ' CREATE TABLE `tb_pessoa` (          '+
  ' `cod_pessoa` int(11) NOT NULL AUTO_INCREMENT,    '+
  ' `nome_pessoa` varchar(50) DEFAULT NULL,     '+
  ' `foto` mediumblob,                      '+
  ' `sexo` varchar(1) DEFAULT NULL,       '+
  ' `nome_pai` varchar(50) DEFAULT NULL,   '+
  ' `nome_mae` varchar(50) DEFAULT NULL,     '+
  ' `dta_nascimento` date DEFAULT NULL,      '+
  ' `naturalidade` varchar(50) DEFAULT NULL,   '+
  ' `uf_nascimento` varchar(2) DEFAULT NULL,    '+
  ' `nacionalidade` varchar(50) DEFAULT NULL,    '+
  ' `nrorg` varchar(20) DEFAULT NULL,    '+
  ' `orgaorg` varchar(10) DEFAULT NULL,   '+
  ' `cpf` varchar(20) DEFAULT NULL,        '+
  ' `email` varchar(50) DEFAULT NULL,      '+
  ' `grau_instr_situacao` varchar(30) DEFAULT NULL,   '+
  ' `grau_instrucao` varchar(30) DEFAULT NULL,     '+
  ' `form_teo_situacao` varchar(30) DEFAULT NULL,   '+
  ' `formacao_teologica` varchar(30) DEFAULT NULL,    '+
  ' `estado_civil_atual` varchar(20) DEFAULT NULL,     '+
  ' `estado_civil_anterior` varchar(20) DEFAULT NULL,   '+
  ' `nome_conjugue` varchar(50) DEFAULT NULL,   '+
  ' `dta_casamento` date DEFAULT NULL,    '+
  ' `logradouro` varchar(250) DEFAULT NULL,   '+
  ' `uf_endereco` varchar(2) DEFAULT NULL,     '+
  ' `estado_casa` varchar(20) DEFAULT NULL,      '+
  ' `complemento` varchar(50) DEFAULT NULL,        '+
  ' `fone_residencial` varchar(30) DEFAULT NULL,   '+
  ' `bairro` varchar(30) DEFAULT NULL,          '+
  ' `cep` varchar(20) DEFAULT NULL,           '+
  ' `cidade` varchar(30) DEFAULT NULL,    '+
  ' `fone_celular` varchar(30) DEFAULT NULL,   '+
  ' `dta_conversao` date DEFAULT NULL,        '+
  ' `dta_batismo_esprito` date DEFAULT NULL,    '+
  ' `dta_batismo_aguas` date DEFAULT NULL,     '+
  ' `dta_congregado` date DEFAULT NULL,       '+
  ' `local_descisao_congregado` varchar(50) DEFAULT NULL,    '+
  ' `dta_membro` date DEFAULT NULL,      '+
  ' `origem_eclesiastica` varchar(50) DEFAULT NULL,    '+
  ' `proced_eclesiastica` varchar(50) DEFAULT NULL,   '+
  ' `profissao` varchar(50) DEFAULT NULL,        '+
  ' `habilitacao_profissional` varchar(30) DEFAULT NULL,   '+
  ' `emprego_atual` varchar(30) DEFAULT NULL,     '+
  ' `funcao` varchar(30) DEFAULT NULL,         '+
  ' `fone_trabalho` varchar(30) DEFAULT NULL,      '+
  ' `igreja` varchar(30) DEFAULT NULL,     '+
  ' `setor` varchar(15) DEFAULT NULL,   '+
  ' `congregacao` varchar(30) DEFAULT NULL,   '+
  ' `nro_rol` varchar(15) DEFAULT NULL,          '+
  ' `nro_cad_congregado` varchar(15) DEFAULT NULL,    '+
  ' `membro_congregado` varchar(15) DEFAULT NULL,    '+
  ' `dta_inclusao` date DEFAULT NULL,        '+
  ' `USUARIO_CADASTRO` varchar(20) DEFAULT NULL,   '+
  ' `SITUACAO` varchar(50) DEFAULT NULL,      '+
  ' `cod_congregacao` int(11) NOT NULL,    '+
  ' `cod_situacao` int(11) DEFAULT NULL,    '+
  ' PRIMARY KEY (`cod_pessoa`),         '+
  ' KEY `tb_pessoa_tb_congregacao_fk` (`cod_congregacao`),    '+
  ' CONSTRAINT `tb_pessoa_tb_congregacao_fk` FOREIGN KEY (`cod_congregacao`)  '+
  ' REFERENCES `tb_congregacao` (`cod_congregacao`)    '+
  ' ) ');
   end;
end;

procedure TAtualizacaoTabelaMySQL.Congregacao;
begin
   if not TabelaExiste('tb_congregacao') then
   begin
     ExecutaDiretoBancoDeDados(
     ' CREATE TABLE `tb_congregacao` (   '+
  ' `cod_congregacao` int(11) NOT NULL AUTO_INCREMENT,   '+
  ' `cod_central` int(11) DEFAULT NULL,        '+
  ' `congregacao` varchar(25) DEFAULT NULL,   '+
  ' `setor` varchar(25) DEFAULT NULL,    '+
  ' `polo` varchar(25) DEFAULT NULL,    '+
  ' `situacao` int(11) DEFAULT NULL,      '+
  ' `telefone` varchar(20) DEFAULT NULL,  '+
  ' `cnpj` varchar(20) DEFAULT NULL,      '+
  ' `siteblog` varchar(50) DEFAULT NULL,    '+
  ' `endereco` varchar(100) DEFAULT NULL,   '+
  ' `complemento` varchar(25) DEFAULT NULL,   '+
  ' `bairro` varchar(25) DEFAULT NULL,      '+
  ' `cep` varchar(25) DEFAULT NULL,      '+
  ' `cidade` varchar(50) DEFAULT NULL,    '+
  ' `diasculto` varchar(25) DEFAULT NULL,   '+
  ' `diacoa` varchar(25) DEFAULT NULL,     '+
  ' `diacom` varchar(25) DEFAULT NULL,    '+
  ' `diacoi` varchar(25) DEFAULT NULL,   '+
  ' `diacv` varchar(25) DEFAULT NULL,    '+
  ' `data_aber_sub` date DEFAULT NULL,   '+
  ' `data_aber_cong` date DEFAULT NULL,   '+
  ' `data_fun_coa` date DEFAULT NULL,   '+
  ' `data_fun_com` date DEFAULT NULL,    '+
  ' `data_fun_coi` date DEFAULT NULL,    '+
  ' `data_fun_cv` date DEFAULT NULL,     '+
  ' `data_cadastro` date DEFAULT NULL,   '+
  ' `usuario_cadastro` varchar(50) DEFAULT NULL,   '+
  ' `cong_principal` varchar(10) DEFAULT NULL,   '+
  ' `dirigente` varchar(30) DEFAULT NULL,   '+
  ' `cod_setor` int(11) DEFAULT NULL,    '+
  ' `cod_igreja` int(11) NOT NULL,     '+
  ' `cod_cc` int(11) DEFAULT NULL,    '+
  ' `sigla` varchar(25) DEFAULT NULL,   '+
  ' PRIMARY KEY (`cod_congregacao`),     '+
  ' KEY `tb_congregacao_tb_setor_fk` (`cod_setor`),   '+
  ' KEY `tb_congregacao_tb_igreja_fk` (`cod_igreja`),   '+
  ' CONSTRAINT `tb_congregacao_tb_igreja_fk` FOREIGN KEY (`cod_igreja`) REFERENCES `tb_igreja` (`cod_igreja`)  '+
')');
   end;;
end;
end.
