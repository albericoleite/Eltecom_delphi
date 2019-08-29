unit cCadEbdAula;

interface

uses System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils;
// LISTA DE UNITS

type
  TAula = class
  private
    // VARIAVEIS PRIVADA SOMENTE DENTRO DA CLASSE
    ConexaoDB: TFDConnection;
    F_codigo: Integer;
    F_cod_classe: Integer;
    F_cod_congregacao: Integer;
    F_qtd_biblias: Integer;
    F_qtd_revista: Integer;
    //F_cod_congregacao: Integer;
    //F_cod_congregacao: Integer;

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
   // property funcao: string read F_funcao
   //   write F_funcao;
   //      property cod_departamento: Integer read F_cod_departamento
   //   write F_cod_departamento;
  //  property nome_departamento: string read F_nome_departamento
  //    write F_nome_departamento;
  end;

implementation

{$REGION 'Constructor and Destructor'}

constructor TAula.Create;
begin
  ConexaoDB := aConexao;
end;

destructor TAula.Destroy;
begin

  inherited;
end;
{$ENDREGION}

{$REGION 'CRUD'}

function TAula.Apagar: Boolean;
var
  Qry: TFDQuery;
begin
  if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    IntToStr(F_codigo) + #13 + 'Descrição: ' ,
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
    Qry.SQL.Add('DELETE FROM tb_ebd_aula WHERE codigo=:codigo');
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

function TAula.Atualizar: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE igreja.tb_funcao  '+
    ' SET funcao=:funcao, cod_departamento=:cod_departamento, nome_departamento=:nome_departamento '+
    ' WHERE cod_funcao=:cod_funcao');
    Qry.ParamByName('cod_funcao').AsInteger := F_codigo ;
   // Qry.ParamByName('funcao').AsString := F_funcao;
   // Qry.ParamByName('cod_departamento').AsInteger := F_cod_departamento ;
   // Qry.ParamByName('nome_departamento').AsString := F_nome_departamento;
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

function TAula.Inserir: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO tb_ebd_aula '+
    ' (dta_aula, cod_classe, qtd_biblias, qtd_revistas, trimestre, '+
    ' cod_congregacao, nro_licao, titulo_licao, titulo_revista) '+
    ' VALUES(:dta_aula, :cod_classe, :qtd_biblias, :qtd_revistas, :trimestre '+
    ' ,:cod_congregacao, :nro_licao, :titulo_licao, :titulo_revista);');
    //Qry.ParamByName('funcao').AsString := F_funcao;
   // Qry.ParamByName('cod_departamento').AsInteger := F_cod_departamento ;
    //Qry.ParamByName('nome_departamento').AsString := F_nome_departamento;

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

function TAula.Selecionar(id: Integer): Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT cod_funcao, funcao, cod_departamento, nome_departamento '+
    ' FROM tb_funcao where cod_funcao=:cod_funcao ');
    Qry.ParamByName('cod_funcao').AsInteger := id;

    try
      Qry.Open;
     // Self.F_cod_funcao := Qry.FieldByName('cod_funcao').AsInteger;
     // Self.F_funcao := Qry.FieldByName('funcao').AsString;
     //  Self.F_cod_departamento := Qry.FieldByName('cod_departamento').AsInteger;
     // Self.F_nome_departamento := Qry.FieldByName('nome_departamento').AsString;
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
