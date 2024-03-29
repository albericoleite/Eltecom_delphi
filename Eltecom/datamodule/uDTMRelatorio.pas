unit uDTMRelatorio;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, frxClass, frxDBSet, frxChBox,
  frxExportText, frxExportPDF, frxExportCSV, System.IniFiles,Vcl.Dialogs, TlHelp32,Windows , WinSvc,
  VCLTee.TeeData, frxChart, frxExportHTML, frxExportBaseDialog, frxRich,
  frxExportRTF, Datasnap.DBClient;

type
  TdtmRelatorio = class(TDataModule)
    frxrprtCartaRecomendacao: TfrxReport;
    frxdbBuscaIgreja: TfrxDBDataset;
    frxdbBuscaPessoa: TfrxDBDataset;
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
    frxrprtNotifOcorrencia: TfrxReport;
    strngfldBuscaPessoaRelatorioigreja: TStringField;
    strngfldBuscaPessoaRelatorioSITUACAO: TStringField;
    strngfldBuscaPessoaRelatoriocongregacao_1: TStringField;
    strngfldBuscaPessoaRelatoriosetorcong: TStringField;
    frxrprtFichaMembro: TfrxReport;
    frxrprtFichaCongregado: TfrxReport;
    frxrprtBatismoAguas: TfrxReport;
    fdqryPessoas_dept: TFDQuery;
    frxrprtPessoas_dept: TfrxReport;
    frxdbPessoa_dept: TfrxDBDataset;
    frxdbCongregacao: TfrxDBDataset;
    fdqryCongregacao: TFDQuery;
    intgrfldTesourariaDescricaoCongregacaocod_igreja: TIntegerField;
    fdtncfldCongregacaocod_congregacao: TFDAutoIncField;
    intgrfldTesourariaDescricaoCongregacaocod_central: TIntegerField;
    strngfldCongregacaocongregacao: TStringField;
    intgrfldTesourariaDescricaoCongregacaocod_setor: TIntegerField;
    strngfldCongregacaotelefone: TStringField;
    strngfldCongregacaocnpj: TStringField;
    strngfldCongregacaositeblog: TStringField;
    strngfldCongregacaoendereco: TStringField;
    strngfldCongregacaocomplemento: TStringField;
    strngfldCongregacaobairro: TStringField;
    strngfldCongregacaocep: TStringField;
    strngfldCongregacaocidade: TStringField;
    strngfldCongregacaodiasculto: TStringField;
    strngfldCongregacaodiacoa: TStringField;
    strngfldCongregacaodiacom: TStringField;
    strngfldCongregacaodiacoi: TStringField;
    strngfldCongregacaodiacv: TStringField;
    dtfldCongregacaodata_aber_sub: TDateField;
    dtfldCongregacaodata_aber_cong: TDateField;
    dtfldCongregacaodata_fun_coa: TDateField;
    dtfldCongregacaodata_fun_com: TDateField;
    dtfldCongregacaodata_fun_coi: TDateField;
    dtfldCongregacaodata_fun_cv: TDateField;
    dtfldCongregacaodata_cadastro: TDateField;
    strngfldCongregacaousuario_cadastro: TStringField;
    strngfldCongregacaocong_principal: TStringField;
    strngfldCongregacaodirigente: TStringField;
    intgrfldCongregacaosituacao: TIntegerField;
    intgrfldCongregacaocod_cc: TIntegerField;
    strngfldCongregacaosigla: TStringField;
    strngfldCongregacaosetor: TStringField;
    frxrprtDizimista: TfrxReport;
    fdqryDizimista: TFDQuery;
    fdtncfldDizimistacod_dizimo: TFDAutoIncField;
    intgrfldDizimistacod_talao: TIntegerField;
    intgrfldDizimistacod_cheque: TIntegerField;
    strngfldDizimistanome: TStringField;
    dtfldDizimistadata: TDateField;
    strngfldDizimistacargo: TStringField;
    fltfldDizimistavalor: TFloatField;
    intgrfldDizimistacod_congregacao: TIntegerField;
    frxdbDizimista: TfrxDBDataset;
    frxrprtRecibo: TfrxReport;
    frxdbDBRecibo: TfrxDBDataset;
    frxpdfxprt1: TfrxPDFExport;
    frxcsvxprt1: TfrxCSVExport;
    frxhtmlxprt1: TfrxHTMLExport;
    frxsmpltxtxprt1: TfrxSimpleTextExport;
    fdqryAniverariantes: TFDQuery;
    fdtncfldAniverariantescod_pessoa: TFDAutoIncField;
    strngfldAniverariantesnome_pessoa: TStringField;
    strngfldAniverariantessexo: TStringField;
    strngfldAniverariantesmembro_congregado: TStringField;
    dtfldAniverariantesdta_nascimento: TDateField;
    lrgntfldAniverariantesidade: TLargeintField;
    frxdbDBAniversariantes: TfrxDBDataset;
    frxrprtAniversariantes: TfrxReport;
    strngfldAniverariantesfiltro: TStringField;
    frxrprtAlunos: TfrxReport;
    frxdbAlunos: TfrxDBDataset;
    fdqryAlunos: TFDQuery;
    intgrfldAlunoscod_aluno: TIntegerField;
    strngfldAlunosaluno: TStringField;
    intgrfldAlunoscod_classe: TIntegerField;
    strngfldAlunosclasse: TStringField;
    dtfldAlunosdta_nascimento: TDateField;
    lrgntfldAlunosidade: TLargeintField;
    strngfldAlunossexo: TStringField;
    frxrprt_old: TfrxReport;
    frxdbDizimosTotal: TfrxDBDataset;
    frxrprt1: TfrxReport;
    strngfldAniverariantestelefone: TStringField;
    fdqryCargosPessoas: TFDQuery;
    frxdbCargosPessoas: TfrxDBDataset;
    frxrprtCargosPessoas: TfrxReport;
    fdtncfldCargosPessoascod_func_pessoa: TFDAutoIncField;
    intgrfldCargosPessoascod_funcao: TIntegerField;
    intgrfldCargosPessoascod_pessoa: TIntegerField;
    strngfldCargosPessoasnome_pessoa: TStringField;
    strngfldCargosPessoasnro_rol: TStringField;
    strngfldCargosPessoasemail: TStringField;
    strngfldCargosPessoasfone_celular: TStringField;
    strngfldCargosPessoasnome_funcao: TStringField;
    fdqryTesoureiro: TFDQuery;
    strngfldTesoureiroemail: TStringField;
    strngfldTesoureironome_pessoa: TStringField;
    frxdbTesoureiro: TfrxDBDataset;
    fdqryMeses: TFDQuery;
    fdqryMesesvalor: TLargeintField;
    fdqryMesesmes: TStringField;
    fdqryizimitobreiro: TFDQuery;
    intgrfld1: TIntegerField;
    intgrfld2: TIntegerField;
    intgrfld3: TIntegerField;
    strngfld1: TStringField;
    fltfld1: TFloatField;
    dtfld1: TDateField;
    strngfld2: TStringField;
    intgrfld4: TIntegerField;
    lrgntfld1: TLargeintField;
    strngfld3: TStringField;
    fdqryDizimosTotal: TFDQuery;
    fltfldDizimosTotaltotal: TFloatField;
    fdqryDizimistas: TFDQuery;
    intgrfldDizimistascod_dizimo: TIntegerField;
    intgrfldDizimistascod_talao: TIntegerField;
    intgrfldDizimistascod_cheque: TIntegerField;
    strngfldDizimistasnome: TStringField;
    fltfldDizimistasvalor: TFloatField;
    dtfldDizimistasdata: TDateField;
    strngfldDizimistascargo: TStringField;
    intgrfldDizimistascod_congregacao: TIntegerField;
    lrgntfldDizimistasnivel: TLargeintField;
    strngfldDizimistasrol: TStringField;
    fdqryDizimosMembros: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    DateField1: TDateField;
    StringField2: TStringField;
    IntegerField4: TIntegerField;
    LargeintField1: TLargeintField;
    StringField3: TStringField;
    fdqryDizimistacod_pessoa: TIntegerField;
    fdqryDizimistadata_mes: TDateField;
    fdqryDizimistasdata_mes: TDateField;
    fdqryizimitobreirodata_mes: TDateField;
    fdqryDizimosMembrosdata_mes: TDateField;
    fdqryBucarIgrejasistema: TIntegerField;
    fdqryBucarIgrejasituacao: TIntegerField;
    fdqryBucarIgrejaemail_secretaria: TStringField;
    fdqryBucarIgrejacep: TStringField;
    frxrprtDizimistaObreiros: TfrxReport;
    frxrprtRecNotif: TfrxReport;
    frxrchbjct1: TfrxRichObject;
    frxrtfxprt1: TfrxRTFExport;
    fdqryDizimistaGeral: TFDQuery;
    fdqryDizimistaGeralcod_dizimo: TIntegerField;
    fdqryDizimistaGeralcod_talao: TIntegerField;
    fdqryDizimistaGeralcod_cheque: TIntegerField;
    fdqryDizimistaGeralnome: TStringField;
    fdqryDizimistaGeralvalor: TLargeintField;
    fdqryDizimistaGeraldata: TIntegerField;
    fdqryDizimistaGeralcargo: TStringField;
    fdqryDizimistaGeralcod_congregacao: TIntegerField;
    fdqryDizimistaGeralnivel: TIntegerField;
    fdqryDizimistaGeralrol: TStringField;
    fdqryDizimistaGeraldata_mes: TIntegerField;
    fdqryDizimoTotalLimpo: TFDQuery;
    fdqryDizimoTotalLimpototal: TLargeintField;
    lrgntfldPessoas_deptcod_departamento: TLargeintField;
    lrgntfldPessoas_deptcod_dept_pessoa: TLargeintField;
    intgrfldPessoas_deptcod_pessoa: TIntegerField;
    strngfldPessoas_deptnome_departamento: TStringField;
    strngfldPessoas_deptnome_pessoa: TStringField;
    lrgntfldPessoas_deptidade: TLargeintField;
    dtfldPessoas_deptdta_nascimento: TDateField;
    lrgntfldPessoas_deptdia: TLargeintField;
    strngfldPessoas_deptfone_celular: TStringField;
    frxdbdtstNotifc: TfrxDBDataset;
    fdqryCheckbox: TFDQuery;
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
  uDTMConexao, uCadDizimo, cCadRecibo, uCadAjudaDeCusto;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdtmRelatorio.DataModuleCreate(Sender: TObject);
begin
dtmPrincipal := TdtmPrincipal.Create(self);
fdqryBuscaPessoaRelatorio.Open;
fdqryBucarIgreja.Open;
end;

procedure TdtmRelatorio.DataModuleDestroy(Sender: TObject);
begin
fdqryBuscaPessoaRelatorio.Close;
fdqryBucarIgreja.Close;
end;

end.
