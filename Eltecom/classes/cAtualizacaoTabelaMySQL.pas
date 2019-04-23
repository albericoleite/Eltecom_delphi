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
  AcaoAcesso;
  Recibo;
  ReciboTipo;
  //TODO: CRIAR OS METODOS PARA CRIAÇÃO DAS DEMAIS TABELAS
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

end.
