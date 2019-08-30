unit uCadLancUnificado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.ExtCtrls,uDTMConexao, System.DateUtils,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, RxCurrEdit, RxToolEdit, Vcl.Buttons,SimpleDAO,SimpleInterface,
  Vcl.Mask, Vcl.ComCtrls,SimpleQueryFiredac,System.Generics.Collections  ,Entidade.TipoLancamento
  ,Entidade.CentroCusto,Entidade.Fornecedor,Entidade.TipoCulto,Entidade.FormaPagamento, Entidade.Tesouraria;

type
  TfrmCadLancUnificado = class(TForm)
    pgcPrincipal: TPageControl;
    tabListagem: TTabSheet;
    pnlListagem: TPanel;
    lblIndice: TLabel;
    lblDataNascimento: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    Label1: TLabel;
    lbl7: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    mskPesquisar: TMaskEdit;
    btnPesquisar: TBitBtn;
    dtdtIni: TDateEdit;
    dtdtFim: TDateEdit;
    btnBuscar: TBitBtn;
    mmoSemana: TMemo;
    btnImprimir: TBitBtn;
    crncydtEntrada: TCurrencyEdit;
    crncydtSaida: TCurrencyEdit;
    crncydtSubtotal: TCurrencyEdit;
    dblkcbbMes: TDBLookupComboBox;
    dbgrdListagem: TDBGrid;
    tabManutencao: TTabSheet;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    Label5: TLabel;
    lblCultoFornec: TLabel;
    cbbTipo: TComboBox;
    crncydtValor: TCurrencyEdit;
    dtdtData: TDateEdit;
    lbledtCodTalao: TLabeledEdit;
    lbledtDescricao: TLabeledEdit;
    lbledtCodigo: TLabeledEdit;
    dblkcbbTipoSaida: TDBLookupComboBox;
    dblkcbbCultoFornec: TDBLookupComboBox;
    pnlRodape: TPanel;
    btnNavigator: TDBNavigator;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnApagar: TBitBtn;
    btnFechar: TBitBtn;
    btnGravar: TBitBtn;
    dblkcbbCC: TDBLookupComboBox;
    Label2: TLabel;
    lblTipoGenerico: TLabel;
    dblkcbbTipoGenerico: TDBLookupComboBox;
    dblkcbbFormPag: TDBLookupComboBox;
    Label7: TLabel;
    dblkcbbConf1: TDBLookupComboBox;
    Label8: TLabel;
    dblkcbbConf2: TDBLookupComboBox;
    Label9: TLabel;
    dsCC: TDataSource;
    dsCultoFornec: TDataSource;
    dsFormpgto: TDataSource;
    dsTipolanc: TDataSource;
    dsListagem: TDataSource;
    dsMes: TDataSource;
    procedure cbbTipoChange(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure dblkcbbMesClick(Sender: TObject);
  private

    { Private declarations }
    DAOCentrocusto  :iSimpleDAO<TCENTRO_CUSTO>;
    DAOFornecedor  :iSimpleDAO<TFORNECEDOR>;
    DAOTipoculto :iSimpleDAO<TTIPO_CULTO>;
    DAOFormapagamento :iSimpleDAO<TFORMA_PAGAMENTO>;
    DAOTipolancamento:iSimpleDAO<TTIPO_LANCAMENTO>;
    DAOTesouraria:iSimpleDAO<TTB_TESOURARIA>;
    procedure FiltrosCombobox(Tipo: string);
    function Listar: string;
  public
    { Public declarations }
    procedure ListaTipoSaida;
  end;

var
  frmCadLancUnificado: TfrmCadLancUnificado;

implementation

{$R *.dfm}

uses uDTMRelatorio;

procedure TfrmCadLancUnificado.btnAlterarClick(Sender: TObject);
begin
lbledtDescricao.Enabled:=true;
lbledtDescricao.SetFocus;
end;

procedure TfrmCadLancUnificado.btnApagarClick(Sender: TObject);
var
  tipo : TTB_TESOURARIA;
begin

if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    lbledtCodigo.Text + #13 + 'Descrição: ' + lbledtDescricao.Text,
    mtConfirmation, [mbYes, mbNo], 0) = mrNO then
  begin
    Abort;
  end;
  tipo := TTB_TESOURARIA.Create;
  TRY
    tipo.COD_ENTRADA := StrToInt(lbledtCodigo.Text);
    DAOTesouraria.Delete(tipo);
  finally
    tipo.Free;
   //btnBuscarClick(nil);
  end;

