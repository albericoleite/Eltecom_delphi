unit uCadLancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  uPrincipal,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, uEnum,
  cCadLancamento,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  uDTMConexao,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,
  RxToolEdit, RxCurrEdit, System.DateUtils;

type
  TfrmCadLancamento = class(TfrmTelaheranca)
    cod_entrada: TFDAutoIncField;
    intgrfldQryListagemnro_documento: TIntegerField;
    dtfldQryListagemdta_movimento: TDateField;
    dtmfldQryListagemdta_inclusao: TDateTimeField;
    strngfldQryListagemusuario_inclusao: TStringField;
    strngfldQryListagemdescricao: TStringField;
    fltfldQryListagemvalor: TFloatField;
    strngfldQryListagemtipo: TStringField;
    strngfldQryListagemstatus: TStringField;
    intgrfldQryListagemcod_congregacao: TIntegerField;
    intgrfldQryListagemsituacao: TIntegerField;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    cbbTipo: TComboBox;
    crncydtValor: TCurrencyEdit;
    dtdtData: TDateEdit;
    lbledtCodTalao: TLabeledEdit;
    lbledtDescricao: TLabeledEdit;
    lbledtCodigo: TLabeledEdit;
    dtdtIni: TDateEdit;
    lblDataNascimento: TLabel;
    lbl4: TLabel;
    dtdtFim: TDateEdit;
    lbl5: TLabel;
    btnBuscar: TBitBtn;
    mmoSemana: TMemo;
    lbl6: TLabel;
    btnImprimir: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    lbl7: TLabel;
    crncydtEntrada: TCurrencyEdit;
    crncydtSaida: TCurrencyEdit;
    Label3: TLabel;
    crncydtSubtotal: TCurrencyEdit;
    dblkcbbMes: TDBLookupComboBox;
    Label4: TLabel;
    dsMes: TDataSource;
    dblkcbbTipoSaida: TDBLookupComboBox;
    Label5: TLabel;
    dsTipoSaida: TDataSource;
    QryListagemcod_tipo_saida: TIntegerField;
    QryListagemTipoSaida: TStringField;
    procedure btnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure cbbTipoKeyPress(Sender: TObject; var Key: Char);
    procedure btnGravarClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimir1Click(Sender: TObject);
    procedure mmoSaidaChange(Sender: TObject);
    procedure dtdtIniChange(Sender: TObject);
    procedure dtdtFimChange(Sender: TObject);
    procedure dblkcbbMesClick(Sender: TObject);
    procedure cbbTipoChange(Sender: TObject);
  private
    { Private declarations }
    oLancamento: TLancamento;
    function Apagar: Boolean; override;
    function Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean; override;
    procedure ListaLancamentosPeriodo;
    function TotalizarEntrada: Double;
    procedure ListaTipoSaida;
  public
    { Public declarations }
  end;

var
  frmCadLancamento: TfrmCadLancamento;
  SelectOriginal, CondicaoSQL,semana: string;
  dti, dtf: TDateTime;

implementation

uses
  uDTMTesouraria, cFuncao, uDTMRelatorio;

{$R *.dfm}
{$REGION 'Override'}

function TfrmCadLancamento.Apagar: Boolean;
begin
  if oLancamento.Selecionar(QryListagem.FieldByName('cod_entrada').AsInteger)
  then
    Result := oLancamento.Apagar;
end;

procedure TfrmCadLancamento.btnAlterarClick(Sender: TObject);
begin
  if oLancamento.Selecionar(QryListagem.FieldByName('cod_entrada').AsInteger)
  then
  begin
    lbledtCodigo.Text := IntToStr(oLancamento.cod_entrada);
    lbledtCodTalao.Text := IntToStr(oLancamento.nro_documento);
    lbledtDescricao.Text := oLancamento.descricao;
    crncydtValor.Text := FloatToStr(oLancamento.valor);
    dtdtData.Date := oLancamento.dta_movimento;
    dblkcbbTipoSaida.KeyValue := oLancamento.cod_saida;
    cbbTipo.text:= oLancamento.tipo;
  end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;
  ListaTipoSaida;

end;

procedure TfrmCadLancamento.btnApagarClick(Sender: TObject);
begin
  dti := dtdtIni.Date;
  dtf := dtdtFim.Date;
  inherited;
  dti := dtdtIni.Date;
  dtf := dtdtFim.Date;
end;

procedure TfrmCadLancamento.btnBuscarClick(Sender: TObject);
begin
  inherited;
  ListaLancamentosPeriodo;
end;

procedure TfrmCadLancamento.btnCancelarClick(Sender: TObject);
begin
  dti := dtdtIni.Date;
  dtf := dtdtFim.Date;
  inherited;
  dtdtIni.Date := dti;
  dtdtFim.Date := dtf;
btnBuscarClick(sender);

end;

