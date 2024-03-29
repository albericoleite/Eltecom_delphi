unit uQuadroAnual;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons,
  Vcl.ExtCtrls, JvExExtCtrls, JvRadioGroup;

type
  TfrmQuadroAnual = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    fdqryAnos: TFDQuery;
    intgrfldAnosano: TIntegerField;
    dsAnos: TDataSource;
    dblkcbbAnos: TDBLookupComboBox;
    intgrfldAnoskey: TIntegerField;
    btnImprimir: TBitBtn;
    btnSair: TBitBtn;
    rg1: TRadioGroup;
    rbNormal: TRadioButton;
    rbValor: TRadioButton;
    pnl1: TPanel;
    rg2: TRadioGroup;
    rbSomenteObreiros: TRadioButton;
    rbTodos: TRadioButton;
    procedure btnSairClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuadroAnual: TfrmQuadroAnual;

implementation

uses
  uDTMConexao, uDTMRelatorioFinanceiro, uDTMTesouraria;

{$R *.dfm}

procedure TfrmQuadroAnual.btnImprimirClick(Sender: TObject);
begin

if rbValor.Checked = true   then   begin
if rbTodos.Checked =true then   begin
dtmTesouraria.fdqryQuadroDizimistas.Close;
  dtmTesouraria.fdqryQuadroDizimistas.ParamByName('ano').AsInteger := dblkcbbAnos.KeyValue;
  dtmTesouraria.fdqryQuadroDizimistas.Open;

    dtmTesouraria.frxdbQuadroDizimistas.DataSet:=dtmTesouraria.fdqryQuadroDizimistas;
   dtmTesouraria.frxrprtDizimistasAnual.Variables['Ano'] := QuotedStr(dblkcbbAnos.Text);
  dtmTesouraria.frxrprtDizimistasAnual.ReportOptions.Name :=
    'Visualiza��o de Impress�o: Dizimistas do m�s: '+dblkcbbAnos.Text;
    dtmTesouraria.frxrprtDizimistasAnual.PrepareReport(True);
    dtmTesouraria.frxrprtDizimistasAnual.ShowReport();
end;


end;

if rbNormal.Checked = true   then   begin
  if rbTodos.Checked =true then  begin
        dtmTesouraria.fdqryQuadroDizimistasPg.Close;
  dtmTesouraria.fdqryQuadroDizimistasPg.ParamByName('ano').AsInteger := dblkcbbAnos.KeyValue;
  dtmTesouraria.fdqryQuadroDizimistasPg.Open;

   dtmTesouraria.frxdbQuadroDizimistaspG.DataSet := dtmTesouraria.fdqryQuadroDizimistasPg;
   dtmTesouraria.frxrprtDizimistasAnualPg.Variables['Ano'] := QuotedStr(dblkcbbAnos.Text);
  dtmTesouraria.frxrprtDizimistasAnualPg.ReportOptions.Name :=
    'Visualiza��o de Impress�o: Dizimistas do m�s: '+dblkcbbAnos.Text;
    dtmTesouraria.frxrprtDizimistasAnualPg.PrepareReport(True);
    dtmTesouraria.frxrprtDizimistasAnualPg.ShowReport();
  end;


end;

if rbSomenteObreiros.Checked = true then begin
 if rbNormal.Checked = true then   begin

 dtmTesouraria.fdqryObreirosPg.Close;
  dtmTesouraria.fdqryObreirosPg.ParamByName('ano').AsInteger := dblkcbbAnos.KeyValue;
  dtmTesouraria.fdqryObreirosPg.Open;
  dtmTesouraria.frxdbQuadroDizimistaspG.DataSet :=   dtmTesouraria.fdqryObreirosPg;
   dtmTesouraria.frxrprtDizimistasAnualPg.Variables['Ano'] := QuotedStr(dblkcbbAnos.Text);
  dtmTesouraria.frxrprtDizimistasAnualPg.ReportOptions.Name :=
    'Visualiza��o de Impress�o: Dizimistas do m�s: '+dblkcbbAnos.Text;
    dtmTesouraria.frxrprtDizimistasAnualPg.PrepareReport(True);
    dtmTesouraria.frxrprtDizimistasAnualPg.ShowReport();
 end;
 if rbValor.Checked = true then   begin

   dtmTesouraria.fdqryQuadroObreirosValores.Close;
  dtmTesouraria.fdqryQuadroObreirosValores.ParamByName('ano').AsInteger := dblkcbbAnos.KeyValue;
  dtmTesouraria.fdqryQuadroObreirosValores.Open;

    dtmTesouraria.frxdbQuadroDizimistas.DataSet:= dtmTesouraria.fdqryQuadroObreirosValores;
   dtmTesouraria.frxrprtDizimistasAnual.Variables['Ano'] := QuotedStr(dblkcbbAnos.Text);
  dtmTesouraria.frxrprtDizimistasAnual.ReportOptions.Name :=
    'Visualiza��o de Impress�o: Dizimistas do m�s: '+dblkcbbAnos.Text;
    dtmTesouraria.frxrprtDizimistasAnual.PrepareReport(True);
    dtmTesouraria.frxrprtDizimistasAnual.ShowReport();
 end;

end;


end;

procedure TfrmQuadroAnual.btnSairClick(Sender: TObject);
begin
close;
end;

procedure TfrmQuadroAnual.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fdqryAnos.Close;
end;

procedure TfrmQuadroAnual.FormCreate(Sender: TObject);
begin
dtmTesouraria:= TdtmTesouraria.Create(self);
fdqryAnos.Open;
end;

end.
