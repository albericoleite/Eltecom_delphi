unit cCadIgreja;

interface
uses System.Classes,Vcl.Controls,
Vcl.ExtCtrls,Vcl.Dialogs,FireDAC.Comp.Client,System.SysUtils;//LISTA DE UNITS

type
TIgreja = class
  private
//VARIAVEIS PRIVADA SOMENTE DENTRO DA CLASSE
ConexaoDB: TFDConnection;
F_cod_igreja:Integer;
F_nome_igreja:string;
F_cidade:string;
F_dta_fundacao:TDateTime;
F_nome_presidente:string;
F_dta_inclusao:TDateTime;
F_sigla_igreja:string;
F_site:string;
F_email:string;
F_cnpj:string;
F_logradouro:string;
F_bairro:string;
F_uf:string;
F_fone:string;
F_percentual_ajuste:Integer;
F_sistema:Integer;
F_situacao:Integer;
F_foto:TImage;


public
constructor Create(aConexao:TFDConnection);         //CONSTRUTOR DA CLASSE
destructor Destroy;override; // DESTROI A CLASSE USAR OVERRIDE POR CAUSA
function Inserir:Boolean;
function Atualizar:Boolean;
function Apagar:Boolean;
function Selecionar(id:integer):boolean;
//DE SOBRESCREVER

//VARIÁVEIS PUBLICAS QUE PODE SER TRABALHADA FORA DA CLASSE
published
//VARIAVEIS PUBLICAS UTILAIZADAS PARA PROPRIEDADES DA CLASSE
//PARA FORNECER INFORMAÇÕESD EM RUMTIME
property cod_igreja:integer             read F_cod_igreja       write F_cod_igreja;
property nome_igreja:string             read F_nome_igreja      write F_nome_igreja;
property cidade:string                  read F_cidade           write F_cidade;
property dta_fundacao:TDateTime         read F_dta_fundacao      write F_dta_fundacao;
property nome_presidente:string         read F_nome_presidente      write F_nome_presidente;
property dta_inclusao:TDateTime         read F_dta_inclusao      write F_dta_inclusao;
property sigla_igreja:string            read F_sigla_igreja      write F_sigla_igreja;
property site:string                    read F_site               write F_site;
property email:string                   read F_email              write F_email;
property cnpj:string                    read F_cnpj               write F_cnpj;
property logradouro:string              read F_logradouro         write F_logradouro;
property bairro:string                  read F_bairro             write F_bairro;
property uf:string                      read F_uf                 write F_uf;
property fone:string                    read F_fone               write F_fone;
property percentual_ajuste:integer      read F_percentual_ajuste      write F_percentual_ajuste;
property sistema:integer                read F_sistema            write F_sistema;
property situacao:integer               read F_situacao           write F_situacao;
property foto:TImage                    read F_foto               write F_foto;
end;


implementation

{$region 'Constructor and Destructor'}
  constructor TIgreja.Create;
begin
  ConexaoDB:=aConexao;
end;

destructor TIgreja.Destroy;
begin

  inherited;
end;
{$endregion}

{$region 'CRUD'}
function TIgreja.Apagar: Boolean;
var Qry:TFDQuery;
begin
    if MessageDlg('Apagar o Registro: '+#13+#13+
    'Código: '+IntToStr(F_cod_igreja)+#13+
    'Descrição: '+F_nome_igreja,mtConfirmation,[mbYes,mbNo],0)=mrNO then begin
      Result:=false;
      Abort;
    end;

    Try
    Result:=True;
    Qry:=TFDQuery.Create(nil);
       Qry.Connection:= ConexaoDB;
       Qry.SQL.Clear;
       Qry.SQL.Add('DELETE FROM tb_igreja WHERE cod_igreja=:cod_igreja; ');
       Qry.ParamByName('cod_igreja').AsInteger:=F_cod_igreja;
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

function TIgreja.Atualizar: Boolean;
var Qry:TFDQuery;
begin
    try
    Result:=true;
       Qry:=TFDQuery.Create(nil);
       Qry.Connection:= ConexaoDB;
       Qry.SQL.Clear;
       Qry.SQL.Add('UPDATE igreja.tb_igreja '+
        ' SET nome_igreja=:nome_igreja '+
        ', cidade=:cidade '+
        ', dta_fundacao=:dta_fundacao '+
        ', nome_presidente=:nome_presidente '+
        ', dta_inclusao=:dta_inclusao '+
        ', sigla_igreja=:sigla_igreja '+
        ', site=:site '+
        ', email=:email '+
        ', cnpj=:cnpj '+
        ', logradouro=:logradouro '+
        ', bairro=:bairro '+
        ', uf=:uf '+
        ', fone=:fone '+
        'percentual_ajuste=:percentual_ajuste '+
        ', sistema=:sistema '+
        ', situacao=:situacao '+
        ' WHERE cod_igreja=:cod_igreja');
       Qry.ParamByName('nome_igreja').AsString:=F_nome_igreja;
       Qry.ParamByName('cod_igreja').AsInteger:=F_cod_igreja;
       Qry.ParamByName('dta_fundacao').AsDateTime:=F_dta_fundacao;
       Qry.ParamByName('nome_presidente').AsString:=F_nome_presidente;
       Qry.ParamByName('dta_inclusao').AsDateTime :=F_dta_inclusao;
       Qry.ParamByName('sigla_igreja').AsString:=F_sigla_igreja;
       Qry.ParamByName('site').AsString:=F_sigla_igreja;
       Qry.ParamByName('email').AsString:=F_sigla_igreja;
       Qry.ParamByName('cnpj').AsString:=F_sigla_igreja;
       Qry.ParamByName('logradouro').AsString:=F_sigla_igreja;
       Qry.ParamByName('bairro').AsString:=F_sigla_igreja;
       Qry.ParamByName('uf').AsString:=F_sigla_igreja;
       Qry.ParamByName('fone').AsString:=F_sigla_igreja;
       Qry.ParamByName('percentual_ajuste').AsString:=F_sigla_igreja;
       Qry.ParamByName('sistema').AsString:=F_sigla_igreja;
       Qry.ParamByName('situacao').AsString:=F_sigla_igreja;
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

