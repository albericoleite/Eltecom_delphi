unit cCadClasse;

interface

uses System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils;
// LISTA DE UNITS

type
  TClasse = class
  private
    // VARIAVEIS PRIVADA SOMENTE DENTRO DA CLASSE
    ConexaoDB: TFDConnection;
    F_cod_classe: Integer;
    F_classe: string;
    F_descricao: string;
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
    property cod_classe: Integer read F_cod_classe
      write F_cod_classe;
    property classe: string read F_classe
      write F_classe;
      property descricao: string read F_descricao
      write F_descricao;
  end;

implementation

{$REGION 'Constructor and Destructor'}

constructor TClasse.Create;
begin
  ConexaoDB := aConexao;
end;

destructor TClasse.Destroy;
begin

  inherited;
end;
{$ENDREGION}

{$REGION 'CRUD'}

function TClasse.Apagar: Boolean;
var
  Qry: TFDQuery;
begin
  if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    IntToStr(F_cod_classe) + #13 + 'Descrição: ' + F_classe,
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
    Qry.SQL.Add('DELETE FROM tb_classe WHERE cod_classe=:cod_classe');
    Qry.ParamByName('cod_classe').AsInteger := F_cod_classe;
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

function TClasse.Atualizar: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE tb_classe  SET classe=:classe ,descricao=:descricao WHERE cod_classe=:cod_classe');
    Qry.ParamByName('cod_classe').AsInteger := F_cod_classe;
    Qry.ParamByName('classe').AsString := F_classe;
    Qry.ParamByName('descricao').AsString := F_descricao;
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

function TClasse.Inserir: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO tb_classe  (classe,descricao)  '+
    ' VALUES(:classe,:descricao)');
    Qry.ParamByName('classe').AsString  := Self.F_classe;
    Qry.ParamByName('descricao').AsString := Self.F_descricao;

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

function TClasse.Selecionar(id: Integer): Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT cod_classe, classe,descricao '+
    ' FROM tb_classe where cod_classe=:cod_classe ');
    Qry.ParamByName('cod_classe').AsInteger := id;

    try
      Qry.Open;
      Self.F_cod_classe := Qry.FieldByName('cod_classe').AsInteger;
      Self.F_classe := Qry.FieldByName('classe').AsString;
      Self.F_descricao := Qry.FieldByName('descricao').AsString;
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
