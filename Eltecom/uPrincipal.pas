unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,uDTMConexao, Vcl.ComCtrls, uFrmAtualizaDB,uDTMRelatorio;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Movimentao1: TMenuItem;
    Relatrios1: TMenuItem;
    Clientes1: TMenuItem;
    N1: TMenuItem;
    Igreja1: TMenuItem;
    Congregaes1: TMenuItem;
    Setores1: TMenuItem;
    N2: TMenuItem;
    Sair1: TMenuItem;
    EntradasSadas1: TMenuItem;
    mniDizimo: TMenuItem;
    N3: TMenuItem;
    statMenu: TStatusBar;
    Configurao1: TMenuItem;
    CartaseDocumentos1: TMenuItem;
    Departamentos1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Setores1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Configurao1Click(Sender: TObject);
    procedure Igreja1Click(Sender: TObject);
    procedure CartaseDocumentos1Click(Sender: TObject);
    procedure Departamentos1Click(Sender: TObject);
    procedure Congregaes1Click(Sender: TObject);
    procedure mniDizimoClick(Sender: TObject);
  private
    procedure AtualizaBandoDados(aForm:TfrmAtualizaDB);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadSetores, uCadPessoa, untCongSistema,uCadIgreja, uEmissaoDocumentos,
uCadDepartamento, uCadCongregacao, uCadDizimo;

procedure TfrmPrincipal.CartaseDocumentos1Click(Sender: TObject);
begin
frmEmitirDoc:= nil;
frmEmitirDoc := TfrmEmitirDoc.Create(self);
frmEmitirDoc.Show;
end;

procedure TfrmPrincipal.Clientes1Click(Sender: TObject);
begin
frmCadPessoa:= TfrmCadPessoa.Create(self);
frmCadPessoa.ShowModal;
frmCadPessoa.Release;
end;

procedure TfrmPrincipal.Configurao1Click(Sender: TObject);
begin
  frmCongSistema := nil;
  frmCongSistema := tfrmCongSistema.Create(Self);
  frmCongSistema.Show;
end;

procedure TfrmPrincipal.Congregaes1Click(Sender: TObject);
begin
frmCadCongregacao:= TfrmCadCongregacao.Create(self);
frmCadCongregacao.ShowModal;
frmCadCongregacao.Release;
end;

procedure TfrmPrincipal.Departamentos1Click(Sender: TObject);
begin
frmCadDepartamento:= TfrmCadDepartamento.Create(self);
frmCadDepartamento.ShowModal;
frmCadDepartamento.Release;
end;



procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
//Inciar Conex�o
 frmAtualizaDB := TfrmAtualizaDB.Create(self);
 frmAtualizaDB.Show;
 frmAtualizaDB.Refresh;
 dtmPrincipal:= TdtmPrincipal.Create(self);
 dtmRelatorio := TdtmRelatorio.Create(self);
 try
 begin
 //TODO: Criar leitura de arquivo .ini com informa��es de conex�o
  dtmPrincipal.ConexaoDB.Connected:= true;
 end;
 Except
   begin
        ShowMessage('Problema de Conex�o com o Banco');
   end;
 end;
    AtualizaBandoDados(frmAtualizaDB);
    frmAtualizaDB.Free;
 //try
 //   dtmPrincipal.fdqryCong_sistema.Open;
 //   congAtiva:=  dtmPrincipal.fdqryCong_sistema.FieldByName('cod_congregacao').AsInteger;
// Except
 //  ShowMessage('Erro na fdqryCong_sistema! ');
 //end;
 //TODO: Instalar componente de Terceiro ENTER


//Carregar informa��es do Status Bar
  statMenu.Panels[0].Text :=
    'ELTECOM - Sistema de Controle Gerencial da Congrega��o ';
  if (Time < 0.5) then
    statMenu.Panels[1].Text := 'Bom dia hoje � ' +
      formatdatetime('dddddd', date)
  else if (Time >= 0.5) and (Time <= 0.75) then
    statMenu.Panels[1].Text := 'Boa tarde hoje � ' +
      formatdatetime('dddddd', date)
  else if (Time > 0.75) then
    statMenu.Panels[1].Text := 'Boa noite hoje � ' +
      formatdatetime('dddddd', date);
 // statMenu.Panels[2].Text := status; // + IdIPWatch1.LocalIP;
 // statMenu.Panels[3].Text := dtmConexao.strngfldCongregacaoAtivaSistemacongregacao.Text;
