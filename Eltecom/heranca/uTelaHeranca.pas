unit uTelaHeranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.ExtCtrls,uDTMConexao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, uEnum,RxToolEdit, RxCurrEdit,cUsuarioLogado;

type
  TfrmTelaheranca = class(TForm)
    pgcPrincipal: TPageControl;
    pnlRodape: TPanel;
    tabListagem: TTabSheet;
    tabManutencao: TTabSheet;
    pnlListagem: TPanel;
    mskPesquisar: TMaskEdit;
    grdListagem: TDBGrid;
    btnNavigator: TDBNavigator;
    QryListagem: TFDQuery;
    dtsListagem: TDataSource;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnApagar: TBitBtn;
    btnFechar: TBitBtn;
    btnPesquisar: TBitBtn;
    btnGravar: TBitBtn;
    lblIndice: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdListagemTitleClick(Column: TColumn);
    procedure mskPesquisarChange(Sender: TObject);
    procedure grdListagemDblClick(Sender: TObject);
    procedure grdListagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  SelectOriginal:string;
procedure ControlarBotoes(btnNovo,btnAlterar,  btnCancelar,
 BtnGravar, btnApagar:TBitBtn;
 btnNavigator:TDBNavigator ;pgcPrincipal:TPageControl; Flag:Boolean );
    procedure ControlarIndiceTab(pgcPrincipal: TPageControl; Indice: Integer);
    function RetornarCampoTraduzido(Campo: String): string;
    procedure ExibirLabelIndice(Campo: string; aLabel: Tlabel);
    function ExisteCampoObrigatorio: Boolean;
    procedure DesabilitarEditPK;
    procedure LimparEdit;

  public
    { Public declarations }
    IndiceAtual:string;
    EstadoDoCadastro:TEstadoDoCadastro;
    function Apagar:Boolean; virtual;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; virtual;
    procedure BloqueiaCTRL_DEL_DBGRID(var Key: Word; Shift: TShiftState);

  end;

var
  frmTelaheranca: TfrmTelaheranca;

implementation

uses
  uPrincipal;

{$R *.dfm}

{$region 'OBSERVAÇÕES'}
   //TAG:1 - CHABE PRIMÁRIA -PK
   //TAG:2 - CAMPOS OBRIGATÓRIOS
{$endregion}

procedure TfrmTelaheranca.btnAlterarClick(Sender: TObject);
begin
if not TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo,Self.Name+'_'+TBitBtn(Sender).Name,dtmPrincipal.ConexaoDB) then
begin
  MessageDlg('Usuário: '+oUsuarioLogado.nome+', não tem permissão de acesso',mtWarning,[mbOK],0);
  Abort;
end;
 ControlarBotoes(btnNovo, btnAlterar, btnCancelar,btnGravar
,btnApagar,btnNavigator , pgcPrincipal,False);
EstadoDoCadastro:= ecAlterar;
end;

procedure TfrmTelaheranca.btnApagarClick(Sender: TObject);
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
,btnApagar,btnNavigator , pgcPrincipal,true);
LimparEdit;
QryListagem.Refresh;
end else begin
 MessageDlg('Erro na Exclução',mtError,[mbOK],0);
end;
finally
     EstadoDoCadastro:=ecEnum;
end;

end;

procedure TfrmTelaheranca.btnCancelarClick(Sender: TObject);
begin
ControlarBotoes(btnNovo, btnAlterar, btnCancelar,btnGravar
,btnApagar,btnNavigator , pgcPrincipal,True);
ControlarIndiceTab(pgcPrincipal,0);
LimparEdit;
end;

procedure TfrmTelaheranca.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TfrmTelaheranca.btnGravarClick(Sender: TObject);
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
        ,btnApagar,btnNavigator , pgcPrincipal,True);
        ControlarIndiceTab(pgcPrincipal,0);
         EstadoDoCadastro:= ecEnum;
         LimparEdit;
         QryListagem.Refresh;
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

procedure TfrmTelaheranca.btnNovoClick(Sender: TObject);
begin
if not TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo,Self.Name+'_'+TBitBtn(Sender).Name,dtmPrincipal.ConexaoDB) then
begin
  MessageDlg('Usuário: '+oUsuarioLogado.nome+', não tem permissão de acesso',mtWarning,[mbOK],0);
  Abort;
end;


ControlarBotoes(btnNovo, btnAlterar, btnCancelar,btnGravar
,btnApagar,btnNavigator , pgcPrincipal,False);
EstadoDoCadastro:= ecInserir;
LimparEdit;
end;

procedure TfrmTelaheranca.btnPesquisarClick(Sender: TObject);
var I:Integer;
TipoCampo:TFieldType;
NomeCampo:string;
WhereOrAnd:string;
CondicaoSQL:string;
begin
if not TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo,Self.Name+'_'+TBitBtn(Sender).Name,dtmPrincipal.ConexaoDB) then
begin
  MessageDlg('Usuário: '+oUsuarioLogado.nome+', não tem permissão de acesso',mtWarning,[mbOK],0);
  Abort;
end;

if mskPesquisar.Text='' then  begin
  QryListagem.Close;
  QryListagem.SQL.Clear;
  QryListagem.SQL.Add(SelectOriginal);
  QryListagem.Open;
  Abort;
end;

