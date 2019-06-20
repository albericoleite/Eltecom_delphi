unit uDepartamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmRelDept = class(TForm)
    fdqryDepartamentos: TFDQuery;
    dsDepartamentos: TDataSource;
    dblkcbbDepartamentos: TDBLookupComboBox;
    lbl1: TLabel;
    procedure dblkcbbDepartamentosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelDept: TfrmRelDept;

implementation

uses
  uDTMRelatorio, uDTMConexao;

{$R *.dfm}

procedure TfrmRelDept.dblkcbbDepartamentosClick(Sender: TObject);
begin

dtmRelatorio := TdtmRelatorio.Create(self);
dtmRelatorio.fdqryPessoas_dept.Close;
dtmRelatorio.fdqryPessoas_dept.ParamByName('cod_dpt').AsInteger:=dblkcbbDepartamentos.KeyValue;
dtmRelatorio.fdqryPessoas_dept.Open;

if dtmRelatorio.fdqryPessoas_dept.FieldByName('cod_departamento').AsInteger > 0 then
begin
dtmRelatorio.frxrprtPessoas_dept.ReportOptions.Name := dblkcbbDepartamentos.text;
dtmRelatorio.frxrprtPessoas_dept.ShowReport();
end
else
begin
  Application.MessageBox('Nenhum cadastro vinculado ao Departamento.','Atenção!');
end;

end;

procedure TfrmRelDept.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
fdqryDepartamentos.Close;
end;

procedure TfrmRelDept.FormCreate(Sender: TObject);
begin
fdqryDepartamentos.Open;
end;

end.
