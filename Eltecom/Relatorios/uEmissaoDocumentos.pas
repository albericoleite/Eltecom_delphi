unit uEmissaoDocumentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmEmitirDoc = class(TForm)
    lbl1: TLabel;
    lbl3: TLabel;
    lbl2: TLabel;
    lbl4: TLabel;
    edtBuscar: TEdit;
    dbgrdMembro: TDBGrid;
    chkMembro: TCheckBox;
    mmoObservacao: TMemo;
    chkObservacao: TCheckBox;
    dtpDocumento: TDateTimePicker;
    edtDestino: TEdit;
    grpCartas: TGroupBox;
    chkRecomendacao: TCheckBox;
    chkVisita: TCheckBox;
    chkTransferencia: TCheckBox;
    grpDocumento: TGroupBox;
    chkRequerimento: TCheckBox;
    chkOcorrencia: TCheckBox;
    chkFxMembro: TCheckBox;
    chkFxCongregado: TCheckBox;
    chkFxBatismo: TCheckBox;
    chkTodas: TCheckBox;
    btnImprimir: TBitBtn;
    btnEnviarEmail: TBitBtn;
    rgCartas: TRadioGroup;
    rbRecomendacao: TRadioButton;
    rbVisita: TRadioButton;
    rbTransferencia: TRadioButton;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edtBuscarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmitirDoc: TfrmEmitirDoc;

implementation

uses
  uDTMRelatorio, uDTMConexao;

{$R *.dfm}

procedure TfrmEmitirDoc.btnImprimirClick(Sender: TObject);
var titulo:string;
begin

  dtmRelatorio.frxrprtCartaRecomendacao.Variables['Observacao'] :=
    QuotedStr(mmoObservacao.Text);
  dtmRelatorio.frxrprtCartaRecomendacao.Variables['Data'] :=
    QuotedStr(DateToStr(dtpDocumento.Date));
  dtmRelatorio.frxrprtCartaRecomendacao.Variables['Destino'] :=
    QuotedStr(edtDestino.Text);

  if chkVisita.Checked = true then     begin
       dtmRelatorio.frxrprtCartaRecomendacao.Variables['Tipo'] := QuotedStr(chkVisita.Hint);
    titulo:= chkVisita.Hint;
  end;

  if chkRecomendacao.Checked = true then begin
          dtmRelatorio.frxrprtCartaRecomendacao.Variables['Tipo'] :=
      QuotedStr(chkRecomendacao.Hint);
      titulo:= chkRecomendacao.Hint;
  end;

  if chkTransferencia.Checked = true then   begin
     dtmRelatorio.frxrprtCartaRecomendacao.Variables['Tipo'] :=
      QuotedStr(chkTransferencia.Hint);
      titulo:= chkTransferencia.Hint;
  end;


  dtmRelatorio.frxrprtCartaRecomendacao.ReportOptions.Name:= 'Visualização de Impressão: '+titulo;
  dtmRelatorio.frxrprtCartaRecomendacao.PrepareReport(True);
  dtmRelatorio.frxrprtCartaRecomendacao.ShowReport();
end;

procedure TfrmEmitirDoc.edtBuscarChange(Sender: TObject);
begin
    dtmRelatorio.fdqryBuscaPessoaRelatorio.Close;
    dtmRelatorio.fdqryBuscaPessoaRelatorio.SQL[4] :=
    QuotedStr('%' + edtBuscar.Text + '%');
    dtmRelatorio.fdqryBuscaPessoaRelatorio.Open;
end;

procedure TfrmEmitirDoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := cafree;
  frmEmitirDoc := nil;
end;

procedure TfrmEmitirDoc.FormCreate(Sender: TObject);
begin
  //dtmRelatorio.fdqryDiretoriaCongregacao.Open;
//dtmConexao.fdqryCV.Open;
//dtmRelatorio.fdqryCongregacao.Open;
 // dtmRelatorio.fdqryBuscaPessoaRelatorio.Open;
  //dtmConexao.fdqryBuscaPessoaRelatorio.Refresh;
  //dtmRelatorio.fdqryRelacaoCargos.Open;
  //chkMembroClick(Sender);
  dtpDocumento.Date:= now;
end;

end.
