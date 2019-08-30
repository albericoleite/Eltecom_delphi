unit uCadTipoCulto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, Data.DB,  uDTMConexao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,   uEnum,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, cCadTipoCulto,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmTipoCulto = class(TfrmTelaheranca)
    lbledtDescricao: TLabeledEdit;
    lbledtCodigo: TLabeledEdit;
    lbledtObjetivo: TLabeledEdit;
    QryListagemdescricao: TStringField;
    QryListagemobjetivo: TStringField;
    fdtncfldQryListagemid: TFDAutoIncField;
    procedure btnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
  oTipoCulto: TTipoCulto;
  function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoCulto: TfrmTipoCulto;

implementation

{$R *.dfm}

procedure TfrmTipoCulto.btnAlterarClick(Sender: TObject);
begin
if oTipoCulto.Selecionar(QryListagem.FieldByName('id').AsInteger) then
  begin
    lbledtCodigo.Text    := IntToStr(oTipoCulto.id);
    lbledtDescricao.Text       := oTipoCulto.descricao;
    lbledtObjetivo.Text  :=oTipoCulto.objetivo;
    end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;
procedure TfrmTipoCulto.btnNovoClick(Sender: TObject);
begin
  inherited;
lbledtDescricao.SetFocus;
end;

procedure TfrmTipoCulto.FormCreate(Sender: TObject);
begin

  inherited;
    oTipoCulto:= TTipoCulto.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual:='id';
end;

{$REGION 'Override'}
function TfrmTipoCulto.Apagar: Boolean;
begin
if oTipoCulto.Selecionar(QryListagem.FieldByName('id').AsInteger) then
      Result:=oTipoCulto.Apagar;
end;


function TfrmTipoCulto.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
    if lbledtCodigo.Text<>EmptyStr then
       oTipoCulto.id:=StrToInt(lbledtCodigo.Text)
       else
       oTipoCulto.id :=0;
       oTipoCulto.descricao:=lbledtDescricao.Text;
       oTipoCulto.objetivo:=   lbledtObjetivo.Text;


    if (EstadodoCadastro=ecInserir) then
    Result:=oTipoCulto.Inserir
    else if (EstadodoCadastro=ecAlterar) then
     Result:=oTipoCulto.Atualizar;

end;


{$endregion}

end.
