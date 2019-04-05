unit uAlterarSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmAlterarSenha = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edtSenhaAtual: TEdit;
    edtNovaSenha: TEdit;
    btnSair: TBitBtn;
    btnAlterar: TBitBtn;
    lbl3: TLabel;
    edtRepetirSenha: TEdit;
    lblusuario: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    procedure LimparEdits;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlterarSenha: TfrmAlterarSenha;

implementation

uses
  cCadUsuario,uPrincipal,uDTMConexao;

{$R *.dfm}

procedure TfrmAlterarSenha.btnAlterarClick(Sender: TObject);
var
oUsuario:TUsuario;
begin

    if (edtSenhaAtual.Text=oUsuarioLogado.senha) then begin
    if (edtNovaSenha.Text=edtRepetirSenha.Text) then begin
      try
        oUsuario:=TUsuario.Create(DtmPrincipal.ConexaoDB);
        oUsuario.codigo := oUsuarioLogado.codigo;
        oUsuario.senha  := edtNovaSenha.Text;
        oUsuario.AlterarSenha;
        oUsuarioLogado.senha := edtNovaSenha.Text;
        MessageDlg('Senha Alterada',MtInformation,[mbok],0);
        LimparEdits;
      finally
        FreeAndNil(oUsuario);
      end;
    end
    else begin
      MessageDlg('Senhas digitadas não coincidem.',mtinformation,[mbok],0);
      edtNovaSenha.SetFocus;
    end;

  end
  else begin
    MessageDlg('Senha Atual está inválida',mtinformation,[mbok],0);
  end;
end;

procedure TfrmAlterarSenha.btnSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmAlterarSenha.FormShow(Sender: TObject);
begin
LimparEdits;
end;

procedure TfrmAlterarSenha.LimparEdits;
begin
  edtSenhaAtual.Clear;
  edtNovaSenha.Clear;
  edtRepetirSenha.Clear;
  lblusuario.Caption:= oUsuarioLogado.nome;
end;

end.
