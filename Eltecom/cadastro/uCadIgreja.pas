unit uCadIgreja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,uEnum,cCadIgreja,
  RxAnimate, Vcl.Menus;

type
  TfrmCadIgreja = class(TfrmTelaheranca)
    fdtncfldQryListagemcod_igreja: TFDAutoIncField;
    strngfldQryListagemnome_igreja: TStringField;
    strngfldQryListagemcidade: TStringField;
    strngfldQryListagemnome_presidente: TStringField;
    intgrfldQryListagemsituacao: TIntegerField;
    lbledtNome: TLabeledEdit;
    lbledt_codigo: TLabeledEdit;
    dtfldQryListagemdta_fundacao: TDateField;
    dtmfldQryListagemdta_inclusao: TDateTimeField;
    strngfldQryListagemsigla_igreja: TStringField;
    strngfldQryListagemsite: TStringField;
    strngfldQryListagememail: TStringField;
    strngfldQryListagemcnpj: TStringField;
    strngfldQryListagemlogradouro: TStringField;
    strngfldQryListagembairro: TStringField;
    strngfldQryListagemuf: TStringField;
    strngfldQryListagemfone: TStringField;
    blbfldQryListagemfoto: TBlobField;
    intgrfldQryListagempercentual_ajuste: TIntegerField;
    intgrfldQryListagemsistema: TIntegerField;
    lbledtCidade: TLabeledEdit;
    lbledtPresidente: TLabeledEdit;
    lbledtSigla: TLabeledEdit;
    lbledtSite: TLabeledEdit;
    lbledtEmail: TLabeledEdit;
    lbledtCNPJ: TLabeledEdit;
    lbledtLogradouro: TLabeledEdit;
    lbledtBairro: TLabeledEdit;
    lbledtPercAjuste: TLabeledEdit;
    pnlImage: TPanel;
    imgFoto: TImage;
    pmFoto: TPopupMenu;
    CarregarImagem1: TMenuItem;
    LimparImagem1: TMenuItem;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    oIgreja: TIgreja;
    function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadIgreja: TfrmCadIgreja;

implementation

uses
  uDTMConexao;

{$R *.dfm}

{$REGION 'Override'}
function TfrmCadIgreja.Apagar: Boolean;
begin
if oIgreja.Selecionar(QryListagem.FieldByName('cod_igreja').AsInteger) then
      Result:=oIgreja.Apagar;
end;


function TfrmCadIgreja.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
    if lbledt_codigo.Text<>EmptyStr then
       oIgreja.cod_igreja:=StrToInt(lbledt_codigo.Text)
       else
       oIgreja.cod_igreja:=0;
       oIgreja.nome_igreja:=lbledtNome.Text;

    if (EstadodoCadastro=ecInserir) then
    Result:=oIgreja.Inserir
    else if (EstadodoCadastro=ecAlterar) then
     Result:=oIgreja.Atualizar;

end;
{$endregion}

procedure TfrmCadIgreja.btnAlterarClick(Sender: TObject);
begin
  if oIgreja.Selecionar(QryListagem.FieldByName('cod_igreja').AsInteger) then
  begin
    lbledt_codigo.Text    := IntToStr(oIgreja.cod_igreja);
    lbledtNome.Text       := oIgreja.nome_igreja;
    lbledtPresidente.Text := oIgreja.nome_presidente;
    lbledtCidade.Text     := oIgreja.cidade;
    lbledtEmail.Text      := oIgreja.email;
    lbledtBairro.Text     := oIgreja.bairro;
    lbledtLogradouro.Text := oIgreja.logradouro;
    lbledtSite.Text       := oIgreja.site;
    lbledtSigla.Text      := oIgreja.sigla_igreja;
    end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;

procedure TfrmCadIgreja.btnNovoClick(Sender: TObject);
begin
  inherited;
  //dtdtNascimento.Date := Date;
  lbledtNome.SetFocus;
end;


procedure TfrmCadIgreja.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(oIgreja) then
    FreeAndNil(oIgreja);
end;

procedure TfrmCadIgreja.FormCreate(Sender: TObject);
begin
  inherited;
oIgreja := TIgreja.Create(dtmPrincipal.ConexaoDB);
  IndiceAtual := 'cod_igreja';
end;

end.
