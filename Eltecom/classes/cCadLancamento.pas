unit cCadLancamento;

interface

uses System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils;
// LISTA DE UNITS

type
  TLancamento = class
  private
    // VARIAVEIS PRIVADA SOMENTE DENTRO DA CLASSE
    ConexaoDB: TFDConnection;
    F_cod_entrada: Integer;
    F_nro_documento: Integer;
    F_dta_movimento: TDateTime;
    F_usuario_inclusao: string;
    F_descricao: string;
    F_valor: Double;
    F_tipo: string;
    F_status: string;
    F_cod_congregacao: Integer;
    F_situacao: Integer;
    F_cod_saida: Integer;
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
    property cod_congregacao: Integer read F_cod_congregacao
      write F_cod_congregacao;
    property cod_entrada: Integer read F_cod_entrada write F_cod_entrada;
    property nro_documento: Integer read F_nro_documento write F_nro_documento;
    property dta_movimento: TDateTime read F_dta_movimento write F_dta_movimento;
    property usuario_inclusao: string read F_usuario_inclusao write F_usuario_inclusao;
    property descricao: string read F_descricao write F_descricao;
    property valor: Double read F_valor write F_valor;
    property tipo: string read F_tipo write F_tipo;
    property status: string read F_status write F_status;
    property situacao: Integer read F_situacao write F_situacao;
    property cod_saida: Integer read F_cod_saida write F_cod_saida;
  end;

implementation

{$REGION 'Constructor and Destructor'}

constructor TLancamento.Create;
begin
  ConexaoDB := aConexao;
end;

destructor TLancamento.Destroy;
begin

  inherited;
end;
{$ENDREGION}
{$REGION 'CRUD'}

function TLancamento.Apagar: Boolean;
var
  Qry: TFDQuery;
begin
  if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    IntToStr(F_cod_entrada) + #13 + 'Descrição: ' + F_descricao,
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
    Qry.SQL.Add
      ('DELETE FROM tb_tesouraria WHERE cod_entrada=:cod_entrada');
    Qry.ParamByName('cod_entrada').AsInteger := F_cod_entrada;
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

function TLancamento.Atualizar: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE tb_tesouraria '+
    ' SET nro_documento=:nro_documento, dta_movimento=:dta_movimento '+
    ' , descricao=:descricao, valor=:valor, tipo=:tipo, status=:status, '+
    'cod_congregacao=:cod_congregacao, situacao=:situacao,cod_tipo_saida=:cod_tipo_saida WHERE cod_entrada=:cod_entrada');
    Qry.ParamByName('cod_congregacao').AsInteger := F_cod_congregacao;
    Qry.ParamByName('cod_entrada').AsInteger := F_cod_entrada;
    Qry.ParamByName('descricao').AsString := F_descricao;
    Qry.ParamByName('situacao').AsInteger := F_situacao;
    Qry.ParamByName('nro_documento').AsInteger := F_nro_documento;
    Qry.ParamByName('tipo').AsString := F_tipo;
    Qry.ParamByName('valor').AsFloat := F_valor;
    Qry.ParamByName('dta_movimento').AsDate := F_dta_movimento;
    Qry.ParamByName('status').AsString := F_status;
    Qry.ParamByName('cod_tipo_saida').AsInteger := F_cod_saida;
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

function TLancamento.Inserir: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO tb_tesouraria  '+
    ' (nro_documento, dta_movimento, usuario_inclusao, descricao, '+
    ' valor, tipo, status, cod_congregacao, situacao,cod_tipo_saida) '+
    ' VALUES(:nro_documento,:dta_movimento,:usuario_inclusao,:descricao '+
    ' ,:valor,:tipo,:status,:cod_congregacao,:situacao,:cod_tipo_saida)');
    Qry.ParamByName('cod_congregacao').AsInteger := Self.F_cod_congregacao;
    Qry.ParamByName('nro_documento').AsInteger := Self.F_nro_documento;
    Qry.ParamByName('tipo').Asstring := Self.F_tipo;
    Qry.ParamByName('usuario_inclusao').Asstring := Self.F_usuario_inclusao;
    Qry.ParamByName('descricao').Asstring := Self.F_descricao;
    Qry.ParamByName('valor').AsFloat := Self.F_valor;
    Qry.ParamByName('dta_movimento').AsDate := Self.F_dta_movimento;
    Qry.ParamByName('situacao').AsInteger := Self.F_situacao;
    Qry.ParamByName('status').Asstring := Self.F_status;
    Qry.ParamByName('cod_tipo_saida').AsInteger := Self.F_cod_saida;
    try
        ConexaoDB.StartTransaction;
         Qry.ExecSQL;
         ConexaoDB.Commit;
       except
       ConexaoDB.Rollback;
        Result:=false;
       end;
      finally if Assigned(Qry) then FreeAndNil(Qry) end; end;

    function TLancamento.Selecionar(id: Integer): Boolean; var Qry: TFDQuery;
    begin try Result := True; Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB; Qry.SQL.Clear;
    Qry.SQL.Add
      ('SELECT cod_entrada, nro_documento, dta_movimento, usuario_inclusao, '+
      ' descricao, valor, tipo, status, cod_congregacao, situacao,cod_tipo_saida '+
      ' FROM tb_tesouraria WHERE cod_entrada=:cod_entrada ');
    Qry.ParamByName('cod_entrada').AsInteger := id;

    try Qry.Open; Self.F_cod_congregacao := Qry.FieldByName('cod_congregacao')
      .AsInteger; Self.F_cod_entrada := Qry.FieldByName('cod_entrada').AsInteger;
    Self.F_nro_documento := Qry.FieldByName('nro_documento').AsInteger;
    Self.F_descricao := Qry.FieldByName('descricao').AsString;
    Self.F_tipo := Qry.FieldByName('tipo').AsString;
    Self.F_situacao := Qry.FieldByName('situacao').AsInteger;
    Self.F_valor := Qry.FieldByName('valor').AsFloat;
    Self.F_dta_movimento := Qry.FieldByName('dta_movimento').AsDateTime;
    Self.F_usuario_inclusao := Qry.FieldByName('usuario_inclusao').AsString;
    Self.F_cod_saida := Qry.FieldByName('cod_tipo_saida').AsInteger;
    Except Result := false; end;

    finally if Assigned(Qry) then FreeAndNil(Qry) end; end;
{$ENDREGION}
    end.
