unit uCadLancUnificado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,cUsuarioLogado, Data.DB, Vcl.DBCtrls, Vcl.ExtCtrls,uDTMConexao
  , System.DateUtils,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, RxCurrEdit, RxToolEdit, Vcl.Buttons,SimpleDAO,SimpleInterface,
  Vcl.Mask, Vcl.ComCtrls,SimpleQueryFiredac,System.Generics.Collections  ,Entidade.TipoLancamento
  ,Entidade.CentroCusto,Entidade.Fornecedor,uEnum,Entidade.TipoCulto,cFuncao
  ,Entidade.FormaPagamento, Entidade.Tesouraria,Entidade.TipoSaida;

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
    dbnvgrNavigator: TDBNavigator;
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
    dsTipoSaida: TDataSource;
    procedure cbbTipoChange(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure dblkcbbMesClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private

    { Private declarations }
    DAOCentrocusto  :iSimpleDAO<TCENTRO_CUSTO>;
    DAOFornecedor  :iSimpleDAO<TFORNECEDOR>;
    DAOTipoculto :iSimpleDAO<TTIPO_CULTO>;
    DAOFormapagamento :iSimpleDAO<TFORMA_PAGAMENTO>;
    DAOTipolancamento:iSimpleDAO<TTIPO_LANCAMENTO>;
    DAOTesouraria:iSimpleDAO<TTB_TESOURARIA>;
    DAOTiposaida:iSimpleDAO<TTIPO_SAIDA>;
    procedure FiltrosCombobox(Tipo: string);
    function Listar: string;
    procedure ControlarBotoes(btnNovo, btnAlterar, btnCancelar, BtnGravar,
      btnApagar: TBitBtn; btnNavigator: TDBNavigator;
      pgcPrincipal: TPageControl; Flag: Boolean);
    procedure LimparEdit;
    procedure ControlarIndiceTab(pgcPrincipal: TPageControl; Indice: Integer);
  public
    { Public declarations }
     EstadoDoCadastro:TEstadoDoCadastro;
    procedure ListaTipoSaida;

  end;

var
  frmCadLancUnificado: TfrmCadLancUnificado;

implementation

{$R *.dfm}

uses uDTMRelatorio, uPrincipal;

procedure TfrmCadLancUnificado.btnAlterarClick(Sender: TObject);
begin
if not TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo,Self.Name+'_'+TBitBtn(Sender).Name,dtmPrincipal.ConexaoDB) then
begin
  MessageDlg('Usuário: '+oUsuarioLogado.nome+', não tem permissão de acesso',mtWarning,[mbOK],0);
  Abort;
end;
 ControlarBotoes(btnNovo, btnAlterar, btnCancelar,btnGravar
,btnApagar,dbnvgrNavigator , pgcPrincipal,False);
EstadoDoCadastro:= ecAlterar;
lbledtDescricao.Enabled:=true;
lbledtDescricao.SetFocus;
ListaTipoSaida;
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

procedure TfrmCadLancUnificado.btnCancelarClick(Sender: TObject);
begin
ControlarBotoes(btnNovo, btnAlterar, btnCancelar,btnGravar
,btnApagar,dbnvgrNavigator , pgcPrincipal,True);
ControlarIndiceTab(pgcPrincipal,0);
LimparEdit;
end;
procedure TfrmCadLancUnificado.ControlarIndiceTab(pgcPrincipal:TPageControl;Indice: Integer) ;
begin
      if (pgcPrincipal.Pages[Indice].TabVisible) then
      pgcPrincipal.TabIndex:=Indice;
end;

procedure TfrmCadLancUnificado.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TfrmCadLancUnificado.btnGravarClick(Sender: TObject);
var
  tipo : TTB_TESOURARIA;
