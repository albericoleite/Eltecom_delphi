unit cCadClasseAluno;

interface

uses System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils;
// LISTA DE UNITS

type
  TClasseAluno = class
  private
    // VARIAVEIS PRIVADA SOMENTE DENTRO DA CLASSE
    ConexaoDB: TFDConnection;
    F_codigo: Integer;
    F_cod_classe: Integer;
    F_classe: string;
    F_cod_aluno: Integer;
    F_aluno: string;
    F_cod_congregacao: Integer;

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
    property cod_classe: Integer read F_cod_classe
      write F_cod_classe;
    property classe: string read F_classe
      write F_classe;
        property cod_aluno: Integer read F_cod_aluno
      write F_cod_aluno;
      property aluno: string read F_aluno
      write F_aluno;
      property cod_congregacao: Integer read F_cod_congregacao
      write F_cod_congregacao;
  end;

implementation

{$REGION 'Constructor and Destructor'}

constructor TClasseAluno.Create;
begin
  ConexaoDB := aConexao;
end;

destructor TClasseAluno.Destroy;
begin

  inherited;
end;
{$ENDREGION}

{$REGION 'CRUD'}

function TClasseAluno.Apagar: Boolean;
var
  Qry: TFDQuery;
begin
  if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    IntToStr(F_codigo) + #13 + 'Descrição: ' + F_aluno,
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
    Qry.SQL.Add('DELETE FROM tb_classe_aluno WHERE codigo=:codigo');
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

function TClasseAluno.Atualizar: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE tb_classe_aluno  SET cod_classe=:cod_classe, '+
    ' classe=:classe ,cod_aluno=:cod_aluno,aluno=:aluno WHERE codigo=:codigo');
    Qry.ParamByName('codigo').AsInteger := F_codigo;
    Qry.ParamByName('cod_classe').AsInteger := F_cod_classe;
    Qry.ParamByName('classe').AsString := F_classe;
    Qry.ParamByName('cod_aluno').AsInteger := F_cod_aluno;
    Qry.ParamByName('aluno').AsString := F_aluno;
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

function TClasseAluno.Inserir: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO tb_classe_aluno (cod_classe,classe,cod_aluno,aluno,cod_congregacao)  '+
    ' VALUES(:cod_classe,:classe,:cod_aluno,:aluno,:cod_congregacao)');
    Qry.ParamByName('classe').AsString  := Self.F_classe;
    Qry.ParamByName('aluno').AsString := Self.F_aluno;
    Qry.ParamByName('cod_classe').AsInteger := Self.F_cod_classe;
    Qry.ParamByName('cod_aluno').AsInteger := Self.F_cod_aluno;
    Qry.ParamByName('cod_congregacao').AsInteger := Self.F_cod_congregacao;

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

function TClasseAluno.Selecionar(id: Integer): Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT codigo,cod_classe, classe,cod_aluno,aluno,cod_congregacao '+
    ' FROM tb_classe_aluno where codigo=:codigo ');
    Qry.ParamByName('codigo').AsInteger := id;

    try
      Qry.Open;
      Self.F_codigo := Qry.FieldByName('codigo').AsInteger;
      Self.F_cod_classe := Qry.FieldByName('cod_classe').AsInteger;
      Self.F_classe := Qry.FieldByName('classe').AsString;
       Self.F_cod_aluno := Qry.FieldByName('cod_aluno').AsInteger;
      Self.F_aluno := Qry.FieldByName('aluno').AsString;
      Self.F_cod_congregacao:= Qry.FieldByName('cod_congregacao').AsInteger;
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
