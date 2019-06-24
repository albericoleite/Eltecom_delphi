unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TfrmLogin = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    btnSair: TBitBtn;
    btnEntrar: TBitBtn;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    img1: TImage;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure sbtbtn2Click(Sender: TObject);
    procedure sbtbtn1Click(Sender: TObject);
  private
    { Private declarations }
    bFerchar:Boolean;
    procedure FecharAplicacao;
    procedure FecharFormulario;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses
  uDTMConexao,cCadUsuario,uPrincipal;

{$R *.dfm}

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
var oUsuario:TUsuario;
begin
try
  oUsuario:=TUsuario.Create(dtmPrincipal.ConexaoDB);
  if oUsuario.Logar(edtUsuario.Text,edtSenha.Text) then begin
  oUsuarioLogado.codigo:=oUsuario.codigo;
  oUsuarioLogado.nome:=oUsuario.usuario;
  oUsuarioLogado.senha:=oUsuario.senha;
  oUsuarioLogado.tema:= oUsuario.tema;
    FecharFormulario
  end else begin
    MessageDlg('Usuário Inválido',mtInformation,[mbOK],0);
    edtUsuario.SetFocus;
  end;
finally
    if Assigned(oUsuario) then
        FreeAndNil(oUsuario);
end;




end;

procedure TfrmLogin.FecharAplicacao;
begin
  bFerchar := True;
  Application.Terminate;
end;

procedure TfrmLogin.FecharFormulario;
begin
  bFerchar := True;
  Close;
end;

procedure TfrmLogin.btnSairClick(Sender: TObject);
begin
  FecharAplicacao;
end;

procedure TfrmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
CanClose:= bFerchar;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
bFerchar:=False;
end;

procedure TfrmLogin.sbtbtn1Click(Sender: TObject);
begin
btnEntrarClick(sender);
end;

procedure TfrmLogin.sbtbtn2Click(Sender: TObject);
begin
btnSairClick(sender);
end;

end.
