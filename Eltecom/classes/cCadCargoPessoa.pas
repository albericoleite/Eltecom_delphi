unit cCadCargoPessoa;

interface

uses System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils;
// LISTA DE UNITS

type
  TCargoPessoa = class
  private
    // VARIAVEIS PRIVADA SOMENTE DENTRO DA CLASSE
    ConexaoDB: TFDConnection;
    F_cod_carg_pessoa: Integer;
    F_cod_membro: Integer;
    F_nome: string;
    F_cod_cargo: Integer;
    F_cargo: string;
    F_cod_congregacao:Integer;
    F_status: string;

  public
    constructor Create(aConexao: TFDConnection); // CONSTRUTOR DA CLASSE
    destructor Destroy; override; // DESTROI A CLASSE USAR OVERRIDE POR CAUSA
    function Inserir: Boolean;
    function Atualizar: Boolean;
    function Apagar: Boolean;
    function Selecionar(id: Integer): Boolean;

  published
    // VARIAVEIS PUBLICAS UTILAIZADAS PARA PROPRIEDADES DA CLASSE
    // PARA FORNECER INFORMAÇÕESD EM RUMTIME
     property cod_carg_pessoa: Integer read F_cod_carg_pessoa
      write F_cod_carg_pessoa;
    property cod_cargo: Integer read F_cod_cargo
      write F_cod_cargo;
    property cargo: string read F_cargo
      write F_cargo;
        property cod_membro: Integer read F_cod_membro
      write F_cod_membro;
    property cod_congregacao: Integer read F_cod_congregacao
      write F_cod_congregacao;
       property status: string read F_status
      write F_status;
      property nome: string read F_nome
      write F_nome;
  end;

implementation

{$REGION 'Constructor and Destructor'}

constructor TCargoPessoa.Create;
begin
  ConexaoDB := aConexao;
end;

destructor TCargoPessoa.Destroy;
begin

  inherited;
end;
{$ENDREGION}

{$REGION 'CRUD'}

function TCargoPessoa.Apagar: Boolean;
var
  Qry: TFDQuery;
begin
  if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    IntToStr(F_cod_carg_pessoa) + #13 + 'Descrição: ' + F_nome,
    mtConfirmation, [mbYes, mbNo], 0) = mrNO then
  begin
    Result := false;
    Abort;
  end;

  Try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('DELETE FROM igreja.tb_obreiro_cargo WHERE COD_CARG_PESSOA=:cod_carg_pessoa');
    Qry.ParamByName('cod_carg_pessoa').AsInteger := F_cod_carg_pessoa;
    try
        ConexaoDB.StartTransaction;
         Qry.ExecSQL;
         ConexaoDB.Commit;
       except
       ConexaoDB.Rollback;
        Result:=false;
       end;

  Finally
    if Assigned(Qry) then
      FreeAndNil(Qry)
  End;

end;

function TCargoPessoa.Atualizar: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE igreja.tb_obreiro_cargo '+
    ' SET COD_MEMBRO=:COD_MEMBRO, NOME=:NOME, COD_CARGO=:COD_CARGO, CARGO=:CARGO, '+
    ' STATUS=:STATUS, COD_CONGREGACAO=:COD_CONGREGACAO  WHERE COD_CARG_PESSOA=:COD_CARG_PESSOA');
    Qry.ParamByName('COD_CARG_PESSOA').AsInteger := F_cod_carg_pessoa;
    Qry.ParamByName('COD_CARGO').AsInteger := F_cod_cargo;
    Qry.ParamByName('CARGO').AsString := F_cargo;
    Qry.ParamByName('COD_MEMBRO').AsInteger := F_cod_membro;
    Qry.ParamByName('NOME').AsString := F_nome;
    Qry.ParamByName('STATUS').AsString := F_status;
    Qry.ParamByName('COD_CONGREGACAO').AsInteger := F_cod_congregacao;
    try
        ConexaoDB.StartTransaction;
         Qry.ExecSQL;
         ConexaoDB.Commit;
       except
       ConexaoDB.Rollback;
        Result:=false;
       end;
  finally
    if Assigned(Qry) then
      FreeAndNil(Qry)
  end;
end;

function TCargoPessoa.Inserir: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO tb_obreiro_cargo '+
    ' (COD_MEMBRO, NOME, COD_CARGO, CARGO, STATUS, '+
    'COD_CONGREGACAO)  VALUES '+
    '(:COD_MEMBRO,:NOME,:COD_CARGO,:CARGO,:STATUS,:COD_CONGREGACAO)');
    Qry.ParamByName('COD_CARGO').AsInteger := Self.F_cod_cargo;
    Qry.ParamByName('CARGO').AsString := Self.F_cargo;
    Qry.ParamByName('COD_MEMBRO').AsInteger := Self.F_cod_membro;
    Qry.ParamByName('NOME').AsString := Self.F_nome;
    Qry.ParamByName('COD_CONGREGACAO').AsInteger := Self.F_cod_congregacao;
    Qry.ParamByName('STATUS').AsString := Self.F_status;
    try
        ConexaoDB.StartTransaction;
         Qry.ExecSQL;
         ConexaoDB.Commit;
       except
       ConexaoDB.Rollback;
        Result:=false;
       end;
  finally
    if Assigned(Qry) then
      FreeAndNil(Qry)
  end;
end;

function TCargoPessoa.Selecionar(id: Integer): Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT COD_CARG_PESSOA, COD_MEMBRO, NOME, COD_CARGO, CARGO, '+
    ' STATUS, COD_CONGREGACAO FROM igreja.tb_obreiro_cargo '+
    ' WHERE COD_CARG_PESSOA=:cod_carg_pessoa ');
    Qry.ParamByName('cod_carg_pessoa').AsInteger := id;

    try
      Qry.Open;
      Self.F_cod_carg_pessoa := Qry.FieldByName('COD_CARG_PESSOA').AsInteger;
      Self.F_cod_cargo := Qry.FieldByName('COD_CARGO').AsInteger;
      Self.F_nome := Qry.FieldByName('NOME').AsString;
      Self.F_cod_membro := Qry.FieldByName('COD_MEMBRO').AsInteger;
      Self.F_cod_congregacao := Qry.FieldByName('COD_CONGREGACAO').AsInteger;
      Self.F_status := Qry.FieldByName('status').AsString;
    Except
      Result := false;
    end;

  finally
    if Assigned(Qry) then
      FreeAndNil(Qry)
  end;
end;
{$ENDREGION}


end.

{
ALTER TABLE igreja.tb_obreiro_cargo MODIFY COLUMN COD_MEMBRO int(10) NULL;
ALTER TABLE igreja.tb_obreiro_cargo ADD cod_carg_pessoa INT NOT NULL AUTO_INCREMENT;
ALTER TABLE igreja.tb_obreiro_cargo CHANGE cod_carg_pessoa cod_carg_pessoa INT NOT NULL AUTO_INCREMENT FIRST;
ALTER TABLE igreja.tb_obreiro_cargo DROP PRIMARY KEY;
ALTER TABLE igreja.tb_obreiro_cargo ADD CONSTRAINT tb_obreiro_cargo_pk PRIMARY KEY (cod_carg_pessoa);

}
