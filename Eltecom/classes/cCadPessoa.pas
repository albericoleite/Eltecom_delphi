unit cCadPessoa;

interface

uses System.Classes, Vcl.Controls, Windows, Messages,    Forms,
   StdCtrls,  DBCtrls, Grids, DBGrids,  Data.DB,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils,Vcl.Imaging.jpeg,Vcl.Graphics,system.StrUtils;
// LISTA DE UNITS

type
  TPessoa = class
  private
    // VARIAVEIS PRIVADA SOMENTE DENTRO DA CLASSE
    ConexaoDB: TFDConnection;
    F_cod_pessoa: Integer;
    F_cod_congregacao: Integer;
    F_nome_pessoa: string;
    F_nome_conjugue: string;
    F_sexo: string;
    F_nome_pai: string;
    F_nome_mae: string;
    F_dta_nascimento: TDateTime;
    F_dta_casamento: TDateTime;
    F_logradouro: string;
    F_bairro: string;
    F_cep: string;
    F_cidade: string;
    F_email: string;
    F_fone_celular: string;
    F_dta_conversao: TDateTime;
    F_dta_batismo_esprito: TDateTime;
    F_dta_batismo_aguas: TDateTime;
    F_dta_congregado: TDateTime;
    F_dta_membro: TDateTime;
    F_estado_civil_atual: string;
    F_estado_civil_anterior: string;
    F_uf_endereco: string;
    F_estado_casa: string;
    F_complemento: string;
    F_fone_residencial: string;
    F_membro_congregado: string;
    F_nro_rol: Integer;
    F_naturalidade: string;
    F_uf_nascimento: string;
    F_nacionalidade: string;
    F_nrorg: String;
    F_cpf: string;
    F_USUARIO_CADASTRO: string;
    F_origem_eclesiastica: string;
    F_habilitacao_profissional: string;
    F_proced_eclesiastica: string;
    F_emprego_atual: string;
    F_funcao: string;
    F_local_descisao_congregado: string;
    F_grau_instr_situacao: string;
    F_grau_instrucao: string;
    F_form_teo_situacao: string;
    F_formacao_teologica: string;
    F_orgaorg: string;
    F_profissao: string;
    F_fone_trabalho: string;
    F_igreja: string;
    F_setor: string;
    F_nro_cad_congregado: string;
    F_SITUACAO: string;
    F_cod_situacao: Integer;
    F_congregacao:string;
    //F_foto :TJPEGImage;
    F_foto :TBitmap;
    function SelecionarAll(id: Integer): Boolean;
  public
    constructor Create(aConexao: TFDConnection); // CONSTRUTOR DA CLASSE
    destructor Destroy; override; // DESTROI A CLASSE USAR OVERRIDE POR CAUSA
    function Inserir: Boolean;
    function Atualizar: Boolean;
    function Apagar: Boolean;
    function Selecionar(id: Integer): Boolean;
    // DE SOBRESCREVER

    // VARI�VEIS PUBLICAS QUE PODE SER TRABALHADA FORA DA CLASSE
  published
    // VARIAVEIS PUBLICAS UTILAIZADAS PARA PROPRIEDADES DA CLASSE
    // PARA FORNECER INFORMA��ESD EM RUMTIME
    property cod_pessoa: Integer read F_cod_pessoa write F_cod_pessoa;
    property nome: string read F_nome_pessoa write F_nome_pessoa;
    property sexo: string read F_sexo write F_sexo;
    property nome_pai: string read F_nome_pai write F_nome_pai;
    property nome_mae: string read F_nome_mae write F_nome_mae;
    property nome_conjugue: string read F_nome_conjugue write F_nome_conjugue;
    property dta_nascimento: TDateTime read F_dta_nascimento
      write F_dta_nascimento;
    property dta_casamento: TDateTime read F_dta_casamento
      write F_dta_casamento;
    property logradouro: string read F_logradouro write F_logradouro;
    property bairro: string read F_bairro write F_bairro;
    property cep: string read F_cep write F_cep;
    property cidade: string read F_cidade write F_cidade;
    property email: string read F_email write F_email;
    property fone_celular: string read F_fone_celular write F_fone_celular;
    property fone_residecial: string read F_fone_residencial write F_fone_residencial;
    property fone_trabalho: string read F_fone_trabalho write F_fone_trabalho;
    property dta_conversao: TDateTime read F_dta_conversao
      write F_dta_conversao;
    property dta_batismo_esprito: TDateTime read F_dta_batismo_esprito
      write F_dta_batismo_esprito;
    property dta_batismo_aguas: TDateTime read F_dta_batismo_aguas
      write F_dta_batismo_aguas;
    property dta_congregado: TDateTime read F_dta_congregado
      write F_dta_congregado;
    property dta_membro: TDateTime read F_dta_membro write F_dta_membro;
    property cod_congregacao: Integer read F_cod_congregacao
      write F_cod_congregacao;
    property membro_congregado: String read F_membro_congregado
      write F_membro_congregado;
    property nro_rol: Integer read F_nro_rol write F_nro_rol;
    property uf_nascimento: String read F_uf_nascimento write F_uf_nascimento;
    property uf_endereco: String read F_uf_endereco write F_uf_endereco;
    property nacionalidade: String read F_nacionalidade write F_nacionalidade;
    property naturalidade: String read F_naturalidade write F_naturalidade;
    property nrorg: String read F_nrorg write F_nrorg;
    property USUARIO_CADASTRO: string read F_USUARIO_CADASTRO
      write F_USUARIO_CADASTRO;
    property origem_eclesiastica: string read F_origem_eclesiastica
      write F_origem_eclesiastica;
    property habilitacao_profissional: string read F_habilitacao_profissional
      write F_habilitacao_profissional;
    property proced_eclesiastica: string read F_proced_eclesiastica
      write F_proced_eclesiastica;
    property emprego_atual: string read F_emprego_atual write F_emprego_atual;
    property funcao: string read F_funcao write F_funcao;
    property local_descisao_congregado: string read F_local_descisao_congregado
      write F_local_descisao_congregado;
    property cpf: string read F_cpf write F_cpf;
    property grau_inst_situacao: string read F_grau_instr_situacao
      write F_grau_instr_situacao;
    property grau_instrucao: string read F_grau_instrucao
      write F_grau_instrucao;
    property form_teo_situacao: string read F_form_teo_situacao
      write F_form_teo_situacao;
    property formacao_teologica: string read F_formacao_teologica
      write F_formacao_teologica;
    property orgaorg: string read F_orgaorg write F_orgaorg;
    property profissao: string read F_profissao write F_profissao;
    property igreja: string read F_igreja write F_igreja;
    property setor: string read F_setor write F_setor;
    property nro_cad_congregado: string read F_nro_cad_congregado
      write F_nro_cad_congregado;
    property SITUACAO: string read F_SITUACAO write F_SITUACAO;
    property cod_situacao: Integer read F_cod_situacao write F_cod_situacao;
    property congregacao: string read F_congregacao write F_congregacao;
    property foto: TBitmap read F_foto write F_foto;
    property estado_civil_anterior: string read F_estado_civil_anterior write F_estado_civil_anterior;
    property estado_civil_atual: string read F_estado_civil_atual write F_estado_civil_atual;
  end;

