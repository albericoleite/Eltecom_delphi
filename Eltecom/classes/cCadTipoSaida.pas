unit cCadTipoSaida;


interface

uses System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils;
// LISTA DE UNITS

type
  TTipoSaida = class
  private
    // VARIAVEIS PRIVADA SOMENTE DENTRO DA CLASSE
    ConexaoDB: TFDConnection;
    F_id: Integer;
    F_descricao: string;
    F_tipo: string;

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
    property id: Integer read F_id
      write F_id;
    property descricao: string read F_descricao
      write F_descricao;
    property tipo: string read F_tipo
      write F_tipo;
  end;

implementation

{$REGION 'Constructor and Destructor'}

constructor TTipoSaida.Create;
begin
  ConexaoDB := aConexao;
end;

destructor TTipoSaida.Destroy;
begin

  inherited;
end;
{$ENDREGION}

{$REGION 'CRUD'}

function TTipoSaida.Apagar: Boolean;
var
  Qry: TFDQuery;
begin
  if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    IntToStr(F_id) + #13 + 'Descrição: ' + F_descricao,
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
    Qry.SQL.Add('DELETE FROM tipo_saida WHERE id=:id ');
    Qry.ParamByName('id').AsInteger := F_id;
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

function TTipoSaida.Atualizar: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE tipo_saida SET tipo=:tipo, descricao=:descricao '+
    ' WHERE id=:id;');
    Qry.ParamByName('id').AsInteger := F_id ;
    Qry.ParamByName('descricao').AsString := F_descricao;
    Qry.ParamByName('tipo').AsString := F_tipo;
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

function TTipoSaida.Inserir: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO tipo_saida  (tipo, descricao) '+
    ' VALUES(:tipo, :descricao)');
    Qry.ParamByName('descricao').AsString := F_descricao;
    Qry.ParamByName('tipo').AsString := F_tipo;

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

function TTipoSaida.Selecionar(id: Integer): Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT id, tipo, descricao from tipo_saida '+
    ' where id=:id ');
    Qry.ParamByName('id').AsInteger := id;

    try
      Qry.Open;
      Self.F_id := Qry.FieldByName('id').AsInteger;
      Self.F_descricao := Qry.FieldByName('descricao').AsString;
      Self.F_tipo := Qry.FieldByName('tipo').AsString;
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

