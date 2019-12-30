unit uRelatoriosFinanceiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cFuncao,
  Vcl.Mask, RxToolEdit,DateUtils, Vcl.DBCtrls, Data.DB;

type
  TfrmRelatoriosFinanceiro = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    btnSemana: TBitBtn;
    dtdtFim: TDateEdit;
    dtdtIni: TDateEdit;
    lbl5: TLabel;
    lblDataNascimento: TLabel;
    btngGravicoMensal: TBitBtn;
    btnMovMensal: TBitBtn;
    dsMes: TDataSource;
    dblkcbbMes: TDBLookupComboBox;
    Label1: TLabel;
    btnImprimir: TBitBtn;
    chkobreiro: TCheckBox;
    chkMembros: TCheckBox;
    btnListaLimpaGeral: TBitBtn;
    btnUnicoDizimo: TBitBtn;
    procedure btnSemanaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnMovMensalClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure dblkcbbMesClick(Sender: TObject);
    procedure btnListaLimpaGeralClick(Sender: TObject);
    procedure btnUnicoDizimoClick(Sender: TObject);
  private
    procedure AtualizaConsultas;
    procedure ListaLancamentosPeriodo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatoriosFinanceiro: TfrmRelatoriosFinanceiro;

implementation

uses
  uDTMConexao, uDTMRelatorio, uDTMTesouraria, uDTMRelatorioFinanceiro;

{$R *.dfm}

procedure TfrmRelatoriosFinanceiro.btnImprimirClick(Sender: TObject);
var mes: string;
begin
ListaLancamentosPeriodo;
dtmRelatorio.frxdbDizimista.DataSet:=dtmRelatorio.fdqryDizimistas;
if chkobreiro.Checked = true then
   dtmRelatorio.frxdbDizimista.DataSet:=dtmRelatorio.fdqryizimitobreiro;

if chkMembros.Checked = true then
   dtmRelatorio.frxdbDizimista.DataSet:=dtmRelatorio.fdqryDizimosMembros;

  //dtmRelatorio.frxdbDizimista.DataSet:=fdqryDizimistas;
  dtmRelatorio.frxdbDizimosTotal.DataSet:=dtmRelatorio.fdqryDizimosTotal;
       mes:= TFuncao.ExtensoMes(MonthOf(dtdtini.Date));
   dtmRelatorio.fdqryCongregacao.Open;
   dtmRelatorio.frxrprtDizimista.Variables['Data'] := QuotedStr(mes);
  dtmRelatorio.frxrprtDizimista.ReportOptions.Name :=
    'Visualização de Impressão: Dizimistas do mês: '+mes;
    dtmRelatorio.frxrprtDizimista.PrepareReport(True);
    dtmRelatorio.frxrprtDizimista.ShowReport();
end;

procedure TfrmRelatoriosFinanceiro.btnListaLimpaGeralClick(Sender: TObject);
var mes: string;
begin
 dtmRelatorio.frxdbDizimista.DataSet:= dtmRelatorio.fdqryDizimistaGeral;

  //dtmRelatorio.frxdbDizimista.DataSet:=fdqryDizimistas;
  dtmRelatorio.frxdbDizimosTotal.DataSet:=dtmRelatorio.fdqryDizimoTotalLimpo;
       mes:= TFuncao.ExtensoMes(MonthOf(dtdtini.Date));
   dtmRelatorio.fdqryCongregacao.Open;
   dtmRelatorio.frxrprtDizimista.Variables['Data'] := QuotedStr(mes);
  dtmRelatorio.frxrprtDizimista.ReportOptions.Name :=
    'Visualização de Impressão: Dizimistas do mês: '+mes;
    dtmRelatorio.frxrprtDizimista.PrepareReport(True);
    dtmRelatorio.frxrprtDizimista.ShowReport();
end;

procedure TfrmRelatoriosFinanceiro.ListaLancamentosPeriodo;
begin

  dtmRelatorio.fdqryDizimistas.Close;
  dtmRelatorio.fdqryDizimistas.ParamByName('dtini').AsDateTime := dtdtIni.Date;
  dtmRelatorio.fdqryDizimistas.ParamByName('dtfim').AsDateTime := dtdtFim.Date;
  dtmRelatorio.fdqryDizimistas.Open;

  dtmRelatorio.fdqryDizimosMembros.Close;
  dtmRelatorio.fdqryDizimosMembros.ParamByName('dtini').AsDateTime := dtdtIni.Date;
  dtmRelatorio.fdqryDizimosMembros.ParamByName('dtfim').AsDateTime := dtdtFim.Date;
  dtmRelatorio.fdqryDizimosMembros.Open;


  dtmRelatorio.fdqryizimitobreiro.Close;
  dtmRelatorio.fdqryizimitobreiro.ParamByName('dtini').AsDateTime := dtdtIni.Date;
  dtmRelatorio.fdqryizimitobreiro.ParamByName('dtfim').AsDateTime := dtdtFim.Date;
  dtmRelatorio.fdqryizimitobreiro.Open;

  dtmRelatorio.fdqryDizimosTotal.Close;
  dtmRelatorio.fdqryDizimosTotal.ParamByName('dtini').AsDateTime := dtdtIni.Date;
  dtmRelatorio.fdqryDizimosTotal.ParamByName('dtfim').AsDateTime := dtdtFim.Date;
  dtmRelatorio.fdqryDizimosTotal.Open;

  //lblTotal.Caption:= 'Valor Total:' +fdqryDizimosTotal.FieldByName('total').AsString;