implementation

{$REGION 'Constructor and Destructor'}

constructor TPessoa.Create;
begin
  ConexaoDB := aConexao;
  F_foto := TBitmap.Create;
  F_foto.Assign(nil);
end;

destructor TPessoa.Destroy;
begin
   if Assigned(F_foto) then begin
     F_foto.Assign(nil);
     F_foto.Free;
   end;
  inherited;
end;
{$ENDREGION}
{$REGION 'CRUD'}

function TPessoa.Apagar: Boolean;
var
  Qry: TFDQuery;
begin
  if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'C�digo: ' +
    IntToStr(F_cod_pessoa) + #13 + 'Descri��o: ' + F_nome_pessoa,
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
    Qry.SQL.Add('DELETE FROM tb_pessoa WHERE cod_pessoa=:cod_pessoa; ');
    Qry.ParamByName('cod_pessoa').AsInteger := F_cod_pessoa;
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

function TPessoa.Atualizar: Boolean;
var
  Qry: TFDQuery;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE tb_pessoa ' + ' SET nome_pessoa=:nome_pessoa ' +
      ', sexo=:sexo  ' + ', nome_pai=:nome_pai ' + ', nome_mae=:nome_mae   ' +
      ', dta_nascimento=:dta_nascimento ' +
      ', membro_congregado=:membro_congregado ' + ', nro_rol=:nro_rol ' +
      ', naturalidade=:naturalidade ' + ', uf_nascimento =:uf_nascimento ' +
      ', nacionalidade=:nacionalidade ' + ', nrorg=:nrorg ' +
      ', orgaorg=:orgaorg ' + ', cpf=:cpf ' +
      ', estado_civil_atual=:estado_civil_atual ' +
      ', estado_civil_anterior=:estado_civil_anterior ' +
      ', nome_conjugue=:nome_conjugue ' + ', dta_casamento=:dta_casamento ' +
      ', email=:email ' + ', grau_instr_situacao=:grau_instr_situacao ' +
      ', grau_instrucao=:grau_instrucao ' +
      ', form_teo_situacao=:form_teo_situacao ' +
      ', formacao_teologica=:formacao_teologica ' +
      ', uf_endereco=:uf_endereco ' + ', estado_casa=:estado_casa ' +
      ', complemento=:complemento ' + ', fone_residencial=:fone_residencial ' +
      ', logradouro=:logradouro ' + ', bairro=:bairro        ' +
      ', cep=:cep              ' + ', cidade=:cidade   ' +
      ', fone_celular=:fone_celular                 ' +
      ', dta_conversao=:dta_conversao ' +
      ', dta_batismo_esprito=:dta_batismo_esprito ' +
      ', dta_batismo_aguas=:dta_batismo_aguas ' +
      ', dta_congregado=:dta_congregado ' +
      ', local_descisao_congregado=:local_descisao_congregado ' +
      ', dta_membro=:dta_membro ' +
      ', origem_eclesiastica=:origem_eclesiastica ' +
      ', proced_eclesiastica=:proced_eclesiastica ' + ', profissao=:profissao '
      + ', habilitacao_profissional=:habilitacao_profissional ' +
      ', emprego_atual=:emprego_atual ' + ', funcao=:funcao ' +
      ', fone_trabalho=:fone_trabalho ' + ', igreja=:igreja ' +
      ', setor=:setor ' +
      ', nro_cad_congregado=:nro_cad_congregado , SITUACAO=:SITUACAO ' +
      ', cod_congregacao=:cod_congregacao ' + ', cod_situacao=:cod_situacao,congregacao=:congregacao ' +
      ', dta_batismo_esprito=:dta_batismo_esprito,dta_batismo_aguas=:dta_batismo_aguas WHERE cod_pessoa=:cod_pessoa; ');
    Qry.ParamByName('cod_situacao').AsInteger := F_cod_situacao;
    Qry.ParamByName('cod_congregacao').AsInteger := F_cod_congregacao;
    Qry.ParamByName('SITUACAO').AsString := F_SITUACAO;
    Qry.ParamByName('nro_cad_congregado').AsString := F_nro_cad_congregado;
    Qry.ParamByName('setor').AsString := F_setor;
    Qry.ParamByName('igreja').AsString := F_igreja;
    Qry.ParamByName('profissao').AsString := F_profissao;
    Qry.ParamByName('uf_endereco').AsString := F_uf_endereco;
    Qry.ParamByName('email').AsString := F_email;
    Qry.ParamByName('dta_casamento').AsDateTime := F_dta_casamento;
    Qry.ParamByName('nome_conjugue').AsString := F_nome_conjugue;
    Qry.ParamByName('nome_pessoa').AsString := F_nome_pessoa;
    Qry.ParamByName('cod_pessoa').AsInteger := F_cod_pessoa;
    Qry.ParamByName('sexo').AsString := F_sexo;
    Qry.ParamByName('nome_pai').AsString := F_nome_pai;
    Qry.ParamByName('nome_mae').AsString := F_nome_mae;
    Qry.ParamByName('dta_nascimento').AsDateTime := F_dta_nascimento;
    Qry.ParamByName('bairro').AsString := F_bairro;
    Qry.ParamByName('cep').AsString := F_cep;
    Qry.ParamByName('logradouro').AsString := F_logradouro;
    Qry.ParamByName('cidade').AsString := F_cidade;
    Qry.ParamByName('fone_celular').AsString := F_fone_celular;
    Qry.ParamByName('membro_congregado').AsString := F_membro_congregado;
    Qry.ParamByName('nro_rol').AsInteger := F_nro_rol;
    Qry.ParamByName('naturalidade').AsString := F_naturalidade;
    Qry.ParamByName('dta_conversao').AsDateTime := F_dta_conversao;
    Qry.ParamByName('uf_nascimento').AsString := F_uf_nascimento;
    Qry.ParamByName('nacionalidade').AsString := F_nacionalidade;
    Qry.ParamByName('nrorg').AsString := F_nrorg;
    Qry.ParamByName('dta_batismo_esprito').AsDateTime := F_dta_batismo_esprito;
    Qry.ParamByName('dta_congregado').AsDateTime := F_dta_congregado;
    Qry.ParamByName('dta_membro').AsDateTime := F_dta_membro;
    Qry.ParamByName('dta_batismo_aguas').AsDateTime := F_dta_batismo_aguas;
    Qry.ParamByName('cpf').AsString := F_cpf;
    Qry.ParamByName('origem_eclesiastica').AsString := F_origem_eclesiastica;
    Qry.ParamByName('proced_eclesiastica').AsString := F_proced_eclesiastica;
    Qry.ParamByName('habilitacao_profissional').AsString := F_habilitacao_profissional;
    Qry.ParamByName('emprego_atual').AsString := F_emprego_atual;
    Qry.ParamByName('funcao').AsString := F_funcao;
    Qry.ParamByName('local_descisao_congregado').AsString :=
      F_local_descisao_congregado;
    Qry.ParamByName('grau_instr_situacao').AsString := F_grau_instr_situacao;
    Qry.ParamByName('grau_instrucao').AsString := F_grau_instrucao;
    Qry.ParamByName('form_teo_situacao').AsString := F_form_teo_situacao;
    Qry.ParamByName('formacao_teologica').AsString := F_formacao_teologica;
    Qry.ParamByName('habilitacao_profissional').AsString :=
      F_habilitacao_profissional;
    Qry.ParamByName('orgaorg').AsString := F_orgaorg;
    Qry.ParamByName('estado_civil_atual').AsString := F_estado_civil_atual;
    Qry.ParamByName('estado_civil_anterior').AsString :=
      F_estado_civil_anterior;
    Qry.ParamByName('complemento').AsString := self.F_complemento;
    Qry.ParamByName('fone_residencial').AsString := self.F_fone_residencial;
    Qry.ParamByName('fone_trabalho').AsString := self.F_fone_trabalho;
    Qry.ParamByName('estado_casa').AsString := self.F_estado_casa;
    Qry.ParamByName('cpf').AsString := self.F_cpf;
     Qry.ParamByName('congregacao').AsString := self.F_congregacao;
   //  Qry.ParamByName('foto').DataType:=ftBlob;
   //   Qry.ParamByName('foto').Clear;
     {if self.F_foto.Empty  then
      Qry.ParamByName('foto').Clear
      else
     Qry.ParamByName('foto').Assign(self.F_foto);  }

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

