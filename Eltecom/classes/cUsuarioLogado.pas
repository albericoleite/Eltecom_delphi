unit cUsuarioLogado;

interface

uses System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils;

type
  TUsuarioLogado = class
  private
    F_codigo: Integer;
    F_usuario: string;
    F_senha: string;
    F_tema:string;

  public
      class function TenhoAcesso(aCod_usuario: Integer; aChave: string;
      aConexao: TFDConnection): Boolean; static;

  published
    property codigo        :Integer    read F_codigo      write F_codigo;
    property nome          :string     read F_usuario           write F_usuario;
    property senha         :string     read F_senha          write F_senha;
    property tema         :string     read F_tema          write F_tema;
  end;


implementation

class function   TUsuarioLogado.TenhoAcesso(aCod_usuario:Integer; aChave:string; aConexao:TFDConnection):Boolean;
var
  Qry: TFDQuery;
begin
  try
  Result:=True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := aConexao;
    Qry.SQL.Clear;

    Qry.SQL.Add('select a.cod_usuario from tb_usuarios_acao_acesso a  '+
    ' where a.cod_usuario=:cod_usuario   '+
    ' and a.cod_acao_acesso =(select b.cod_acao_acesso from tb_acao_acesso b '+
    ' where b.chave =:chave )and a.ativo = 1');
    Qry.ParamByName('cod_usuario').AsInteger := aCod_usuario;
    Qry.ParamByName('chave').AsString := aChave;
    Qry.Open;

    if Qry.IsEmpty then
       Result:=False;

  finally
    if Assigned(Qry) then
      FreeAndNil(Qry);
  end;

end;


end.

