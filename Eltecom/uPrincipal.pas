unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,Enter,
  System.Classes, Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  uDTMConexao, Vcl.ComCtrls, FireDAC.Stan.Option,
  uFrmAtualizaDB, uDTMRelatorio,cUsuarioLogado;

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
    mniSobre: TMenuItem;
    mniFunes1: TMenuItem;
    mniCargos1: TMenuItem;
    mniN4: TMenuItem;
    mniDepartamentos2: TMenuItem;
    mniDepartamentoPessoas1: TMenuItem;
    mniFunes2: TMenuItem;
    mniFunesPessoas1: TMenuItem;
    mniUsurios1: TMenuItem;
    mniN5: TMenuItem;
    mniAlterarSenha1: TMenuItem;
    mniDepartamentos3: TMenuItem;
    mniCargos2: TMenuItem;
    mniCargosPessoas1: TMenuItem;
    mniAoAcesso1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Setores1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Configurao1Click(Sender: TObject);
    procedure Igreja1Click(Sender: TObject);
    procedure CartaseDocumentos1Click(Sender: TObject);
    procedure Congregaes1Click(Sender: TObject);
    procedure mniDizimoClick(Sender: TObject);
    procedure mniSobreClick(Sender: TObject);
    procedure mniDepartamentos2Click(Sender: TObject);
    procedure mniDepartamentoPessoas1Click(Sender: TObject);
    procedure mniFunes2Click(Sender: TObject);
    procedure mniFunesPessoas1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mniUsurios1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mniAlterarSenha1Click(Sender: TObject);
    procedure EntradasSadas1Click(Sender: TObject);
    procedure mniDepartamentos3Click(Sender: TObject);
    procedure mniCargos2Click(Sender: TObject);
    procedure mniCargosPessoas1Click(Sender: TObject);
    procedure mniAoAcesso1Click(Sender: TObject);
  private
    TeclaEnter: TMREnter;
    procedure AtualizaBandoDados(aForm: TfrmAtualizaDB);
    procedure CriarForm(aNomeForm: TFormClass);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  oUsuarioLogado:TUsuarioLogado;

implementation

{$R *.dfm}

uses uCadSetores, uCadPessoa, untCongSistema, uCadIgreja, uEmissaoDocumentos,
  uCadDepartamento, uCadCongregacao, uCadDizimo, uCadFuncao, cArquivoIni, cAtualizacaoBancoDeDados,
  cCadCargo, uCadCargo, uCadDepartPessoa, uCadFuncaoPessoa, uLogin, uCadUsuario,
  uAlterarSenha, uCadLancamento, uDepartamentos, uCadCargoPessoa, uCadAcaoAcesso, cAcaoAcesso;

procedure TfrmPrincipal.CartaseDocumentos1Click(Sender: TObject);
begin
  frmEmitirDoc := nil;
  frmEmitirDoc := TfrmEmitirDoc.Create(self);
  frmEmitirDoc.Show;
end;

procedure TfrmPrincipal.Clientes1Click(Sender: TObject);
begin
  CriarForm(TfrmCadPessoa);
end;

procedure TfrmPrincipal.Configurao1Click(Sender: TObject);
begin
  frmCongSistema := nil;
  frmCongSistema := tfrmCongSistema.Create(self);
  frmCongSistema.Show;
end;

procedure TfrmPrincipal.Congregaes1Click(Sender: TObject);
begin
  frmCadCongregacao := TfrmCadCongregacao.Create(self);
  frmCadCongregacao.ShowModal;
  frmCadCongregacao.Release;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FreeAndNil(TeclaEnter);
FreeAndNil(dtmPrincipal);
if Assigned(oUsuarioLogado) then
     FreeAndNil(oUsuarioLogado);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  port: Integer;
  SERVER, USER, SENHA, BANCO, DRIVE: string;