function TPessoa.Inserir: Boolean;
var
  Qry: TFDQuery;
   jp:TBitmap;
   stream: TMemoryStream;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO tb_pessoa ' +
      ' (nome_pessoa, sexo, nome_pai, nome_mae, dta_nascimento,cod_congregacao, '
      + ' membro_congregado,nro_rol,naturalidade,dta_conversao,uf_nascimento, '
      + ' nacionalidade,nrorg,cpf, orgaorg,estado_civil_atual,estado_civil_anterior,complemento, '
      + ' fone_residencial,estado_casa ,funcao,uf_endereco,profissao,fone_trabalho,igreja,setor, '+
        ' nro_cad_congregado,SITUACAO,cod_situacao,dta_membro,congregacao, foto, nome_conjugue,dta_batismo_aguas,dta_batismo_esprito )  '
      + ' VALUES(:nome_pessoa, :sexo, :nome_pai,:nome_mae,:dta_nascimento,' +
      ' :cod_congregacao,:membro_congregado,:nro_rol,:naturalidade,:dta_conversao, '
      + ' :uf_nascimento,:nacionalidade,:nrorg,:cpf, :orgaorg,:estado_civil_atual,:estado_civil_anterior, '
      + ':complemento,:fone_residencial,:estado_casa,:funcao,:uf_endereco,:profissao,:fone_trabalho,:igreja,:setor,:nro_cad_congregado,:SITUACAO, '
      + ' :cod_situacao,:dta_membro,:congregacao , :foto ,:nome_conjugue,:dta_batismo_aguas,:dta_batismo_esprito ) ');
    Qry.ParamByName('nome_pessoa').AsString := Self.F_nome_pessoa;
    Qry.ParamByName('sexo').AsString := Self.F_sexo;
    Qry.ParamByName('nome_pai').AsString := Self.F_nome_pai;
    Qry.ParamByName('nome_mae').AsString := Self.F_nome_mae;
    Qry.ParamByName('cod_congregacao').AsInteger := Self.F_cod_congregacao;
    Qry.ParamByName('membro_congregado').AsString := Self.F_membro_congregado;
    Qry.ParamByName('nro_rol').AsInteger := Self.F_nro_rol;
    Qry.ParamByName('naturalidade').AsString := Self.F_naturalidade;
    Qry.ParamByName('dta_conversao').AsDateTime := Self.F_dta_conversao;
    Qry.ParamByName('dta_batismo_aguas').AsDateTime := Self.F_dta_batismo_aguas;
    Qry.ParamByName('dta_batismo_esprito').AsDateTime := Self.F_dta_batismo_esprito;
    Qry.ParamByName('uf_nascimento').AsString := Self.F_uf_nascimento;
    Qry.ParamByName('funcao').AsString := Self.F_funcao;
    Qry.ParamByName('cod_situacao').AsInteger := Self.F_cod_situacao;
    Qry.ParamByName('SITUACAO').AsString := Self.F_SITUACAO;
    Qry.ParamByName('nro_cad_congregado').AsString := Self.F_nro_cad_congregado;
    Qry.ParamByName('setor').AsString := Self.F_setor;
    Qry.ParamByName('igreja').AsString := Self.F_igreja;
    Qry.ParamByName('fone_trabalho').AsString := Self.F_fone_trabalho;
    Qry.ParamByName('profissao').AsString := Self.F_profissao;
    Qry.ParamByName('uf_endereco').AsString := Self.F_uf_endereco;
    Qry.ParamByName('estado_casa').AsString := Self.F_estado_casa;
    Qry.ParamByName('fone_residencial').AsString := Self.F_fone_residencial;
    Qry.ParamByName('dta_nascimento').AsDateTime := Self.F_dta_nascimento;
    // Qry.ParamByName('dta_congregado').AsDateTime := Self.F_dta_congregado;
    Qry.ParamByName('dta_membro').AsDateTime := Self.F_dta_membro;
    Qry.ParamByName('nacionalidade').AsString := Self.F_nacionalidade;
    Qry.ParamByName('nrorg').AsString := Self.F_nrorg;
    Qry.ParamByName('cpf').AsString := Self.F_cpf;
    Qry.ParamByName('orgaorg').AsString := Self.F_orgaorg;
    Qry.ParamByName('estado_civil_atual').AsString := Self.F_estado_civil_atual;
    Qry.ParamByName('estado_civil_anterior').AsString :=
      Self.F_estado_civil_anterior;
    Qry.ParamByName('complemento').AsString := Self.F_complemento;
    Qry.ParamByName('congregacao').AsString := Self.F_congregacao;
    Qry.ParamByName('nome_conjugue').AsString := Self.F_nome_conjugue;
    Qry.ParamByName('foto').DataType:=ftBlob;
    Qry.ParamByName('foto').Clear;
    //Self.F_foto.SaveToStream(stream);
   { jp:= TBitmap.Create;
    stream:= TMemoryStream.Create;
    self.foto.SaveToStream(stream);
    stream.Seek(0, soFromBeginning);
    jp.LoadFromStream(stream);

    //jp.Assign(Self.foto);

     if self.F_foto.Empty  then
      Qry.ParamByName('foto').Clear
      else
      Qry.ParamByName('foto').Assign(jp);  }
    //  stream := Tstream.Create;
    //  Self.F_foto.SaveToStream(stream);
   //  Qry.ParamByName('foto').Assign(stream) ;
    // MemStream.Seek(0,0);
    // MemStream.Free;
   { MemStream := TMemoryStream.Create;
    Self.F_foto.SaveToStream(MemStream);
    MemStream.Seek(0,0);
    Qry.ParamByName('foto').LoadFromStream(MemStream,ftBlob);
    MemStream.Free;    }

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