begin
  tipo := TTB_TESOURARIA.Create;

  if lbledtCodigo.Text <>'' then  begin

    try
    tipo.COD_ENTRADA := StrToInt(lbledtCodigo.Text);
    tipo.DESCRICAO := lbledtDescricao.Text;
    tipo.COD_CONGREGACAO:= dtmPrincipal.congAtiva;
    tipo.NRO_DOCUMENTO:= StrToInt(lbledtCodTalao.Text);
    tipo.DTA_MOVIMENTO:= dtdtData.Date;
    tipo.VALOR:= StrToFloat(crncydtValor.Text);
    tipo.ID_CENTRO_CUSTO:= dblkcbbCC.keyvalue;
    tipo.ID_TIPO_LANCAMENTO:= dblkcbbTipoGenerico.keyvalue;
    tipo.ID_FORMA_PAGAMENTO:= dblkcbbFormPag.keyvalue;
    tipo.TIPO:= cbbTipo.text;
       if cbbTipo.text = 'ENTRADA' then  BEGIN
     tipo.ID_TIPO_CULTO:= dblkcbbCultoFornec.KeyValue
    END     ELSE begin
    tipo.ID_FORNECEDOR:= dblkcbbCultoFornec.KeyValue;
    tipo.COD_TIPO_SAIDA:=dblkcbbTipoSaida.keyvalue;
    end;

    DAOTesouraria.Update(tipo);
    finally
    tipo.Free;
    btnBuscarClick(nil);
  end;
  end else begin

   try
    tipo.DESCRICAO := lbledtDescricao.Text;
    tipo.COD_CONGREGACAO:= dtmPrincipal.congAtiva;
    tipo.NRO_DOCUMENTO:= StrToInt(lbledtCodTalao.Text);
    tipo.DTA_MOVIMENTO:= dtdtData.Date;
    tipo.VALOR:= StrToFloat(crncydtValor.Text);
    tipo.ID_CENTRO_CUSTO:= dblkcbbCC.keyvalue;
    tipo.ID_TIPO_LANCAMENTO:= dblkcbbTipoGenerico.keyvalue;
    tipo.ID_FORMA_PAGAMENTO:= dblkcbbFormPag.keyvalue;
    tipo.DTA_INCLUSAO:=now;
    tipo.USUARIO_INCLUSAO:= oUsuarioLogado.nome;
    tipo.TIPO:= cbbTipo.text;
       if cbbTipo.text = 'ENTRADA' then  BEGIN
     tipo.ID_TIPO_CULTO:= dblkcbbCultoFornec.KeyValue
    END     ELSE begin
    tipo.ID_FORNECEDOR:= dblkcbbCultoFornec.KeyValue;
    tipo.COD_TIPO_SAIDA:=dblkcbbTipoSaida.keyvalue;
    end;
    DAOTesouraria.Insert(tipo);
    finally
    tipo.Free;
    btnBuscarClick(nil);
  end;
  end;
   lbledtDescricao.Enabled:=false;

end;

procedure TfrmCadLancUnificado.btnNovoClick(Sender: TObject);
var
vl:string;
begin
  vl:=TFuncao.SqlValor('select count(1) as VALOR from centro_custo;',dtmPrincipal.ConexaoDB);
if vl = '0' then   begin
  MessageDlg('Não existe Centro de Custo cadastrado',mtWarning,[mbOK],0);
  Abort;
end;

if not TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo,Self.Name+'_'+TBitBtn(Sender).Name,dtmPrincipal.ConexaoDB) then
begin
  MessageDlg('Usuário: '+oUsuarioLogado.nome+', não tem permissão de acesso',mtWarning,[mbOK],0);
  Abort;
end;


ControlarBotoes(btnNovo, btnAlterar, btnCancelar,btnGravar
,btnApagar,dbnvgrNavigator , pgcPrincipal,False);
EstadoDoCadastro:= ecInserir;
LimparEdit;
dtdtData.Date:= Now;
lbledtCodigo.Clear;
lbledtDescricao.Clear;
lbledtDescricao.Enabled:=true;
lbledtDescricao.SetFocus;
end;
procedure TfrmCadLancUnificado.ControlarBotoes(btnNovo,btnAlterar,  btnCancelar,
 BtnGravar, btnApagar:TBitBtn;
 btnNavigator:TDBNavigator ;pgcPrincipal:TPageControl; Flag:Boolean );
Begin
    btnNovo.Enabled :=Flag;
    btnApagar.Enabled := Flag;
    btnAlterar.Enabled :=Flag;
    btnNavigator.Enabled := Flag;
    pgcPrincipal.Pages[0].TabVisible:=Flag;
    btnCancelar.Enabled:=not(Flag);
    BtnGravar.Enabled:=not(Flag);
End;

