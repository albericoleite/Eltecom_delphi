unit cAtualizacaoBancoDeDados;

interface

uses System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils;

type
  TAtualizaBancoDados = class
  private

  public
    ConexaoDB: TFDConnection;
    constructor Create(aConexao: TFDConnection);
    procedure ExecutaDiretoBancoDeDados(aScript: String);
end;

Type
  TAtualizaBancoDadosMySQL = Class
    private
      ConexaoDB: TFDConnection;
    public
      function AtualizarBancoDeDadosMySQL: Boolean;
      constructor Create(aConexao: TFDConnection);
  End;

implementation

uses
cAtualizacaoTabelaMySQL,cAtualizacaoCampoMySQL;

{ TAtualizaBancoDados }

constructor TAtualizaBancoDados.Create(aConexao: TFDConnection);
begin
   ConexaoDB := aConexao;
end;

procedure TAtualizaBancoDados.ExecutaDiretoBancoDeDados(aScript: String);
Var Qry:TFDQuery;
Begin
  Try
    Qry:=TFDQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add(aScript);
    Try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    Except
      ConexaoDB.Rollback;
    End;
  Finally
    Qry.Close;
    if Assigned(Qry) then
       FreeAndNil(Qry);
  End;
end;

{ TAtualizaBancoDadosMySQL }

function TAtualizaBancoDadosMySQL.AtualizarBancoDeDadosMySQL: Boolean;
var oAtualizaDB:TAtualizaBancoDados;
    oTabela: TAtualizacaoTabelaMySQL;
    oCampo: TAtualizacaoCampoMySQL;
begin
try
  oAtualizaDB:=TAtualizaBancoDados.Create(ConexaoDB);
  oTabela:=  TAtualizacaoTabelaMySQL.Create(ConexaoDB);
  oCampo:= TAtualizacaoCampoMySQL.Create(ConexaoDB);
finally
if Assigned(oAtualizaDB) then
  FreeAndNil(oAtualizaDB);

  if Assigned(oTabela) then
  FreeAndNil(oTabela);
end;

end;

constructor TAtualizaBancoDadosMySQL.Create(aConexao: TFDConnection);
begin
  ConexaoDB := aConexao;
end;

end.