end;

procedure TfrmRelatoriosFinanceiro.btnMovMensalClick(Sender: TObject);
begin
  AtualizaConsultas;

    dtmRelatorioFinanceiro.frxrprtMovFinMensal.ReportOptions.Name :=
    'Visualização de Impressão: Movimentação Financeira Mensal';
    //uppercase(formatdatetime('MMMM ', (dtpData.Date))) +'de '+ formatdatetime('yyyy',
   // (dtpData.Date));
    dtmRelatorioFinanceiro.frxrprtMovFinMensal.PrepareReport(True);
    dtmRelatorioFinanceiro.frxrprtMovFinMensal.ShowReport();
end;

procedure TfrmRelatoriosFinanceiro.btnSemanaClick(Sender: TObject);
begin
  AtualizaConsultas;

    dtmRelatorioFinanceiro.frxrprtDizimista.ReportOptions.Name :=
    'Visualização de Impressão: Dizimistas do mês ';
    //uppercase(formatdatetime('MMMM ', (dtpData.Date))) +'de '+ formatdatetime('yyyy',
   // (dtpData.Date));
    dtmRelatorioFinanceiro.frxrprtDizimista.PrepareReport(True);
    dtmRelatorioFinanceiro.frxrprtDizimista.ShowReport();
end;

procedure TfrmRelatoriosFinanceiro.btnUnicoDizimoClick(Sender: TObject);
var mes: string;
begin
ListaLancamentosPeriodo;
dtmRelatorio.frxdbDizimista.DataSet:=dtmRelatorio.fdqryDizimistas;
if chkobreiro.Checked = true then
   dtmRelatorio.frxdbDizimista.DataSet:=dtmRelatorio.fdqryizimitobreiro;

if chkMembros.Checked = true then
   dtmRelatorio.frxdbDizimista.DataSet:=dtmRelatorio.fdqryDizimosMembros;

  //dtmRelatorio.frxdbDizimista.DataSet:=fdqryDizimistas;
  dtmRelatorio.frxdbDizimosTotal.DataSet:=dtmRelatorio.fdqryDizimosTotal;
       mes:= TFuncao.ExtensoMes(MonthOf(dtdtini.Date));
   dtmRelatorio.fdqryCongregacao.Open;
   dtmRelatorio.frxrprtDizimista.Variables['Data'] := QuotedStr(mes);
  dtmRelatorio.frxrprtDizimista.ReportOptions.Name :=
    'Visualização de Impressão: Dizimistas do mês: '+mes;
    dtmRelatorio.frxrprtDizimista.PrepareReport(True);
    dtmRelatorio.frxrprtDizimista.ShowReport();

end;

procedure TfrmRelatoriosFinanceiro.dblkcbbMesClick(Sender: TObject);
var i :Integer;
Ano, Mes, Dia : word;
begin
i := dblkcbbMes.KeyValue;
DecodeDate (now, Ano, Mes, Dia);
  dtdtIni.Date:= StartOfaMonth(Ano,i);
  dtdtFim.Date:= EndOfAMonth(Ano,i);
end;

procedure TfrmRelatoriosFinanceiro.FormCreate(Sender: TObject);
begin
   dtdtIni.Date:=StartOfTheMonth(now);
   dtdtFim.Date:=Now;
   dtmRelatorioFinanceiro := TdtmRelatorioFinanceiro.Create(self);
    AtualizaConsultas;
end;

procedure TfrmRelatoriosFinanceiro.AtualizaConsultas;
begin
if dtmRelatorioFinanceiro.fdqryDizimistas.Active then
  dtmRelatorioFinanceiro.fdqryDizimistas.Close;

  dtmRelatorioFinanceiro.fdqryDizimistas.ParamByName('dtini').AsDateTime := dtdtIni.Date;
  dtmRelatorioFinanceiro.fdqryDizimistas.ParamByName('dtfim').AsDateTime := dtdtFim.Date;
  dtmRelatorioFinanceiro.fdqryDizimistas.Open;

if dtmRelatorioFinanceiro.fdqryLancamentosTotal.Active then
  dtmRelatorioFinanceiro.fdqryLancamentosTotal.Close;

    dtmRelatorioFinanceiro.fdqryLancamentosTotal.ParamByName('data').AsDateTime := dtdtIni.Date;
   dtmRelatorioFinanceiro.fdqryLancamentosTotal.Open;


end;



end.
