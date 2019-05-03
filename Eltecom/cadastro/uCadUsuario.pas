unit uCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,
  uEnum, uDTMConexao, cCadUsuario,Vcl.Themes;

type
  TfrmCadUsuario = class(TfrmTelaheranca)
    lbledt_codigo: TLabeledEdit;
    lbledtNome: TLabeledEdit;
    lbledtSenha: TLabeledEdit;
    fdtncfldQryListagemcodigo: TFDAutoIncField;
    strngfldQryListagemusuario: TStringField;
    strngfldQryListagemsenha: TStringField;
    strngfldQryListagemsetor: TStringField;
    strngfldQryListagemstatus: TStringField;
    strngfldQryListagemtema: TStringField;
    fdqrySituacao: TFDQuery;
    dsFuncoes: TDataSource;
    dblkcbbStatus: TDBLookupComboBox;
    lbl4: TLabel;
    cbbTemas: TComboBox;
    lbl1: TLabel;
    procedure btnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
    oUsuario: TUsuario;
    function Apagar: Boolean; override;
    function Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadUsuario: TfrmCadUsuario;

implementation

uses
  cAcaoAcesso;

{$R *.dfm}
{$REGION 'Override'}

function TfrmCadUsuario.Apagar: Boolean;
begin
  if oUsuario.Selecionar(QryListagem.FieldByName('codigo').AsInteger) then
    Result := oUsuario.Apagar;
end;

function TfrmCadUsuario.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
  if oUsuario.UsuarioExiste(lbledtNome.Text) then
  begin
    MessageDlg('Usuário já cadastrado', mtInformation, [mbOK], 0);
    lbledtNome.SetFocus;
    Abort;
  end;

  if lbledt_codigo.Text <> EmptyStr then
    oUsuario.codigo := StrToInt(lbledt_codigo.Text)
  else
    oUsuario.codigo := 0;
  oUsuario.usuario := lbledtNome.Text;
  oUsuario.senha := lbledtSenha.Text;
  oUsuario.status := dblkcbbStatus.KeyValue;
  oUsuario.tema  :=cbbTemas.Text;
  // oUsuario.setor
  // oUsuario.status

  if (EstadodoCadastro = ecInserir) then
    Result := oUsuario.Inserir
  else if (EstadodoCadastro = ecAlterar) then
    Result := oUsuario.Atualizar;

    TAcaoAcesso.PreencherUsuariosVsAcoes(dtmPrincipal.ConexaoDB);

end;

{$ENDREGION}

procedure TfrmCadUsuario.btnAlterarClick(Sender: TObject);
var v :String;
begin
cbbTemas.Items.Clear;
 for v in TStyleManager.StyleNames do
    cbbTemas.Items.Add(v);
  if oUsuario.Selecionar(QryListagem.FieldByName('codigo').AsInteger) then
  begin
    lbledt_codigo.Text := IntToStr(oUsuario.codigo);
    lbledtNome.Text := oUsuario.usuario;
    lbledtSenha.Text := oUsuario.senha;
    dblkcbbStatus.KeyValue := oUsuario.status;
    cbbTemas.Text:=oUsuario.tema;
  end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;
end;

procedure TfrmCadUsuario.btnGravarClick(Sender: TObject);
begin
  inherited;
//TODO: VALIDAR ALTERAÇÃO DE USUARIO
end;

procedure TfrmCadUsuario.btnNovoClick(Sender: TObject);
var
 v :String;
begin
  inherited;
 for v in TStyleManager.StyleNames do
    cbbTemas.Items.Add(v);
end;

procedure TfrmCadUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  fdqrySituacao.Close;
end;

procedure TfrmCadUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  oUsuario := TUsuario.Create(dtmPrincipal.ConexaoDB);
  IndiceAtual := 'codigo';
  fdqrySituacao.Open;
end;

end.
