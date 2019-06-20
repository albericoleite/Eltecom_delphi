unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Enter,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  uDTMConexao, Vcl.ComCtrls, FireDAC.Stan.Option,
  uFrmAtualizaDB, uDTMRelatorio, cUsuarioLogado, VclTee.TeeGDIPlus, cFuncao,
  VclTee.TeEngine, VclTee.TeeProcs, VclTee.Chart, VclTee.DBChart, Vcl.ExtCtrls,
  VclTee.Series, Vcl.Tabs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.RibbonLunaStyleActnCtrls, Vcl.Ribbon, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ImgList, Vcl.ActnMenus, Vcl.RibbonActnMenus, Vcl.Buttons, sSkinManager,
  Vcl.Imaging.jpeg, sButton, sBitBtn;

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
    mniCargos2: TMenuItem;
    mniCargosPessoas1: TMenuItem;
    mniAoAcesso1: TMenuItem;
    mniDoaoAjudadeCusto1: TMenuItem;
    mniUsuriosVSAes1: TMenuItem;
    mniConsultarDados1: TMenuItem;
    mniConfigurao2: TMenuItem;
    mniEBD1: TMenuItem;
    mniCadastros1: TMenuItem;
    mniProfessor1: TMenuItem;
    mniAluno1: TMenuItem;
    mniClasse1: TMenuItem;
    mniAniversariantes1: TMenuItem;
    mniRelatrios2: TMenuItem;
    pnl5: TPanel;
    tmrDashboard: TTimer;
    BackupeRestore1: TMenuItem;
    mniDepartamentos3: TMenuItem;
    mniProfessor2: TMenuItem;
    mniProfessorClasse1: TMenuItem;
    pgcDashs: TPageControl;
    Principal: TTabSheet;
    Financeiro: TTabSheet;
    EBD: TTabSheet;
    pnlGeral: TPanel;
    spl3: TSplitter;
    pnlDireita: TPanel;
    spl2: TSplitter;
    pnl3: TPanel;
    dbcht2: TDBChart;
    psrshrzbrsrspsrshrzbrsrspsrsbrsrs2: TPieSeries;
    pnl2: TPanel;
    dbcht1: TDBChart;
    brsrs1: TBarSeries;
    pnlEsquerda: TPanel;
    spl1: TSplitter;
    pnl1: TPanel;
    pnl4: TPanel;
    pnl6: TPanel;
    spl4: TSplitter;
    pnl7: TPanel;
    spl5: TSplitter;
    pnl8: TPanel;
    dbcht4: TDBChart;
    psrs1: TPieSeries;
    pnl9: TPanel;
    dbcht5: TDBChart;
    brsrs2: TBarSeries;
    pnl10: TPanel;
    spl6: TSplitter;
    pnl11: TPanel;
    dbcht6: TDBChart;
    pnl12: TPanel;
    pnl13: TPanel;
    spl7: TSplitter;
    pnl14: TPanel;
    spl8: TSplitter;
    pnl15: TPanel;
    pnl16: TPanel;
    pnl17: TPanel;
    spl9: TSplitter;
    pnl18: TPanel;
    pnl19: TPanel;
    dbcht11: TDBChart;
    psrs6: TPieSeries;
    brsrsSeries2: TBarSeries;
    dbcht7: TDBChart;
    brsrs3: TBarSeries;
    lbl2: TLabel;
    dbgrd1: TDBGrid;
    mniImportarCadastros1: TMenuItem;
    mniRelatrios3: TMenuItem;
    mniControledeDzimo1: TMenuItem;
    dbchtPessoas: TDBChart;
    brsrsSeries1: TBarSeries;
    psrsSeries1: TPieSeries;
    img1: TImage;
    procedure Sair1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Setores1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
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
    procedure mniCargos2Click(Sender: TObject);
    procedure mniCargosPessoas1Click(Sender: TObject);
    procedure mniAoAcesso1Click(Sender: TObject);
    procedure mniDoaoAjudadeCusto1Click(Sender: TObject);
    procedure mniUsuriosVSAes1Click(Sender: TObject);
    procedure mniConfigurao2Click(Sender: TObject);
    procedure mniConsultarDados1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure mniClasse1Click(Sender: TObject);
    procedure mniAluno1Click(Sender: TObject);
    procedure mniAniversariantes1Click(Sender: TObject);
    procedure mniRelatrios2Click(Sender: TObject);
    procedure pnl5Click(Sender: TObject);
    procedure tmrDashboardTimer(Sender: TObject);
    procedure BackupeRestore1Click(Sender: TObject);
    procedure mniDepartamentos3Click(Sender: TObject);
    procedure mniProfessor2Click(Sender: TObject);
    procedure mniProfessorClasse1Click(Sender: TObject);
    procedure mniImportarCadastros1Click(Sender: TObject);
    procedure mniRelatrios3Click(Sender: TObject);
    procedure act1Execute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure mniControledeDzimo1Click(Sender: TObject);
  private
    TeclaEnter: TMREnter;
    procedure AtualizaBandoDados(aForm: TfrmAtualizaDB);
    procedure AtualizarGraficos;

    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmPrincipal: TfrmPrincipal;
  oUsuarioLogado: TUsuarioLogado;

