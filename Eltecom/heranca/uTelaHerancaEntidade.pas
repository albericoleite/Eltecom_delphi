unit uTelaHerancaEntidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.ExtCtrls,uDTMConexao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, uEnum,RxToolEdit, RxCurrEdit,cUsuarioLogado,
  SimpleDAO,SimpleInterface ,SimpleQueryFiredac,System.Generics.Collections, uDWResponseTranslator, uDWAbout, uDWConstsData,
  uRESTDWPoolerDB;

type
  TfrmTelaHerancaEntidade = class(TForm)
    pnlRodape: TPanel;
    dbnvgrNavigator: TDBNavigator;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnApagar: TBitBtn;
    btnFechar: TBitBtn;
    btnGravar: TBitBtn;
    pgcPrincipal: TPageControl;
    tabListagem: TTabSheet;
    pnlListagem: TPanel;
    lblIndice: TLabel;
    medtPesquisar: TMaskEdit;
    btnPesquisar: TBitBtn;
    dbgrdListagem: TDBGrid;
    tabManutencao: TTabSheet;
    dsListagem: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure dbgrdListagemDblClick(Sender: TObject);
    procedure dbgrdListagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrdListagemTitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private


    procedure ControlarBotoes(btnNovo, btnAlterar, btnCancelar, BtnGravar,
      btnApagar: TBitBtn; btnNavigator: TDBNavigator;
      pgcPrincipal: TPageControl; Flag: Boolean);
    procedure ControlarIndiceTab(pgcPrincipal: TPageControl; Indice: Integer);
    procedure DesabilitarEditPK;
    procedure ExibirLabelIndice(Campo: string; aLabel: Tlabel);
    function ExisteCampoObrigatorio: Boolean;
    procedure LimparEdit;
    function RetornarCampoTraduzido(Campo: String): string;
    { Private declarations }
  public
    { Public declarations }
    IndiceAtual:string;
    EstadoDoCadastro:TEstadoDoCadastro;
    function Apagar: Boolean; virtual;
    function Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;virtual;
    procedure BloqueiaCTRL_DEL_DBGRID(var Key: Word; Shift: TShiftState);
  end;

var
  frmTelaHerancaEntidade: TfrmTelaHerancaEntidade;

implementation
uses
  uPrincipal;

{$R *.dfm}

procedure TfrmTelaHerancaEntidade.btnAlterarClick(Sender: TObject);
begin
if not TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo,Self.Name+'_'+TBitBtn(Sender).Name,dtmPrincipal.ConexaoDB) then
begin
  MessageDlg('Usuário: '+oUsuarioLogado.nome+', não tem permissão de acesso',mtWarning,[mbOK],0);
  Abort;
end;
 ControlarBotoes(btnNovo, btnAlterar, btnCancelar,btnGravar
,btnApagar,dbnvgrNavigator , pgcPrincipal,False);
EstadoDoCadastro:= ecAlterar;
end;

procedure TfrmTelaHerancaEntidade.btnApagarClick(Sender: TObject);
begin
 if not TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo,Self.Name+'_'+TBitBtn(Sender).Name,dtmPrincipal.ConexaoDB) then
begin
  MessageDlg('Usuário: '+oUsuarioLogado.nome+', não tem permissão de acesso',mtWarning,[mbOK],0);
  Abort;
end;

try
if (Apagar) then
begin
 ControlarBotoes(btnNovo, btnAlterar, btnCancelar,btnGravar
,btnApagar,dbnvgrNavigator , pgcPrincipal,true);
LimparEdit;
//QryListagem.Refresh;
end else begin
 MessageDlg('Erro na Exclução',mtError,[mbOK],0);
end;
finally
     EstadoDoCadastro:=ecEnum;
end;
end;

procedure TfrmTelaHerancaEntidade.btnCancelarClick(Sender: TObject);
begin
ControlarBotoes(btnNovo, btnAlterar, btnCancelar,btnGravar
,btnApagar,dbnvgrNavigator , pgcPrincipal,True);
ControlarIndiceTab(pgcPrincipal,0);
LimparEdit;
end;

procedure TfrmTelaHerancaEntidade.btnFecharClick(Sender: TObject);
begin
Close;
end;


