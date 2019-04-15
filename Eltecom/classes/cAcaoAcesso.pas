unit cAcaoAcesso;

interface

uses System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils,Vcl.Forms,Vcl.Buttons;

  type
 TAcaoAcesso = class

 private
 ConexaoDB: TFDConnection;
 F_cod_acao_acesso: Integer;
 F_descricao: string;
 F_chave: string;

 class procedure PreencherAcoes(aForm:TForm; aConexao:TFDConnection);static;

 public
    constructor Create(aConexao: TFDConnection); // CONSTRUTOR DA CLASSE
    destructor Destroy; override; // DESTROI A CLASSE USAR OVERRIDE POR CAUSA
        function Inserir: Boolean;
    function Atualizar: Boolean;
    function Apagar: Boolean;
    function Selecionar(id: Integer): Boolean;
    function  ChaveExiste(aChave:String;aID:Integer=0):Boolean;
    class procedure CriarAcoes(aNomeForm:TFormClass;aConexao:TFDConnection);static;
      published
    // VARIAVEIS PUBLICAS UTILAIZADAS PARA PROPRIEDADES DA CLASSE
    // PARA FORNECER INFORMAÇÕESD EM RUMTIME
    property cod_acao_acesso: Integer read F_cod_acao_acesso
      write F_cod_acao_acesso;
    property descricao: string read F_descricao
      write F_descricao;
       property chave: string read F_chave
      write F_chave;

 end;

implementation

{ TAcaoAcesso }

function TAcaoAcesso.Apagar: Boolean;
var
  Qry: TFDQuery;
begin
  if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    IntToStr(F_cod_acao_acesso) + #13 + 'Descrição: ' + F_descricao,
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
    Qry.SQL.Add('DELETE FROM tb_acao_acesso  WHERE cod_acao_acesso=:cod_acao_acesso');
    Qry.ParamByName('cod_acao_acesso').AsInteger := F_cod_acao_acesso;
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

function TAcaoAcesso.Atualizar: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE tb_acao_acesso '+
' SET descricao=:descricao, chave=:chave '+
' WHERE cod_acao_acesso=:cod_acao_acesso');
    Qry.ParamByName('cod_acao_acesso').AsInteger := self.F_cod_acao_acesso;
    Qry.ParamByName('descricao').AsString := self.F_descricao;
    Qry.ParamByName('chave').AsString := self.F_chave;
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

function TAcaoAcesso.ChaveExiste(aChave: String;aID:Integer): Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := False;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('select count(cod_acao_acesso) as QTD from tb_acao_acesso where chave =:chave ');

    if aID>0 then
     begin
      Qry.SQL.Add(' AND cod_acao_acesso<>:cod_acao_acesso');
      Qry.ParamByName('cod_acao_acesso').AsInteger:=aID;
     end;

     Qry.ParamByName('chave').AsString := aChave;
    try
       Qry.Open;

    if Qry.FieldByName('QTD').AsInteger>0 then
     Result := True else
     Result:=false;
    except
       Result:=false;
    end;

  finally
    Qry.Close;
    if Assigned(Qry) then
      FreeAndNil(Qry)
  end;
end;

constructor TAcaoAcesso.Create(aConexao: TFDConnection);
begin
 ConexaoDB:=aConexao;
end;



destructor TAcaoAcesso.Destroy;
begin

  inherited;
end;

function TAcaoAcesso.Inserir: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO tb_acao_acesso  '+
    ' (descricao, chave) '+
    ' VALUES(:descricao, :chave)');
    Qry.ParamByName('descricao').AsString := Self.F_descricao;
    Qry.ParamByName('chave').AsString := Self.F_chave;

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

class procedure TAcaoAcesso.PreencherAcoes(aForm: TForm;
  aConexao: TFDConnection);
  var i:Integer;
  oAcaoAcesso:TAcaoAcesso;
begin
   try
     oAcaoAcesso:=TAcaoAcesso.Create(aConexao);
     oAcaoAcesso.descricao:=aForm.Caption;
     oAcaoAcesso.chave:=aForm.Name;

     if not oAcaoAcesso.ChaveExiste(oAcaoAcesso.chave) then
       oAcaoAcesso.Inserir;

   for I := 0 to aForm.ComponentCount -1 do
     begin
       if (aForm.Components[i].Tag=99) then
       begin
         oAcaoAcesso.descricao:=StringReplace(TBitBtn(aForm.Components[i]).Caption,'&','',[rfReplaceAll]);
         oAcaoAcesso.Chave:=aForm.Name+'_'+TBitBtn(aForm.Components[i]).Name;
         if not oAcaoAcesso.ChaveExiste(oAcaoAcesso.chave) then
         oAcaoAcesso.Inserir;
       end;
     end;


   finally
      if Assigned(oAcaoAcesso) then
        FreeAndNil(oAcaoAcesso);
   end;
end;

class procedure TAcaoAcesso.CriarAcoes(aNomeForm: TFormClass;
  aConexao: TFDConnection);
  var form:TForm;
begin
try
  form:= aNomeForm.Create(Application);
  PreencherAcoes(form,aConexao);
finally
    if Assigned(form) then
     form.Release;
end;

end;

function TAcaoAcesso.Selecionar(id: Integer): Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT cod_acao_acesso, descricao, chave '+
    ' FROM tb_acao_acesso where cod_acao_acesso=:cod_acao_acesso ');
    Qry.ParamByName('cod_acao_acesso').AsInteger := id;

    try
      Qry.Open;
      Self.F_cod_acao_acesso := Qry.FieldByName('cod_acao_acesso').AsInteger;
      Self.F_descricao := Qry.FieldByName('descricao').AsString;
      Self.F_chave := Qry.FieldByName('chave').AsString;
    Except
      Result := false;
    end;

  finally
    if Assigned(Qry) then
      FreeAndNil(Qry)
  end;
end;

end.
