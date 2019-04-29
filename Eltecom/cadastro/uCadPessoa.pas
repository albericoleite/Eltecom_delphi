unit uCadPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,
  cCadPessoa, RxToolEdit, uDTMConexao, uEnum, Vcl.Menus;

type
  TfrmCadPessoa = class(TfrmTelaheranca)
    lbledt_codigo: TLabeledEdit;
    lbledtNome: TLabeledEdit;
    cbbMembCong: TComboBox;
    lblTipo: TLabel;
    cbbSexo: TComboBox;
    lblSexo: TLabel;
    lbledtRol: TLabeledEdit;
    lbledtNomePai: TLabeledEdit;
    lbledtNomeMae: TLabeledEdit;
    dtdtNascimento: TDateEdit;
    lblDataNascimento: TLabel;
    fdtncfldQryListagemcod_pessoa: TFDAutoIncField;
    strngfldQryListagemnome_pessoa: TStringField;
    blbfldQryListagemfoto: TBlobField;
    strngfldQryListagemsexo: TStringField;
    strngfldQryListagemnome_pai: TStringField;
    strngfldQryListagemnome_mae: TStringField;
    dtfldQryListagemdta_nascimento: TDateField;
    strngfldQryListagemnaturalidade: TStringField;
    strngfldQryListagemuf_nascimento: TStringField;
    strngfldQryListagemnacionalidade: TStringField;
    strngfldQryListagemnrorg: TStringField;
    strngfldQryListagemorgaorg: TStringField;
    strngfldQryListagemcpf: TStringField;
    strngfldQryListagememail: TStringField;
    strngfldQryListagemgrau_instr_situacao: TStringField;
    strngfldQryListagemgrau_instrucao: TStringField;
    strngfldQryListagemform_teo_situacao: TStringField;
    strngfldQryListagemformacao_teologica: TStringField;
    strngfldQryListagemestado_civil_atual: TStringField;
    strngfldQryListagemestado_civil_anterior: TStringField;
    strngfldQryListagemnome_conjugue: TStringField;
    dtfldQryListagemdta_casamento: TDateField;
    strngfldQryListagemlogradouro: TStringField;
    strngfldQryListagemuf_endereco: TStringField;
    strngfldQryListagemestado_casa: TStringField;
    strngfldQryListagemcomplemento: TStringField;
    strngfldQryListagemfone_residencial: TStringField;
    strngfldQryListagembairro: TStringField;
    strngfldQryListagemcep: TStringField;
    strngfldQryListagemcidade: TStringField;
    strngfldQryListagemfone_celular: TStringField;
    dtfldQryListagemdta_conversao: TDateField;
    dtfldQryListagemdta_batismo_esprito: TDateField;
    dtfldQryListagemdta_batismo_aguas: TDateField;
    dtfldQryListagemdta_congregado: TDateField;
    strngfldQryListagemlocal_descisao_congregado: TStringField;
    dtfldQryListagemdta_membro: TDateField;
    strngfldQryListagemorigem_eclesiastica: TStringField;
    strngfldQryListagemproced_eclesiastica: TStringField;
    strngfldQryListagemprofissao: TStringField;
    strngfldQryListagemhabilitacao_profissional: TStringField;
    strngfldQryListagememprego_atual: TStringField;
    strngfldQryListagemfuncao: TStringField;
    strngfldQryListagemfone_trabalho: TStringField;
    strngfldQryListagemigreja: TStringField;
    strngfldQryListagemsetor: TStringField;
    strngfldQryListagemcongregacao: TStringField;
    strngfldQryListagemnro_rol: TStringField;
    strngfldQryListagemnro_cad_congregado: TStringField;
    strngfldQryListagemmembro_congregado: TStringField;
    dtfldQryListagemdta_inclusao: TDateField;
    strngfldQryListagemUSUARIO_CADASTRO: TStringField;
    strngfldQryListagemSITUACAO: TStringField;
    intgrfldQryListagemcod_congregacao: TIntegerField;
    intgrfldQryListagemcod_situacao: TIntegerField;
    lbledtNacionalidade: TLabeledEdit;
    lbledtRG: TLabeledEdit;
    cbbUFnascimento: TComboBox;
    lblufnascimento: TLabel;
    lbledtNatural: TLabeledEdit;
    grpDatas: TGroupBox;
    lbl1: TLabel;
    lbl1btespirito: TLabel;
    lbl2: TLabel;
    lblbtaguas: TLabel;
    dtdtBtaguas: TDateEdit;
    dtdtbtespirito: TDateEdit;
    dtdtConversao: TDateEdit;
    dtdtMembro: TDateEdit;
    medtCPF: TMaskEdit;
    lblcpf: TLabel;
    grpEscolaridade: TGroupBox;
    cbbAcademica: TComboBox;
    lbl3: TLabel;
    lbl4: TLabel;
    cbbSitAcad: TComboBox;
    lbl5: TLabel;
    lbl6: TLabel;
    cbbFormTeo: TComboBox;
    lbl7: TLabel;
    lbl8: TLabel;
    cbbSitformteo: TComboBox;
    lbledtOrigecles: TLabeledEdit;
    lbledtProcedeclesi: TLabeledEdit;
    grpCivil: TGroupBox;
    cbbEstdCivil: TComboBox;
    lbl9: TLabel;
    cbbEstcivianterior: TComboBox;
    lbl10: TLabel;
    lbledtNomeConjugue: TLabeledEdit;
    dtdtCasamento: TDateEdit;
    lbl11: TLabel;
    grpResidencia: TGroupBox;
    lbledtEmail: TLabeledEdit;
    lbledtBairro: TLabeledEdit;
    lbledtEndereco: TLabeledEdit;
    lbledtCidade: TLabeledEdit;
    lblCEP: TLabel;
    medtCEP: TMaskEdit;
    lblTelefone: TLabel;
    medtTelefoneCel: TMaskEdit;
    lbledtComplemento: TLabeledEdit;
    cbbEstadoImovel: TComboBox;
    lbl12: TLabel;
    cbbUfImovel: TComboBox;
    lbl13: TLabel;
    lbl14: TLabel;
    medtTelFixo: TMaskEdit;
    grpProfissional: TGroupBox;
    lbledtProfissao: TLabeledEdit;
    lbledtHabprof: TLabeledEdit;
    lbledtEmpregoAtual: TLabeledEdit;
    lbledtFuncao: TLabeledEdit;
    lbl15: TLabel;
    medtTeltrabalho: TMaskEdit;
    pnlImagem: TPanel;
    imgFoto: TImage;
    pmImagem: TPopupMenu;
    mniCarregarImagem1: TMenuItem;
    mniLimparImagem1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure grdListagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbMembCongChange(Sender: TObject);
  private
    { Private declarations }
    oPessoa: TPessoa;
    function Apagar: Boolean; override;
    function Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadPessoa: TfrmCadPessoa;

