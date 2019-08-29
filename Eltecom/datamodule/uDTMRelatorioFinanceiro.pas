unit uDTMRelatorioFinanceiro;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtmRelatorioFinanceiro = class(TDataModule)
    frxrprtDizimista: TfrxReport;
    frxdbDizimista: TfrxDBDataset;
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
    frxrprtGraficoMensal: TfrxReport;
    frxdbLancamentosMensais: TfrxDBDataset;
    fdqryLancamentosMensais: TFDQuery;
    fltfldLancamentosMensaisvalor: TFloatField;
    strngfldLancamentosMensaistipo: TStringField;
    dtfldLancamentosMensaisdata: TDateField;
    intgrfldLancamentosMensaisano: TIntegerField;
    intgrfldLancamentosMensaismes: TIntegerField;
    intgrfldLancamentosMensaissemana: TIntegerField;
    intgrfldLancamentosMensaisdia: TIntegerField;
    frxrprtMovFinMensal: TfrxReport;
    fdqryLancamentosTotal: TFDQuery;
    intgrfldLancamentosTotalano: TIntegerField;
    intgrfldLancamentosTotalmes: TIntegerField;
    intgrfldLancamentosTotalsemana: TIntegerField;
    fltfldLancamentosTotaltotal_entrada: TFloatField;
    fltfldLancamentosTotaltotal_saida: TFloatField;
    fltfldLancamentosTotalsaldo: TFloatField;
    fdqryDizimistasdata_mes: TDateField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmRelatorioFinanceiro: TdtmRelatorioFinanceiro;

implementation

uses
  uDTMConexao, uDTMGraficos;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdtmRelatorioFinanceiro.DataModuleCreate(Sender: TObject);
begin
fdqryDizimistas.Open;
end;

procedure TdtmRelatorioFinanceiro.DataModuleDestroy(Sender: TObject);
begin
fdqryDizimistas.close;

end;

end.