begin
  if not FileExists(TArquivoIni.ArquivoIni) then
  begin
    TArquivoIni.AtualizarIni('SERVER', 'TipoDataBase', 'MySQL');
    TArquivoIni.AtualizarIni('SERVER', 'HostName', '127.0.0.1');
    TArquivoIni.AtualizarIni('SERVER', 'Port', '3306');
    TArquivoIni.AtualizarIni('SERVER', 'User', 'igreja');
    TArquivoIni.AtualizarIni('SERVER', 'Password', 'igreja');
    TArquivoIni.AtualizarIni('SERVER', 'Database', 'igreja');

    MessageDlg('Arquivo ' + TArquivoIni.ArquivoIni + ' Criado com Sucesso' +
      'Configure o arquivo antes de inicializar Aplicação',
      mtInformation, [mbOK], 0);

    Application.Terminate;

  end
  else
  begin
    //Atualização do Banco de Dados
    frmAtualizaDB := TfrmAtualizaDB.Create(self);
    frmAtualizaDB.Show;
    frmAtualizaDB.Refresh;

    dtmPrincipal := TdtmPrincipal.Create(self);
    // Inciar Conexão
    with dtmPrincipal.ConexaoDB do
    begin
      Connected := False;
      if TArquivoIni.LerIni('SERVER', 'TipoDataBase') = 'MySQL' then
        DRIVE := 'MySQL';

      SERVER := TArquivoIni.LerIni('SERVER', 'HostName');
      port := TArquivoIni.LerIni('SERVER', 'Port').ToInteger;
      BANCO := TArquivoIni.LerIni('SERVER', 'Database');
      SENHA := TArquivoIni.LerIni('SERVER', 'Password');
      USER := TArquivoIni.LerIni('SERVER', 'User');

      dtmPrincipal.ConexaoDB.Connected := False;
      dtmPrincipal.ConexaoDB.LoginPrompt := False;
      dtmPrincipal.ConexaoDB.Params.Clear;
      dtmPrincipal.ConexaoDB.ConnectionString := 'DriverID=' + DRIVE +
        ';Server=' + SERVER + ';Database=' + BANCO + ';User_name=' + USER +
        ';Password=' + SENHA + ';Port=' + IntToStr(port);
      dtmPrincipal.ConexaoDB.TxOptions.AutoCommit:=True;
      dtmPrincipal.ConexaoDB.TxOptions.Isolation:=xiReadCommitted;
      end;

    try
        dtmPrincipal.ConexaoDB.Connected := True;
    Except
      begin
        ShowMessage('Problema de Conexão com o Banco');
        Application.Terminate;
      end;
    end;
    AtualizaBandoDados(frmAtualizaDB);

    //INSERINDO INFORMAÇÕES DOS FORMULARIOS PARA CONTROLE DE ACESSO
    TAcaoAcesso.CriarAcoes(TfrmCadDizimos,dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadAcaoAcesso,dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadCargoPessoa,dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadLancamento,dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadUsuario,dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadFuncaoPessoa,dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadDepartPessoa,dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadCargo,dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadFuncao,dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadCongregacao,dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadDepartamento,dtmPrincipal.ConexaoDB);

    frmAtualizaDB.Free;
  end;
  TeclaEnter:=TMREnter.Create(Self);
  TeclaEnter.FocusEnabled:=True;
  TeclaEnter.FocusColor:=clInfoBk;
  dtmRelatorio := TdtmRelatorio.Create(self);
  // try
  // dtmPrincipal.fdqryCong_sistema.Open;
  // congAtiva:=  dtmPrincipal.fdqryCong_sistema.FieldByName('cod_congregacao').AsInteger;
  // Except
  // ShowMessage('Erro na fdqryCong_sistema! ');
  // end;

  // Carregar informações do Status Bar
  statMenu.Panels[0].Text :=
    'ELTECOM - Sistema de Controle Gerencial da Congregação ';
  if (Time < 0.5) then
    statMenu.Panels[1].Text := 'Bom dia hoje é ' +
      formatdatetime('dddddd', date)
  else if (Time >= 0.5) and (Time <= 0.75) then
    statMenu.Panels[1].Text := 'Boa tarde hoje é ' +
      formatdatetime('dddddd', date)
  else if (Time > 0.75) then
    statMenu.Panels[1].Text := 'Boa noite hoje é ' +
      formatdatetime('dddddd', date);
  statMenu.Panels[2].Text := 'Congregação ' + dtmPrincipal.descCongAtiva;
  //statMenu.Panels[3].Text := 'Logado com: ' + oUsuarioLogado.nome;
  // status; // + IdIPWatch1.LocalIP;
  // statMenu.Panels[3].Text :='Whatsapp:https://api.whatsapp.com/send?1=pt_BR&phone=5584981416012';
  // statMenu.Panels[3].Text := dtmConexao.strngfldCongregacaoAtivaSistemacongregacao.Text;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
