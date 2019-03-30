unit cCadCongregacao;

interface

uses System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils;
// LISTA DE UNITS

type
  TCongregacao = class
  private
    // VARIAVEIS PRIVADA SOMENTE DENTRO DA CLASSE
    ConexaoDB: TFDConnection;
    F_cod_congregacao: Integer;
    F_cod_central: Integer;
    F_congregacao: string;
    F_setor: string;
    F_polo: string;
    F_situacao: string;
    F_telefone: string;
    F_cnpj: string;
    F_siteblog: string;
    F_endereco: string;
    F_complemento: string;
    F_bairro: string;
    F_cep: string;
    F_cidade: string;
    F_diasculto: string;
    F_diacoa: string;
    F_diacom: string;
    F_diacoi: string;
    F_diacv: string;
    F_data_aber_sub: TDateTime;
    F_data_aber_cong: TDateTime;
    F_data_fun_coa: TDateTime;
    F_data_fun_com: TDateTime;
    F_data_fun_coi: TDateTime;
    F_data_fun_cv: TDateTime;
    F_data_cadastro: TDateTime;
    F_usuario_cadastro: string;
    F_cong_principal: string;
    F_dirigente: string;
    F_cod_setor: string;
    F_cod_igreja: string;
    F_cod_cc: Integer;
    F_sigla: string;

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
    property cod_central: Integer read F_cod_central write F_cod_central;
    property congregacao: string read F_congregacao write F_congregacao;
    property setor: string read F_setor write F_setor;
    property polo: string read F_polo write F_polo;
    property situacao: string read F_situacao write F_situacao;
    property telefone: string read F_telefone write F_telefone;
    property cnpj: string read F_cnpj write F_cnpj;
    property siteblog: string read F_siteblog write F_siteblog;
    property endereco: string read F_endereco write F_endereco;
    property complemento: string read F_complemento write F_complemento;
    property bairro: string read F_bairro write F_bairro;
    property cep: string read F_cep write F_cep;
    property cidade: string read F_cidade write F_cidade;
    property diasculto: string read F_diasculto write F_diasculto;
    property diacoa: string read F_diacoa write F_diacoa;
    property diacom: string read F_diacom write F_diacom;
    property diacoi: string read F_diacoi write F_diacoi;
    property diacv: string read F_diacv write F_diacv;
    property data_aber_sub: TDateTime read F_data_aber_sub
      write F_data_aber_sub;
    property data_aber_cong: TDateTime read F_data_aber_cong
      write F_data_aber_cong;
    property data_fun_coa: TDateTime read F_data_fun_coa write F_data_fun_coa;
    property data_fun_com: TDateTime read F_data_fun_com write F_data_fun_com;
    property data_fun_coi: TDateTime read F_data_fun_coi write F_data_fun_coi;
    property data_fun_cv: TDateTime read F_data_fun_cv write F_data_fun_cv;
    property data_cadastro: TDateTime read F_data_cadastro
      write F_data_cadastro;
    property usuario_cadastro: string read F_usuario_cadastro
      write F_usuario_cadastro;
    property cong_principal: string read F_cong_principal
      write F_cong_principal;
    property dirigente: string read F_dirigente write F_dirigente;
    property cod_setor: string read F_cod_setor write F_cod_setor;
    property cod_igreja: string read F_cod_igreja write F_cod_igreja;
    property cod_cc: Integer read F_cod_cc write F_cod_cc;
    property sigla: string read F_sigla write F_sigla;
  end;

implementation

{$REGION 'Constructor and Destructor'}

constructor TCongregacao.Create;
begin
  ConexaoDB := aConexao;
end;

destructor TCongregacao.Destroy;
begin

  inherited;
end;
{$ENDREGION}
{$REGION 'CRUD'}

function TCongregacao.Apagar: Boolean;
var
  Qry: TFDQuery;
begin
  if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    IntToStr(F_cod_congregacao) + #13 + 'Descrição: ' + F_congregacao,
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
      ('DELETE FROM igreja.tb_congregacao WHERE cod_congregacao=:cod_congregacao ');
    Qry.ParamByName('cod_congregacao').AsInteger := F_cod_congregacao;
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

