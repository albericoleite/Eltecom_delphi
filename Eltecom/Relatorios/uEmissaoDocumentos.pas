unit uEmissaoDocumentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,uDTMRelatorio, uDTMConexao, uCadPessoa,
  Data.DB;

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
    procedure chkRecomendacaoClick(Sender: TObject);
    procedure chkVisitaClick(Sender: TObject);
    procedure chkTransferenciaClick(Sender: TObject);
    procedure dbgrdMembroTitleClick(Column: TColumn);
    procedure dbgrdMembroDblClick(Sender: TObject);
    procedure chkMembroClick(Sender: TObject);
    procedure chkRequerimentoClick(Sender: TObject);
    procedure chkObservacaoClick(Sender: TObject);
  private
    procedure ImprimirCarta(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
    IndiceAtual: string;
    titulo: string;
  end;

var
  frmEmitirDoc: TfrmEmitirDoc;

implementation


{$R *.dfm}

procedure TfrmEmitirDoc.btnImprimirClick(Sender: TObject);
begin

  dtmRelatorio.frxrprtCartaRecomendacao.Variables['Observacao'] :=
    QuotedStr(mmoObservacao.Text);
  dtmRelatorio.frxrprtCartaRecomendacao.Variables['Data'] :=
    QuotedStr(DateToStr(dtpDocumento.Date));
  dtmRelatorio.frxrprtCartaRecomendacao.Variables['Destino'] :=
    QuotedStr(edtDestino.Text);

  if chkVisita.Checked = true then
  begin
    dtmRelatorio.frxrprtCartaRecomendacao.Variables['Tipo'] :=
      QuotedStr(chkVisita.Hint);
    titulo := chkVisita.Hint;
    ImprimirCarta(Sender);
  end;

  if chkRecomendacao.Checked = true then
  begin
    dtmRelatorio.frxrprtCartaRecomendacao.Variables['Tipo'] :=
      QuotedStr(chkRecomendacao.Hint);
    titulo := chkRecomendacao.Hint;
    ImprimirCarta(Sender);
  end;

  if chkTransferencia.Checked = true then
  begin
    dtmRelatorio.frxrprtCartaRecomendacao.Variables['Tipo'] :=
      QuotedStr(chkTransferencia.Hint);
    titulo := chkTransferencia.Hint;
    ImprimirCarta(Sender);
  end;

    if chkOcorrencia.Checked = true then
  begin
    dtmRelatorio.frxrprtNotifOcorrencia.ReportOptions.Name :=
      'Visualização de Impressão: ' + chkOcorrencia.Caption;
    dtmRelatorio.frxrprtNotifOcorrencia.PrepareReport(true);
    // dtmConexao.frxrprtNotifOcorrencia.FileName := 'C:\Eltecom\anexo.pdf';
    // dtmConexao.frxrprtNotifOcorrencia.Export(dtmConexao.frxPDFExport1);
    dtmRelatorio.frxrprtNotifOcorrencia.ShowReport();
  end;


 if chkFxMembro.Checked=true then
    begin
      if dtmRelatorio.strngfldBuscaPessoaRelatoriomembro_congregado.Text = 'MEMBRO' then
      begin
       dtmRelatorio.frxrprtFichaMembro.ReportOptions.Name := 'Visualização de Impressão: '+chkFxMembro.Caption;
dtmRelatorio.frxrprtFichaMembro.PrepareReport(True);
//dtmConexao.frxrprtFichaMembro.FileName := 'C:\Eltecom\anexo.pdf';
    //  dtmConexao.frxrprtFichaMembro.Export(dtmConexao.frxPDFExport1);
        dtmRelatorio.frxrprtFichaMembro.ShowReport();
      end
      else
      begin
        Application.MessageBox('Não esta cadastrado como Membro!', 'Atenção!');
      end;
    end;

        if chkFxCongregado.Checked =true then
    begin
      if dtmRelatorio.strngfldBuscaPessoaRelatoriomembro_congregado.Text = 'CONGREGADO' then
      begin
           dtmRelatorio.frxrprtFichaCongregado.ReportOptions.Name := 'Visualização de Impressão: '+chkFxCongregado.Caption;
dtmRelatorio.frxrprtFichaCongregado.PrepareReport(True);
        dtmRelatorio.frxrprtFichaCongregado.ShowReport();
      end
      else
      begin
        Application.MessageBox('Não esta cadastrado como Congregado!',
          'Atenção!');
      end;
    end;

   if chkFxBatismo.Checked=True then
        begin
      if dtmRelatorio.strngfldBuscaPessoaRelatoriomembro_congregado.Text = 'CONGREGADO' then
      begin
        dtmRelatorio.frxrprtBatismoAguas.ReportOptions.Name := 'Visualização de Impressão: '+chkFxBatismo.Caption;
dtmRelatorio.frxrprtBatismoAguas.PrepareReport(True);
        dtmRelatorio.frxrprtBatismoAguas.ShowReport();
      end
      else
      begin
        Application.MessageBox('Não esta cadastrado como Congregado!', 'Atenção!');
      end;
    end;
end;

procedure TfrmEmitirDoc.ImprimirCarta(Sender: TObject);
begin
  dtmRelatorio.frxrprtCartaRecomendacao.ReportOptions.Name :=
    'Visualização de Impressão: ' + titulo;
  dtmRelatorio.frxrprtCartaRecomendacao.PrepareReport(true);
  dtmRelatorio.frxrprtCartaRecomendacao.ShowReport();
end;

procedure TfrmEmitirDoc.chkMembroClick(Sender: TObject);
var situacao :string;
begin
dtmRelatorio.fdqryBuscaPessoaRelatorio.Close;
if chkMembro.Checked = True then
begin
  situacao:= 'MEMBRO';
  dtmRelatorio.fdqryBuscaPessoaRelatorio.SQL[5] :=  'and t.membro_congregado = :situacao';
  dtmRelatorio.fdqryBuscaPessoaRelatorio.ParamByName('situacao').AsString:= situacao;
end  else
begin
  dtmRelatorio.fdqryBuscaPessoaRelatorio.SQL[5] := '';
end;
dtmRelatorio.fdqryBuscaPessoaRelatorio.Close;
dtmRelatorio.fdqryBuscaPessoaRelatorio.SQL[4] :=
        QuotedStr('%' + edtBuscar.Text + '%');
dtmRelatorio.fdqryBuscaPessoaRelatorio.Open;
lbl2.Caption:= 'Total:' + dtmRelatorio.fdqryBuscaPessoaRelatorio.RecordCount.ToString;
end;

procedure TfrmEmitirDoc.chkObservacaoClick(Sender: TObject);
begin
 if chkObservacao.Checked =true then
 begin
   mmoObservacao.Enabled:=True;
   mmoObservacao.SetFocus;
 end else begin
 mmoObservacao.Clear;
   mmoObservacao.Enabled:=False;
 end;
end;

procedure TfrmEmitirDoc.chkRecomendacaoClick(Sender: TObject);
begin
  if chkRecomendacao.Checked = true then
    frmEmitirDoc.Width := 915
  else
    frmEmitirDoc.Width := 573
end;

procedure TfrmEmitirDoc.chkRequerimentoClick(Sender: TObject);
begin
//TODO: COPIAR O RELATÓRIO DE REQUERIMENTO
end;

procedure TfrmEmitirDoc.chkTransferenciaClick(Sender: TObject);
begin
  if chkTransferencia.Checked = true then
    frmEmitirDoc.Width := 915
  else
    frmEmitirDoc.Width := 573
end;

procedure TfrmEmitirDoc.chkVisitaClick(Sender: TObject);
begin
  if chkVisita.Checked = true then
    frmEmitirDoc.Width := 915
  else
    frmEmitirDoc.Width := 573
end;

procedure TfrmEmitirDoc.dbgrdMembroDblClick(Sender: TObject);
begin
  frmCadPessoa := TfrmCadpessoa.Create(Self);
  frmCadPessoa.ShowModal;
end;

procedure TfrmEmitirDoc.dbgrdMembroTitleClick(Column: TColumn);
begin
  IndiceAtual := Column.FieldName;
  dtmRelatorio.fdqryBuscaPessoaRelatorio.IndexFieldNames := IndiceAtual;
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
  dtmRelatorio.fdqryBuscaPessoaRelatorio.Close;
  Action := cafree;
  frmEmitirDoc := nil;
end;

procedure TfrmEmitirDoc.FormCreate(Sender: TObject);
begin
  // dtmRelatorio.fdqryDiretoriaCongregacao.Open;
  // dtmConexao.fdqryCV.Open;
  // dtmRelatorio.fdqryCongregacao.Open;
  // dtmRelatorio.fdqryBuscaPessoaRelatorio.Open;
  // dtmConexao.fdqryBuscaPessoaRelatorio.Refresh;
  // dtmRelatorio.fdqryRelacaoCargos.Open;
  // chkMembroClick(Sender);
  dtmRelatorio.fdqryBuscaPessoaRelatorio.Open;
  dtpDocumento.Date := now;
  lbl2.Caption:= 'Total:' + dtmRelatorio.fdqryBuscaPessoaRelatorio.RecordCount.ToString;
  //frmEmitirDoc.Width := 573;
end;

end.