end;

procedure TfrmCadLancUnificado.btnBuscarClick(Sender: TObject);
var
   lancamentos: TList<TTB_TESOURARIA>;
   sql:string;
begin
sql :=  'dta_movimento between '+QuotedStr(FormatDateTime( 'yyyy-mm-dd', dtdtIni.date))+ ' and '
+QuotedStr(FormatDateTime( 'yyyy-mm-dd', dtdtFim.date));
  DAOTesouraria:= TSimpleDAO<TTB_TESOURARIA>
   .New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(dsListagem);
   lancamentos := DAOTesouraria.SQL.WHERE(sql).&End.Find;
end;

procedure TfrmCadLancUnificado.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TfrmCadLancUnificado.btnNovoClick(Sender: TObject);
begin
dtdtData.Date:= Now;
lbledtCodigo.Clear;
lbledtDescricao.Clear;
lbledtDescricao.Enabled:=true;
lbledtDescricao.SetFocus;
end;

procedure TfrmCadLancUnificado.cbbTipoChange(Sender: TObject);
begin
      ListaTipoSaida;
end;

procedure TfrmCadLancUnificado.dblkcbbMesClick(Sender: TObject);
var i :Integer;
Ano, Mes, Dia : word;
begin
i := dblkcbbMes.KeyValue;
DecodeDate (now, Ano, Mes, Dia);
  dtdtIni.Date:= StartOfaMonth(Ano,i);
  dtdtFim.Date:= EndOfAMonth(Ano,i);
  btnBuscar.Click;

end;

procedure TfrmCadLancUnificado.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
lbledtCodigo.Text := dsListagem.DataSet.FieldByName('COD_ENTRADA').AsString;
  lbledtDescricao.Text := dsListagem.DataSet.FieldByName('DESCRICAO').AsString;
  lbledtCodTalao.Text:= dsListagem.DataSet.FieldByName('NRO_DOCUMENTO').AsString;
  crncydtValor.Text:= dsListagem.DataSet.FieldByName('VALOR').AsString;
  dtdtData.Text:=dsListagem.DataSet.FieldByName('DTA_MOVIMENTO').AsString;
  {lbledtBairro.Text:=dsListagem.DataSet.FieldByName('BAIRRO').AsString;
  lbledtNumero.Text:= dsListagem.DataSet.FieldByName('NUMERO').AsString;
  cbbUf.Text:=dsListagem.DataSet.FieldByName('UF').AsString;
  medtTelFixo.Text := dsListagem.DataSet.FieldByName('TELEFONE').AsString;
  medtTelefoneCel.Text:= dsListagem.DataSet.FieldByName('CELULAR').AsString;
  medtCEP.Text:=dsListagem.DataSet.FieldByName('CEP').AsString;
  medtCpfcnpj.Text:=dsListagem.DataSet.FieldByName('CPFCNPJ').AsString; }
end;

procedure TfrmCadLancUnificado.FormCreate(Sender: TObject);
 var
  lancamentos : TList<TTB_TESOURARIA>;
  teste:string;
begin
//ShowMessage(FormatDateTime( 'yyyy-mm-dd', dtdtIni.date));
teste :=  'dta_movimento between '+QuotedStr(FormatDateTime( 'yyyy-mm-dd', dtdtIni.date))+ ' and '
+QuotedStr(FormatDateTime( 'yyyy-mm-dd', dtdtFim.date));
//ShowMessage(teste);
   DAOTesouraria:= TSimpleDAO<TTB_TESOURARIA>
   .New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(dsListagem);
   lancamentos := DAOTesouraria.SQL.WHERE(teste).&End.Find;
   dtmRelatorio := TdtmRelatorio.Create(self);
   dtmRelatorio.fdqryMeses.open;
  FiltrosCombobox(cbbTipo.Text);

end;

