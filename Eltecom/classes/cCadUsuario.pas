unit cCadUsuario;


interface

uses System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils;
// LISTA DE UNITS

type
  TUsuario = class
  private
    // VARIAVEIS PRIVADA SOMENTE DENTRO DA CLASSE
    ConexaoDB: TFDConnection;
    F_codigo: Integer;
    F_usuario: string;
    F_senha: string;
    F_status: string;
    F_tema: string;
    F_setor: string;
    function getSenha: string;
    procedure setSenha(const Value:string);




  public
    constructor Create(aConexao: TFDConnection); // CONSTRUTOR DA CLASSE
    destructor Destroy; override; // DESTROI A CLASSE USAR OVERRIDE POR CAUSA
    function Inserir: Boolean;
    function Atualizar: Boolean;
    function Apagar: Boolean;
    function Selecionar(id: Integer): Boolean;
    function Logar(aUsuario, aSenha: string): Boolean;
    function UsuarioExiste(aUsuario: string): Boolean;
    function AlterarSenha: Boolean;
  published
    // VARIAVEIS PUBLICAS UTILAIZADAS PARA PROPRIEDADES DA CLASSE
    // PARA FORNECER INFORMAÇÕESD EM RUMTIME
    property codigo: Integer read F_codigo
      write F_codigo;
    property setor: string read F_setor
      write F_setor;
       property usuario: string read F_usuario
      write F_usuario;
       property senha: string read getSenha
      write setSenha;
       property status: string read F_status
      write F_status;
       property tema: string read F_tema
      write F_tema;
  end;

implementation
uses
uFuncaoCriptografia;

{$REGION 'Constructor and Destructor'}

constructor TUsuario.Create;
begin
  ConexaoDB := aConexao;
end;

destructor TUsuario.Destroy;
begin

  inherited;
end;
{$ENDREGION}

{$REGION 'CRUD'}

function TUsuario.Apagar: Boolean;
var
  Qry: TFDQuery;
begin
  if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    IntToStr(F_codigo) + #13 + 'Descrição: ' + F_usuario,
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
    Qry.SQL.Add('DELETE FROM tb_usuario WHERE codigo=:codigo');
    Qry.ParamByName('codigo').AsInteger := F_codigo;
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

function TUsuario.Atualizar: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE tb_usuario '+
    ' SET usuario=:usuario, senha=:senha, setor=:setor, status=:status, tema=:tema '+
    ' WHERE codigo=:codigo');
    Qry.ParamByName('codigo').AsInteger := F_codigo;
    Qry.ParamByName('usuario').AsString := F_usuario;
    Qry.ParamByName('senha').AsString := F_senha;
    Qry.ParamByName('setor').AsString := F_setor;
    Qry.ParamByName('status').AsString := F_status;
    Qry.ParamByName('tema').AsString := F_tema;
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

function TUsuario.Inserir: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO tb_usuario '+
    ' (usuario, senha, setor, status, tema) '+
    ' VALUES(:usuario, :senha, :setor, :status, :tema)');
    Qry.ParamByName('usuario').AsString := Self.F_usuario;
    Qry.ParamByName('senha').AsString := Self.F_senha;
    Qry.ParamByName('setor').AsString := Self.F_setor;
    Qry.ParamByName('status').AsString := Self.F_status;
    Qry.ParamByName('tema').AsString := Self.F_tema;

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

function TUsuario.Selecionar(id: Integer): Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT codigo, usuario, senha, setor, status, tema '+
    ' FROM tb_usuario where codigo=:codigo ');
    Qry.ParamByName('codigo').AsInteger := id;

    try
      Qry.Open;
      Self.F_codigo := Qry.FieldByName('codigo').AsInteger;
      Self.F_usuario := Qry.FieldByName('usuario').AsString;
      Self.F_senha := Qry.FieldByName('senha').AsString;
       Self.F_setor := Qry.FieldByName('setor').AsString;
        Self.F_status := Qry.FieldByName('status').AsString;
         Self.F_tema := Qry.FieldByName('tema').AsString;
    Except
      Result := false;
    end;

  finally
    if Assigned(Qry) then
      FreeAndNil(Qry)
  end;
end;

function TUsuario.AlterarSenha: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE tb_usuario '+
    ' SET  senha=:senha '+
    ' WHERE codigo=:codigo');
    Qry.ParamByName('codigo').AsInteger := F_codigo;
     Qry.ParamByName('senha').AsString := F_senha;
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


{$ENDREGION}

{$REGION 'GET E SET'}
function  TUsuario.getSenha:string;
begin
  Result:=Descriptografar(Self.F_senha) ;
end;

procedure TUsuario.setSenha(const Value: string);
begin
   Self.F_senha:= Criptografar(Value);
end;


{$ENDREGION}

function TUsuario.Logar(aUsuario:string; aSenha:string):Boolean;
var
Qry: TFDQuery;
begin
   try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT codigo,usuario,senha '+
    ' FROM tb_usuario where usuario=:usuario and  senha=:senha ');
    Qry.ParamByName('usuario').AsString := aUsuario;
    Qry.ParamByName('senha').AsString := Criptografar(aSenha);
    try
      Qry.Open;

      if Qry.FieldByName('codigo').AsInteger>0 then    begin
      F_codigo:=Qry.FieldByName('codigo').AsInteger;
      F_usuario:=Qry.FieldByName('usuario').AsString;
      F_senha:=  Qry.FieldByName('senha').AsString;
      Result :=True ;
      end
      else
      Result:=false;

    Except
      Result := false;
    end;

  finally
    if Assigned(Qry) then
      FreeAndNil(Qry)
  end;
end;

function TUsuario.UsuarioExiste(aUsuario:string):Boolean;
var
Qry: TFDQuery;
begin
   try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT count(codigo) AS Qtde '+
    ' FROM tb_usuario where usuario=:usuario ');
    Qry.ParamByName('usuario').AsString := aUsuario;
    try
      Qry.Open;

      if Qry.FieldByName('Qtde').AsInteger>0 then
      Result :=True
      else
      Result:=false;

    Except
      Result := false;
    end;

  finally
    if Assigned(Qry) then
      FreeAndNil(Qry)
  end;
end;

end.
