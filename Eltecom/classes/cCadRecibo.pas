unit cCadRecibo;

interface

uses System.Classes, Vcl.Controls,                 cCadLancamento,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils;
// LISTA DE UNITS

type
  TRecibo = class
  private
    // VARIAVEIS PRIVADA SOMENTE DENTRO DA CLASSE
    ConexaoDB: TFDConnection;
    F_cod_recibo: Integer;
    F_cod_cheque: Integer;
    F_descricao: string;
    F_valor: Double;
    F_data_recibo: TDateTime;
    F_data_lancamento: TDateTime;
    F_cargo: string;
    F_cod_congregacao: Integer;
    F_cod_operacao:Integer;
    F_endereco: string;
    F_bairro: string;
    F_cidade:string;
    F_uf:string;
    F_cpf:string;
    oLancamento: TLancamento;

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
      property cod_operacao: Integer read F_cod_operacao
      write F_cod_operacao;
    property cod_recibo: Integer read F_cod_recibo write F_cod_recibo;
    property cod_cheque: Integer read F_cod_cheque write F_cod_cheque;
    property descricao: string read F_descricao write F_descricao;
    property valor: Double read F_valor write F_valor;
    property cargo: string read F_cargo write F_cargo;
    property endereco: string read F_endereco write F_endereco;
    property bairro: string read F_bairro write F_bairro;
    property cidade: string read F_cidade write F_cidade;
    property uf: string read F_uf write F_uf;
    property cpf: string read F_cpf write F_cpf;
    property data_recibo: TDateTime read F_data_recibo write F_data_recibo;
    property data_lancamento: TDateTime read F_data_lancamento write F_data_lancamento;
  end;

implementation



{$REGION 'Constructor and Destructor'}

constructor TRecibo.Create;
begin
  ConexaoDB := aConexao;
  oLancamento := TLancamento.Create(ConexaoDB);
end;

destructor TRecibo.Destroy;
begin

  inherited;
end;
{$ENDREGION}

{$REGION 'CRUD'}

function TRecibo.Apagar: Boolean;
var
  Qry: TFDQuery;
begin
  if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    IntToStr(F_cod_recibo) + #13 + 'Descrição: ' + F_descricao, mtConfirmation,
    [mbYes, mbNo], 0) = mrNO then
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
      ('DELETE FROM tb_recibo WHERE cod_recibo=:cod_recibo');
    Qry.ParamByName('cod_recibo').AsInteger := F_cod_recibo;
    try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    except
      ConexaoDB.Rollback;
      Result := false;
    end;

  Finally
    if Assigned(Qry) then
      FreeAndNil(Qry)
  End;

end;

function TRecibo.Atualizar: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE tb_recibo '+
    ' SET descricao=:descricao, data_recibo=:data_recibo, valor=:valor, endereco=:endereco, '+
    ' bairro=:bairro, cidade=:cidade, uf=:uf, cpf=:cpf, cod_operacao=:cod_operacao, '+
    ' data_lancamento=:data_lancamento, cod_congregacao=:cod_congregacao  WHERE cod_recibo=:cod_recibo ');
    Qry.ParamByName('cod_congregacao').AsInteger := F_cod_congregacao;
    Qry.ParamByName('cod_operacao').AsInteger := F_cod_operacao;
    Qry.ParamByName('cod_recibo').AsInteger := F_cod_recibo;
    Qry.ParamByName('endereco').AsString := F_endereco;
    Qry.ParamByName('descricao').AsString := F_descricao;
    Qry.ParamByName('valor').AsFloat := F_valor;
    Qry.ParamByName('data_recibo').AsDate := F_data_recibo;
    Qry.ParamByName('data_lancamento').AsDate := F_data_lancamento;
    Qry.ParamByName('bairro').AsString := F_bairro;
    Qry.ParamByName('cidade').AsString := F_cidade;
    Qry.ParamByName('uf').AsString := F_uf;
    Qry.ParamByName('cpf').AsString := F_cpf;
    try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    except
      ConexaoDB.Rollback;
      Result := false;
    end;
  finally
    if Assigned(Qry) then
      FreeAndNil(Qry)
  end;
