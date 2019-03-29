unit cCadDizimo;

interface

uses System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils;
// LISTA DE UNITS

type
  TDizimo = class
  private
    // VARIAVEIS PRIVADA SOMENTE DENTRO DA CLASSE
    ConexaoDB: TFDConnection;
    F_cod_dizimo: Integer;
    F_cod_talao: Integer;
    F_cod_cheque: Integer;
    F_nome: string;
    F_valor: Double;
    F_data: TDateTime;
    F_cargo: string;
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
    property cod_congregacao: Integer read F_cod_congregacao
      write F_cod_congregacao;
    property cod_dizimo: Integer read F_cod_dizimo write F_cod_dizimo;
    property cod_talao: Integer read F_cod_talao write F_cod_talao;
    property cod_cheque: Integer read F_cod_cheque write F_cod_cheque;
    property nome: string read F_nome write F_nome;
    property valor: Double read F_valor write F_valor;
    property cargo: string read F_cargo write F_cargo;
    property data: TDateTime read F_data write F_data;
  end;

implementation

{$REGION 'Constructor and Destructor'}

constructor TDizimo.Create;
begin
  ConexaoDB := aConexao;
end;

destructor TDizimo.Destroy;
begin

  inherited;
end;
{$ENDREGION}
{$REGION 'CRUD'}

function TDizimo.Apagar: Boolean;
var
  Qry: TFDQuery;
begin
  if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    IntToStr(F_cod_dizimo) + #13 + 'Descrição: ' + F_nome,
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
      ('DELETE FROM igreja.tb_dizimista WHERE cod_dizimo=:cod_dizimo ');
    Qry.ParamByName('cod_dizimo').AsInteger := F_cod_dizimo;
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

function TDizimo.Atualizar: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE igreja.tb_dizimista  '+
    ' SET cod_talao=:cod_talao, cod_cheque=:cod_cheque, '+
    ' nome=:nome, valor=:valor, `data`=:data, cargo=:cargo, cod_congregacao=:cod_congregacao '+
    ' WHERE cod_dizimo=:cod_dizimo ');
    Qry.ParamByName('cod_congregacao').AsInteger := F_cod_congregacao;
    Qry.ParamByName('cod_dizimo').AsInteger := F_cod_dizimo;
    Qry.ParamByName('cod_talao').AsInteger := F_cod_talao;
    Qry.ParamByName('cod_cheque').AsInteger := F_cod_cheque;
    Qry.ParamByName('nome').AsString := F_nome;
    Qry.ParamByName('valor').AsFloat := F_valor;
    Qry.ParamByName('data').AsDate := F_data;
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

function TDizimo.Inserir: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO igreja.tb_dizimista '+
    '(cod_talao, cod_cheque, nome, valor, `data`, cargo, cod_congregacao) '+
    ' VALUES(:cod_talao,:cod_cheque,:nome,:valor,:data,:cargo,:cod_congregacao)');
Qry.ParamByName('cod_congregacao').AsInteger := Self.F_cod_congregacao;
Qry.ParamByName('cod_talao').AsInteger := Self.F_cod_talao;
Qry.ParamByName('cod_cheque').AsInteger := Self.F_cod_cheque;
Qry.ParamByName('nome').Asstring := Self.F_nome;
Qry.ParamByName('valor').AsFloat := Self.F_valor;
Qry.ParamByName('data').AsDate := Self.F_data;
Qry.ParamByName('cargo').Asstring := Self.F_cargo;
      try Qry.SQL.Text;
       Qry.ExecSQL;
       except Result := false; end;
      finally if Assigned(Qry) then FreeAndNil(Qry) end; end;

    function TDizimo.Selecionar(id: Integer): Boolean; var Qry: TFDQuery;
    begin try Result := True; Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB; Qry.SQL.Clear;
    Qry.SQL.Add
      ('SELECT cod_dizimo, cod_talao, cod_cheque, nome, valor, `data`, cargo, cod_congregacao '+
      ' FROM igreja.tb_dizimista WHERE cod_dizimo=:cod_dizimo ');
    Qry.ParamByName('cod_dizimo').AsInteger := id;

    try Qry.Open; Self.F_cod_congregacao := Qry.FieldByName('cod_congregacao')
      .AsInteger; Self.F_cod_dizimo := Qry.FieldByName('cod_dizimo').AsInteger;
    Self.F_cod_talao := Qry.FieldByName('cod_talao').AsInteger;
    Self.F_cod_cheque := Qry.FieldByName('cod_cheque').AsInteger;
    Self.F_nome := Qry.FieldByName('nome').AsString;
    Self.F_valor := Qry.FieldByName('valor').AsFloat;
    Self.F_data := Qry.FieldByName('data').AsDateTime;
    Self.F_cargo := Qry.FieldByName('cargo').AsString;
    Except Result := false; end;

    finally if Assigned(Qry) then FreeAndNil(Qry) end; end;
{$ENDREGION}
    end.