implementation

{$R *.dfm}

uses uCadSetores, uCadPessoa, untCongSistema, uCadIgreja, uEmissaoDocumentos,
  uCadDepartamento, uCadCongregacao, uCadDizimo, uCadFuncao, cArquivoIni,
  cAtualizacaoBancoDeDados,
  cCadCargo, uCadCargo, uCadDepartPessoa, uCadFuncaoPessoa, uLogin, uCadUsuario,
  Vcl.Themes,
  uAlterarSenha, uCadLancamento, uDepartamentos, uCadCargoPessoa,
  uCadAcaoAcesso, cAcaoAcesso, uCadAjudaDeCusto, uUsuarioVsAcoes,
  uConsultarDados, uTelaHeranca, uDTMGraficos, cCadProfessor, uCadProfessor,
  uCadClasse, uCadClasseAluno, uAniversariantes, UEBD, uBackupRestore, uCadClasseProfessor, uImportarExportarDados, uRelatoriosFinanceiro,
  uDTMRelatorioFinanceiro, uQuadroAnual;

procedure TfrmPrincipal.CartaseDocumentos1Click(Sender: TObject);
begin
  frmEmitirDoc := nil;
  frmEmitirDoc := TfrmEmitirDoc.Create(self);
  frmEmitirDoc.Show;
end;

