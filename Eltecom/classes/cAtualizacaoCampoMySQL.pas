unit cAtualizacaoCampoMySQL;

interface

uses System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils,
  cAtualizacaoBancoDeDados;

  type
 TAtualizacaoCampoMySQL = class(TAtualizaBancoDados)
 private
  function  CampoExisteNaTabela(aNomeTabela, aCampo:string):Boolean;
  procedure versao1;
    function ViewExiste(aNomeView: string): Boolean;
    function SPExiste(aNomeSP: string): Boolean;
  protected

  public
  constructor Create(aConexao: TFDConnection);
   destructor Destroy; override;

 end;

implementation

{ TAtualizacaoCampoMySQL }

function TAtualizacaoCampoMySQL.CampoExisteNaTabela(aNomeTabela,
  aCampo: string): Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := False;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT count(DISTINCT COLUMN_NAME) as ID '+
    ' FROM INFORMATION_SCHEMA.COLUMNS   '+
    ' WHERE COLUMN_NAME = :Campo  '+
    '   AND TABLE_NAME  = :NomeTabela');
    Qry.ParamByName('NomeTabela').AsString := aNomeTabela;
    Qry.ParamByName('Campo').AsString := aCampo;
    Qry.Open;

    if Qry.FieldByName('ID').AsInteger>0 then
     Result := True;

  finally
    Qry.Close;
    if Assigned(Qry) then
      FreeAndNil(Qry)
  end;
end;

function TAtualizacaoCampoMySQL.ViewExiste(aNomeView :string): Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := False;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT COUNT(*)as ID     FROM INFORMATION_SCHEMA.VIEWS  '+
     ' where TABLE_NAME = :view');
    Qry.ParamByName('view').AsString := aNomeView;

    Qry.Open;

    if Qry.FieldByName('ID').AsInteger>0 then
     Result := True;

  finally
    Qry.Close;
    if Assigned(Qry) then
      FreeAndNil(Qry)
  end;
end;

function TAtualizacaoCampoMySQL.SPExiste(aNomeSP :string): Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := False;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT COUNT(*)as ID   '+
    ' FROM INFORMATION_SCHEMA.ROUTINES '+
    ' where ROUTINE_NAME =:aNomeSP ');
    Qry.ParamByName('aNomeSP').AsString := aNomeSP;

    Qry.Open;

    if Qry.FieldByName('ID').AsInteger>0 then
     Result := True;

  finally
    Qry.Close;
    if Assigned(Qry) then
      FreeAndNil(Qry)
  end;
end;

constructor TAtualizacaoCampoMySQL.Create(aConexao: TFDConnection);
begin
    ConexaoDB := aConexao;
    versao1;
end;

destructor TAtualizacaoCampoMySQL.Destroy;
begin

  inherited;
end;

