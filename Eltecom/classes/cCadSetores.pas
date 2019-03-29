unit cCadSetores;

interface

uses System.Classes,Vcl.Controls,
Vcl.ExtCtrls,Vcl.Dialogs,FireDAC.Comp.Client,System.SysUtils;//LISTA DE UNITS

type
TSetor = class
private
//VARIAVEIS PRIVADA SOMENTE DENTRO DA CLASSE
ConexaoDB: TFDConnection;
F_cod_setor:Integer;
F_Setor:string;
    function getcodigo: integer;
    function getDescricao: string;
    procedure setcodigo(const Value: integer);
    procedure setDescricao(const Value: string);
public
constructor Create(aConexao:TFDConnection);         //CONSTRUTOR DA CLASSE
destructor Destroy;override; // DESTROI A CLASSE USAR OVERRIDE POR CAUSA
function Inserir:Boolean;
function Atualizar:Boolean;
function Apagar:Boolean;
function Selecionar(id:integer):boolean;
//DE SOBRESCREVER

//VARI�VEIS PUBLICAS QUE PODE SER TRABALHADA FORA DA CLASSE
published
//VARIAVEIS PUBLICAS UTILAIZADAS PARA PROPRIEDADES DA CLASSE
//PARA FORNECER INFORMA��ESD EM RUMTIME
property codigo:integer read getcodigo write setcodigo;
property descricao:string read getDescricao write setDescricao;
end;

implementation

{ TSetor }

{$region 'Constructor and Destructor'}
  constructor TSetor.Create;
begin
  ConexaoDB:=aConexao;
end;

destructor TSetor.Destroy;
begin

  inherited;
end;
{$endregion}

{$region 'CRUD'}
function TSetor.Apagar: Boolean;
var Qry:TFDQuery;
begin
    if MessageDlg('Apagar o Registro: '+#13+#13+
    'C�digo: '+IntToStr(F_cod_setor)+#13+
    'Descri��o: '+F_Setor,mtConfirmation,[mbYes,mbNo],0)=mrNO then begin
      Result:=false;
      Abort;
    end;

    Try
    Result:=True;
    Qry:=TFDQuery.Create(nil);
       Qry.Connection:= ConexaoDB;
       Qry.SQL.Clear;
       Qry.SQL.Add('DELETE FROM tb_setor WHERE cod_setor=:cod_setor; ');
       Qry.ParamByName('cod_setor').AsInteger:=F_cod_setor;
       try
         Qry.ExecSQL;
       except
        Result:=false;
       end;

    Finally
      if Assigned(Qry) then
         FreeAndNil(Qry)
    End;

end;

function TSetor.Atualizar: Boolean;
var Qry:TFDQuery;
begin
    try
    Result:=true;
       Qry:=TFDQuery.Create(nil);
       Qry.Connection:= ConexaoDB;
       Qry.SQL.Clear;
       Qry.SQL.Add('UPDATE igreja.tb_setor '  +
        ' SET setor=:setor WHERE cod_setor=:cod_setor; ');
       Qry.ParamByName('setor').AsString:=F_Setor;
       Qry.ParamByName('cod_setor').AsInteger:=F_cod_setor;
       try
         Qry.ExecSQL;
       except
        Result:=false;
       end;
    finally
       if Assigned(Qry) then
         FreeAndNil(Qry)
    end;
end;

function TSetor.Inserir: Boolean;
var Qry:TFDQuery;
begin
    try
    Result:=true;
       Qry:=TFDQuery.Create(nil);
       Qry.Connection:= ConexaoDB;
       Qry.SQL.Clear;
       Qry.SQL.Add('INSERT INTO tb_setor (setor,cod_igreja) VALUES(:descricao,1);');
       Qry.ParamByName('descricao').AsString:=F_Setor;
       try
         Qry.ExecSQL;
       except
                           Result:=false;
       end;
    finally
       if Assigned(Qry) then
         FreeAndNil(Qry)
    end;
end;

function TSetor.Selecionar(id: integer): boolean;
var Qry:TFDQuery;
begin
try
      Result:=true;
      Qry:=TFDQuery.Create(nil);
       Qry.Connection:= ConexaoDB;
       Qry.SQL.Clear;
       Qry.SQL.Add('SELECT cod_setor, setor, cod_igreja, '+
       'cod_congregacao, data_cadastro, usuario_cadastro FROM tb_setor where cod_setor = :cod_setor ');
      Qry.ParamByName('cod_setor').AsInteger:=id;

    
      try
      Qry.Open;
      Self.F_cod_setor:=Qry.FieldByName('cod_setor').AsInteger; 
      Self.F_Setor:= Qry.FieldByName('setor').AsString; 
      Except
         Result:=false;
      end;       

finally
     if Assigned(Qry) then
         FreeAndNil(Qry)
end;   
end;
{$endregion}

function TSetor.getcodigo: integer;
begin
    Result:= Self.F_cod_setor;
end;

function TSetor.getDescricao: string;
begin
   Result:= Self.F_Setor;
end;



procedure TSetor.setcodigo(const Value: integer);
begin
   Self.F_cod_setor:=  value;
end;

procedure TSetor.setDescricao(const Value: string);
begin
    Self.F_Setor:=value;
end;

end.