end;

procedure TfrmPrincipal.Igreja1Click(Sender: TObject);
begin
frmCadIgreja:= TfrmCadIgreja.Create(self);
frmCadIgreja.ShowModal;
frmCadIgreja.Release;
end;

procedure TfrmPrincipal.mniDizimoClick(Sender: TObject);
begin
frmCadDizimos:= TfrmCadDizimos.Create(self);
frmCadDizimos.ShowModal;
frmCadDizimos.Release;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
//close;
Application.Terminate;
end;

procedure TfrmPrincipal.Setores1Click(Sender: TObject);
begin
frmCadSetores:= TfrmCadSetores.Create(self);
frmCadSetores.ShowModal;
frmCadSetores.Release;
end;

procedure TfrmPrincipal.AtualizaBandoDados(aForm:TfrmAtualizaDB);
begin
 aForm.chkConexBD.Checked:= true;
 aForm.Refresh;
 //TODO: CRIAR QUERY NO DATAMODULE PARA EXECUTAR A ATUALIZA��O DO BANCO
 //Exemplo dtmPrincipal.fdqryCong_sistema.ExecSQL;
 aForm.chkIgreja.Checked:= true;
 aForm.Refresh;
 Sleep(100);

 //Exemplo dtmPrincipal.fdqryCong_sistema.ExecSQL;
 aForm.chkSetor.Checked:= true;
 aForm.Refresh;
 Sleep(100);

dtmPrincipal.fdqryCriartb_congregacao.ExecSQL;
 aForm.chkCongregacao.Checked:= true;
 aForm.Refresh;
 Sleep(100);

  //Exemplo dtmPrincipal.fdqryCong_sistema.ExecSQL;
 aForm.chkPessoa.Checked:= true;
 aForm.Refresh;
 Sleep(100);

  //Exemplo dtmPrincipal.fdqryCong_sistema.ExecSQL;
 aForm.chkTesouraria.Checked:= true;
 aForm.Refresh;
 Sleep(100);

 //Exemplo dtmPrincipal.fdqryCong_sistema.ExecSQL;
 aForm.chkAlteratabela.Checked:= true;
 aForm.Refresh;
 Sleep(100);

 //CRIAR TABELA DE DEPARTAMENTO
 dtmPrincipal.fdqryCriartb_departamento.ExecSQL;
 aForm.chkDepartamento.Checked:= true;
 aForm.Refresh;
 Sleep(100);

 //CRIAR TABELA DE DEPT_PESSOA
 dtmPrincipal.fdqryCriartb_dept_pessoa.ExecSQL;
 aForm.chkDepPessoa.Checked:= true;
 aForm.Refresh;
 Sleep(100);

 //CRIAR TABELA DE FUN��O
 dtmPrincipal.fdqryCriartb_funcao.ExecSQL;
 aForm.chkFuncao.Checked:= true;
 aForm.Refresh;
 Sleep(100);

  //CRIAR TABELA DE SEGURAN�A
 dtmPrincipal.fdqryCriartb_seguranca.ExecSQL;
 aForm.chkSeguranca.Checked:= true;
 aForm.Refresh;
 Sleep(100);

   //CRIAR TABELA DE USU�RIO
 dtmPrincipal.fdqryCriartb_usuario.ExecSQL;
 aForm.chkUsuario.Checked:= true;
 aForm.Refresh;
 Sleep(100);

    //CRIAR TABELA DE DIZIMO
 dtmPrincipal.fdqryCriartb_dizimo.ExecSQL;
 aForm.chkDizimo.Checked:= true;
 aForm.Refresh;
 Sleep(100);


end;

end.
