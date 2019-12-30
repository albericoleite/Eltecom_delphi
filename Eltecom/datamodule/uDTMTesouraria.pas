unit uDTMTesouraria;

interface

uses
  System.SysUtils, System.Classes, frxClass, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxDBSet;

type
  TdtmTesouraria = class(TDataModule)
    frxrprtFechamento: TfrxReport;
    frxdbBuscaIgreja: TfrxDBDataset;
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
    fdqryBuscaCongregacao: TFDQuery;
    intgrfldTesourariaDescricaoBuscaCongregacaocod_igreja: TIntegerField;
    fdtncfldBuscaCongregacaocod_congregacao: TFDAutoIncField;
    intgrfldTesourariaDescricaoBuscaCongregacaocod_central: TIntegerField;
    strngfldBuscaCongregacaocongregacao: TStringField;
    intgrfldTesourariaDescricaoBuscaCongregacaocod_setor: TIntegerField;
    intgrfldTesourariaDescricaoBuscaCongregacaosituacao: TIntegerField;
    strngfldBuscaCongregacaotelefone: TStringField;
    strngfldBuscaCongregacaocnpj: TStringField;
    strngfldBuscaCongregacaositeblog: TStringField;
    strngfldBuscaCongregacaoendereco: TStringField;
    strngfldBuscaCongregacaocomplemento: TStringField;
    strngfldBuscaCongregacaobairro: TStringField;
    strngfldBuscaCongregacaocep: TStringField;
    strngfldBuscaCongregacaocidade: TStringField;
    strngfldBuscaCongregacaodiasculto: TStringField;
    strngfldBuscaCongregacaodiacoa: TStringField;
    strngfldBuscaCongregacaodiacom: TStringField;
    strngfldBuscaCongregacaodiacoi: TStringField;
    strngfldBuscaCongregacaodiacv: TStringField;
    dtfldBuscaCongregacaodata_aber_sub: TDateField;
    dtfldBuscaCongregacaodata_aber_cong: TDateField;
    dtfldBuscaCongregacaodata_fun_coa: TDateField;
    dtfldBuscaCongregacaodata_fun_com: TDateField;
    dtfldBuscaCongregacaodata_fun_coi: TDateField;
    dtfldBuscaCongregacaodata_fun_cv: TDateField;
    dtfldBuscaCongregacaodata_cadastro: TDateField;
    strngfldBuscaCongregacaousuario_cadastro: TStringField;
    strngfldBuscaCongregacaocong_principal: TStringField;
    strngfldBuscaCongregacaodirigente: TStringField;
    strngfldBuscaCongregacaosetor: TStringField;
    intgrfldBuscaCongregacaocod_cc: TIntegerField;
    frxdbCongregacao: TfrxDBDataset;
    fdqryTes_valores: TFDQuery;
    intgrfldTes_valoresnro_documento: TIntegerField;
    dtfldTes_valoresdta_movimento: TDateField;
    strngfldTes_valoresdescricao: TStringField;
    fltfldTes_valoresENTRADA: TFloatField;
    fltfldTes_valoresSAIDA: TFloatField;
    frxdbdtstTes_valores: TfrxDBDataset;
    fdqryTotalLancamentos: TFDQuery;
    fltfldTes_Entrada_Totaltotal: TFloatField;
    fdqryQuadroDizimistas: TFDQuery;
    strngfldQuadroDizimistasnome_pessoa: TStringField;
    fltfldQuadroDizimistasJANEIRO: TFloatField;
    fltfldQuadroDizimistasFEVEREIRO: TFloatField;
    fltfldQuadroDizimistasMARÇO: TFloatField;
    fltfldQuadroDizimistasABRIL: TFloatField;
    fltfldQuadroDizimistasMAIO: TFloatField;
    fltfldQuadroDizimistasJUNHO: TFloatField;
    fltfldQuadroDizimistasJULHO: TFloatField;
    fltfldQuadroDizimistasAGOSTO: TFloatField;
    fltfldQuadroDizimistasSETEMBRO: TFloatField;
    fltfldQuadroDizimistasOUTUBRO: TFloatField;
    fltfldQuadroDizimistasNOVEMBRO: TFloatField;
    fltfldQuadroDizimistasDEZEMBRO: TFloatField;
    frxdbQuadroDizimistas: TfrxDBDataset;
    frxrprtDizimistasAnual: TfrxReport;
    frxrprt1: TfrxReport;
    frxrprtDizimistasAnualPg: TfrxReport;
    fdqryQuadroDizimistasPg: TFDQuery;
    frxdbQuadroDizimistaspG: TfrxDBDataset;
    strngfldQuadroDizimistasPgnome_pessoa: TStringField;
    strngfldQuadroDizimistasPgJANEIRO: TStringField;
    strngfldQuadroDizimistasPgFEVEREIRO: TStringField;
    strngfldQuadroDizimistasPgMARÇO: TStringField;
    strngfldQuadroDizimistasPgABRIL: TStringField;
    strngfldQuadroDizimistasPgMAIO: TStringField;
    strngfldQuadroDizimistasPgJUNHO: TStringField;
    strngfldQuadroDizimistasPgJULHO: TStringField;
    strngfldQuadroDizimistasPgAGOSTO: TStringField;
    strngfldQuadroDizimistasPgSETEMBRO: TStringField;
    strngfldQuadroDizimistasPgOUTUBRO: TStringField;
    strngfldQuadroDizimistasPgNOVEMBRO: TStringField;
    strngfldQuadroDizimistasPgDEZEMBRO: TStringField;
    frxrprtFechamentobkp: TfrxReport;
    fdqryTes_Entrada_Total: TFDQuery;
    fltfldTes_Entrada_Totaltotal1: TFloatField;
    fdqryTes_Saida_Total: TFDQuery;
    fltfldTes_Saida_Totaltotal: TFloatField;
    frxdbTes_Saida_Total: TfrxDBDataset;
    frxdbTes_Entrada_Total: TfrxDBDataset;
    frxReport1: TfrxReport;
    fdqryObreirosPg: TFDQuery;
    strngfld1: TStringField;
    strngfld2: TStringField;
    strngfld3: TStringField;
    strngfld4: TStringField;
    strngfld5: TStringField;
    strngfld6: TStringField;
    strngfld7: TStringField;
    strngfld8: TStringField;
    strngfld9: TStringField;
    strngfld10: TStringField;
    strngfld11: TStringField;
    strngfld12: TStringField;
    strngfld13: TStringField;
    fdqryQuadroObreirosValores: TFDQuery;
    StringField1: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmTesouraria: TdtmTesouraria;

implementation

uses
  uDTMConexao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