procedure TAtualizacaoCampoMySQL.versao1;
begin
//Adicionar Nivel de cargo para utilizar como ordenação
 if not CampoExisteNaTabela('tb_cargo','nivel') then
 begin
   ExecutaDiretoBancoDeDados('ALTER TABLE tb_cargo ADD nivel INT DEFAULT 0 NOT NULL;');
 end;

 //Adicionar código da congregação no recibo
  if not CampoExisteNaTabela('tb_recibo','cod_congregacao') then
 begin
   ExecutaDiretoBancoDeDados('ALTER TABLE tb_recibo ADD cod_congregacao int(11) NULL;');
 end;

  //Adicionar código da congregação no recibo
  if not CampoExisteNaTabela('tb_congregacao','cod_dirigente') then
 begin
   ExecutaDiretoBancoDeDados('ALTER TABLE tb_congregacao ADD cod_dirigente int(11) NULL;');
 end;

   //Adicionar código da pessoa no dizimo
  if not CampoExisteNaTabela('tb_dizimista','cod_pessoa') then
 begin
   ExecutaDiretoBancoDeDados('ALTER TABLE tb_dizimista ADD cod_pessoa INT(11) NULL;');
   ExecutaDiretoBancoDeDados('ALTER TABLE tb_dizimista ADD CONSTRAINT '+
   ' tb_dizimista_tb_pessoa_fk FOREIGN KEY (cod_pessoa) REFERENCES tb_pessoa(cod_pessoa);');
 end;

    //Adicionar SIGLA DO DEPARTAMENTO
  if not CampoExisteNaTabela('tb_departamento','sigla') then
 begin
   ExecutaDiretoBancoDeDados('ALTER TABLE tb_departamento ADD sigla varchar(10) NULL;');
 end;



   if not ViewExiste('v_dizimista_total_mes_ano') then
 begin
   ExecutaDiretoBancoDeDados('create  or replace view '+
   ' `v_dizimista_total_mes_ano` as select   '+
    ' `x`.`nome` as `nome`,      '+
   '  sum(`x`.`valor`) as `valor`,   '+
   '  `x`.`nro_mes` as `nro_mes`,   '+
   '  `x`.`ano` as `ano`          '+
    ' from                            '+
   ' (  '+
    '     select `igreja`.`tb_dizimista`.`nome` as `nome`,   '+
     '   `igreja`.`tb_dizimista`.`data` as `data`,       '+
     '   `igreja`.`tb_dizimista`.`valor` as `valor`,        '+
     '   month(`igreja`.`tb_dizimista`.`data`) as `nro_mes`,  '+
     '   year(`igreja`.`tb_dizimista`.`data`) as `ano`    '+
   ' from                          '+
   '     `igreja`.`tb_dizimista`) `x`   '+
   ' group by           '+
   ' `x`.`nome`,      '+
   ' `x`.`nro_mes`,   '+
   ' `x`.`ano`       '+
  ' order by            '+
   ' `x`.`nome`,     '+
   ' `x`.`nro_mes`');
 end;


 if not ViewExiste('v_lancamentos_total') then
 begin
   ExecutaDiretoBancoDeDados('create or replace view v_lancamentos_total as '+
  ' select * from           '+
  ' (SELECT sum(t.valor)as valor, t.tipo,t.dta_movimento as data,   '+
  ' year(t.dta_movimento) AS ano      '+
  ' ,month(t.dta_movimento) AS mes    '+
  ' ,week(t.dta_movimento) as semana     '+
  ' ,weekday(t.dta_movimento) as dia    '+
  ' FROM tb_tesouraria t join tb_parametro_sistema a     '+
  ' on a.cod_congregacao = t.cod_congregacao     '+
  ' group by year(t.dta_movimento),month(t.dta_movimento),t.tipo,t.dta_movimento)x');
 end;

  if not ViewExiste('v_dizimistas') then
 begin
   ExecutaDiretoBancoDeDados('create or replace view v_dizimistas as    '+
    ' SELECT t.cod_dizimo, t.cod_talao, t.cod_cheque, t.nome, t.valor, t.`data`, t.cargo, t.cod_congregacao,    '+
    ' 0 as nivel,coalesce(y.nro_rol,0) as rol                      '+
    ' FROM tb_dizimista t inner join tb_parametro_sistema a on a.cod_congregacao = t.cod_congregacao  '+
    ' left join tb_pessoa y on y.nome_pessoa = t.nome         '+
    ' and t.cargo = '+QuotedStr('MEMBRO' )+'               '+
    ' union all             '+
    ' select e.cod_dizimo,e.cod_talao,e.cod_cheque, c.nome_pessoa as nome,e.valor,e.`data`      '+
    ' ,"DIRIGENTE",c.cod_congregacao,100,c.nro_rol       '+
    ' from tb_congregacao a                                                         '+
    ' inner join tb_parametro_sistema b on a.cod_congregacao = b.cod_congregacao   '+
    ' left join tb_pessoa c on c.cod_pessoa = a.cod_dirigente                    '+
    ' inner join tb_obreiro_cargo d on d.COD_MEMBRO = c.cod_pessoa                '+
    ' left join tb_dizimista e on e.NOME = c.nome_pessoa and e.CARGO = d.CARGO    '+
    ' union all                                                             '+

    ' select c.cod_dizimo,c.cod_talao,c.cod_cheque,a.NOME,c.valor,c.`data`       '+
    ' ,a.CARGO,a.COD_CONGREGACAO,x.nivel,y.nro_rol    '+
    '  from tb_obreiro_cargo a                                    '+
    ' inner join tb_cargo x on x.cod_cargo = a.COD_CARGO         '+
    ' inner join tb_pessoa y on y.cod_pessoa = a.cod_membro            '+
    ' inner join tb_parametro_sistema b on a.COD_CONGREGACAO = b.cod_congregacao    '+
    ' left join tb_dizimista c on c.cod_congregacao = a.COD_CONGREGACAO and c.cargo = a.CARGO and c.nome = a.NOME  '+
    ' where a.cod_membro <> (select  c.cod_pessoa  from tb_congregacao a  '+
    ' inner join tb_parametro_sistema b on a.cod_congregacao = b.cod_congregacao    '+
    ' left join tb_pessoa c on c.cod_pessoa = a.cod_dirigente)    '+
    ' order by nivel desc     ');
 end;


     //Adicionar SIGLA DO DEPARTAMENTO
  if not CampoExisteNaTabela('tb_classe_professor','cod_congregacao') then
 begin
   ExecutaDiretoBancoDeDados('drop table tb_classe_professor');

   ExecutaDiretoBancoDeDados('CREATE TABLE `tb_classe_professor` (  '+
  ' `codigo` int(11) NOT NULL AUTO_INCREMENT,     '+
  ' `cod_professor` int(11) DEFAULT NULL,   '+
  ' `professor` varchar(50) DEFAULT NULL,   '+
  ' `cod_classe` int(11) DEFAULT NULL,    '+
  ' `classe` varchar(20) DEFAULT NULL,    '+
  ' `cod_congregacao` int(11) NOT NULL,    '+
  ' PRIMARY KEY (`codigo`),          '+
  ' KEY `tb_classe_professor_tb_classe_fk` (`cod_classe`),   '+
  ' KEY `tb_classe_professor_tb_professor_fk` (`cod_professor`) '+
  ' ) ENGINE=InnoDB DEFAULT CHARSET=latin1;');
 end;

    //Adicionar código de congregação na tb_classe_aluno
  if not CampoExisteNaTabela('tb_classe_aluno','cod_congregacao') then
 begin
   ExecutaDiretoBancoDeDados('drop table tb_classe_aluno');

   ExecutaDiretoBancoDeDados('CREATE TABLE `tb_classe_aluno` (  '+
  ' `codigo` int(11) NOT NULL AUTO_INCREMENT,   '+
  ' `cod_aluno` int(11) DEFAULT NULL,     '+
  ' `aluno` varchar(50) DEFAULT NULL,    '+
  ' `cod_classe` int(11) DEFAULT NULL,    '+
  ' `classe` varchar(50) DEFAULT NULL,     '+
  ' `cod_congregacao` int(11) DEFAULT NULL,   '+
  ' PRIMARY KEY (`codigo`),                 '+
  ' KEY `tb_classe_aluno_tb_classe_fk` (`cod_classe`), '+
  ' CONSTRAINT `tb_classe_aluno_tb_classe_fk` FOREIGN KEY (`cod_classe`) REFERENCES `tb_classe` (`cod_classe`) '+
  ' )');
 end;

  if not SPExiste('chamada_ebd') then
 begin
   ExecutaDiretoBancoDeDados('CREATE DEFINER=`root`@`localhost`  '+
   ' PROCEDURE `igreja`.`chamada_ebd`(cod_cong int, cod_class int, dta_chamada datetime) '+
' BEGIN                                        '+
' INSERT INTO tb_ebd_chamada                '+
' (cod_aluno, cod_classe, dta_aula, cod_congregacao)   '+
' select cod_aluno,cod_classe, dta_chamada,cod_congregacao from tb_classe_aluno  '+
' where cod_congregacao =cod_cong and cod_classe =cod_class       '+
' and cod_aluno not in (select x.cod_aluno from tb_ebd_chamada x    '+
' where date(x.dta_aula) = date(dta_chamada) and x.cod_classe =cod_class );   '+
'END');
 end;

   if not SPExiste('aula_ebd') then
 begin
   ExecutaDiretoBancoDeDados('CREATE DEFINER=`root`@`localhost`    '+
'   PROCEDURE `igreja`.`aula_ebd`(cod_cong int, cod_class int,    '+
'   dta_aul datetime,nro_lic int,tlic varchar(100) ,trev varchar(100))    '+
' begin                    '+
' declare tri int(11);      '+
' set tri = (select  trimestre    '+
' from tb_ebd_calendario           '+
' where date(dta_inicio) <= date(dta_aul) and  date(dta_fim) >=date(dta_aul)) ;   '+

' IF NOT exists( SELECT a.codigo             '+
' FROM tb_ebd_aula a where a.cod_classe =cod_class   '+
' and date(a.dta_aula) = date(dta_aul)        '+
' and a.cod_congregacao =cod_cong )       '+
'  THEN                           '+
' INSERT INTO tb_ebd_aula        '+
' ( dta_aula, cod_classe, qtd_biblias, qtd_revistas, trimestre, cod_congregacao,   '+
' nro_licao, titulo_licao, titulo_revista)               '+
' VALUES( dta_aul, cod_class, 0, 0, tri, cod_cong, nro_lic, tlic, trev); '+
' END IF;       '+
'END;');
 end;


   //Adicionar código da congregação no recibo
  if not CampoExisteNaTabela('tb_tesouraria','cod_tipo_saida') then
 begin
   ExecutaDiretoBancoDeDados('ALTER TABLE `igreja`.`tb_tesouraria` '+
   ' ADD COLUMN `cod_tipo_saida` INT(11) NULL AFTER `situacao`;');
 end;

  {  //Adicionar código da congregação no recibo
  if not CampoExisteNaTabela('tb_classe_aluno','tb_classe_aluno_tb_classe_fk') then
 begin
   ExecutaDiretoBancoDeDados('ALTER TABLE tb_classe_aluno ADD CONSTRAINT tb_classe_aluno_tb_classe_fk FOREIGN KEY (cod_classe) REFERENCES tb_classe(cod_classe);');
 end;

    //Adicionar código da congregação no recibo
 if not CampoExisteNaTabela('tb_classe_professor','tb_classe_professor_tb_classe_fk') then
 begin
   ExecutaDiretoBancoDeDados('ALTER TABLE tb_classe_professor ADD CONSTRAINT tb_classe_professor_tb_classe_fk FOREIGN KEY (cod_classe) REFERENCES tb_classe(cod_classe);');
 end;  }

 //ALTER TABLE igreja.tb_classe_professor MODIFY COLUMN professor varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL;
//ALTER TABLE igreja.tb_classe_professor MODIFY COLUMN classe varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL;

end;

end.