function TCongregacao.Atualizar: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE igreja.tb_congregacao ' +
      ' SET cod_central=:cod_central, congregacao=:congregacao, setor=:setor, polo=:polo, '
      + 'situacao=:situacao, telefone=:telefone, cnpj=:cnpj, siteblog=:siteblog, endereco=:endereco, '
      + 'complemento=:complemento, bairro=:bairro, cep=:cep, cidade=:cidade, diasculto=:diasculto, '
      + 'diacoa=:diacoa, diacom=:diacom, diacoi=:diacoi, diacv=:diacv, data_aber_sub=:data_aber_sub, '
      + 'data_aber_cong=:data_aber_cong, data_fun_coa=:data_fun_coa, data_fun_com=:data_fun_com, data_fun_coi=:data_fun_coi, '
      + 'data_fun_cv=:data_fun_cv, cong_principal=:cong_principal, ' +
      'dirigente=:dirigente, cod_setor=:cod_setor, cod_igreja=:cod_igreja, cod_cc=:cod_cc, sigla=:sigla '
      + ' WHERE cod_congregacao=:cod_congregacao');
    Qry.ParamByName('cod_congregacao').AsInteger := F_cod_congregacao;
    Qry.ParamByName('cod_central').AsInteger := F_cod_central;
    Qry.ParamByName('congregacao').AsString := F_congregacao;
    Qry.ParamByName('setor').AsString := F_setor;
    Qry.ParamByName('polo').AsString := F_polo;
    Qry.ParamByName('situacao').AsString := F_situacao;
    Qry.ParamByName('telefone').AsString := F_telefone;
    Qry.ParamByName('cnpj').AsString := F_cnpj;
    Qry.ParamByName('siteblog').AsString := F_siteblog;
    Qry.ParamByName('endereco').AsString := F_endereco;
    Qry.ParamByName('complemento').AsString := F_complemento;
    Qry.ParamByName('bairro').AsString := F_bairro;
    Qry.ParamByName('cep').AsString := F_cep;
    Qry.ParamByName('cidade').AsString := F_cidade;
    Qry.ParamByName('diasculto').AsString := F_diasculto;
    Qry.ParamByName('diacoa').AsString := F_diacoa;
    Qry.ParamByName('diacom').AsString := F_diacom;
    Qry.ParamByName('diacoi').AsString := F_diacoi;
    Qry.ParamByName('diacv').AsString := F_diacv;
    Qry.ParamByName('data_aber_sub').AsDate := F_data_aber_sub;
    Qry.ParamByName('data_aber_cong').AsDate := F_data_aber_cong;
    Qry.ParamByName('data_fun_coa').AsDate := F_data_fun_coa;
    Qry.ParamByName('data_fun_com').AsDate := F_data_fun_com;
    Qry.ParamByName('data_fun_coi').AsDate := F_data_fun_coi;
    Qry.ParamByName('data_fun_cv').AsDate := F_data_fun_cv;
    Qry.ParamByName('cong_principal').AsString := F_cong_principal;
    Qry.ParamByName('dirigente').AsString := F_dirigente;
    Qry.ParamByName('cod_setor').AsString := F_cod_setor;
    Qry.ParamByName('cod_igreja').AsString := F_cod_igreja;
    Qry.ParamByName('cod_cc').AsInteger := F_cod_cc;
    Qry.ParamByName('sigla').AsString := F_sigla;
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

function TCongregacao.Inserir: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO igreja.tb_congregacao(cod_central, congregacao, '+
      ' setor, polo, situacao, telefone, cnpj, siteblog, endereco, complemento, '+
      ' bairro, cep, cidade, diasculto, diacoa, diacom, diacoi, diacv, '+
      ' data_aber_sub, data_aber_cong, data_fun_coa, data_fun_com, data_fun_coi, '+
      ' data_fun_cv, data_cadastro, usuario_cadastro, cong_principal, dirigente,  '+
      ' cod_setor, cod_igreja, cod_cc, sigla)VALUES(:cod_central, :congregacao, '+
      ' :setor, :polo, :situacao, :telefone, :cnpj, :siteblog, :endereco,  '+
      ' :complemento, :bairro, :cep, :cidade, :diasculto, :diacoa, :diacom, '+
      ' :diacoi, :diacv, :data_aber_sub, :data_aber_cong, :data_fun_coa,    '+
      ' :data_fun_com, :data_fun_coi, :data_fun_cv, :data_cadastro,   '+
      ' :usuario_cadastro, :cong_principal, :dirigente, :cod_setor,   '+
      ' :cod_igreja, :cod_cc, :sigla)');