implementation

{$R *.dfm}
{$REGION 'Override'}

function TfrmCadPessoa.Apagar: Boolean;
begin
  if oPessoa.Selecionar(QryListagem.FieldByName('cod_pessoa').AsInteger) then
    Result := oPessoa.Apagar;
end;

function TfrmCadPessoa.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
  if lbledt_codigo.Text <> EmptyStr then
    oPessoa.cod_pessoa := StrToInt(lbledt_codigo.Text)
  else
    oPessoa.cod_pessoa := 0;
  oPessoa.nome              := lbledtNome.Text;
  oPessoa.nome_pai          := lbledtNomePai.Text;
  oPessoa.nome_mae          := lbledtNomeMae.Text;
  oPessoa.sexo              := cbbSexo.Text;
  oPessoa.dta_nascimento    := dtdtNascimento.Date;
  oPessoa.cod_congregacao   := dtmPrincipal.congAtiva;
  oPessoa.nro_rol           := StrToInt(lbledtRol.Text);
  oPessoa.nrorg             := lbledtRG.Text;
  oPessoa.nacionalidade     := lbledtNacionalidade.Text;
  oPessoa.naturalidade      := lbledtNatural.Text;
  oPessoa.dta_casamento     := dtdtNascimento.Date;
  oPessoa.dta_conversao     :=dtdtConversao.Date;
  oPessoa.dta_batismo_esprito :=dtdtbtespirito.Date;
  oPessoa.dta_batismo_aguas   :=dtdtBtaguas.Date;
 // oPessoa.dta_membro        :=dtdtMembro.Date;
  oPessoa.cep               := medtCEP.Text;
  oPessoa.logradouro        := lbledtEndereco.Text;
  oPessoa.bairro            := lbledtBairro.Text;
  oPessoa.cidade            := lbledtCidade.Text;
  oPessoa.fone_celular      := medtTelefoneCel.Text;
  oPessoa.membro_congregado := cbbMembCong.Text;
  oPessoa.cpf               :=  medtCPF.Text;
  oPessoa.funcao            := lbledtFuncao.Text;
  oPessoa.uf_nascimento     := cbbUFnascimento.Text;
  oPessoa.uf_endereco       := cbbUfImovel.Text;
  oPessoa.congregacao       := dtmPrincipal.descCongAtiva;
  oPessoa.setor             :=dtmPrincipal.setor;

  if (EstadodoCadastro = ecInserir) then
    Result := oPessoa.Inserir
  else if (EstadodoCadastro = ecAlterar) then
    Result := oPessoa.Atualizar;