procedure TfrmCadLancUnificado.ListaTipoSaida;
begin
  if cbbTipo.Text = 'SAIDA' then
  begin
    dblkcbbTipoSaida.Enabled := true;
    //dblkcbbTipoEntrada.Enabled:=false;
    dblkcbbTipoSaida.SetFocus;
    lblTipoGenerico.Caption:='Tipo de Despesa*';
    lblCultoFornec.Caption:='Fornecedor / Empresa*';
  end;
  if cbbTipo.Text = 'ENTRADA' then
  begin
    dblkcbbTipoSaida.Enabled := false;
    //dblkcbbTipoEntrada.Enabled:=True;
    lblTipoGenerico.Caption:='Tipo de Receita*';
    lblCultoFornec.Caption:='Dia ou na liderança do(a):'
  end;
  FiltrosCombobox(cbbTipo.Text);
end;

procedure TfrmCadLancUnificado.FiltrosCombobox(tipo: string);
var
  tipos: TList<TCENTRO_CUSTO> ;
  fornecedores: TList<TFORNECEDOR>;
  cultos: TList<TTIPO_CULTO>;
  formpgtos:TList<TFORMA_PAGAMENTO>;
  tiposlanc:TList<TTIPO_LANCAMENTO>;
begin
  DAOCentrocusto := TSimpleDAO<TCENTRO_CUSTO>
  .New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(dsCC);
  tipos := DAOCentrocusto.SQL.OrderBy('ID').&End.Find;
  dblkcbbCC.ListSource := dsCC;
  dblkcbbCC.ListField := 'DESCRICAO';
  dblkcbbCC.KeyField := 'ID';

  DAOFormapagamento := TSimpleDAO<TFORMA_PAGAMENTO>
  .New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(dsFormpgto);
  formpgtos := DAOFormapagamento.SQL.OrderBy('ID').&End.Find;
  dblkcbbFormPag.ListSource := dsFormpgto;
  dblkcbbFormPag.ListField := 'DESCRICAO';
  dblkcbbFormPag.KeyField := 'ID';

  dblkcbbCultoFornec.CleanupInstance;
  dblkcbbTipoGenerico.CleanupInstance;

if tipo ='ENTRADA' then
BEGIN
  DAOTipoculto := TSimpleDAO<TTIPO_CULTO>
.New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(dsCultoFornec);
  cultos := DAOTipoculto.SQL.OrderBy('ID').&End.Find;
  dblkcbbCultoFornec.ListSource := dsCultoFornec;
  dblkcbbCultoFornec.ListField := 'DESCRICAO';
  dblkcbbCultoFornec.KeyField := 'ID';


  DAOTipolancamento := TSimpleDAO<TTIPO_LANCAMENTO>
.New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(dsTipolanc);
  tiposlanc := DAOTipolancamento.SQL.Where('ID_TIPO_CENTRO_CUSTO = 1').&End.Find;
  dblkcbbTipoGenerico.ListSource := dsTipolanc;
  dblkcbbTipoGenerico.ListField := 'DESCRICAO';
  dblkcbbTipoGenerico.KeyField := 'ID';

END;
 if tipo ='SAIDA' then begin
DAOFornecedor := TSimpleDAO<TFORNECEDOR>
.New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(dsCultoFornec);
  fornecedores := DAOFornecedor.SQL.OrderBy('ID').&End.Find;
  dblkcbbCultoFornec.ListSource := dsCultoFornec;
  dblkcbbCultoFornec.ListField := 'NOMERAZAO';
  dblkcbbCultoFornec.KeyField := 'ID';

    DAOTipolancamento := TSimpleDAO<TTIPO_LANCAMENTO>
.New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(dsTipolanc);
  tiposlanc := DAOTipolancamento.SQL.Where('ID_TIPO_CENTRO_CUSTO = 2').&End.Find;
  dblkcbbTipoGenerico.ListSource := dsTipolanc;
  dblkcbbTipoGenerico.ListField := 'DESCRICAO';
  dblkcbbTipoGenerico.KeyField := 'ID';
end;

end;

function TfrmCadLancUnificado.Listar: string;
var
  tipos : TList<TTB_TESOURARIA>;
  tipo : TTB_TESOURARIA;
begin
  tipos := DAOTesouraria.SQL.OrderBy('COD_ENTRADA').&End.Find;
   dbgrdListagem.Columns[0].Title.Caption:='Código';
   dbgrdListagem.Columns[1].Title.Caption:='Nome';
   dbgrdListagem.Columns[1].Width:=100;
end;

end.