function TIgreja.Inserir: Boolean;
var Qry:TFDQuery;
begin
    try
    Result:=true;
       Qry:=TFDQuery.Create(nil);
       Qry.Connection:= ConexaoDB;
       Qry.SQL.Clear;
       Qry.SQL.Add('INSERT INTO igreja.tb_igreja '+
        '(nome_igreja, cidade, dta_fundacao, nome_presidente, dta_inclusao, sigla_igreja, '+
        'site, email, cnpj, logradouro, bairro, uf, fone, percentual_ajuste, sistema, situacao) '+
        'VALUES(:nome_igreja, :cidade, :dta_fundacao, :nome_presidente, :dta_inclusao, :sigla_igreja '+
        ', :site, :email, :cnpj, :logradouro, :bairro, :uf, :fone, :percentual_ajuste, :sistema, :situacao)');
       Qry.ParamByName('nome_igreja').AsString:=F_nome_igreja;
       Qry.ParamByName('dta_fundacao').AsDateTime:=F_dta_fundacao;
       Qry.ParamByName('nome_presidente').AsString:=F_nome_presidente;
       Qry.ParamByName('dta_inclusao').AsDateTime :=F_dta_inclusao;
       Qry.ParamByName('sigla_igreja').AsString:=F_sigla_igreja;
       Qry.ParamByName('site').AsString:=F_sigla_igreja;
       Qry.ParamByName('email').AsString:=F_sigla_igreja;
       Qry.ParamByName('cnpj').AsString:=F_sigla_igreja;
       Qry.ParamByName('logradouro').AsString:=F_sigla_igreja;
       Qry.ParamByName('bairro').AsString:=F_sigla_igreja;
       Qry.ParamByName('uf').AsString:=F_sigla_igreja;
       Qry.ParamByName('fone').AsString:=F_sigla_igreja;
       Qry.ParamByName('percentual_ajuste').AsString:=F_sigla_igreja;
       Qry.ParamByName('sistema').AsString:=F_sigla_igreja;
       Qry.ParamByName('situacao').AsString:=F_sigla_igreja;
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

function TIgreja.Selecionar(id: integer): boolean;
var Qry:TFDQuery;
begin
try
      Result:=true;
      Qry:=TFDQuery.Create(nil);
       Qry.Connection:= ConexaoDB;
       Qry.SQL.Clear;
       Qry.SQL.Add('SELECT cod_igreja, nome_igreja, cidade, dta_fundacao, nome_presidente, '+
       ' dta_inclusao, sigla_igreja, site, email, cnpj, logradouro, bairro, uf, fone, '+
       ' percentual_ajuste, sistema, situacao FROM igreja.tb_igreja where  cod_igreja = :cod_igreja ');
      Qry.ParamByName('cod_igreja').AsInteger:=id;


      try
      Qry.Open;
      Self.F_cod_igreja:=Qry.FieldByName('cod_igreja').AsInteger;
      Self.F_nome_igreja:= Qry.FieldByName('nome_igreja').AsString;
      Self.F_cidade:= Qry.FieldByName('cidade').AsString;
      Self.F_dta_fundacao:= Qry.FieldByName('dta_fundacao').AsDateTime;
      Self.F_nome_presidente:= Qry.FieldByName('nome_presidente').AsString;
      Self.F_dta_inclusao:= Qry.FieldByName('dta_inclusao').AsDateTime;
      Self.F_sigla_igreja:= Qry.FieldByName('sigla_igreja').AsString;
      Self.F_site:= Qry.FieldByName('site').AsString;
      Self.F_email:= Qry.FieldByName('email').AsString;
      Self.F_cnpj:= Qry.FieldByName('cnpj').AsString;
      Self.F_logradouro:= Qry.FieldByName('logradouro').AsString;
      Self.F_bairro:= Qry.FieldByName('bairro').AsString;
      Self.F_uf:= Qry.FieldByName('uf').AsString;
      Self.F_fone:= Qry.FieldByName('fone').AsString;
      Self.F_percentual_ajuste:= Qry.FieldByName('percentual_ajuste').AsInteger;
      Self.F_sistema:= Qry.FieldByName('sistema').AsInteger;
      Self.F_situacao:= Qry.FieldByName('situacao').AsInteger;
      Except
         Result:=false;
      end;

finally
     if Assigned(Qry) then
         FreeAndNil(Qry)
end;
end;
{$endregion}


end.