procedure TfrmTelaHerancaEntidade.btnGravarClick(Sender: TObject);
begin
  if not TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo,Self.Name+'_'+TBitBtn(Sender).Name,dtmPrincipal.ConexaoDB) then
begin
  MessageDlg('Usuário: '+oUsuarioLogado.nome+', não tem permissão de acesso',mtWarning,[mbOK],0);
  Abort;
end;

if (ExisteCampoObrigatorio) then
    Abort;

try
if Gravar(EstadoDoCadastro) then
begin
        ControlarBotoes(btnNovo, btnAlterar, btnCancelar,btnGravar
        ,btnApagar,dbnvgrNavigator , pgcPrincipal,True);
        ControlarIndiceTab(pgcPrincipal,0);
         EstadoDoCadastro:= ecEnum;
         LimparEdit;
         //QryListagem.Refresh;
end
else begin
    MessageDlg('Erro na Gravação',mtError,[mbOK],0);
end;


//if (EstadoDoCadastro=ecInserir) then
//ShowMessage('inserido');
//if (EstadoDoCadastro=ecAlterar)   then
//      ShowMessage('Alterado');


finally

end;
end;

procedure TfrmTelaHerancaEntidade.btnNovoClick(Sender: TObject);
begin
if not TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo,Self.Name+'_'+TBitBtn(Sender).Name,dtmPrincipal.ConexaoDB) then
begin
  MessageDlg('Usuário: '+oUsuarioLogado.nome+', não tem permissão de acesso',mtWarning,[mbOK],0);
  Abort;
end;


ControlarBotoes(btnNovo, btnAlterar, btnCancelar,btnGravar
,btnApagar,dbnvgrNavigator , pgcPrincipal,False);
EstadoDoCadastro:= ecInserir;
LimparEdit;
end;

