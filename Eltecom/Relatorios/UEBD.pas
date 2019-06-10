unit uEBD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, Vcl.DBCtrls,
  FireDAC.Comp.Client;

type
  TfrmRelatoriosEBD = class(TForm)
    lbl1: TLabel;
    lblData: TLabel;
    dtpData: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    lbl2: TLabel;
    btnVisualizar: TBitBtn;
    fdqryClasses: TFDQuery;
    dsClasses: TDataSource;
    dblkcbbClasses: TDBLookupComboBox;
    fdtncfldClassescod_classe: TFDAutoIncField;
    strngfldClassesclasse: TStringField;
    strngfldClassesdescricao: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatoriosEBD: TfrmRelatoriosEBD;

implementation

uses
  uDTMRelatorio, uDTMConexao;

{$R *.dfm}

procedure TfrmRelatoriosEBD.btnVisualizarClick(Sender: TObject);
begin
dtmRelatorio.fdqryAlunos.Close;
   dtmRelatorio.frxrprtAlunos.Variables['Filtro'] := QuotedStr(dblkcbbClasses.Text);
  dtmRelatorio.fdqryAlunos.Params.ParamByName('filtro').AsString:= dblkcbbClasses.Text;
  dtmRelatorio.fdqryAlunos.Open;
  if  not dtmRelatorio.fdqryAlunos.IsEmpty then
begin
   dtmRelatorio.frxrprtAlunos.ReportOptions.Name := 'Alunos';
   dtmRelatorio.frxrprtAlunos.ShowReport();
end;
end;

procedure TfrmRelatoriosEBD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
fdqryClasses.Close;
dtmRelatorio.fdqryAlunos.Close;
end;

procedure TfrmRelatoriosEBD.FormCreate(Sender: TObject);
begin
fdqryClasses.Open;
end;

end.
