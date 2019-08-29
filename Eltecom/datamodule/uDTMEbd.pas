unit uDTMEbd;

interface

uses
  System.SysUtils, System.Classes, frxClass, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxDBSet;

type
  TdtmEbd = class(TDataModule)
    frxrprtRelatorio: TfrxReport;
    fdqryRelatorio: TFDQuery;
    fdqryRelatoriocod_classe: TIntegerField;
    fdqryRelatorioclasse: TStringField;
    fdqryRelatoriodta_aula: TDateField;
    fdqryRelatoriotalunos: TLargeintField;
    fdqryRelatoriotaluno_presente: TLargeintField;
    fdqryRelatorioqtd_biblias: TIntegerField;
    fdqryRelatorioqtd_revistas: TIntegerField;
    fdqryRelatorioqtd_visitante_amigo: TIntegerField;
    fdqryRelatorioqtd_visitante_evang: TIntegerField;
    frxdbRelatorio: TfrxDBDataset;
    fdqryRelatoriotrimestre: TStringField;
    fdqryRelatoriotprofessor: TLargeintField;
    fdqryRelatoriotprofessor_presente: TLargeintField;
    fdqryRelatorioasstotal: TLargeintField;
    fdqryRelatorioasstotal_matri: TLargeintField;
    fdqryRelatorioasstotalgeral: TLargeintField;
    fdqryRelatoriovisitantegeral: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmEbd: TdtmEbd;

implementation

uses
  uDTMConexao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