procedure TfrmCadLancamento.btnGravarClick(Sender: TObject);
begin
  dti := dtdtIni.Date;
  dtf := dtdtFim.Date;
  inherited;
  btnNovo.SetFocus;
  dtdtIni.Date := dti;
  dtdtFim.Date := dtf;
  dtmTesouraria.fdqryTes_valores.Refresh;
  btnBuscarClick(sender);
end;

procedure TfrmCadLancamento.btnImprimir1Click(Sender: TObject);
begin
  inherited;
  if mmoSemana.Text ='' then
  begin
    Application.MessageBox('Período não selecionado, escolha o período e clique em buscar ' , 'Atenção');
  Abort;
  end;


  if not strngfldQryListagemstatus.IsNull then
  begin
    // Atualizar consulta da Congregação
    dtmTesouraria.fdqryBuscaCongregacao.Refresh;
    dtmTesouraria.fdqryTes_valores.Open;
    // Imprimir relatório
    dtmTesouraria.frxrprtFechamento.ReportOptions.Name :=
      PChar('Prestação de Contas ' + DateToStr(dtdtIni.Date) + ' a ' +
      DateToStr(dtdtFim.Date));
    dtmTesouraria.frxrprtFechamento.Variables['Semana'] := QuotedStr(mmoSemana.Text);
    dtmTesouraria.frxrprtFechamento.ShowReport();
  end
  else
  begin
    Application.MessageBox(PChar('Não existe documento localizado nos dias ' +
      DateToStr(dtdtIni.Date) + ' a ' + DateToStr(dtdtFim.Date)), 'Atenção');
  end;
  //TODO: 4 - Adicionar relatório Fechamento "NATAL" (Sec. Alisson Dantas);
end;

procedure TfrmCadLancamento.btnNovoClick(Sender: TObject);
begin
  inherited;
  lbledtCodTalao.SetFocus;
  dtdtData.Date:=Now;
  ListaTipoSaida;
end;

procedure TfrmCadLancamento.cbbTipoChange(Sender: TObject);
begin
  inherited;
  ListaTipoSaida;
end;

procedure TfrmCadLancamento.cbbTipoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    if cbbTipo.Text <> '' then
    begin
      Key := #0;
      perform(wm_nextdlgctl, 0, 0);
      btnGravar.SetFocus;
    end
    else
    begin
      cbbTipo.SetFocus;
    end;
  end;
end;

procedure TfrmCadLancamento.dblkcbbMesClick(Sender: TObject);
var i :Integer;
Ano, Mes, Dia : word;
begin
i := dblkcbbMes.KeyValue;
DecodeDate (now, Ano, Mes, Dia);
  dtdtIni.Date:= StartOfaMonth(Ano,i);
  dtdtFim.Date:= EndOfAMonth(Ano,i);
  btnBuscar.Click;
end;

procedure TfrmCadLancamento.dtdtFimChange(Sender: TObject);
begin
  inherited;
dtf:=dtdtFim.Date;
end;

procedure TfrmCadLancamento.dtdtIniChange(Sender: TObject);
begin
  inherited;
dti:=dtdtIni.Date;
end;

procedure TfrmCadLancamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dtmPrincipal.fdqryTipoSaida.Close;
  if Assigned(oLancamento) then
    FreeAndNil(oLancamento);
end;

procedure TfrmCadLancamento.FormCreate(Sender: TObject);
begin

  inherited;
  oLancamento := TLancamento.Create(dtmPrincipal.ConexaoDB);
  IndiceAtual := 'cod_entrada';
  dtdtIni.Date := StartOfTheMonth(now);
  dtdtFim.Date := now;
  dtmTesouraria := TdtmTesouraria.Create(self);
  dtmRelatorio := TdtmRelatorio.Create(self);
  ListaLancamentosPeriodo;
  dtmPrincipal.fdqryTipoSaida.Open;
end;

procedure TfrmCadLancamento.FormShow(Sender: TObject);
begin
  inherited;
  dtdtIni.Date := StartOfTheMonth(now);
  dtdtFim.Date := now;
  btnBuscarClick(Sender);
end;

function TfrmCadLancamento.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
  if lbledtCodigo.Text <> EmptyStr then
    oLancamento.cod_entrada := StrToInt(lbledtCodigo.Text)
  else
    oLancamento.cod_entrada := 0;
  oLancamento.cod_congregacao := dtmPrincipal.congAtiva;
  oLancamento.nro_documento := StrToInt(lbledtCodTalao.Text);
  oLancamento.descricao := lbledtDescricao.Text;
  oLancamento.valor := StrToFloat(crncydtValor.Text);
  oLancamento.dta_movimento := dtdtData.Date;
  oLancamento.tipo := cbbTipo.Text;
  oLancamento.usuario_inclusao := oUsuarioLogado.nome;
  oLancamento.cod_saida:=0;
  if cbbTipo.Text ='SAIDA' then        begin
    oLancamento.cod_saida:= dblkcbbTipoSaida.KeyValue;
  end;


  if (EstadodoCadastro = ecInserir) then
    Result := oLancamento.Inserir
  else if (EstadodoCadastro = ecAlterar) then
    Result := oLancamento.Atualizar;

