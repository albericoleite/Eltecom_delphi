unit uDTMGraficos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtmGrafico = class(TDataModule)
    fdqryPessoas: TFDQuery;
    fdqryDizimosAnual: TFDQuery;
    fdqryDizimosAnualano: TLargeintField;
    fdqryDizimosAnualmes: TLargeintField;
    fdqryDizimosAnualvalor: TFloatField;
    fdqryDizimosAnualsigla: TStringField;
    fdqryClassesAlunos: TFDQuery;
    lrgntfldClassesAlunosqtd: TLargeintField;
    strngfldClassesAlunosclasse: TStringField;
    fdqryPessoasCargos: TFDQuery;
    fdqryEntrasAnual: TFDQuery;
    lrgntfld1: TLargeintField;
    lrgntfld2: TLargeintField;
    fltfld1: TFloatField;
    strngfld1: TStringField;
    fdqrySaidasAnual: TFDQuery;
    lrgntfld3: TLargeintField;
    lrgntfld4: TLargeintField;
    fltfld2: TFloatField;
    strngfld2: TStringField;
    fdqryAniverariantesMes: TFDQuery;
    fdtncfldAniverariantescod_pessoa: TFDAutoIncField;
    strngfldAniverariantesnome_pessoa: TStringField;
    strngfldAniverariantessexo: TStringField;
    strngfldAniverariantesmembro_congregado: TStringField;
    dtfldAniverariantesdta_nascimento: TDateField;
    lrgntfldAniverariantesidade: TLargeintField;
    strngfldAniverariantesfiltro: TStringField;
    dsAniver: TDataSource;
    lrgntfldAniverariantesMesdia: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmGrafico: TdtmGrafico;

implementation

uses
  uDTMConexao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
