unit uCadTipoSaida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,   uDTMConexao,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,cCadTipoSaida,uEnum,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmTipoSaida = class(TfrmTelaheranca)
    lbledtTipo: TLabeledEdit;
    lbledtDescricao: TLabeledEdit;
    lbledtCodigo: TLabeledEdit;
    QryListagemtipo: TStringField;
    QryListagemdescricao: TStringField;
    mmo1: TMemo;
    fdtncfldQryListagemid: TFDAutoIncField;
    procedure btnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure mmo1Change(Sender: TObject);
  private
    oTipoSaida: TTipoSaida;
  function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoSaida: TfrmTipoSaida;

implementation

{$R *.dfm}

procedure TfrmTipoSaida.btnAlterarClick(Sender: TObject);
begin
if oTipoSaida.Selecionar(QryListagem.FieldByName('id').AsInteger) then
  begin
    lbledtCodigo.Text    := IntToStr(oTipoSaida.id);
    lbledtDescricao.Text       := oTipoSaida.descricao;
    lbledtTipo.Text  :=oTipoSaida.tipo;
    end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;

procedure TfrmTipoSaida.btnNovoClick(Sender: TObject);
begin
  inherited;
lbledtTipo.SetFocus;
end;

procedure TfrmTipoSaida.FormCreate(Sender: TObject);
begin
  inherited;
    oTipoSaida:= TTipoSaida.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual:='id';
end;

{$REGION 'Override'}
function TfrmTipoSaida.Apagar: Boolean;
begin
if oTipoSaida.Selecionar(QryListagem.FieldByName('id').AsInteger) then
      Result:=oTipoSaida.Apagar;
end;


function TfrmTipoSaida.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
    if lbledtCodigo.Text<>EmptyStr then
       oTipoSaida.id:=StrToInt(lbledtCodigo.Text)
       else
       oTipoSaida.id :=0;
       oTipoSaida.descricao:=lbledtDescricao.Text;
       oTipoSaida.tipo:=   lbledtTipo.Text;


    if (EstadodoCadastro=ecInserir) then
    Result:=oTipoSaida.Inserir
    else if (EstadodoCadastro=ecAlterar) then
     Result:=oTipoSaida.Atualizar;

end;


procedure TfrmTipoSaida.mmo1Change(Sender: TObject);
begin
  inherited;

end;

{$endregion}

end.