end;

function TfrmCadLancamento.TotalizarEntrada:Double;
begin
Result :=0;
      QryListagem.First;
      while not QryListagem.Eof do   begin
       Result:= Result + QryListagem.FieldByName('').AsFloat;
       QryListagem.Next;
      end;
end;

procedure TfrmCadLancamento.ListaTipoSaida;
begin
  if cbbTipo.Text = 'SAIDA' then
  begin
    dblkcbbTipoSaida.Enabled := true;
    dblkcbbTipoSaida.SetFocus;
  end;
  if cbbTipo.Text = 'ENTRADA' then
  begin
    dblkcbbTipoSaida.Enabled := false;
  end;
end;

procedure TfrmCadLancamento.ListaLancamentosPeriodo;
var a,b,c: Double;
begin
  QryListagem.close;
  QryListagem.ParamByName('dtini').AsDateTime := dtdtIni.Date;
  QryListagem.ParamByName('dtfim').AsDateTime := dtdtFim.Date;
  QryListagem.Open;



    try
    dtmTesouraria.fdqryTes_valores.close;
    dtmTesouraria.fdqryTes_valores.ParamByName('dtini').AsDateTime :=
      dtdtIni.Date;
    dtmTesouraria.fdqryTes_valores.ParamByName('dtfim').AsDateTime :=
      dtdtFim.Date;
    dtmTesouraria.fdqryTes_valores.Open;
  except
    Application.MessageBox('Falha na fdqryTes_valores', 'Atenção!');
  end;
   dtmTesouraria.fdqryBuscaCongregacao.Open;
   //    dtainicio:=FormatDateTime('yyyy-mm-dd', dtpInicial.Date);
 //dtafim:=FormatDateTime('yyyy-mm-dd', dtpFinal.Date);

   semana:= Copy(FormatDateTime('yyyy-mm-dd', dtdtini.Date),9,2)
   +' a '+copy(FormatDateTime('yyyy-mm-dd', dtdtfim.Date),9,2)+' / '+copy(FormatDateTime('yyyy-mm-dd', dtdtfim.Date),1,4);
mmoSemana.Text:= semana;


 try
    dtmTesouraria.fdqryTotalLancamentos.close;
    dtmTesouraria.fdqryTotalLancamentos.ParamByName('dtini').AsDateTime :=
      dtdtIni.Date;
    dtmTesouraria.fdqryTotalLancamentos.ParamByName('dtfim').AsDateTime :=
      dtdtFim.Date;
    dtmTesouraria.fdqryTotalLancamentos.Open;
  except
    Application.MessageBox('Falha na fdqryTotalLancamentos', 'Atenção!');
  end;

   try
    dtmTesouraria.fdqryTes_Entrada_Total.close;
    dtmTesouraria.fdqryTes_Entrada_Total.ParamByName('dtini').AsDateTime :=
      dtdtIni.Date;
    dtmTesouraria.fdqryTes_Entrada_Total.ParamByName('dtfim').AsDateTime :=
      dtdtFim.Date;
    dtmTesouraria.fdqryTes_Entrada_Total.Open;
  except
    Application.MessageBox('Falha na fdqryTes_Entrada_Total', 'Atenção!');
  end;

   try
    dtmTesouraria.fdqryTes_Saida_Total.close;
    dtmTesouraria.fdqryTes_Saida_Total.ParamByName('dtini').AsDateTime :=
      dtdtIni.Date;
    dtmTesouraria.fdqryTes_Saida_Total.ParamByName('dtfim').AsDateTime :=
      dtdtFim.Date;
    dtmTesouraria.fdqryTes_Saida_Total.Open;
  except
    Application.MessageBox('Falha na fdqryTes_Saida_Total', 'Atenção!');
  end;

  a:=  StrToFloat(dtmTesouraria.fltfldTes_Entrada_Totaltotal1.Text);
  b:=   StrToFloat(dtmTesouraria.fltfldTes_Saida_Totaltotal.Text);
  c:= a - b;
  crncydtEntrada.Text:=dtmTesouraria.fltfldTes_Entrada_Totaltotal1.Text;
  crncydtSaida.Text:= dtmTesouraria.fltfldTes_Saida_Totaltotal.Text;
  crncydtSubtotal.Text:= floattostr(c);

  dtmRelatorio.fdqryMeses.Open;

end;

procedure TfrmCadLancamento.mmoSaidaChange(Sender: TObject);
begin
  inherited;

end;

{$ENDREGION}

end.
