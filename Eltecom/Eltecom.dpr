program Eltecom;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  uDTMConexao in 'datamodule\uDTMConexao.pas' {dtmPrincipal: TDataModule},
  uTelaHeranca in 'heranca\uTelaHeranca.pas' {frmTelaheranca},
  uCadSetores in 'cadastro\uCadSetores.pas' {frmCadSetores},
  uEnum in 'heranca\uEnum.pas',
  cCadSetores in 'classes\cCadSetores.pas',
  uCadPessoa in 'cadastro\uCadPessoa.pas' {frmCadPessoa},
  cCadPessoa in 'classes\cCadPessoa.pas',
  untCongSistema in 'cadastro\untCongSistema.pas' {frmCongSistema},
  uCadIgreja in 'cadastro\uCadIgreja.pas' {frmCadIgreja},
  cCadIgreja in 'classes\cCadIgreja.pas',
  uFrmAtualizaDB in 'datamodule\uFrmAtualizaDB.pas' {frmAtualizaDB},
  uDTMTesouraria in 'datamodule\uDTMTesouraria.pas' {dtmTesouraria: TDataModule},
  uDTMRelatorio in 'datamodule\uDTMRelatorio.pas' {dtmRelatorio: TDataModule},
  uEmissaoDocumentos in 'Relatorios\uEmissaoDocumentos.pas' {frmEmitirDoc},
  uCadDepartamento in 'cadastro\uCadDepartamento.pas' {frmCadDepartamento},
  cCadDepartamento in 'classes\cCadDepartamento.pas',
  uCadCongregacao in 'cadastro\uCadCongregacao.pas' {frmCadCongregacao},
  cCadCongregacao in 'classes\cCadCongregacao.pas',
  uCadDizimo in 'cadastro\uCadDizimo.pas' {frmCadDizimos},
  cCadDizimo in 'classes\cCadDizimo.pas',
  uCadFuncao in 'cadastro\uCadFuncao.pas' {frmCadFuncao},
  cCadFuncao in 'classes\cCadFuncao.pas',
  uCadCargo in 'cadastro\uCadCargo.pas' {frmCadCargo},
  cCadUsuario in 'classes\cCadUsuario.pas',
  uCadDepartPessoa in 'cadastro\uCadDepartPessoa.pas' {frmCaddeparPessoa},
  cCadDepartPessoa in 'classes\cCadDepartPessoa.pas',
  uCadFuncaoPessoa in 'cadastro\uCadFuncaoPessoa.pas' {frmCadFuncaoPessoa},
  cCadFuncaoPessoa in 'classes\cCadFuncaoPessoa.pas',
  uFuncaoCriptografia in 'heranca\uFuncaoCriptografia.pas',
  cArquivoIni in 'classes\cArquivoIni.pas',
  uLogin in 'login\uLogin.pas' {frmLogin},
  uCadUsuario in 'cadastro\uCadUsuario.pas' {frmCadUsuario},
  cCadCargo in 'classes\cCadCargo.pas',
  Enter in 'terceiros\Enter.pas',
  uAlterarSenha in 'login\uAlterarSenha.pas' {frmAlterarSenha},
  cUsuarioLogado in 'classes\cUsuarioLogado.pas',
  uCadLancamento in 'cadastro\uCadLancamento.pas' {frmCadLancamento},
  cCadLancamento in 'classes\cCadLancamento.pas',
  cAtualizacaoBancoDeDados in 'classes\cAtualizacaoBancoDeDados.pas',
  cAtualizacaoTabelaMySQL in 'classes\cAtualizacaoTabelaMySQL.pas',
  uDepartamentos in 'Relatorios\uDepartamentos.pas' {frmDepartamentos},
  uCadCargoPessoa in 'cadastro\uCadCargoPessoa.pas' {frmCadCargoPessoa},
  cCadCargoPessoa in 'classes\cCadCargoPessoa.pas',
  cAtualizacaoCampoMySQL in 'classes\cAtualizacaoCampoMySQL.pas',
  cAcaoAcesso in 'classes\cAcaoAcesso.pas',
  uCadAcaoAcesso in 'cadastro\uCadAcaoAcesso.pas' {frmCadAcaoAcesso},
  uCadAjudaDeCusto in 'cadastro\uCadAjudaDeCusto.pas' {frmCadAjudaDeCusto},
  cCadRecibo in 'classes\cCadRecibo.pas',
  uUsuarioVsAcoes in 'login\uUsuarioVsAcoes.pas' {frmUsuarioVsAcoes},
  uConsultarDados in 'login\uConsultarDados.pas' {frmConsultaDados},
  uDTMGraficos in 'datamodule\uDTMGraficos.pas' {dtmGrafico: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdtmGrafico, dtmGrafico);
  Application.Run;
end.
