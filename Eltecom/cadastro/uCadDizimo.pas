unit uCadDizimo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,  cFuncao,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,system.DateUtils,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,  cCadDizimo, uEnum,uDTMConexao,
  RxToolEdit, RxCurrEdit;

type
  TfrmCadDizimos = class(TfrmTelaheranca)
    fdtncfldQryListagemcod_dizimo: TFDAutoIncField;
    intgrfldQryListagemcod_talao: TIntegerField;
    intgrfldQryListagemcod_cheque: TIntegerField;
    strngfldQryListagemnome: TStringField;
    fltfldQryListagemvalor: TFloatField;
    dtfldQryListagemdata: TDateField;
    strngfldQryListagemcargo: TStringField;
    intgrfldQryListagemcod_congregacao: TIntegerField;
    lbledtCodDizimo: TLabeledEdit;
    lbledtNome: TLabeledEdit;
    lbledtCodtalao: TLabeledEdit;
    lbledtCodCheque: TLabeledEdit;
    dtdtData: TDateEdit;
    lbl1: TLabel;
    fdqryCargos: TFDQuery;
    dblkcbbCargo: TDBLookupComboBox;
    dsCargos: TDataSource;
    lbl2: TLabel;
    crncydtValor: TCurrencyEdit;
    lbl3: TLabel;
    chkCheque: TCheckBox;
    lblDataNascimento: TLabel;
    dtdtIni: TDateEdit;
    lbl5: TLabel;
    dtdtFim: TDateEdit;
    btnBuscar: TBitBtn;
    btnImprimir: TBitBtn;
    intgrfldQryListagemnivel: TIntegerField;
    fdqryDizimistas: TFDQuery;
    intgrfldDizimistascod_dizimo: TIntegerField;
    intgrfldDizimistascod_talao: TIntegerField;
    intgrfldDizimistascod_cheque: TIntegerField;
    strngfldDizimistasnome: TStringField;
    fltfldDizimistasvalor: TFloatField;
    dtfldDizimistasdata: TDateField;
    strngfldDizimistascargo: TStringField;
    intgrfldDizimistascod_congregacao: TIntegerField;
    lrgntfldDizimistasnivel: TLargeintField;
    strngfldDizimistasrol: TStringField;
    fdqryDizimosTotal: TFDQuery;
    fltfldDizimosTotaltotal: TFloatField;
    fdqryizimitobreiro: TFDQuery;
    intgrfld1: TIntegerField;
    intgrfld2: TIntegerField;
    intgrfld3: TIntegerField;
    strngfld1: TStringField;
    fltfld1: TFloatField;
    dtfld1: TDateField;
    strngfld2: TStringField;
    intgrfld4: TIntegerField;
    lrgntfld1: TLargeintField;
    strngfld3: TStringField;
    chkobreiro: TCheckBox;
    dsMes: TDataSource;
    dblkcbbMes: TDBLookupComboBox;
    Label1: TLabel;
    fdqryDizimistasdata_mes: TDateField;
    fdqryizimitobreirodata_mes: TDateField;
    Label3: TLabel;
    crncydtTotal: TCurrencyEdit;
    procedure btnAlterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure chkChequeClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lbledtNomeChange(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure dblkcbbMesClick(Sender: TObject);
  private
    { Private declarations }
    oDizimo: TDizimo;
    function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
    procedure ListaLancamentosPeriodo;
    function TotalizarEntrada: Double;
  public
    { Public declarations }
  end;

var
  frmCadDizimos: TfrmCadDizimos;
  dtai,dtaf : TDateTime;

implementation

uses
  uDTMRelatorio, uDTMRelatorioFinanceiro;


{$R *.dfm}

{$REGION 'Override'}
function TfrmCadDizimos.Apagar: Boolean;
begin
if oDizimo.Selecionar(QryListagem.FieldByName('cod_dizimo').AsInteger) then
      Result:=oDizimo.Apagar;
end;


procedure TfrmCadDizimos.btnAlterarClick(Sender: TObject);
begin
if oDizimo.Selecionar(QryListagem.FieldByName('cod_dizimo').AsInteger) then
  begin
    lbledtCodDizimo.Text    := IntToStr(oDizimo.cod_dizimo);
    lbledtCodtalao.Text       := IntToStr(oDizimo.cod_talao);
    lbledtCodCheque.Text        := IntToStr(oDizimo.cod_cheque);
    lbledtNome.Text := oDizimo.nome;
    crncydtValor.Text := FloatToStr(oDizimo.valor);
    dtdtData.Date := oDizimo.data;
    dblkcbbCargo.KeyValue:= oDizimo.cargo;

    end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;



procedure TfrmCadDizimos.btnApagarClick(Sender: TObject);
begin
  inherited;
  ListaLancamentosPeriodo;
end;

procedure TfrmCadDizimos.btnBuscarClick(Sender: TObject);
begin
  inherited;
ListaLancamentosPeriodo;
end;

procedure TfrmCadDizimos.btnImprimirClick(Sender: TObject);
var mes: string;
begin
  inherited;
ListaLancamentosPeriodo;
dtmRelatorio.frxdbDizimista.DataSet:=fdqryDizimistas;

if chkobreiro.Checked = true then
begin
   dtmRelatorio.frxdbDizimista.DataSet:=fdqryizimitobreiro;
       mes:= TFuncao.ExtensoMes(MonthOf(dtdtini.Date));
   dtmRelatorio.fdqryCongregacao.Open;
   dtmRelatorio.frxrprtDizimistaObreiros.Variables['Data'] := QuotedStr(mes);
  dtmRelatorio.frxrprtDizimistaObreiros.ReportOptions.Name :=
    'Visualiza��o de Impress�o: Dizimistas Obreiros do m�s: '+mes;
    dtmRelatorio.frxrprtDizimistaObreiros.PrepareReport(True);
    dtmRelatorio.frxrprtDizimistaObreiros.ShowReport();
end else
begin
     //dtmRelatorio.frxdbDizimista.DataSet:=fdqryDizimistas;
  dtmRelatorio.frxdbDizimosTotal.DataSet:=fdqryDizimosTotal;
       mes:= TFuncao.ExtensoMes(MonthOf(dtdtini.Date));
   dtmRelatorio.fdqryCongregacao.Open;
   dtmRelatorio.frxrprtDizimista.Variables['Data'] := QuotedStr(mes);
  dtmRelatorio.frxrprtDizimista.ReportOptions.Name :=
    'Visualiza��o de Impress�o: Dizimistas do m�s: '+mes;
    dtmRelatorio.frxrprtDizimista.PrepareReport(True);
    dtmRelatorio.frxrprtDizimista.ShowReport();
end;


end;


procedure TfrmCadDizimos.btnNovoClick(Sender: TObject);
begin
  inherited;
lbledtCodtalao.SetFocus;
  lbledtCodCheque.Text:='0';
  dtdtData.Date:=Date;
end;

procedure TfrmCadDizimos.chkChequeClick(Sender: TObject);
begin
  inherited;
if chkCheque.Checked=true then   begin
  lbledtCodtalao.Text:='0';
  lbledtCodCheque.Text:='0';
  lbledtCodtalao.Enabled:=false;
  lbledtCodCheque.Enabled:=True;
   lbledtCodCheque.SetFocus;
  end;
if chkCheque.Checked=false then   begin
     lbledtCodtalao.Text:='0';
     lbledtCodCheque.Text:='0';
  lbledtCodtalao.Enabled:=true;
  lbledtCodCheque.Enabled:=false;
   lbledtCodtalao.SetFocus;
end;
end;

procedure TfrmCadDizimos.dblkcbbMesClick(Sender: TObject);
var i :Integer;
Ano, Mes, Dia : word;
begin
i := dblkcbbMes.KeyValue;
DecodeDate (now, Ano, Mes, Dia);
  dtdtIni.Date:= StartOfaMonth(Ano,i);
  dtdtFim.Date:= EndOfAMonth(Ano,i);
  btnBuscar.Click;
end;

procedure TfrmCadDizimos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
if Assigned(oDizimo) then
     FreeAndNil(oDizimo);

 dtmRelatorio.fdqryCongregacao.Close;
 dtmRelatorio.fdqryMeses.Close;
 fdqryDizimosTotal.Close;
end;

procedure TfrmCadDizimos.FormCreate(Sender: TObject);
begin
  inherited;
  oDizimo:= TDizimo.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual:='cod_dizimo';
   dtdtIni.Date:=StartOfTheMonth(now);
   dtdtFim.Date:=Now;
   btnBuscarClick(sender);
   //dtmRelatorio := TdtmRelatorio(dtmPrincipal.ConexaoDB);
   //dtmRelatorio.fdqryMeses.Open;
end;

procedure TfrmCadDizimos.FormShow(Sender: TObject);
begin
  inherited;
btnBuscarClick(sender);
end;

function TfrmCadDizimos.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
dtai :=dtdtIni.Date;
dtaf := dtdtFim.Date;
    if lbledtCodDizimo.Text<>EmptyStr then
       oDizimo.cod_dizimo:=StrToInt(lbledtCodDizimo.Text)
       else
       oDizimo.cod_dizimo :=0;
       oDizimo.cod_congregacao:=dtmPrincipal.congAtiva;
       oDizimo.cod_talao := StrToInt(lbledtCodtalao.Text);
       oDizimo.cod_cheque:= StrToInt(lbledtCodCheque.Text);
       oDizimo.nome:=lbledtNome.Text;
       oDizimo.valor := StrToFloat(crncydtValor.Text);
       oDizimo.data:=dtdtData.Date;
       oDizimo.cargo:=dblkcbbCargo.Text;
    if (EstadodoCadastro=ecInserir) then
    Result:=oDizimo.Inserir
    else if (EstadodoCadastro=ecAlterar) then
     Result:=oDizimo.Atualizar;

     dtdtIni.Date :=dtai ;
     dtdtFim.Date :=dtaf;
end;

procedure TfrmCadDizimos.lbledtNomeChange(Sender: TObject);
   Var Aux : Integer;
  begin
If lbledtNome.Focused Then
  begin
    dtmPrincipal.fdqryPessoa.Close;
    dtmPrincipal.fdqryPessoa.Open;
    if dtmPrincipal.fdqryPessoa.Locate('nome_pessoa',copy(lbledtNome.Text,1,lbledtNome.SelStart),[loCaseInsensitive,loPartialKey]) then
    begin
      lbledtNome.OnChange := nil; // N�o ativar o evento agora.
      Aux := lbledtNome.SelStart; // Posi��o do cursor no EditFornecedor
      lbledtNome.Text := dtmPrincipal.fdqryPessoa.FieldByName('nome_pessoa').AsString; // Foi o que encontramos pois o codigo s� passa por aqui se existe a informa��o
      lbledtNome.SelStart := Aux; // Atualizamos a posi��o do cursor.
      lbledtNome.OnChange := lbledtNomeChange; // Agora podemos chamar novamente.
     //dsDizimos.DataSet.FieldByName('nome').Value := dtmConexao.fdqryBuscarObreirocod_pessoa.Text;
    end;
  end;
  inherited;

end;

{$endregion}

procedure TfrmCadDizimos.ListaLancamentosPeriodo;
var
  Qry: TFDQuery;
begin
  QryListagem.Close;
  QryListagem.ParamByName('dtini').AsDateTime := dtdtIni.Date;
  QryListagem.ParamByName('dtfim').AsDateTime := dtdtFim.Date;
  QryListagem.Open;

  fdqryDizimistas.Close;
  fdqryDizimistas.ParamByName('dtini').AsDateTime := dtdtIni.Date;
  fdqryDizimistas.ParamByName('dtfim').AsDateTime := dtdtFim.Date;
  fdqryDizimistas.Open;


  fdqryizimitobreiro.Close;
  fdqryizimitobreiro.ParamByName('dtini').AsDateTime := dtdtIni.Date;
  fdqryizimitobreiro.ParamByName('dtfim').AsDateTime := dtdtFim.Date;
  fdqryizimitobreiro.Open;

  fdqryDizimosTotal.Close;
  fdqryDizimosTotal.ParamByName('dtini').AsDateTime := dtdtIni.Date;
  fdqryDizimosTotal.ParamByName('dtfim').AsDateTime := dtdtFim.Date;
  fdqryDizimosTotal.Open;
  crncydtTotal.Text:=  TotalizarEntrada.ToString();


  try
    Qry := TFDQuery.Create(nil);
    Qry.Connection := dtmPrincipal.ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT  sum(t.valor) as VALOR        '+
  ' FROM tb_dizimista t inner join tb_parametro_sistema a on a.cod_congregacao = t.cod_congregacao '+
  ' where t.`data` between :dataini   and    :datafim ');
    Qry.ParamByName('dataini').AsDateTime := dtdtIni.Date;
    Qry.ParamByName('datafim').AsDateTime := dtdtFim.Date;
    try
      Qry.Open;
      dtmRelatorio.frxrprtDizimista.Variables['ValorTotal'] := Qry.FieldByName('VALOR').AsFloat;

    Except

    end;

  finally
    if Assigned(Qry) then
      FreeAndNil(Qry)
  end;
  //lblTotal.Caption:= 'Valor Total:' +fdqryDizimosTotal.FieldByName('total').AsString;
end;

function TfrmCadDizimos.TotalizarEntrada:Double;
begin
Result :=0;
      QryListagem.First;
      while not QryListagem.Eof do   begin
       Result:= Result + QryListagem.FieldByName('valor').AsFloat;
       QryListagem.Next;
      end;
end;




end.