for I := 0 to QryListagem.FieldCount-1 do
  begin
     if QryListagem.Fields[I].FieldName = IndiceAtual then
     begin
       TipoCampo:= QryListagem.Fields[I].DataType;
       NomeCampo:= QryListagem.Fields[I].FieldName;
       Break;
     end;
  end;

 //ATRIBUI A CLAUSULA NO SQL
  if Pos('where',LowerCase(SelectOriginal))>1 then
  begin
    WhereOrAnd:=' and '
  end else
  begin
     WhereOrAnd:=' where '
  end;

 if (TipoCampo=ftString) or (TipoCampo=ftWideString) then
   begin
     CondicaoSQL:= WhereOrAnd+' '+NomeCampo+' LIKE '+QuotedStr('%'+mskPesquisar.Text+'%');
   end
   else if (TipoCampo=ftInteger) or (TipoCampo=ftSmallint) then
   begin
     CondicaoSQL:= WhereOrAnd+' '+NomeCampo+'='+mskPesquisar.Text
   end
   else if (TipoCampo=ftDate) or (TipoCampo=ftDateTime) then
   begin
     CondicaoSQL:= WhereOrAnd+' '+NomeCampo+'='+QuotedStr(mskPesquisar.Text)
   end
   else if (TipoCampo=ftFloat) or (TipoCampo=ftCurrency) then
   begin
     CondicaoSQL:= WhereOrAnd+' '+NomeCampo+'='+StringReplace(mskPesquisar.Text,',','.',[rfReplaceAll]);
   end;

  QryListagem.Close;
  QryListagem.SQL.Clear;
  QryListagem.SQL.Add(SelectOriginal);
  QryListagem.SQL.Add(CondicaoSQL);
  QryListagem.SQL.text;
  QryListagem.Open;

end;

procedure TfrmTelaheranca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
QryListagem.Close;
//FreeAndNil(dtmPrincipal);
end;

procedure TfrmTelaheranca.FormCreate(Sender: TObject);
begin
QryListagem.Connection:= dtmPrincipal.ConexaoDB;
dtsListagem.DataSet:= QryListagem;
grdListagem.DataSource:=dtsListagem;
btnNavigator.DataSource:=dtsListagem;
grdListagem.Options:=[dgTitles,dgIndicator
,dgColumnResize,dgColLines,dgRowLines,dgTabs
,dgRowSelect,dgAlwaysShowSelection,dgCancelOnExit
,dgTitleClick,dgTitleHotTrack]
end;

procedure TfrmTelaheranca.FormShow(Sender: TObject);
begin
if (QryListagem.SQL.Text<>EmptyStr) then
begin
     QryListagem.IndexFieldNames:=IndiceAtual;
     ExibirLabelIndice(IndiceAtual,lblIndice);
     SelectOriginal:=QryListagem.SQL.Text;
     QryListagem.Open;
end;
ControlarIndiceTab(pgcPrincipal,0);
DesabilitarEditPK;
 ControlarBotoes(btnNovo, btnAlterar, btnCancelar,btnGravar
,btnApagar,btnNavigator , pgcPrincipal,True)
end;



procedure TfrmTelaheranca.grdListagemDblClick(Sender: TObject);
begin
    btnAlterar.Click;
end;

procedure TfrmTelaheranca.grdListagemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  BloqueiaCTRL_DEL_DBGRID(Key,Shift);
end;

procedure TfrmTelaheranca.grdListagemTitleClick(Column: TColumn);
begin
IndiceAtual:=Column.FieldName;
QryListagem.IndexFieldNames:=IndiceAtual;
//lblIndice.Caption:= RetornarCampoTraduzido(IndiceAtual);
ExibirLabelIndice(IndiceAtual,lblIndice);
end;

procedure TfrmTelaheranca.mskPesquisarChange(Sender: TObject);
begin
QryListagem.Locate(IndiceAtual,TMaskEdit(Sender).Text,[loPartialKey]);
end;

function  TfrmTelaheranca.RetornarCampoTraduzido(Campo:String):string ;
var I:Integer;
begin
for I := 0 to QryListagem.Fields.Count-1 do
begin
  if LowerCase(QryListagem.Fields[I].FieldName) = LowerCase(Campo) then
  begin
     Result:=QryListagem.Fields[I].DisplayLabel;
  Break;
  end;

end;

end;

{$region  'FUNÇÕES VIRTUAIS}
function TfrmTelaheranca.Apagar: Boolean;
begin
     ShowMessage('Deletado');
end;

function TfrmTelaheranca.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
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
procedure TfrmTelaheranca.ControlarBotoes(btnNovo,btnAlterar,  btnCancelar,
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


 Procedure    TfrmTelaheranca.DesabilitarEditPK;
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

 Procedure    TfrmTelaheranca.LimparEdit;
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

            else if (Components[i] is TDateEdit) then
            TDateEdit(Components[i]).Date:=0 ;
     end;
end;

function  TfrmTelaheranca.ExisteCampoObrigatorio:Boolean;
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

procedure TfrmTelaheranca.ControlarIndiceTab(pgcPrincipal:TPageControl;Indice: Integer) ;
begin
      if (pgcPrincipal.Pages[Indice].TabVisible) then
      pgcPrincipal.TabIndex:=Indice;
end;

procedure    TfrmTelaheranca.ExibirLabelIndice(Campo:string; aLabel:Tlabel);
begin
     aLabel.Caption:=RetornarCampoTraduzido(Campo);
end;

procedure    TfrmTelaheranca.BloqueiaCTRL_DEL_DBGRID(var Key: Word; Shift:TShiftState);
begin
    if (Shift = [ssCtrl])and (Key = 46)or  (Key = 17) then
       Key:=0;
end;

{$endregion}


end.
