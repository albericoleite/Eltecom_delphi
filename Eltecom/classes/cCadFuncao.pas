unit cCadFuncao;

interface

uses System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils;
// LISTA DE UNITS

type
  TFuncao = class
  private
    // VARIAVEIS PRIVADA SOMENTE DENTRO DA CLASSE
    ConexaoDB: TFDConnection;
    F_cod_funcao: Integer;
    F_funcao: string;
    F_cod_departamento: Integer;
    F_nome_departamento: string;

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
    property cod_funcao: Integer read F_cod_funcao
      write F_cod_funcao;
    property funcao: string read F_funcao
      write F_funcao;
         property cod_departamento: Integer read F_cod_departamento
      write F_cod_departamento;
    property nome_departamento: string read F_nome_departamento
      write F_nome_departamento;
  end;

implementation

{$REGION 'Constructor and Destructor'}

constructor TFuncao.Create;
begin
  ConexaoDB := aConexao;
end;

destructor TFuncao.Destroy;
begin

  inherited;
end;
{$ENDREGION}

{$REGION 'CRUD'}

function TFuncao.Apagar: Boolean;
var
  Qry: TFDQuery;
begin
  if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    IntToStr(F_cod_funcao) + #13 + 'Descrição: ' + F_funcao,
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
    Qry.SQL.Add('DELETE FROM igreja.tb_funcao WHERE cod_funcao=:cod_funcao');
    Qry.ParamByName('cod_funcao').AsInteger := F_cod_funcao;
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

function TFuncao.Atualizar: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE igreja.tb_funcao  '+
    ' SET funcao=:funcao, cod_departamento=:cod_departamento, nome_departamento=:nome_departamento '+
    ' WHERE cod_funcao=:cod_funcao');
    Qry.ParamByName('cod_funcao').AsInteger := F_cod_funcao ;
    Qry.ParamByName('funcao').AsString := F_funcao;
    Qry.ParamByName('cod_departamento').AsInteger := F_cod_departamento ;
    Qry.ParamByName('nome_departamento').AsString := F_nome_departamento;
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

function TFuncao.Inserir: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO tb_funcao  '+
    ' (funcao, cod_departamento, nome_departamento) '+
    ' VALUES(:funcao, :cod_departamento, :nome_departamento)');
    Qry.ParamByName('funcao').AsString := F_funcao;
    Qry.ParamByName('cod_departamento').AsInteger := F_cod_departamento ;
    Qry.ParamByName('nome_departamento').AsString := F_nome_departamento;

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

function TFuncao.Selecionar(id: Integer): Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT cod_funcao, funcao, cod_departamento, nome_departamento '+
    ' FROM tb_funcao where cod_funcao=:cod_funcao ');
    Qry.ParamByName('cod_funcao').AsInteger := id;

    try
      Qry.Open;
      Self.F_cod_funcao := Qry.FieldByName('cod_funcao').AsInteger;
      Self.F_funcao := Qry.FieldByName('funcao').AsString;
       Self.F_cod_departamento := Qry.FieldByName('cod_departamento').AsInteger;
      Self.F_nome_departamento := Qry.FieldByName('nome_departamento').AsString;
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