Qry.ParamByName('cod_congregacao').AsInteger := Self.F_cod_congregacao;
Qry.ParamByName('cod_central').AsInteger := Self.F_cod_central;
Qry.ParamByName('congregacao').Asstring := Self.F_congregacao;
Qry.ParamByName('setor').Asstring := Self.F_setor;
Qry.ParamByName('polo').Asstring := Self.F_polo;
Qry.ParamByName('situacao').Asstring := Self.F_situacao;
Qry.ParamByName('telefone').Asstring := Self.F_telefone;
Qry.ParamByName('cnpj').Asstring := Self.F_cnpj;
Qry.ParamByName('siteblog').Asstring := Self.F_siteblog;
Qry.ParamByName('endereco').Asstring := Self.F_endereco;
Qry.ParamByName('complemento').Asstring := Self.F_complemento;
Qry.ParamByName('bairro').Asstring := Self.F_bairro;
Qry.ParamByName('cep').Asstring := Self.F_cep;
Qry.ParamByName('cidade').Asstring := Self.F_cidade;
Qry.ParamByName('diasculto').Asstring := Self.F_diasculto;
Qry.ParamByName('diacoa').Asstring := Self.F_diacoa;
Qry.ParamByName('diacom').Asstring := Self.F_diacom;
Qry.ParamByName('diacoi').Asstring := Self.F_diacoi;
Qry.ParamByName('diacv').Asstring := Self.F_diacv;
Qry.ParamByName('data_aber_sub').AsDate := Self.F_data_aber_sub;
Qry.ParamByName('data_aber_cong').AsDate := Self.F_data_aber_cong;
Qry.ParamByName('data_fun_coa').AsDate := Self.F_data_fun_coa;
Qry.ParamByName('data_fun_com').AsDate := Self.F_data_fun_com;
Qry.ParamByName('data_fun_coi').AsDate := Self.F_data_fun_coi;
Qry.ParamByName('data_fun_cv').AsDate := Self.F_data_fun_cv;
Qry.ParamByName('data_cadastro').AsDate := Self.F_data_cadastro;
Qry.ParamByName('usuario_cadastro').Asstring := Self.F_usuario_cadastro;
Qry.ParamByName('cong_principal').Asstring := Self.F_cong_principal;
Qry.ParamByName('dirigente').Asstring := Self.F_dirigente;
Qry.ParamByName('cod_setor').Asstring := Self.F_cod_setor;
Qry.ParamByName('cod_igreja').Asstring := Self.F_cod_igreja;
Qry.ParamByName('cod_cc').AsInteger := Self.F_cod_cc;
Qry.ParamByName('sigla').Asstring := Self.F_sigla;


      try Qry.SQL.Text;
      Qry.ExecSQL;
      except Result := false; end;
      finally if Assigned(Qry) then FreeAndNil(Qry) end; end;

    function TCongregacao.Selecionar(id: Integer): Boolean; var Qry: TFDQuery;
    begin try Result := True; Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB; Qry.SQL.Clear;
    Qry.SQL.Add
      ('SELECT cod_congregacao, cod_central, congregacao, setor, polo, situacao, '
      + 'telefone, cnpj, siteblog, endereco, complemento, bairro, cep, cidade, diasculto, '
      + ' diacoa, diacom, diacoi, diacv, data_aber_sub, data_aber_cong, data_fun_coa, '
      + ' data_fun_com, data_fun_coi, data_fun_cv, data_cadastro, usuario_cadastro, '
      + ' cong_principal, dirigente, cod_setor, cod_igreja, cod_cc, sigla ' +
      'FROM igreja.tb_congregacao WHERE cod_congregacao=:cod_congregacao ');
    Qry.ParamByName('cod_congregacao').AsInteger := id;

    try Qry.Open; Self.F_cod_congregacao := Qry.FieldByName('cod_congregacao')
      .AsInteger; Self.F_cod_central := Qry.FieldByName('cod_central').AsInteger;
    Self.F_congregacao := Qry.FieldByName('congregacao').AsString;
    Self.F_setor := Qry.FieldByName('setor').AsString;
    Self.F_polo := Qry.FieldByName('polo').AsString;
    Self.F_situacao := Qry.FieldByName('situacao').AsString;
    Self.F_telefone := Qry.FieldByName('telefone').AsString;
    Self.F_cnpj := Qry.FieldByName('cnpj').AsString;
    Self.F_siteblog := Qry.FieldByName('siteblog').AsString;
    Self.F_endereco := Qry.FieldByName('endereco').AsString;
    Self.F_complemento := Qry.FieldByName('complemento').AsString;
    Self.F_bairro := Qry.FieldByName('bairro').AsString;
    Self.F_cep := Qry.FieldByName('cep').AsString;
    Self.F_cidade := Qry.FieldByName('cidade').AsString;
    Self.F_diasculto := Qry.FieldByName('diasculto').AsString;
    Self.F_diacoa := Qry.FieldByName('diacoa').AsString;
    Self.F_diacom := Qry.FieldByName('diacom').AsString;
    Self.F_diacoi := Qry.FieldByName('diacoi').AsString;
    Self.F_diacv := Qry.FieldByName('diacv').AsString;
    Self.F_data_aber_sub := Qry.FieldByName('data_aber_sub').AsDateTime;
    Self.F_data_aber_cong := Qry.FieldByName('data_aber_cong').AsDateTime;
    Self.F_data_fun_coa := Qry.FieldByName('data_fun_coa').AsDateTime;
    Self.F_data_fun_com := Qry.FieldByName('data_fun_com').AsDateTime;
    Self.F_data_fun_coi := Qry.FieldByName('data_fun_coi').AsDateTime;
    Self.F_data_fun_cv := Qry.FieldByName('data_fun_cv').AsDateTime;
    Self.F_data_cadastro := Qry.FieldByName('data_cadastro').AsDateTime;
    Self.F_usuario_cadastro := Qry.FieldByName('usuario_cadastro').AsString;
    Self.F_cong_principal := Qry.FieldByName('cong_principal').AsString;
    Self.F_dirigente := Qry.FieldByName('dirigente').AsString;
    Self.F_cod_setor := Qry.FieldByName('cod_setor').AsString;
    Self.F_cod_igreja := Qry.FieldByName('cod_igreja').AsString;
    Self.F_cod_cc := Qry.FieldByName('cod_cc').AsInteger;
    Self.F_sigla := Qry.FieldByName('sigla').AsString;

    Except Result := false; end;

    finally if Assigned(Qry) then FreeAndNil(Qry) end; end;
{$ENDREGION}
    end.
