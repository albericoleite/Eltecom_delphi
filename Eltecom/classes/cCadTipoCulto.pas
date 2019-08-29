unit cCadTipoCulto;

interface

uses System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils;
// LISTA DE UNITS

type
  TTipoCulto = class
  private
    // VARIAVEIS PRIVADA SOMENTE DENTRO DA CLASSE
    ConexaoDB: TFDConnection;
    F_codigo: Integer;
    F_descricao: string;
    F_objetivo: string;

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
    property codigo: Integer read F_codigo
      write F_codigo;
    property descricao: string read F_descricao
      write F_descricao;
    property objetivo: string read F_objetivo
      write F_objetivo;
  end;

implementation

{$REGION 'Constructor and Destructor'}

constructor TTipoCulto.Create;
begin
  ConexaoDB := aConexao;
end;

destructor TTipoCulto.Destroy;
begin

  inherited;
end;
{$ENDREGION}

{$REGION 'CRUD'}

function TTipoCulto.Apagar: Boolean;
var
  Qry: TFDQuery;
begin
  if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    IntToStr(F_codigo) + #13 + 'Descrição: ' + F_descricao,
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
    Qry.SQL.Add('DELETE FROM tipo_culto WHERE codigo=:codigo ');
    Qry.ParamByName('codigo').AsInteger := F_codigo;
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

function TTipoCulto.Atualizar: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE tipo_culto  SET descricao=:descricao, objetivo=:objetivo '+
    ' WHERE codigo=:codigo;');
    Qry.ParamByName('codigo').AsInteger := F_codigo ;
    Qry.ParamByName('descricao').AsString := F_descricao;
    Qry.ParamByName('objetivo').AsString := F_objetivo;
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

function TTipoCulto.Inserir: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO tipo_culto  '+
    ' (descricao, objetivo) '+
    ' VALUES(:descricao, :objetivo)');
    Qry.ParamByName('descricao').AsString := F_descricao;
    Qry.ParamByName('objetivo').AsString := F_objetivo;

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

function TTipoCulto.Selecionar(id: Integer): Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT codigo, descricao, objetivo FROM tipo_culto '+
    ' where codigo=:codigo ');
    Qry.ParamByName('codigo').AsInteger := id;

    try
      Qry.Open;
      Self.F_codigo := Qry.FieldByName('codigo').AsInteger;
      Self.F_descricao := Qry.FieldByName('descricao').AsString;
      Self.F_objetivo := Qry.FieldByName('objetivo').AsString;
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