try
oUsuarioLogado:= TUsuarioLogado.Create;
   frmLogin := TfrmLogin.Create(self);
  frmLogin.ShowModal;
  //oUsuarioLogado.nome:=frmLogin.edtUsuario;
finally
   frmLogin.Release;
   statMenu.Panels[3].Text := 'Logado com: ' + oUsuarioLogado.nome;
end;

end;

procedure TfrmPrincipal.Igreja1Click(Sender: TObject);
begin
  CriarForm(TfrmCadIgreja);
end;

procedure TfrmPrincipal.mniAlterarSenha1Click(Sender: TObject);
begin
   CriarForm(TfrmAlterarSenha);
end;

procedure TfrmPrincipal.mniAoAcesso1Click(Sender: TObject);
begin
   CriarForm(TfrmCadAcaoAcesso);
end;

procedure TfrmPrincipal.mniCargos2Click(Sender: TObject);
begin
 CriarForm(TfrmCadCargo);
end;

procedure TfrmPrincipal.mniCargosPessoas1Click(Sender: TObject);
begin
    CriarForm(TfrmCadCargoPessoa);
end;

procedure TfrmPrincipal.mniDepartamentoPessoas1Click(Sender: TObject);
begin
  CriarForm(TfrmCadDepartPessoa);
end;

procedure TfrmPrincipal.mniDepartamentos2Click(Sender: TObject);
begin
   CriarForm(TfrmCadDepartamento);
end;

procedure TfrmPrincipal.mniDepartamentos3Click(Sender: TObject);
begin
 CriarForm(TfrmDepartamentos);
end;

procedure TfrmPrincipal.mniDizimoClick(Sender: TObject);
begin
  CriarForm(TfrmCadDizimos);
end;

procedure TfrmPrincipal.mniFunes2Click(Sender: TObject);
begin
  CriarForm(TfrmCadFuncao);
end;

procedure TfrmPrincipal.mniFunesPessoas1Click(Sender: TObject);
begin
   CriarForm(TfrmCadFuncaoPessoa);
end;

procedure TfrmPrincipal.mniSobreClick(Sender: TObject);
begin
  ShowMessage('- SOBRE O PROGRAMA ' +

    ' Programador :Albérico Leite  ' + ' Comunicação: (84) 98141-6012  ' +
    'E-mail: albericoleite@live.com');
end;

procedure TfrmPrincipal.mniUsurios1Click(Sender: TObject);
begin
  CriarForm(TfrmCadUsuario);
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  // close;
  Application.Terminate;
end;

procedure TfrmPrincipal.Setores1Click(Sender: TObject);
begin
  CriarForm(TfrmCadSetores);
end;

procedure TfrmPrincipal.AtualizaBandoDados(aForm: TfrmAtualizaDB);
var
  sl: Integer;
  oAtualizarMySQL:TAtualizaBancoDadosMysql;
