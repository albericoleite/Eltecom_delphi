unit uCadAcaoAcesso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  uDTMConexao,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  cAcaoAcesso, uEnum,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmCadAcaoAcesso = class(TfrmTelaheranca)
    fdtncfldQryListagemcod_acao_acesso: TFDAutoIncField;
    strngfldQryListagemdescricao: TStringField;
    strngfldQryListagemchave: TStringField;
    lbledtCodigo: TLabeledEdit;
    lbledtDescricao: TLabeledEdit;
    lbledtChave: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    oAcaoAcesso: TAcaoAcesso;
    function Apagar: Boolean; override;
    function Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean; override;
  end;

var
  frmCadAcaoAcesso: TfrmCadAcaoAcesso;

implementation

{$R *.dfm}
{ TfrmCadAcaoAcesso }

function TfrmCadAcaoAcesso.Apagar: Boolean;
begin
  if oAcaoAcesso.Selecionar(QryListagem.FieldByName('cod_acao_acesso').AsInteger)
  then
    Result := oAcaoAcesso.Apagar;
end;

function TfrmCadAcaoAcesso.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
  if (EstadodoCadastro = ecInserir) then
    Result := oAcaoAcesso.Inserir
  else if (EstadodoCadastro = ecAlterar) then
    Result := oAcaoAcesso.Atualizar;
end;

procedure TfrmCadAcaoAcesso.btnAlterarClick(Sender: TObject);
begin
  if oAcaoAcesso.Selecionar(QryListagem.FieldByName('cod_acao_acesso').AsInteger)
  then
  begin
    lbledtCodigo.Text := IntToStr(oAcaoAcesso.cod_acao_acesso);
    lbledtDescricao.Text := oAcaoAcesso.descricao;
    lbledtChave.Text := oAcaoAcesso.chave;
  end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;

procedure TfrmCadAcaoAcesso.btnGravarClick(Sender: TObject);
begin
if lbledtCodigo.Text <> EmptyStr then
    oAcaoAcesso.cod_acao_acesso := StrToInt(lbledtCodigo.Text)
  else
    oAcaoAcesso.cod_acao_acesso := 0;
  oAcaoAcesso.descricao := lbledtDescricao.Text;
  oAcaoAcesso.chave := lbledtChave.Text;

  if oAcaoAcesso.ChaveExiste(lbledtChave.Text, oAcaoAcesso.cod_acao_acesso) then
  begin
    MessageDlg('Chave Já Cadastrado', mtInformation, [mbOK], 0);
    lbledtChave.SetFocus;
    Abort;
  end;
  inherited;

end;

procedure TfrmCadAcaoAcesso.btnNovoClick(Sender: TObject);
begin
  inherited;
  lbledtDescricao.SetFocus;
end;

procedure TfrmCadAcaoAcesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if Assigned(oAcaoAcesso) then
    FreeAndNil(oAcaoAcesso);
end;

procedure TfrmCadAcaoAcesso.FormCreate(Sender: TObject);
begin
  inherited;
  oAcaoAcesso := TAcaoAcesso.Create(dtmPrincipal.ConexaoDB);
  IndiceAtual := 'cod_acao_acesso';
end;



end.
