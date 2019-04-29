unit uCadDizimo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
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
    fdtncfld1: TFDAutoIncField;
    intgrfld1: TIntegerField;
    intgrfld2: TIntegerField;
    strngfld1: TStringField;
    fltfld1: TFloatField;
    dtfld1: TDateField;
    strngfld2: TStringField;
    intgrfld3: TIntegerField;
    intgrfld4: TIntegerField;
    procedure btnAlterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure chkChequeClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    oDizimo: TDizimo;
    function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
    procedure ListaLancamentosPeriodo;
  public
    { Public declarations }
  end;

var
  frmCadDizimos: TfrmCadDizimos;

implementation

uses
  uDTMRelatorio;


{$R *.dfm}

{$REGION 'Override'}
function TfrmCadDizimos.Apagar: Boolean;
begin
if oDizimo.Selecionar(QryListagem.FieldByName('cod_departamento').AsInteger) then
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



procedure TfrmCadDizimos.btnBuscarClick(Sender: TObject);
begin
  inherited;
ListaLancamentosPeriodo;
end;

procedure TfrmCadDizimos.btnImprimirClick(Sender: TObject);
begin
  inherited;
  QryListagem.Close;
  QryListagem.SQL[7]:= ' order by b.nivel desc ';
  QryListagem.Open;
  dtmRelatorio.frxdbDizimista.DataSet:=QryListagem;
{if dtmRelatorio.fdqryDizimistacod_dizimo.IsNull then
begin
  Application.MessageBox('nenhum Dizimo nessa Data','Atenção!');
  dtdtIni.SetFocus;
end
else
begin
dtmRelatorio.frxrprtDizimista.Variables['Data'] := QuotedStr(uppercase(formatdatetime('MMMM ', (dtpData.Date))) +'de '+ formatdatetime('yyyy',
    (dtpData.Date)));

 dtmRelatorio.fdqryDizimistaObreiros.Close;
  dtmRelatorio.fdqryDizimistaObreiros.Params.ParamByName('DATA').AsString := uppercase(formatdatetime('yyyy-mm-dd', (dtpData.Date)));
     dtmRelatorio.fdqryDizimistaObreiros.Open;

     dtmRelatorio.fdqryDizimistaMembro.Close;
  dtmRelatorio.fdqryDizimistaMembro.Params.ParamByName('DATA').AsString := uppercase(formatdatetime('yyyy-mm-dd', (dtpData.Date)));
     dtmRelatorio.fdqryDizimistaMembro.Open;

      }

  dtmRelatorio.frxrprtDizimista.ReportOptions.Name :=
    'Visualização de Impressão: Dizimistas do mês ';
    //uppercase(formatdatetime('MMMM ', (dtpData.Date))) +'de '+ formatdatetime('yyyy',
   // (dtpData.Date));
    dtmRelatorio.frxrprtDizimista.PrepareReport(True);
    dtmRelatorio.frxrprtDizimista.ShowReport();
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

procedure TfrmCadDizimos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
if Assigned(oDizimo) then
     FreeAndNil(oDizimo);
end;

procedure TfrmCadDizimos.FormCreate(Sender: TObject);
begin
  inherited;
  oDizimo:= TDizimo.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual:='cod_dizimo';
   dtdtIni.Date:=StartOfTheMonth(now);
   dtdtFim.Date:=Now;
end;

procedure TfrmCadDizimos.FormShow(Sender: TObject);
begin
  inherited;
btnBuscarClick(sender);
end;

function TfrmCadDizimos.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
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

end;

{$endregion}

procedure TfrmCadDizimos.ListaLancamentosPeriodo;
begin
  QryListagem.Close;
  QryListagem.ParamByName('dtini').AsDateTime := dtdtIni.Date;
  QryListagem.ParamByName('dtfim').AsDateTime := dtdtFim.Date;
  QryListagem.SQL.Text;
  QryListagem.Open;
end;





end.
