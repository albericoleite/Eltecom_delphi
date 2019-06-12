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