function TPessoa.Selecionar(id: Integer): Boolean;
var
  Qry: TFDQuery;
  stream : TStream;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT cod_pessoa, nome_pessoa,          ' +
      ' sexo, nome_pai, nome_mae, dta_nascimento, naturalidade,    ' +
      ' uf_nascimento, nacionalidade, nrorg, orgaorg, cpf, email,     ' +
      ' grau_instr_situacao, grau_instrucao, form_teo_situacao,        ' +
      ' formacao_teologica, estado_civil_atual, estado_civil_anterior,    ' +
      ' nome_conjugue, dta_casamento, logradouro, uf_endereco, estado_casa, ' +
      ' complemento, fone_residencial, bairro, cep, cidade, fone_celular,      '
      + ' dta_conversao, dta_batismo_esprito, dta_batismo_aguas, dta_congregado,   '
      + ' local_descisao_congregado, dta_membro, origem_eclesiastica,         '
      + ' proced_eclesiastica, profissao, habilitacao_profissional,         ' +
      ' emprego_atual, funcao, fone_trabalho, igreja, setor, congregacao,   ' +
      ' nro_rol, nro_cad_congregado, membro_congregado, dta_inclusao,   ' +
      ' USUARIO_CADASTRO, SITUACAO, cod_congregacao, cod_situacao,dta_batismo_esprito ,dta_batismo_aguas    ' +
      'FROM tb_pessoa WHERE cod_pessoa=:cod_pessoa; ');
    Qry.ParamByName('cod_pessoa').AsInteger := id;

    try
      Qry.Open;
      Self.F_cod_pessoa := Qry.FieldByName('cod_pessoa').AsInteger;
      Self.F_nome_pessoa := Qry.FieldByName('nome_pessoa').AsString;
      Self.F_nome_conjugue := Qry.FieldByName('nome_conjugue').AsString;
      Self.F_sexo := Qry.FieldByName('sexo').AsString;
      Self.F_nome_pai := Qry.FieldByName('nome_pai').AsString;
      Self.F_nome_mae := Qry.FieldByName('nome_mae').AsString;
      Self.F_email := Qry.FieldByName('email').AsString;
      Self.F_dta_nascimento := Qry.FieldByName('dta_nascimento').AsDateTime;
      Self.F_dta_casamento := Qry.FieldByName('dta_casamento').AsDateTime;
      Self.F_dta_conversao := Qry.FieldByName('dta_conversao').AsDateTime;
      Self.F_dta_congregado := Qry.FieldByName('dta_congregado').AsDateTime;
      Self.F_dta_membro := Qry.FieldByName('dta_membro').AsDateTime;
      Self.F_dta_batismo_esprito := Qry.FieldByName('dta_batismo_esprito').AsDateTime;
      Self.F_dta_batismo_aguas := Qry.FieldByName('dta_batismo_aguas').AsDateTime;
      Self.F_nro_rol := Qry.FieldByName('nro_rol').AsInteger;
      Self.F_nrorg := Qry.FieldByName('nrorg').AsString;
      Self.F_cidade := Qry.FieldByName('cidade').AsString;
      Self.F_logradouro := Qry.FieldByName('logradouro').AsString;
      Self.F_bairro := Qry.FieldByName('bairro').AsString;
      Self.F_cep := Qry.FieldByName('cep').AsString;
      Self.F_fone_celular := Qry.FieldByName('fone_celular').AsString;
      Self.F_fone_residencial := Qry.FieldByName('fone_residencial').AsString;
      Self.F_uf_endereco := Qry.FieldByName('uf_endereco').AsString;
      Self.F_uf_nascimento := Qry.FieldByName('uf_nascimento').AsString;
      Self.F_cpf := Qry.FieldByName('cpf').AsString;
      Self.F_emprego_atual := Qry.FieldByName('emprego_atual').AsString;
      Self.F_profissao := Qry.FieldByName('profissao').AsString;
      Self.F_funcao := Qry.FieldByName('funcao').AsString;
      Self.F_habilitacao_profissional := Qry.FieldByName('habilitacao_profissional').AsString;
      Self.F_igreja := Qry.FieldByName('igreja').AsString;
      Self.F_fone_trabalho := Qry.FieldByName('fone_trabalho').AsString;
      Self.F_nro_cad_congregado := Qry.FieldByName('nro_cad_congregado').AsString;
      Self.F_SITUACAO := Qry.FieldByName('SITUACAO').AsString;
      Self.F_membro_congregado := Qry.FieldByName('membro_congregado').AsString;
      Self.F_estado_civil_atual := Qry.FieldByName('estado_civil_atual').AsString;
      Self.F_estado_civil_anterior := Qry.FieldByName('estado_civil_anterior').AsString;
      Self.F_naturalidade := Qry.FieldByName('naturalidade').AsString;
      Self.F_nacionalidade := Qry.FieldByName('nacionalidade').AsString;
      Self.F_proced_eclesiastica := Qry.FieldByName('proced_eclesiastica').AsString;
      Self.F_origem_eclesiastica := Qry.FieldByName('origem_eclesiastica').AsString;
      Self.F_grau_instrucao := Qry.FieldByName('grau_instrucao').AsString;
      Self.F_grau_instr_situacao := Qry.FieldByName('grau_instr_situacao').AsString;
      Self.F_formacao_teologica := Qry.FieldByName('formacao_teologica').AsString;
      Self.F_form_teo_situacao := Qry.FieldByName('form_teo_situacao').AsString;

   //   Self.F_foto.Assign(Qry.FieldByName('foto'));
      //if Qry.FieldByName('foto').Assign(nil) then

    {  //CARREGANDO IMAGEM
      try
         stream := Qry.CreateBlobStream(Qry.FieldByName('foto'),bmRead);
         try
      Self.F_foto.LoadFromStream(Stream);
    finally
      stream.Free;
    end;
      finally

      end;  }


    Except
      Result := false;
    end;

  finally
    if Assigned(Qry) then
      FreeAndNil(Qry)
  end;
