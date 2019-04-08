unit uCadCongregacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,uDTMConexao,cCadCongregacao, Vcl.ExtCtrls, Vcl.ComCtrls,uEnum,
  RxToolEdit;

type
  TfrmCadCongregacao = class(TfrmTelaheranca)
    fdtncfldQryListagemcod_congregacao: TFDAutoIncField;
    intgrfldQryListagemcod_central: TIntegerField;
    strngfldQryListagemcongregacao: TStringField;
    strngfldQryListagemsetor: TStringField;
    strngfldQryListagempolo: TStringField;
    intgrfldQryListagemsituacao: TIntegerField;
    strngfldQryListagemtelefone: TStringField;
    strngfldQryListagemcnpj: TStringField;
    strngfldQryListagemsiteblog: TStringField;
    strngfldQryListagemendereco: TStringField;
    strngfldQryListagemcomplemento: TStringField;
    strngfldQryListagembairro: TStringField;
    strngfldQryListagemcep: TStringField;
    strngfldQryListagemcidade: TStringField;
    strngfldQryListagemdiasculto: TStringField;
    strngfldQryListagemdiacoa: TStringField;
    strngfldQryListagemdiacom: TStringField;
    strngfldQryListagemdiacoi: TStringField;
    strngfldQryListagemdiacv: TStringField;
    dtfldQryListagemdata_aber_sub: TDateField;
    dtfldQryListagemdata_aber_cong: TDateField;
    dtfldQryListagemdata_fun_coa: TDateField;
    dtfldQryListagemdata_fun_com: TDateField;
    dtfldQryListagemdata_fun_coi: TDateField;
    dtfldQryListagemdata_fun_cv: TDateField;
    dtfldQryListagemdata_cadastro: TDateField;
    strngfldQryListagemusuario_cadastro: TStringField;
    strngfldQryListagemcong_principal: TStringField;
    strngfldQryListagemdirigente: TStringField;
    intgrfldQryListagemcod_setor: TIntegerField;
    intgrfldQryListagemcod_igreja: TIntegerField;
    intgrfldQryListagemcod_cc: TIntegerField;
    strngfldQryListagemsigla: TStringField;
    lbledtCodigo: TLabeledEdit;
    lbledtCongregacao: TLabeledEdit;
    lbledtDirigente: TLabeledEdit;
    grpResidencia: TGroupBox;
    lblCEP: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl1: TLabel;
    lbledtBairro: TLabeledEdit;
    lbledtEndereco: TLabeledEdit;
    lbledtCidade: TLabeledEdit;
    medtCEP: TMaskEdit;
    lbledtComplemento: TLabeledEdit;
    cbbEstadoImovel: TComboBox;
    cbbUfImovel: TComboBox;
    medtTelefone: TMaskEdit;
    grpDatas: TGroupBox;
    Label1: TLabel;
    lbl1btespirito: TLabel;
    lblbtaguas: TLabel;
    dtdtFundCOA: TDateEdit;
    dtdtFundCOM: TDateEdit;
    dtdtFundCOI: TDateEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    dtdtAberSubCong: TDateEdit;
    dtdtAberCong: TDateEdit;
    lbledtCodCentral: TLabeledEdit;
    dblkcbbSetor: TDBLookupComboBox;
    lbl2: TLabel;
    dsSetores: TDataSource;
    procedure btnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    oCongregacao: TCongregacao;
    function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadCongregacao: TfrmCadCongregacao;

implementation


{$R *.dfm}

{$REGION 'Override'}
function TfrmCadCongregacao.Apagar: Boolean;
begin
if oCongregacao.Selecionar(QryListagem.FieldByName('cod_congregacao').AsInteger) then
      Result:=oCongregacao.Apagar;
end;


procedure TfrmCadCongregacao.btnAlterarClick(Sender: TObject);
begin
if oCongregacao.Selecionar(QryListagem.FieldByName('cod_congregacao').AsInteger) then
  begin
    lbledtCodigo.Text    := IntToStr(oCongregacao.cod_congregacao);
    lbledtCongregacao.Text       := oCongregacao.congregacao;
    lbledtDirigente.Text        := oCongregacao.dirigente;
    lbledtCodCentral.Text := IntToStr(oCongregacao.cod_central);
    lbledtEndereco.Text := oCongregacao.endereco;
    lbledtBairro.Text := oCongregacao.bairro;
    lbledtComplemento.Text := oCongregacao.complemento;
    lbledtCidade.Text := oCongregacao.cidade;
    //cbbUfImovel.Text := oCongregacao.uf;
    medtTelefone.Text := oCongregacao.telefone;
    medtCEP.Text := oCongregacao.cep;
    dblkcbbSetor.KeyValue:= oCongregacao.cod_setor;

    end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;

procedure TfrmCadCongregacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //dtmPrincipal.fdqryCong_sistema.Refresh;
if Assigned(oCongregacao) then
     FreeAndNil(oCongregacao);
end;

procedure TfrmCadCongregacao.FormCreate(Sender: TObject);
begin
  inherited;
  oCongregacao:= TCongregacao.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual:='cod_congregacao';
end;

function TfrmCadCongregacao.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
    if lbledtCodigo.Text<>EmptyStr then
       oCongregacao.cod_congregacao:=StrToInt(lbledtCodigo.Text)
       else
       oCongregacao.cod_congregacao :=0;
       oCongregacao.congregacao:=lbledtCongregacao.Text;
       oCongregacao.dirigente := lbledtDirigente.Text;
       oCongregacao.cod_central:=StrToInt(lbledtCodCentral.Text);
       oCongregacao.endereco:=lbledtEndereco.Text;
       oCongregacao.bairro :=lbledtBairro.Text;
       oCongregacao.complemento:=lbledtComplemento.Text;
       oCongregacao.cidade:=lbledtCidade.Text;
       oCongregacao.telefone:=medtTelefone.Text;
       oCongregacao.cep:=medtCEP.Text;
       oCongregacao.data_fun_coa:=dtdtFundCOA.Date;
       oCongregacao.data_fun_com:=dtdtFundCOM.Date;
       oCongregacao.data_fun_coi:=dtdtFundCOI.Date;
       oCongregacao.data_aber_sub:=dtdtAberSubCong.Date;
       oCongregacao.data_aber_cong:=dtdtAberCong.Date;
       oCongregacao.data_cadastro:= Date;
       oCongregacao.usuario_cadastro:='Admin';
       oCongregacao.cod_setor:=dblkcbbSetor.KeyValue;
       oCongregacao.setor:= dblkcbbSetor.Text;
       oCongregacao.situacao:='0';


    if (EstadodoCadastro=ecInserir) then
    Result:=oCongregacao.Inserir
    else if (EstadodoCadastro=ecAlterar) then
     Result:=oCongregacao.Atualizar;

end;

{$endregion}

end.
