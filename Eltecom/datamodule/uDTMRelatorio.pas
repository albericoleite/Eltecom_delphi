unit uDTMRelatorio;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet;

type
  TdtmRelatorio = class(TDataModule)
    frxrprtCartaRecomendacao: TfrxReport;
    frxdbdtstBuscaIgreja: TfrxDBDataset;
    frxdbdtstBuscaPessoa: TfrxDBDataset;
    fdqryBucarIgreja: TFDQuery;
    fdtncfldBucarIgrejacod_igreja: TFDAutoIncField;
    strngfldBucarIgrejanome_igreja: TStringField;
    strngfldBucarIgrejacidade: TStringField;
    dtfldBucarIgrejadta_fundacao: TDateField;
    strngfldBucarIgrejanome_presidente: TStringField;
    dtmfldBucarIgrejadta_inclusao: TDateTimeField;
    strngfldBucarIgrejasigla_igreja: TStringField;
    strngfldBucarIgrejasite: TStringField;
    strngfldBucarIgrejaemail: TStringField;
    strngfldBucarIgrejacnpj: TStringField;
    strngfldBucarIgrejalogradouro: TStringField;
    strngfldBucarIgrejabairro: TStringField;
    strngfldBucarIgrejauf: TStringField;
    strngfldBucarIgrejafone: TStringField;
    blbfldBucarIgrejafoto: TBlobField;
    intgrfldBucarIgrejapercentual_ajuste: TIntegerField;
    fdqryBuscaPessoaRelatorio: TFDQuery;
    fdtncfldBuscaPessoaRelatoriocod_pessoa: TFDAutoIncField;
    strngfldBuscaPessoaRelatorionome_pessoa: TStringField;
    blbfldBuscaPessoaRelatoriofoto: TBlobField;
    strngfldBuscaPessoaRelatoriosexo: TStringField;
    strngfldBuscaPessoaRelatorionome_pai: TStringField;
    strngfldBuscaPessoaRelatorionome_mae: TStringField;
    dtfldBuscaPessoaRelatoriodta_nascimento: TDateField;
    strngfldBuscaPessoaRelatorionaturalidade: TStringField;
    strngfldBuscaPessoaRelatoriouf_nascimento: TStringField;
    strngfldBuscaPessoaRelatorionacionalidade: TStringField;
    strngfldBuscaPessoaRelatorionrorg: TStringField;
    strngfldBuscaPessoaRelatorioorgaorg: TStringField;
    strngfldBuscaPessoaRelatoriocpf: TStringField;
    strngfldBuscaPessoaRelatorioemail: TStringField;
    strngfldBuscaPessoaRelatoriograu_instr_situacao: TStringField;
    strngfldBuscaPessoaRelatoriograu_instrucao: TStringField;
    strngfldBuscaPessoaRelatorioform_teo_situacao: TStringField;
    strngfldBuscaPessoaRelatorioformacao_teologica: TStringField;
    strngfldBuscaPessoaRelatorioestado_civil_atual: TStringField;
    strngfldBuscaPessoaRelatorioestado_civil_anterior: TStringField;
    strngfldBuscaPessoaRelatorionome_conjugue: TStringField;
    dtfldBuscaPessoaRelatoriodta_casamento: TDateField;
    strngfldBuscaPessoaRelatoriologradouro: TStringField;
    strngfldBuscaPessoaRelatoriouf_endereco: TStringField;
    strngfldBuscaPessoaRelatorioestado_casa: TStringField;
    strngfldBuscaPessoaRelatoriocomplemento: TStringField;
    strngfldBuscaPessoaRelatoriofone_residencial: TStringField;
    strngfldBuscaPessoaRelatoriobairro: TStringField;
    strngfldBuscaPessoaRelatoriocep: TStringField;
    strngfldBuscaPessoaRelatoriocidade: TStringField;
    strngfldBuscaPessoaRelatoriofone_celular: TStringField;
    dtfldBuscaPessoaRelatoriodta_conversao: TDateField;
    dtfldBuscaPessoaRelatoriodta_batismo_esprito: TDateField;
    dtfldBuscaPessoaRelatoriodta_batismo_aguas: TDateField;
    dtfldBuscaPessoaRelatoriodta_congregado: TDateField;
    strngfldBuscaPessoaRelatoriolocal_descisao_congregado: TStringField;
    dtfldBuscaPessoaRelatoriodta_membro: TDateField;
    strngfldBuscaPessoaRelatorioorigem_eclesiastica: TStringField;
    strngfldBuscaPessoaRelatorioproced_eclesiastica: TStringField;
    strngfldBuscaPessoaRelatorioprofissao: TStringField;
    strngfldBuscaPessoaRelatoriohabilitacao_profissional: TStringField;
    strngfldBuscaPessoaRelatorioemprego_atual: TStringField;
    strngfldBuscaPessoaRelatoriofuncao: TStringField;
    strngfldBuscaPessoaRelatoriofone_trabalho: TStringField;
    intgrfldTesourariaDescricaoBuscaPessoaRelatoriocod_congregacao: TIntegerField;
    strngfldBuscaPessoaRelatorionro_rol: TStringField;
    strngfldBuscaPessoaRelatorionro_cad_congregado: TStringField;
    strngfldBuscaPessoaRelatoriomembro_congregado: TStringField;
    dtfldBuscaPessoaRelatoriodta_inclusao: TDateField;
    strngfldBuscaPessoaRelatorioUSUARIO_CADASTRO: TStringField;
    intgrfldTesourariaDescricaoBuscaPessoaRelatoriocod_situacao: TIntegerField;
    strngfldBuscaPessoaRelatoriocongregacao: TStringField;
    strngfldBuscaPessoaRelatoriosetor: TStringField;
    dsBuscaPessoaRelatorio: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmRelatorio: TdtmRelatorio;

implementation

uses
  uDTMConexao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdtmRelatorio.DataModuleCreate(Sender: TObject);
begin
fdqryBuscaPessoaRelatorio.Open;
fdqryBucarIgreja.Open;
end;

procedure TdtmRelatorio.DataModuleDestroy(Sender: TObject);
begin
fdqryBuscaPessoaRelatorio.Close;
fdqryBucarIgreja.Close;
end;

end.