begin
  sl := 50;
  aForm.chkConexBD.Checked := true;
  aForm.Refresh;

  try
    oAtualizarMySQL:= TAtualizaBancoDadosMySQL.Create(dtmPrincipal.ConexaoDB);
    oAtualizarMySQL.AtualizarBancoDeDadosMySQL;
  finally
    if Assigned(oAtualizarMySQL) then
     FreeAndNil(oAtualizarMySQL);
  end;
  // TODO: CRIAR QUERY NO DATAMODULE PARA EXECUTAR A ATUALIZAÇÃO DO BANCO
  // Exemplo dtmPrincipal.fdqryCong_sistema.ExecSQL;
 { aForm.chkIgreja.Checked := true;
  aForm.Refresh;
  Sleep(sl);

  // Exemplo dtmPrincipal.fdqryCong_sistema.ExecSQL;
  aForm.chkSetor.Checked := true;
  aForm.Refresh;
  Sleep(sl);

  dtmPrincipal.fdqryCriartb_congregacao.ExecSQL;
  aForm.chkCongregacao.Checked := true;
  aForm.Refresh;
  Sleep(sl);

  // Exemplo dtmPrincipal.fdqryCong_sistema.ExecSQL;
  aForm.chkPessoa.Checked := true;
  aForm.Refresh;
  Sleep(sl);

  // Exemplo dtmPrincipal.fdqryCong_sistema.ExecSQL;
  aForm.chkTesouraria.Checked := true;
  aForm.Refresh;
  Sleep(sl);

  // Exemplo dtmPrincipal.fdqryCong_sistema.ExecSQL;
  aForm.chkAlteratabela.Checked := true;
  aForm.Refresh;
  Sleep(sl);

  // CRIAR TABELA DE DEPARTAMENTO
  dtmPrincipal.fdqryCriartb_departamento.ExecSQL;
  aForm.chkDepartamento.Checked := true;
  aForm.Refresh;
  Sleep(sl);

  // CRIAR TABELA DE DEPT_PESSOA
  dtmPrincipal.fdqryCriartb_dept_pessoa.ExecSQL;
  aForm.chkDepPessoa.Checked := true;
  aForm.Refresh;
  Sleep(sl);

  // CRIAR TABELA DE FUNÇÃO
  dtmPrincipal.fdqryCriartb_funcao.ExecSQL;
  aForm.chkFuncao.Checked := true;
  aForm.Refresh;
  Sleep(sl);

  // CRIAR TABELA DE SEGURANÇA
  dtmPrincipal.fdqryCriartb_seguranca.ExecSQL;
  aForm.chkSeguranca.Checked := true;
  aForm.Refresh;
  Sleep(sl);

  // CRIAR TABELA DE USUÁRIO
  dtmPrincipal.fdqryCriartb_usuario.ExecSQL;
  aForm.chkUsuario.Checked := true;
  aForm.Refresh;
  Sleep(sl);

  // CRIAR TABELA DE DIZIMO
  dtmPrincipal.fdqryCriartb_dizimo.ExecSQL;
  aForm.chkDizimo.Checked := true;
  aForm.Refresh;
  Sleep(sl);

  // CRIAR TABELA DE CARGO
  dtmPrincipal.fdqryCriartb_cargo.ExecSQL;
  aForm.chkCargo.Checked := true;
  aForm.Refresh;
  Sleep(sl);

  // CRIAR TABELA DE FUNÇÃO E PESSOAS
  dtmPrincipal.fdqryCriartb_func_pessoa.ExecSQL;
  aForm.chkfuncoesPessoas.Checked := true;
  aForm.Refresh;
  Sleep(sl);     }

end;

procedure TfrmPrincipal.CriarForm(aNomeForm:TFormClass);
var form:TForm;
begin
  try
    form := aNomeForm.Create(Application);
    form.ShowModal;
  finally
    if Assigned(form) then
       form.Release;
  end;
end;

procedure TfrmPrincipal.EntradasSadas1Click(Sender: TObject);
begin
CriarForm(TfrmCadLancamento);
end;

end.
