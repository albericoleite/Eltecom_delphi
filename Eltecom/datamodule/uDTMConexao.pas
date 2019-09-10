unit uDTMConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, Data.DB, FireDAC.Comp.Client, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TdtmPrincipal = class(TDataModule)
    ConexaoDB: TFDConnection;
    FlinkMysql: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    fdqryCong_sistema: TFDQuery;
    fdtncfldCong_sistemacod_congregacao: TFDAutoIncField;
    strngfldCong_sistemacongregacao: TStringField;
    strngfldCong_sistemasetor: TStringField;
    fdqryPessoa: TFDQuery;
    fdtncfldPessoacod_pessoa: TFDAutoIncField;
    strngfldPessoanome_pessoa: TStringField;
    blbfldPessoafoto: TBlobField;
    strngfldPessoasexo: TStringField;
    strngfldPessoanome_pai: TStringField;
    strngfldPessoanome_mae: TStringField;
    dtfldPessoadta_nascimento: TDateField;
    strngfldPessoanaturalidade: TStringField;
    strngfldPessoauf_nascimento: TStringField;
    strngfldPessoanacionalidade: TStringField;
    strngfldPessoanrorg: TStringField;
    strngfldPessoaorgaorg: TStringField;
    strngfldPessoacpf: TStringField;
    strngfldPessoaemail: TStringField;
    strngfldPessoagrau_instr_situacao: TStringField;
    strngfldPessoagrau_instrucao: TStringField;
    strngfldPessoaform_teo_situacao: TStringField;
    strngfldPessoaformacao_teologica: TStringField;
    strngfldPessoaestado_civil_atual: TStringField;
    strngfldPessoaestado_civil_anterior: TStringField;
    strngfldPessoanome_conjugue: TStringField;
    dtfldPessoadta_casamento: TDateField;
    strngfldPessoalogradouro: TStringField;
    strngfldPessoauf_endereco: TStringField;
    strngfldPessoaestado_casa: TStringField;
    strngfldPessoacomplemento: TStringField;
    strngfldPessoafone_residencial: TStringField;
    strngfldPessoabairro: TStringField;
    strngfldPessoacep: TStringField;
    strngfldPessoacidade: TStringField;
    strngfldPessoafone_celular: TStringField;
    dtfldPessoadta_conversao: TDateField;
    dtfldPessoadta_batismo_esprito: TDateField;
    dtfldPessoadta_batismo_aguas: TDateField;
    dtfldPessoadta_congregado: TDateField;
    strngfldPessoalocal_descisao_congregado: TStringField;
    dtfldPessoadta_membro: TDateField;
    strngfldPessoaorigem_eclesiastica: TStringField;
    strngfldPessoaproced_eclesiastica: TStringField;
    strngfldPessoaprofissao: TStringField;
    strngfldPessoahabilitacao_profissional: TStringField;
    strngfldPessoaemprego_atual: TStringField;
    strngfldPessoafuncao: TStringField;
    strngfldPessoafone_trabalho: TStringField;
    intgrfldTesourariaDescricaoPessoacod_congregacao: TIntegerField;
    strngfldPessoanro_rol: TStringField;
    strngfldPessoanro_cad_congregado: TStringField;
    strngfldPessoamembro_congregado: TStringField;
    dtfldPessoadta_inclusao: TDateField;
    strngfldPessoaUSUARIO_CADASTRO: TStringField;
    intgrfldTesourariaDescricaoPessoacod_situacao: TIntegerField;
    strngfldPessoaigreja: TStringField;
    strngfldPessoasetor: TStringField;
    strngfldPessoacongregacao: TStringField;
    strngfldPessoaSITUACAO: TStringField;
    fdqrySetores: TFDQuery;
    cod_setor: TFDAutoIncField;
    strngfldSetoressetor: TStringField;
    fdqryDepartamentos: TFDQuery;
    fdtncfldDepartamentoscod_departamento: TFDAutoIncField;
    strngfldDepartamentosnome_departamento: TStringField;
    fdqryMeses: TFDQuery;
    fdqryMesesvalor: TLargeintField;
    fdqryMesesmes: TStringField;
    fdqryTipoSaida: TFDQuery;
    fdtncfldTipoSaidaid: TFDAutoIncField;
    strngfldTipoSaidatipo: TStringField;
    fdcmndBancoNovo: TFDCommand;
    intgrfldCong_sistemacod_igreja: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    congAtiva :Integer;
    igrejaAtiva :Integer;
    descCongAtiva:string;
    setor:string;
  end;

var
  dtmPrincipal: TdtmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdtmPrincipal.DataModuleCreate(Sender: TObject);
begin
 try
    fdqryCong_sistema.Open;
    congAtiva:=  fdqryCong_sistema.FieldByName('cod_congregacao').AsInteger;
    descCongAtiva:= fdqryCong_sistema.FieldByName('congregacao').AsString;
     setor:= fdqryCong_sistema.FieldByName('setor').AsString;
     igrejaAtiva:=  fdqryCong_sistema.FieldByName('cod_igreja').AsInteger;
      //fdqryNovoBanco.close;
     //fdqryDepartamentos.Open;
 Except
  // ShowMessage('Erro na fdqryCong_sistema! ');
 end;
end;

procedure TdtmPrincipal.DataModuleDestroy(Sender: TObject);
begin
 //fdqryDepartamentos.Close;
end;

end.