procedure TfrmPrincipal.Clientes1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadPessoa, oUsuarioLogado, dtmPrincipal.ConexaoDB);
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
  FreeAndNil(DTMGrafico);
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
      'Configure o arquivo antes de inicializar Aplicação', mtInformation,
      [mbOK], 0);

    Application.Terminate;

  end
  else
  begin
    // Atualização do Banco de Dados
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
      dtmPrincipal.ConexaoDB.TxOptions.AutoCommit := True;
      dtmPrincipal.ConexaoDB.TxOptions.Isolation := xiReadCommitted;
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

    // INSERINDO INFORMAÇÕES DOS FORMULARIOS PARA CONTROLE DE ACESSO
    TAcaoAcesso.CriarAcoes(TfrmCadDizimos, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadAcaoAcesso, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadCargoPessoa, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadLancamento, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadUsuario, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadFuncaoPessoa, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadDepartPessoa, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadCargo, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadFuncao, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadCongregacao, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadDepartamento, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadAjudaDeCusto, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmUsuarioVsAcoes, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadPessoa, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadIgreja, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmConsultaDados, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmAlterarSenha, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadSetores, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadProfessor, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadClasse, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadClasseAluno, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmAniversariantes, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmRelatoriosEBD, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmBackupRestore, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmRelDept, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmCadClasseProfessor, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmImportarExportarDados, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmRelatoriosFinanceiro, dtmPrincipal.ConexaoDB);
    TAcaoAcesso.CriarAcoes(TfrmQuadroAnual, dtmPrincipal.ConexaoDB);

    TAcaoAcesso.PreencherUsuariosVsAcoes(dtmPrincipal.ConexaoDB);

    DTMGrafico := TdtmGrafico.Create(self);
    //DTMRelatorioFinanceiro := TdtmRelatorioFinanceiro.Create(self);
    AtualizarGraficos;

    frmAtualizaDB.Free;
  end;
  TeclaEnter := TMREnter.Create(self);
  TeclaEnter.FocusEnabled := True;
  TeclaEnter.FocusColor := clInfoBk;
  dtmRelatorio := TdtmRelatorio.Create(self);
  // try
  // dtmPrincipal.fdqryCong_sistema.Open;
  // congAtiva:=  dtmPrincipal.fdqryCong_sistema.FieldByName('cod_congregacao').AsInteger;
  // Except
  // ShowMessage('Erro na fdqryCong_sistema! ');
  // end;

  // Carregar informações do Status Bar
  statMenu.Panels[0].Width:=200;
  statMenu.Panels[0].Text :=
    '   Splendor Gestão de Igrejas ';
    statMenu.Panels[1].Width:=300;
  if (Time < 0.5) then
    statMenu.Panels[1].Text := 'Bom dia hoje é ' +
      formatdatetime('dddddd', date)
  else if (Time >= 0.5) and (Time <= 0.75) then
    statMenu.Panels[1].Text := 'Boa tarde hoje é ' +
      formatdatetime('dddddd', date)
  else if (Time > 0.75) then
    statMenu.Panels[1].Text := 'Boa noite hoje é ' +
      formatdatetime('dddddd', date);
  statMenu.Panels[2].Width:=250;
  statMenu.Panels[2].Text := 'Congregação ' + dtmPrincipal.descCongAtiva;
  // statMenu.Panels[3].Text := 'Logado com: ' + oUsuarioLogado.nome;
  // status; // + IdIPWatch1.LocalIP;
  // statMenu.Panels[3].Text :='Whatsapp:https://api.whatsapp.com/send?1=pt_BR&phone=5584981416012';
  // statMenu.Panels[3].Text := dtmConexao.strngfldCongregacaoAtivaSistemacongregacao.Text;
end;

procedure TfrmPrincipal.FormPaint(Sender: TObject);
begin
  //TStyleManager.SetStyle(oUsuarioLogado.tema);
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  try
    oUsuarioLogado := TUsuarioLogado.Create;
    frmLogin := TfrmLogin.Create(self);
    frmLogin.ShowModal;

    // oUsuarioLogado.nome:=frmLogin.edtUsuario;
  finally
    frmLogin.Release;
    statMenu.Panels[3].Text := 'Logado com: ' + oUsuarioLogado.nome;
  end;

end;

