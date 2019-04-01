unit cCadCargo;


interface

uses System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils;
// LISTA DE UNITS

type
  TCargo = class
  private
    // VARIAVEIS PRIVADA SOMENTE DENTRO DA CLASSE
    ConexaoDB: TFDConnection;
    F_cod_cargo: Integer;
    F_cargo: string;

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
    property cod_cargo: Integer read F_cod_cargo
      write F_cod_cargo;
    property cargo: string read F_cargo
      write F_cargo;
  end;

implementation

{$REGION 'Constructor and Destructor'}

constructor TCargo.Create;
begin
  ConexaoDB := aConexao;
end;

destructor TCargo.Destroy;
begin

  inherited;
end;
{$ENDREGION}

{$REGION 'CRUD'}

function TCargo.Apagar: Boolean;
var
  Qry: TFDQuery;
begin
  if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    IntToStr(F_cod_cargo) + #13 + 'Descrição: ' + F_cargo,
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
    Qry.SQL.Add('DELETE FROM igreja.tb_cargo WHERE cod_cargo=:cod_cargo');
    Qry.ParamByName('cod_cargo').AsInteger := F_cod_cargo;
    try
      Qry.ExecSQL;
    except
      Result := false;
    end;

  Finally
    if Assigned(Qry) then
      FreeAndNil(Qry)
  End;

end;

function TCargo.Atualizar: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE igreja.tb_cargo  SET cargo=:cargo WHERE cod_cargo=:cod_cargo');
    Qry.ParamByName('cod_cargo').AsInteger := F_cod_cargo;
    Qry.ParamByName('cargo').AsString := F_cargo;
    try
      Qry.SQL.Text;
      Qry.ExecSQL;
    except
      Result := false;
    end;
  finally
    if Assigned(Qry) then
      FreeAndNil(Qry)
  end;
end;

function TCargo.Inserir: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO igreja.tb_cargo  (cargo)  '+
    ' VALUES(:cargo)');
    Qry.ParamByName('cargo').AsString := Self.F_cargo;

    try
      Qry.SQL.Text;
      Qry.ExecSQL;
    except
      Result := false;
    end;
  finally
    if Assigned(Qry) then
      FreeAndNil(Qry)
  end;
end;

function TCargo.Selecionar(id: Integer): Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT cod_cargo, cargo '+
    ' FROM igreja.tb_cargo where cod_cargo=:cod_cargo ');
    Qry.ParamByName('cod_cargo').AsInteger := id;

    try
      Qry.Open;
      Self.F_cod_cargo := Qry.FieldByName('cod_cargo').AsInteger;
      Self.F_cargo := Qry.FieldByName('cargo').AsString;
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
