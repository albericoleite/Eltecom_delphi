unit uCadLancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,uPrincipal,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, uEnum,cCadLancamento,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,uDTMConexao,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,
  RxToolEdit, RxCurrEdit,System.DateUtils;

type
  TfrmCadLancamento = class(TfrmTelaheranca)
    fdtncfldQryListagemcod_entrada: TFDAutoIncField;
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
  private
    { Private declarations }
     oLancamento: TLancamento;
    function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
    procedure ListaLancamentosPeriodo;
  public
    { Public declarations }
  end;

var
  frmCadLancamento: TfrmCadLancamento;
  SelectOriginal,CondicaoSQL:string;
  dti,dtf:TDateTime;

implementation

{$R *.dfm}

{$REGION 'Override'}
function TfrmCadLancamento.Apagar: Boolean;
begin
if oLancamento.Selecionar(QryListagem.FieldByName('cod_entrada').AsInteger) then
      Result:=oLancamento.Apagar;
end;

procedure TfrmCadLancamento.btnAlterarClick(Sender: TObject);
begin
if oLancamento.Selecionar(QryListagem.FieldByName('cod_entrada').AsInteger) then
  begin
    lbledtCodigo.Text    := IntToStr(oLancamento.cod_entrada);
    lbledtCodtalao.Text       := IntToStr(oLancamento.nro_documento);
    lbledtDescricao.Text := oLancamento.descricao;
    crncydtValor.Text := FloatToStr(oLancamento.valor);
    dtdtData.Date := oLancamento.dta_movimento;
    //cbbTipo.text:= oLancamento.tipo;

    end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;

procedure TfrmCadLancamento.btnApagarClick(Sender: TObject);
begin
dti:= dtdtIni.Date;
  dtf:=dtdtFim.Date;
  inherited;
  dti:= dtdtIni.Date;
  dtf:=dtdtFim.Date;
end;

procedure TfrmCadLancamento.btnBuscarClick(Sender: TObject);
begin
  inherited;
ListaLancamentosPeriodo;
end;

procedure TfrmCadLancamento.btnCancelarClick(Sender: TObject);
begin
  dti:= dtdtIni.Date;
  dtf:=dtdtFim.Date;
  inherited;
dtdtIni.Date:=dti;
dtdtFim.Date:=dtf;
end;

procedure TfrmCadLancamento.btnGravarClick(Sender: TObject);
begin
  dti:= dtdtIni.Date;
  dtf:=dtdtFim.Date;
  inherited;
btnNovo.SetFocus;
dtdtIni.Date:=dti;
dtdtFim.Date:=dtf;
end;

procedure TfrmCadLancamento.btnNovoClick(Sender: TObject);
begin
  inherited;
lbledtCodTalao.SetFocus;
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

procedure TfrmCadLancamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
if Assigned(oLancamento) then
     FreeAndNil(oLancamento);
end;

procedure TfrmCadLancamento.FormCreate(Sender: TObject);
begin
  ListaLancamentosPeriodo;
  inherited;
  oLancamento:= TLancamento.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual:='cod_entrada';
   dtdtIni.Date:=StartOfTheMonth(now);
   dtdtFim.Date:=Now;
end;

procedure TfrmCadLancamento.FormShow(Sender: TObject);
begin
  inherited;
btnBuscarClick(sender);
end;

function TfrmCadLancamento.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
    if lbledtCodigo.Text<>EmptyStr then
       oLancamento.cod_entrada:=StrToInt(lbledtCodigo.Text)
       else
       oLancamento.cod_entrada :=0;
       oLancamento.cod_congregacao:=dtmPrincipal.congAtiva;
       oLancamento.nro_documento := StrToInt(lbledtCodtalao.Text);
       oLancamento.descricao :=lbledtDescricao.Text;
       oLancamento.valor := StrToFloat(crncydtValor.Text);
       oLancamento.dta_movimento:=dtdtData.Date;
       oLancamento.tipo:=cbbTipo.Text;
       oLancamento.usuario_inclusao:=oUsuarioLogado.nome;
    if (EstadodoCadastro=ecInserir) then
    Result:=oLancamento.Inserir
    else if (EstadodoCadastro=ecAlterar) then
     Result:=oLancamento.Atualizar;

end;

procedure TfrmCadLancamento.ListaLancamentosPeriodo;
begin
  QryListagem.Close;
  QryListagem.ParamByName('dtini').AsDateTime := dtdtIni.Date;
  QryListagem.ParamByName('dtfim').AsDateTime := dtdtFim.Date;
  QryListagem.SQL.Text;
  QryListagem.Open;
end;

{$endregion}

end.
