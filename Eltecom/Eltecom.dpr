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
  cCadCargo in 'classes\cCadCargo.pas',
  uCadDepartPessoa in 'cadastro\uCadDepartPessoa.pas' {frmCaddeparPessoa},
  cCadDepartPessoa in 'classes\cCadDepartPessoa.pas',
  uCadFuncaoPessoa in 'cadastro\uCadFuncaoPessoa.pas' {frmCadFuncaoPessoa},
  cCadFuncaoPessoa in 'classes\cCadFuncaoPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