procedure TfrmPrincipal.Igreja1Click(Sender: TObject);
begin
    TFuncao.CriarForm(TfrmCadIgreja, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniAlterarSenha1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmAlterarSenha, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniAluno1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadClasseAluno, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniAniversariantes1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmAniversariantes, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniAoAcesso1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadAcaoAcesso, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniCargos2Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadCargo, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniCargosPessoas1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadCargoPessoa, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniClasse1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadClasse, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniConfigurao2Click(Sender: TObject);
begin
  frmCongSistema := nil;
  frmCongSistema := tfrmCongSistema.Create(self);
  frmCongSistema.Show;
end;

procedure TfrmPrincipal.mniConsultarDados1Click(Sender: TObject);
begin
  frmConsultaDados := nil;
  frmConsultaDados := TfrmConsultaDados.Create(self);
  frmConsultaDados.Show;
end;

procedure TfrmPrincipal.mniControledeDzimo1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmQuadroAnual, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniDepartamentoPessoas1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadDepartPessoa, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniDepartamentos2Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadDepartamento, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniDepartamentos3Click(Sender: TObject);
begin
TFuncao.CriarForm(TfrmRelDept, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniDizimoClick(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadDizimos, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniDoaoAjudadeCusto1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadAjudaDeCusto, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniFunes2Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadFuncao, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniFunesPessoas1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadFuncaoPessoa, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniImportarCadastros1Click(Sender: TObject);
begin
TFuncao.CriarForm(TfrmImportarExportarDados, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniProfessor2Click(Sender: TObject);
begin
TFuncao.CriarForm(TfrmCadProfessor, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniProfessorClasse1Click(Sender: TObject);
begin
TFuncao.CriarForm(TfrmCadClasseProfessor, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniRelatrios2Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmRelatoriosEBD, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniRelatrios3Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmRelatoriosFinanceiro, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniSobreClick(Sender: TObject);
begin
  ShowMessage('- SOBRE O PROGRAMA ' +

    ' Programador :Albérico Leite  ' + ' Comunicação: (84) 98141-6012  ' +
    'E-mail: albericoleite@live.com');
end;

procedure TfrmPrincipal.mniUsurios1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadUsuario, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.mniUsuriosVSAes1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmUsuarioVsAcoes, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.pnl5Click(Sender: TObject);
begin
AtualizarGraficos;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  // close;
  Application.Terminate;
end;

procedure TfrmPrincipal.Setores1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadSetores, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.tmrDashboardTimer(Sender: TObject);
begin
AtualizarGraficos;
end;

procedure TfrmPrincipal.act1Execute(Sender: TObject);
begin
Application.Terminate;
end;

procedure TfrmPrincipal.AtualizaBandoDados(aForm: TfrmAtualizaDB);
var
 // sl: Integer;
  oAtualizarMySQL: TAtualizaBancoDadosMysql;
begin
  //sl := 50;
  aForm.chkConexBD.Checked := True;
  aForm.Refresh;

  try
    oAtualizarMySQL := TAtualizaBancoDadosMysql.Create(dtmPrincipal.ConexaoDB);
    oAtualizarMySQL.AtualizarBancoDeDadosMySQL;
  finally
    if Assigned(oAtualizarMySQL) then
      FreeAndNil(oAtualizarMySQL);
  end;

end;

procedure TfrmPrincipal.AtualizarGraficos;
begin
try
    Screen.Cursor :=crSQLWait;

  if DTMGrafico.fdqryPessoas.Active then
    DTMGrafico.fdqryPessoas.Close;

  if DTMGrafico.fdqryDizimosAnual.Active then
    DTMGrafico.fdqryDizimosAnual.Close;


  if DTMGrafico.fdqryPessoasCargos.Active then
    DTMGrafico.fdqryPessoasCargos.Close;


  if DTMGrafico.fdqryClassesAlunos.Active then
    DTMGrafico.fdqryClassesAlunos.Close;

      if DTMGrafico.fdqryAniverariantesMes.Active then
    DTMGrafico.fdqryAniverariantesMes.Close;

       if DTMGrafico.fdqrySaidasAnual.Active then
    DTMGrafico.fdqrySaidasAnual.Close;

      if DTMGrafico.fdqryEntrasAnual.Active then
    DTMGrafico.fdqryEntrasAnual.Close;


  DTMGrafico.fdqryDizimosAnual.ParamByName('cod_congregacao').AsInteger:=dtmPrincipal.congAtiva;
  DTMGrafico.fdqryPessoas.ParamByName('cod_congregacao').AsInteger:=dtmPrincipal.congAtiva;
  DTMGrafico.fdqryClassesAlunos.ParamByName('cod_congregacao').AsInteger:=dtmPrincipal.congAtiva;
  DTMGrafico.fdqryPessoas.ParamByName('cod_congregacao').AsInteger:=dtmPrincipal.congAtiva;
  DTMGrafico.fdqryPessoasCargos.ParamByName('cod_congregacao').AsInteger:=dtmPrincipal.congAtiva;
  DTMGrafico.fdqryPessoas.Open;
  DTMGrafico.fdqryClassesAlunos.Open;
  DTMGrafico.fdqryDizimosAnual.Open;
  DTMGrafico.fdqryPessoasCargos.Open;
   DTMGrafico.fdqryAniverariantesMes.Open;
    DTMGrafico.fdqryEntrasAnual.Open;
     DTMGrafico.fdqrySaidasAnual.Open;
finally
     Screen.Cursor := crDefault;
end;
end;

procedure TfrmPrincipal.BackupeRestore1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmBackupRestore, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.btn1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TfrmPrincipal.EntradasSadas1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadLancamento, oUsuarioLogado, dtmPrincipal.ConexaoDB);
end;

end.