{$region  'FUNÇÕES VIRTUAIS}
function TfrmTelaHerancaEntidade.Apagar: Boolean;
begin
     ShowMessage('Deletado');
end;

function TfrmTelaHerancaEntidade.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
    if (EstadoDoCadastro=ecInserir) then
ShowMessage('inserido');
 if (EstadoDoCadastro=ecAlterar) then
      ShowMessage('Alterado');
 Result:=True;

end;

{$endregion}

{$region 'Funções Principais'}
//Procedimentos de controle de Tela
procedure TfrmTelaHerancaEntidade.ControlarBotoes(btnNovo,btnAlterar,  btnCancelar,
 BtnGravar, btnApagar:TBitBtn;
 btnNavigator:TDBNavigator ;pgcPrincipal:TPageControl; Flag:Boolean );
Begin
    btnNovo.Enabled :=Flag;
    btnApagar.Enabled := Flag;
    btnAlterar.Enabled :=Flag;
    btnNavigator.Enabled := Flag;
    pgcPrincipal.Pages[0].TabVisible:=Flag;
    btnCancelar.Enabled:=not(Flag);
    BtnGravar.Enabled:=not(Flag);
End;


 Procedure    TfrmTelaHerancaEntidade.DesabilitarEditPK;
var i : Integer;
begin
       for i := 0 to ComponentCount-1 do  begin
    if (Components[i] is TLabeledEdit) then   begin
       if (TLabeledEdit(Components[i]).Tag =1) then   begin
       TLabeledEdit(Components[i]).Enabled:=false;
         Break;
       end;
    end;
  end;
end;

 Procedure    TfrmTelaHerancaEntidade.LimparEdit;
var i : Integer;
begin
       for i := 0 to ComponentCount-1 do  begin
    if (Components[i] is TLabeledEdit) then
           TLabeledEdit(Components[i]).Text:=EmptyStr
           else if (Components[i] is Tedit) then
            Tedit(Components[i]).Text:=EmptyStr

            else if (Components[i] is TMemo) then
            TMemo(Components[i]).Text:=EmptyStr

            else if (Components[i] is TMaskEdit) then
            TMaskEdit(Components[i]).Text:=''

            else if (Components[i] is TDBLookupComboBox) then
            TDBLookupComboBox(Components[i]).keyValue:= null

            else if (Components[i] is TCurrencyEdit) then
            TCurrencyEdit(Components[i]).Value:=0

            //else if (Components[i] is TDateEdit) then
            //TDateEdit(Components[i]).Date:=0 ;
     end;
end;

function  TfrmTelaHerancaEntidade.ExisteCampoObrigatorio:Boolean;
var i : Integer;
begin
  Result:=False;
  for i := 0 to ComponentCount-1 do  begin
    if (Components[i] is TLabeledEdit) then   begin
       if (TLabeledEdit(Components[i]).Tag =2) and
       (TLabeledEdit(Components[i]).Text=EmptyStr) then    begin
         MessageDlg(TLabeledEdit(Components[i]).EditLabel.Caption +
         ' é um campo obrigatório',mtInformation,[mbOK],0);
         TLabeledEdit(Components[i]).SetFocus;
         Result:=true;
         Break;
       end;
    end;

    if (Components[i] is TDateEdit) then   begin
       if (TDateEdit(Components[i]).Tag =2) and
       (TDateEdit(Components[i]).Text='  /  /    ') then    begin
         MessageDlg(TDateEdit(Components[i]).Hint +
         ' é um campo obrigatório',mtInformation,[mbOK],0);
         TDateEdit(Components[i]).SetFocus;
         Result:=true;
         Break;
       end;
    end;

        if (Components[i] is TDBLookupComboBox) then   begin
       if (TDBLookupComboBox(Components[i]).Tag =2) then    begin
         MessageDlg(TDBLookupComboBox(Components[i]).Hint +
         ' é um campo obrigatório',mtInformation,[mbOK],0);
         TDBLookupComboBox(Components[i]).SetFocus;
         Result:=true;
         Break;
       end;
    end;

  end;

end;

procedure TfrmTelaHerancaEntidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := cafree;
  frmTelaHerancaEntidade := nil;
end;

procedure TfrmTelaHerancaEntidade.FormCreate(Sender: TObject);
begin
{QryListagem.Connection:= dtmPrincipal.ConexaoDB;
dtsListagem.DataSet:= QryListagem;
grdListagem.DataSource:=dtsListagem;
btnNavigator.DataSource:=dtsListagem;
grdListagem.Options:=[dgTitles,dgIndicator
,dgColumnResize,dgColLines,dgRowLines,dgTabs
,dgRowSelect,dgAlwaysShowSelection,dgCancelOnExit
,dgTitleClick,dgTitleHotTrack]  }
end;

procedure TfrmTelaHerancaEntidade.ControlarIndiceTab(pgcPrincipal:TPageControl;Indice: Integer) ;
begin
      if (pgcPrincipal.Pages[Indice].TabVisible) then
      pgcPrincipal.TabIndex:=Indice;
end;

procedure TfrmTelaHerancaEntidade.dbgrdListagemDblClick(Sender: TObject);
begin
btnAlterar.Click;
end;

procedure TfrmTelaHerancaEntidade.dbgrdListagemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 BloqueiaCTRL_DEL_DBGRID(Key,Shift);
end;

procedure TfrmTelaHerancaEntidade.dbgrdListagemTitleClick(Column: TColumn);
begin
{IndiceAtual:=Column.FieldName;
QryListagem.IndexFieldNames:=IndiceAtual;
//lblIndice.Caption:= RetornarCampoTraduzido(IndiceAtual);
ExibirLabelIndice(IndiceAtual,lblIndice); }
end;

procedure    TfrmTelaHerancaEntidade.ExibirLabelIndice(Campo:string; aLabel:Tlabel);
begin
     aLabel.Caption:=RetornarCampoTraduzido(Campo);
end;

procedure    TfrmTelaHerancaEntidade.BloqueiaCTRL_DEL_DBGRID(var Key: Word; Shift:TShiftState);
begin
    if (Shift = [ssCtrl])and (Key = 46)or  (Key = 17) then
       Key:=0;
end;

function  TfrmTelaHerancaEntidade.RetornarCampoTraduzido(Campo:String):string ;
var I:Integer;
begin
{for I := 0 to QryListagem.Fields.Count-1 do
begin
  if LowerCase(QryListagem.Fields[I].FieldName) = LowerCase(Campo) then
  begin
     Result:=QryListagem.Fields[I].DisplayLabel;
  Break;
  end;

end;  }

end;

{$endregion}

end.
