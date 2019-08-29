unit cCadProfessor;


interface

uses System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils;
// LISTA DE UNITS

type
  TProfessor = class
  private
    // VARIAVEIS PRIVADA SOMENTE DENTRO DA CLASSE
    ConexaoDB: TFDConnection;
    F_cod_professor: Integer;
	F_cod_pessoa: Integer;
    F_nome: string;
	F_usuario_cadastro: string;
	F_dta_cadastro:TDateTime;
	F_status:string;

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
    property cod_professor: Integer read F_cod_professor
      write F_cod_professor;
	   property cod_pessoa: Integer read F_cod_pessoa
      write F_cod_pessoa;
    property nome: string read F_nome
      write F_nome;
	    property usuario_cadastro: string read F_usuario_cadastro
      write F_usuario_cadastro;
	    property dta_cadastro: TDateTime read F_dta_cadastro
      write F_dta_cadastro;
	    property status: string read F_status
      write F_status;
  end;

implementation

{$REGION 'Constructor and Destructor'}

constructor TProfessor.Create;
begin
  ConexaoDB := aConexao;
end;

destructor TProfessor.Destroy;
begin

  inherited;
end;
{$ENDREGION}

{$REGION 'CRUD'}

function TProfessor.Apagar: Boolean;
var
  Qry: TFDQuery;
begin
  if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    IntToStr(F_cod_professor) + #13 + 'Descrição: ' + F_nome,
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
    Qry.SQL.Add('DELETE FROM tb_professor WHERE cod_professor=:cod_professor');
    Qry.ParamByName('cod_professor').AsInteger := F_cod_professor;
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

function TProfessor.Atualizar: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE tb_professor '+
    ' SET cod_pessoa=:cod_pessoa, nome=:nome, status=:status '+
    ' WHERE cod_professor=:cod_professor');
    Qry.ParamByName('cod_professor').AsInteger := F_cod_professor;
    Qry.ParamByName('cod_pessoa').AsInteger := F_cod_pessoa;
    Qry.ParamByName('nome').AsString := F_nome;
    Qry.ParamByName('status').AsString := F_status;
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

function TProfessor.Inserir: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO tb_professor(cod_pessoa, nome, usuario_cadastro, dta_cadastro, status)  '+
    ' VALUES(:cod_pessoa, :nome, :usuario_cadastro, CURRENT_TIMESTAMP, :status)');
    Qry.ParamByName('cod_pessoa').AsInteger  := Self.F_cod_pessoa;
    Qry.ParamByName('nome').AsString  := Self.F_nome;
    Qry.ParamByName('usuario_cadastro').AsString  := Self.F_usuario_cadastro;
    Qry.ParamByName('status').AsString  := Self.F_status;

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

function TProfessor.Selecionar(id: Integer): Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT cod_professor, cod_pessoa, nome, usuario_cadastro, dta_cadastro, status '+
	' FROM igreja.tb_professor where cod_professor=:cod_professor ');
    Qry.ParamByName('cod_professor').AsInteger := id;

    try
      Qry.Open;
      Self.F_cod_professor := Qry.FieldByName('cod_professor').AsInteger;
      Self.F_cod_pessoa := Qry.FieldByName('cod_pessoa').AsInteger;
      Self.F_nome := Qry.FieldByName('nome').AsString;
      Self.F_usuario_cadastro := Qry.FieldByName('usuario_cadastro').AsString;
      Self.F_dta_cadastro := Qry.FieldByName('dta_cadastro').AsDateTime;
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