end;

function TRecibo.Inserir: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO tb_recibo  '+
  ' (descricao, data_recibo, valor, endereco, bairro, cidade, uf, cpf, cod_operacao, data_lancamento, cod_congregacao) '+
      ' VALUES(:descricao,:data_recibo,:valor,:endereco,:bairro,:cidade,:uf,:cpf,:cod_operacao, '+
      ' :data_lancamento,:cod_congregacao)');
    Qry.ParamByName('cod_congregacao').AsInteger := Self.F_cod_congregacao;
    Qry.ParamByName('cpf').AsString := Self.F_cpf;
    Qry.ParamByName('cod_operacao').AsInteger := Self.F_cod_operacao;
    Qry.ParamByName('descricao').AsString := Self.F_descricao;
    Qry.ParamByName('valor').AsFloat := Self.F_valor;
    Qry.ParamByName('data_recibo').AsDate := Self.F_data_recibo;
    Qry.ParamByName('data_lancamento').AsDate := Self.F_data_lancamento;
    Qry.ParamByName('endereco').AsString := Self.F_endereco;
    Qry.ParamByName('cidade').AsString := Self.F_cidade;
    Qry.ParamByName('uf').AsString := Self.F_uf;
    Qry.ParamByName('bairro').AsString := Self.F_bairro;
    Qry.ParamByName('cod_operacao').AsInteger := Self.F_cod_operacao;


    try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;

      //ENVIAR DADOS PARA O CADASTRO DE LANÇAMENTO
        oLancamento.cod_entrada := 0;
        oLancamento.cod_congregacao := Self.F_cod_congregacao;
        oLancamento.nro_documento := Self.F_cod_operacao;
        oLancamento.descricao := 'DOAÇÃO ASSISTÊNCIAL';
        oLancamento.valor := Self.F_valor;
        oLancamento.dta_movimento := Self.F_data_recibo;
        oLancamento.tipo := 'SAIDA';
        oLancamento.usuario_inclusao := '';
        oLancamento.Inserir;


    except
      ConexaoDB.Rollback;
      Result := false;
    end;
  finally
    if Assigned(Qry) then
      FreeAndNil(Qry)
  end;
end;

function TRecibo.Selecionar(id: Integer): Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add
      ('SELECT cod_recibo, descricao, data_recibo, valor, endereco, bairro, cidade, '
      + ' uf, cpf, cod_operacao, data_lancamento,cod_congregacao ' +
      ' FROM tb_recibo WHERE cod_recibo=:cod_recibo ');
    Qry.ParamByName('cod_recibo').AsInteger := id;

    try
      Qry.Open;
      Self.F_cod_congregacao := Qry.FieldByName('cod_congregacao').AsInteger;
      Self.F_cod_recibo := Qry.FieldByName('cod_recibo').AsInteger;
      Self.F_cod_operacao := Qry.FieldByName('cod_operacao').AsInteger;
      Self.F_cpf := Qry.FieldByName('cpf').AsString;
      Self.F_descricao := Qry.FieldByName('descricao').AsString;
      Self.F_valor := Qry.FieldByName('valor').AsFloat;
      Self.F_data_recibo := Qry.FieldByName('data_recibo').AsDateTime;
       Self.F_data_lancamento := Qry.FieldByName('data_lancamento').AsDateTime;
      Self.F_endereco := Qry.FieldByName('endereco').AsString;
      Self.F_bairro := Qry.FieldByName('bairro').AsString;
      Self.F_cidade := Qry.FieldByName('cidade').AsString;
      Self.F_uf := Qry.FieldByName('uf').AsString;
      Self.F_cpf := Qry.FieldByName('cpf').AsString;
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
