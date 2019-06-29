unit uRelatoriosFinanceiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, RxToolEdit,DateUtils;

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
    procedure btnSemanaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnMovMensalClick(Sender: TObject);
  private
    procedure AtualizaConsultas;
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