end;

function TPessoa.SelecionarAll(id: Integer): Boolean;
var
  Qry: TFDQuery;
  stream : TStream;
begin
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT cod_pessoa, nome_pessoa,          ' +
      ' sexo, nome_pai, nome_mae, dta_nascimento, naturalidade,    ' +
      ' uf_nascimento, nacionalidade, nrorg, orgaorg, cpf, email,     ' +
      ' grau_instr_situacao, grau_instrucao, form_teo_situacao,        ' +
      ' formacao_teologica, estado_civil_atual, estado_civil_anterior,    ' +
      ' nome_conjugue, dta_casamento, logradouro, uf_endereco, estado_casa, ' +
      ' complemento, fone_residencial, bairro, cep, cidade, fone_celular,      '
      + ' dta_conversao, dta_batismo_esprito, dta_batismo_aguas, dta_congregado,   '
      + ' local_descisao_congregado, dta_membro, origem_eclesiastica,         '
      + ' proced_eclesiastica, profissao, habilitacao_profissional,         ' +
      ' emprego_atual, funcao, fone_trabalho, igreja, setor, congregacao,   ' +
      ' nro_rol, nro_cad_congregado, membro_congregado, dta_inclusao,   ' +
      ' USUARIO_CADASTRO, SITUACAO, cod_congregacao, cod_situacao    ' +
      'FROM igreja.tb_pessoa WHERE cod_congregacao=:cod_congregacao; ');
    Qry.ParamByName('cod_congregacao').AsInteger := id;

    try
      Qry.Open;
      Self.F_cod_pessoa := Qry.FieldByName('cod_pessoa').AsInteger;
      Self.F_nome_pessoa := Qry.FieldByName('nome_pessoa').AsString;
      Self.F_nome_conjugue := Qry.FieldByName('nome_conjugue').AsString;
      Self.F_sexo := Qry.FieldByName('sexo').AsString;
      Self.F_nome_pai := Qry.FieldByName('nome_pai').AsString;
      Self.F_nome_mae := Qry.FieldByName('nome_mae').AsString;
      Self.F_email := Qry.FieldByName('email').AsString;
      Self.F_dta_nascimento := Qry.FieldByName('dta_nascimento').AsDateTime;
      Self.F_dta_casamento := Qry.FieldByName('dta_casamento').AsDateTime;
      Self.F_dta_conversao := Qry.FieldByName('dta_conversao').AsDateTime;
      Self.F_dta_congregado := Qry.FieldByName('dta_membro').AsDateTime;
      Self.F_dta_membro := Qry.FieldByName('dta_congregado').AsDateTime;
      Self.F_nro_rol := Qry.FieldByName('nro_rol').AsInteger;
      Self.F_nrorg := Qry.FieldByName('nrorg').AsString;
      Self.F_cidade := Qry.FieldByName('cidade').AsString;
      Self.F_logradouro := Qry.FieldByName('logradouro').AsString;
      Self.F_bairro := Qry.FieldByName('bairro').AsString;
      Self.F_cep := Qry.FieldByName('cep').AsString;
      Self.F_fone_celular := Qry.FieldByName('fone_celular').AsString;
      Self.F_fone_residencial := Qry.FieldByName('fone_residencial').AsString;
      Self.F_uf_endereco := Qry.FieldByName('uf_endereco').AsString;
      Self.F_uf_nascimento := Qry.FieldByName('uf_nascimento').AsString;
      Self.F_cpf := Qry.FieldByName('cpf').AsString;
      Self.F_emprego_atual := Qry.FieldByName('emprego_atual').AsString;
      Self.F_igreja := Qry.FieldByName('igreja').AsString;
      Self.F_fone_trabalho := Qry.FieldByName('fone_trabalho').AsString;
      Self.F_nro_cad_congregado := Qry.FieldByName('nro_cad_congregado').AsString;
      Self.F_SITUACAO := Qry.FieldByName('SITUACAO').AsString;
      Self.F_membro_congregado := Qry.FieldByName('membro_congregado').AsString;
      Self.F_estado_civil_atual := Qry.FieldByName('estado_civil_atual').AsString;
      Self.F_estado_civil_anterior := Qry.FieldByName('estado_civil_anterior').AsString;

   //   Self.F_foto.Assign(Qry.FieldByName('foto'));
      //if Qry.FieldByName('foto').Assign(nil) then

    {  //CARREGANDO IMAGEM
      try
         stream := Qry.CreateBlobStream(Qry.FieldByName('foto'),bmRead);
         try
      Self.F_foto.LoadFromStream(Stream);
    finally
      stream.Free;
    end;
      finally

      end;  }


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