end;

procedure TfrmCadPessoa.grdListagemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
BloqueiaCTRL_DEL_DBGRID(Key,Shift);
end;

{$ENDREGION}

procedure TfrmCadPessoa.btnAlterarClick(Sender: TObject);
begin
//TODO: VERIFICAR CAMPO DAS DATAS
  if oPessoa.Selecionar(QryListagem.FieldByName('cod_pessoa').AsInteger) then
  begin
    lbledt_codigo.Text    := IntToStr(oPessoa.cod_pessoa);
    lbledtNome.Text       := oPessoa.nome;
    dtdtNascimento.Text   := DateToStr(oPessoa.dta_nascimento);
    lbledtCidade.Text     := oPessoa.cidade;
    lbledtEmail.Text      := oPessoa.email;
    lbledtBairro.Text     := oPessoa.bairro;
    lbledtEndereco.Text   := oPessoa.logradouro;
    lbledtNomePai.Text    := oPessoa.nome_pai;
    lbledtNomeMae.Text    := oPessoa.nome_mae;
    medtTelefoneCel.Text     := oPessoa.fone_celular;
    cbbSexo.Text          := oPessoa.sexo;
    cbbUFnascimento.Text  := oPessoa.uf_nascimento;
    cbbUfImovel.Text      := oPessoa.uf_endereco;
    cbbMembCong.Text      := oPessoa.membro_congregado;
    lbledtRG.Text         := oPessoa.nrorg;
    lbledtNatural.Text    := oPessoa.naturalidade;
    lbledtNacionalidade.Text:=oPessoa.nacionalidade;
    lbledtRol.Text        :=IntToStr(oPessoa.nro_rol);
    medtCEP.Text          := oPessoa.cep;
    dtdtBtaguas.Text      := DateToStr(oPessoa.dta_batismo_aguas);
    dtdtbtespirito.Text   :=DateToStr(oPessoa.dta_batismo_esprito);
    dtdtConversao.Text    :=DateToStr(oPessoa.dta_conversao);
    dtdtMembro.Text  :=DateToStr(oPessoa.dta_membro);
    //dtdtMembro.Text  :=DateToStr(oPessoa.dta_congregado);
    medtCPF.Text          := oPessoa.cpf;
    dtdtCasamento.Text    := DateToStr(oPessoa.dta_casamento);
    lbledtNomeConjugue.Text:= oPessoa.nome_conjugue;
    lbledtFuncao.Text := oPessoa.funcao;
    cbbSitAcad.Text       := oPessoa.grau_inst_situacao;
     cbbAcademica.Text    := oPessoa.grau_instrucao;
     cbbFormTeo.Text      := oPessoa.formacao_teologica;
     cbbSitformteo.Text    := oPessoa.form_teo_situacao;
    // cbbEstdCivil.Text    := oPessoa.
    //      :=
   {
    cbbEstcivianterior.Text

    cbbSitAcad.Text
    cbbFormTeo.Text

    lbledtOrigecles.Text
    lbledtProcedeclesi.Text }
       end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;

procedure TfrmCadPessoa.btnNovoClick(Sender: TObject);
begin
  inherited;
  dtdtNascimento.Date := Date;
  lbledtNome.SetFocus;
  cbbMembCong.ItemIndex:=0;
end;

procedure TfrmCadPessoa.cbbMembCongChange(Sender: TObject);
begin
  inherited;
if cbbMembCong.Text='CONGREGADO' then
dtdtMembro.Enabled:=false
else dtdtMembro.Enabled:=true

end;

procedure TfrmCadPessoa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(oPessoa) then
    FreeAndNil(oPessoa);
end;

procedure TfrmCadPessoa.FormCreate(Sender: TObject);
begin
QryListagem.ParamByName('cod_congregacao').AsInteger:=dtmPrincipal.congAtiva;
  inherited;
  oPessoa := TPessoa.Create(dtmPrincipal.ConexaoDB);
  IndiceAtual := 'cod_pessoa';
end;

end.
