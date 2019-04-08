unit uCadLancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,uPrincipal,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, uEnum,cCadLancamento,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,uDTMConexao,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,
  RxToolEdit, RxCurrEdit;

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
    procedure btnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure cbbTipoKeyPress(Sender: TObject; var Key: Char);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
     oLancamento: TLancamento;
    function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadLancamento: TfrmCadLancamento;

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

procedure TfrmCadLancamento.btnGravarClick(Sender: TObject);
begin
  inherited;
btnNovo.SetFocus;
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
  inherited;
  oLancamento:= TLancamento.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual:='cod_entrada';
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

{$endregion}

end.
