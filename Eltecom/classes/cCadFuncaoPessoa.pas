unit cCadFuncaoPessoa;

interface

uses System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils;
// LISTA DE UNITS

type
  TFuncaoPessoa = class
  private
    // VARIAVEIS PRIVADA SOMENTE DENTRO DA CLASSE
    ConexaoDB: TFDConnection;
    F_cod_func_pessoa: Integer;
    F_cod_funcao: Integer;
    F_nome_funcao: string;
    F_cod_pessoa: Integer;
    F_nome_pessoa: string;
    F_dta_inclusao:TDateTime;
    F_usuario_inclusao: string;
    F_usuario_alteracao: string;
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
     property cod_func_pessoa: Integer read F_cod_func_pessoa
      write F_cod_func_pessoa;
    property cod_funcao: Integer read F_cod_funcao
      write F_cod_funcao;
    property nome_funcao: string read F_nome_funcao
      write F_nome_funcao;
        property cod_pessoa: Integer read F_cod_pessoa
      write F_cod_pessoa;
    property nome_pessoa: string read F_nome_pessoa
      write F_nome_pessoa;
       property dta_inclusao: TDateTime read F_dta_inclusao
      write F_dta_inclusao;
       property usuario_inclusao: string read F_usuario_inclusao
      write F_usuario_inclusao;
       property usuario_alteracao: string read F_usuario_alteracao
      write F_usuario_alteracao;
       property status: string read F_status
      write F_status;
  end;

implementation

{$REGION 'Constructor and Destructor'}

constructor TFuncaoPessoa.Create;
begin
  ConexaoDB := aConexao;
end;

destructor TFuncaoPessoa.Destroy;
begin

  inherited;
end;
{$ENDREGION}

{$REGION 'CRUD'}

function TFuncaoPessoa.Apagar: Boolean;
var
  Qry: TFDQuery;
begin
  if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    IntToStr(F_cod_func_pessoa) + #13 + 'Descrição: ' + F_nome_pessoa,
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
    Qry.SQL.Add('DELETE FROM tb_func_pessoa  '+
    ' WHERE cod_func_pessoa=:cod_func_pessoa ');
    Qry.ParamByName('cod_func_pessoa').AsInteger := F_cod_func_pessoa;
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

function TFuncaoPessoa.Atualizar: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE tb_func_pessoa '+
    ' SET cod_funcao=:cod_funcao, nome_funcao=:nome_funcao, cod_pessoa=:cod_pessoa, '+
    ' nome_pessoa=:nome_pessoa,  status=:status, dta_alteracao=CURRENT_TIMESTAMP, ' +
    ' usuario_alteracao=:usuario_alteracao '+
    ' WHERE cod_func_pessoa=:cod_func_pessoa');
    Qry.ParamByName('cod_func_pessoa').AsInteger := F_cod_func_pessoa;
    Qry.ParamByName('cod_funcao').AsInteger := F_cod_funcao;
    Qry.ParamByName('nome_funcao').AsString := F_nome_funcao;
    Qry.ParamByName('cod_pessoa').AsInteger := F_cod_pessoa;
    Qry.ParamByName('nome_pessoa').AsString := F_nome_pessoa;
    Qry.ParamByName('status').AsString := F_status;
    Qry.ParamByName('usuario_alteracao').AsString := F_usuario_alteracao;
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

function TFuncaoPessoa.Inserir: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO tb_func_pessoa '+
    ' (cod_funcao, nome_funcao, cod_pessoa, nome_pessoa, '+
    ' status, usuario_inclusao) '+
    ' VALUES(:cod_funcao,:nome_funcao,:cod_pessoa,:nome_pessoa, '+
    ' :status,:usuario_inclusao)');
    Qry.ParamByName('cod_funcao').AsInteger := Self.F_cod_funcao;
    Qry.ParamByName('nome_funcao').AsString := Self.F_nome_funcao;
    Qry.ParamByName('cod_pessoa').AsInteger := Self.F_cod_pessoa;
    Qry.ParamByName('nome_pessoa').AsString := Self.F_nome_pessoa;
    Qry.ParamByName('usuario_inclusao').AsString := Self.F_usuario_inclusao;
    Qry.ParamByName('status').AsString := Self.F_status;
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

function TFuncaoPessoa.Selecionar(id: Integer): Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT cod_func_pessoa, cod_funcao, nome_funcao, cod_pessoa, '+
    ' nome_pessoa, dta_inclusao, status, dta_alteracao, usuario_inclusao, '+
    ' usuario_alteracao FROM igreja.tb_func_pessoa WHERE cod_func_pessoa=:cod_func_pessoa ');
    Qry.ParamByName('cod_func_pessoa').AsInteger := id;

    try
      Qry.Open;
      Self.F_cod_func_pessoa := Qry.FieldByName('cod_func_pessoa').AsInteger;
      Self.F_cod_funcao := Qry.FieldByName('cod_funcao').AsInteger;
      Self.F_nome_pessoa := Qry.FieldByName('nome_pessoa').AsString;
      Self.F_cod_pessoa := Qry.FieldByName('cod_pessoa').AsInteger;
      Self.F_dta_inclusao := Qry.FieldByName('dta_inclusao').AsDateTime;
      Self.F_usuario_inclusao := Qry.FieldByName('usuario_inclusao').AsString;
      Self.F_usuario_alteracao := Qry.FieldByName('usuario_alteracao').AsString;
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