Procedure    TfrmCadLancUnificado.LimparEdit;
var i : Integer;
begin
       for i := 0 to ComponentCount-1 do  begin
    if (Components[i] is TLabeledEdit) then
           TLabeledEdit(Components[i]).Text:=EmptyStr
           else if (Components[i] is Tedit) then
            Tedit(Components[i]).Text:=EmptyStr

            else if (Components[i] is TMemo) then
            TMemo(Components[i]).Text:=EmptyStr

            else if (Components[i] is TMaskEdit) then
            TMaskEdit(Components[i]).Text:=''

            else if (Components[i] is TDBLookupComboBox) then
            TDBLookupComboBox(Components[i]).keyValue:= null

            else if (Components[i] is TCurrencyEdit) then
            TCurrencyEdit(Components[i]).Value:=0

            //else if (Components[i] is TDateEdit) then
            //TDateEdit(Components[i]).Date:=0 ;
     end;
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
  dblkcbbCC.keyvalue :=dsListagem.DataSet.FieldByName('ID_CENTRO_CUSTO').AsInteger;
  cbbTipo.Text:= dsListagem.DataSet.FieldByName('TIPO').AsString;

  dblkcbbFormPag.keyvalue:=dsListagem.DataSet.FieldByName('ID_FORMA_PAGAMENTO').AsInteger;
    if cbbTipo.text = 'ENTRADA' then
     dblkcbbCultoFornec.keyvalue:= dsListagem.DataSet.FieldByName('ID_TIPO_CULTO').AsString
      ELSE
    dblkcbbCultoFornec.keyvalue:= dsListagem.DataSet.FieldByName('ID_FORNECEDOR').AsString;

end;

procedure TfrmCadLancUnificado.FormCreate(Sender: TObject);
 var
  lancamentos : TList<TTB_TESOURARIA>;
  sql:string;
  vl:string;

begin



dtdtIni.Date := StartOfTheMonth(now);
dtdtFim.Date := now;
{sql :=  'dta_movimento between '+QuotedStr(FormatDateTime( 'yyyy-mm-dd', dtdtIni.date))+ ' and '
+QuotedStr(FormatDateTime( 'yyyy-mm-dd', dtdtFim.date));
   DAOTesouraria:= TSimpleDAO<TTB_TESOURARIA>
   .New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(dsListagem);
   lancamentos := DAOTesouraria.SQL.WHERE(sql).&End.Find;}
   dtmRelatorio := TdtmRelatorio.Create(self);
   dtmRelatorio.fdqryMeses.open;
  FiltrosCombobox(cbbTipo.Text);
  btnBuscarClick(nil);
  Listar;


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
  tiposaida:Tlist<TTIPO_SAIDA>;
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

    DAOTiposaida := TSimpleDAO<TTIPO_SAIDA>
  .New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(dsTipoSaida);
  tiposaida := DAOTiposaida.SQL.OrderBy('ID').&End.Find;
  dblkcbbTipoSaida.ListSource := dsTipoSaida;
  dblkcbbTipoSaida.ListField := 'TIPO';
  dblkcbbTipoSaida.KeyField := 'ID';

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

dbgrdListagem.Columns.Clear;
dbgrdListagem.Columns.Add;
dbgrdListagem.Columns[0].FieldName := 'COD_ENTRADA';
dbgrdListagem.Columns[0].Title.Caption := 'Código';
dbgrdListagem.Columns.Add;
dbgrdListagem.Columns[1].FieldName := 'NRO_DOCUMENTO';
dbgrdListagem.Columns[1].Title.Caption := 'Documento';
dbgrdListagem.Columns.Add;
dbgrdListagem.Columns[2].FieldName := 'DESCRICAO';
dbgrdListagem.Columns[2].Title.Caption := 'Descrição';
dbgrdListagem.Columns.Add;
dbgrdListagem.Columns[3].FieldName := 'DTA_MOVIMENTO';
dbgrdListagem.Columns[3].Title.Caption := 'Data';
dbgrdListagem.Columns.Add;
dbgrdListagem.Columns[4].FieldName := 'VALOR';
dbgrdListagem.Columns[4].Title.Caption := 'Valor';
dbgrdListagem.Columns.Add;
dbgrdListagem.Columns[5].FieldName := 'TIPO';
dbgrdListagem.Columns[5].Title.Caption := 'Tipo';
end;

end.

