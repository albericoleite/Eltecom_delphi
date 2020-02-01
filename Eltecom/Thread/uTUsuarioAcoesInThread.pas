unit uTUsuarioAcoesInThread;

interface

uses
  System.Classes,cAcaoAcesso;

type
  TUsuarioAcoesInThread = class(TThread)
  private
    procedure CriarAcoes;
  protected
    procedure Execute; override;
  end;

implementation

uses
  uCadDizimo, uDTMConexao, uCadAcaoAcesso;

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure TUsuarioAcoesInThread.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; 
    
    or 
    
    Synchronize( 
      procedure 
      begin
        Form1.Caption := 'Updated in thread via an anonymous method' 
      end
      )
    );
    
  where an anonymous method is passed.
  
  Similarly, the developer can call the Queue method with similar parameters as 
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.
    
}

{ TUsuarioAcoesInThread }

procedure TUsuarioAcoesInThread.Execute;
begin
  NameThreadForDebugging('TUsuarioAcoesInThread');
  { Place thread code here }
  CriarAcoes;
end;

procedure TUsuarioAcoesInThread.CriarAcoes;
begin
  // INSERINDO INFORMAÇÕES DOS FORMULARIOS PARA CONTROLE DE ACESSO
  TAcaoAcesso.CriarAcoes(TfrmCadDizimos, dtmPrincipal.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmCadAcaoAcesso, dtmPrincipal.ConexaoDB);
  {TAcaoAcesso.CriarAcoes(TfrmCadCargoPessoa, dtmPrincipal.ConexaoDB);
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
  TAcaoAcesso.CriarAcoes(TfrmChamadaEbd, dtmPrincipal.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmTipoCulto, dtmPrincipal.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmTipoSaida, dtmPrincipal.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmTipoCentroCusto, dtmPrincipal.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmCadCentroCusto, dtmPrincipal.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmCadFornecedor, dtmPrincipal.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmCadLancUnificado, dtmPrincipal.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmCadFormpgto, dtmPrincipal.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmCadTipoLancamento, dtmPrincipal.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmCadDespesaFixa, dtmPrincipal.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmEmitirDoc, dtmPrincipal.ConexaoDB); }
end;

end.
