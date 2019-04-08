unit uCadLancamento1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, RxToolEdit, Vcl.Mask, RxCurrEdit, Vcl.Buttons, Vcl.DBCtrls,
  uEnum, cCadLancamento,
  Vcl.ComCtrls;

type
  TfrmCadLancamento1 = class(TForm)
    lbledtCodTalao: TLabeledEdit;
    lbledtDescricao: TLabeledEdit;
    lbl1: TLabel;
    lbl3: TLabel;
    crncydtValor: TCurrencyEdit;
    dtdtData: TDateEdit;
    lbl2: TLabel;
    cbbTipo: TComboBox;
    pnl1: TPanel;
    pnlRodape: TPanel;
    dbnvgrNavigator: TDBNavigator;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnApagar: TBitBtn;
    btnFechar: TBitBtn;
    btnGravar: TBitBtn;
    grpSaidas: TGroupBox;
    dbgrdSaida: TDBGrid;
    grpEntradas: TGroupBox;
    dbgrdEntrada: TDBGrid;
    grpResumo: TGroupBox;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    dbedtTotalEntrada: TDBEdit;
    dbedttotalSaida: TDBEdit;
    edtTotal: TEdit;
    grpPeriodo: TGroupBox;
    lbl8: TLabel;
    btnBuscar: TBitBtn;
    cbbDtPersonalizada: TComboBox;
    dtdtInicio: TDateEdit;
    dtdtFim: TDateEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dtdtInicioChange(Sender: TObject);
    procedure dtdtFimChange(Sender: TObject);
    procedure cbbTipoKeyPress(Sender: TObject; var Key: Char);
    procedure btnGravarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
    oLancamento: TLancamento;
    function Apagar: Boolean;
    function Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
    procedure BloqueiaCTRL_DEL_DBGRID(var Key: Word; Shift: TShiftState);
    procedure ControlarBotoes(btnNovo, btnAlterar, btnCancelar, BtnGravar,
      btnApagar: TBitBtn; btnNavigator: TDBNavigator;
      pgcPrincipal: TPageControl; Flag: Boolean);
    procedure ControlarIndiceTab(pgcPrincipal: TPageControl; Indice: Integer);
    procedure DesabilitarEditPK;
    procedure ExibirLabelIndice(Campo: string; aLabel: Tlabel);
    function ExisteCampoObrigatorio: Boolean;
    procedure LimparEdit;
    function RetornarCampoTraduzido(Campo: String): string;
  public
    { Public declarations }
    EstadoDoCadastro:TEstadoDoCadastro;
  end;

var
  frmCadLancamento1: TfrmCadLancamento1;
  dtainicio, dtafim: string;

implementation

uses
  uDTMTesouraria, uDTMConexao;

{$R *.dfm}
// TODO: CRIAR TELA DE LANÇAMENTO FINANCEIRO

function TfrmCadLancamento1.Apagar: Boolean;
begin
  if oLancamento.Selecionar(dtmTesouraria.fdqryEntradas.FieldByName
    ('cod_entrada').AsInteger) then
    Result := oLancamento.Apagar
end;

function TfrmCadLancamento1.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
  if lbledtCodTalao.Text <> EmptyStr then
    oLancamento.cod_entrada := StrToInt(lbledtCodTalao.Text)
  else
  oLancamento.cod_entrada := 0;
  oLancamento.cod_congregacao := dtmPrincipal.congAtiva;
  oLancamento.cod_entrada := StrToInt(lbledtCodTalao.Text);
  oLancamento.nro_documento := StrToInt(lbledtCodTalao.Text);
  //oLancamento.nome := lbledtNome.Text;
  oLancamento.valor := StrToFloat(crncydtValor.Text);
  oLancamento.dta_movimento := dtdtData.Date;
  oLancamento.tipo := cbbTipo.Text;
  oLancamento.cod_congregacao:= dtmPrincipal.congAtiva;
  //oLancamento.usuario_inclusao:=
  if (EstadodoCadastro = ecInserir) then
    Result := oLancamento.Inserir
  else if (EstadodoCadastro = ecAlterar) then
    Result := oLancamento.Atualizar;

end;

{$ENDREGION}

procedure TfrmCadLancamento1.btnAlterarClick(Sender: TObject);
begin
EstadoDoCadastro:= ecAlterar;
end;

procedure TfrmCadLancamento1.btnApagarClick(Sender: TObject);
begin
try
if (Apagar) then
begin
LimparEdit;
end else begin
 MessageDlg('Erro na Exclução',mtError,[mbOK],0);
end;
finally
     EstadoDoCadastro:=ecEnum;
end;
end;

procedure TfrmCadLancamento1.btnBuscarClick(Sender: TObject);
begin
  try
    dtmTesouraria.fdqryEntradas.close;
    dtmTesouraria.fdqryEntradas.SQL[1] := QuotedStr(dtainicio);
    dtmTesouraria.fdqryEntradas.SQL[3] := QuotedStr(dtafim);
    dtmTesouraria.fdqryEntradas.Open;
  except
    Application.MessageBox('Falha na fdqryTes_Entrada', 'Atenção!');
  end;

  try
    dtmTesouraria.fdqrySaidas.close;
    dtmTesouraria.fdqrySaidas.SQL[1] := QuotedStr(dtainicio);
    dtmTesouraria.fdqrySaidas.SQL[3] := QuotedStr(dtafim);
    dtmTesouraria.fdqrySaidas.Open;
  except
    Application.MessageBox('Falha na fdqryTes_Saida', 'Atenção!');
  end;
end;

procedure TfrmCadLancamento1.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCadLancamento1.btnGravarClick(Sender: TObject);
begin
  if (ExisteCampoObrigatorio) then
    Abort;

try
if Gravar(EstadoDoCadastro) then
begin

         EstadoDoCadastro:= ecEnum;
         LimparEdit;
        // QryListagem.Refresh;
end
else begin
    MessageDlg('Erro na Gravação',mtError,[mbOK],0);
end;

finally

end;
end;

procedure TfrmCadLancamento1.btnNovoClick(Sender: TObject);
begin
  lbledtCodTalao.SetFocus;
  dtdtData.Date := Date;
  cbbTipo.ItemIndex := 0;
 // ControlarBotoes(btnNovo, btnAlterar, btnCancelar,btnGravar
//,btnApagar,btnNavigator , pgcPrincipal,False);
EstadoDoCadastro:= ecInserir;
LimparEdit;
end;

procedure TfrmCadLancamento1.cbbTipoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if cbbTipo.Text <> '' then
    begin
      Key := #0;
      perform(wm_nextdlgctl, 0, 0);
      btnGravar.SetFocus;
    end
    else
    begin
      cbbTipo.SetFocus;
    end;
  end;
end;

procedure TfrmCadLancamento1.dtdtFimChange(Sender: TObject);
begin
  dtafim := FormatDateTime('yyyy-mm-dd', dtdtFim.Date);
end;

procedure TfrmCadLancamento1.dtdtInicioChange(Sender: TObject);
begin
  dtainicio := FormatDateTime('yyyy-mm-dd', dtdtInicio.Date);
end;

procedure TfrmCadLancamento1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // dtmTesouraria.fdqryEntradas.Close;
  // dtmTesouraria.fdqrySaidas.Close;
end;

procedure TfrmCadLancamento1.FormCreate(Sender: TObject);
begin
  // dtmTesouraria.fdqryEntradas.Open;
  // dtmTesouraria.fdqrySaidas.Open;
  dtdtInicio.Date := Date;
  dtdtFim.Date := Date;
end;


{$region  'FUNÇÕES VIRTUAIS}


{$endregion}

{$region 'Funções Principais'}
//Procedimentos de controle de Tela
procedure TfrmCadLancamento1.ControlarBotoes(btnNovo,btnAlterar,  btnCancelar,
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


 Procedure    TfrmCadLancamento1.DesabilitarEditPK;
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

 Procedure    TfrmCadLancamento1.LimparEdit;
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

function  TfrmCadLancamento1.ExisteCampoObrigatorio:Boolean;
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

  end;

end;

procedure TfrmCadLancamento1.ControlarIndiceTab(pgcPrincipal:TPageControl;Indice: Integer) ;
begin
      if (pgcPrincipal.Pages[Indice].TabVisible) then
      pgcPrincipal.TabIndex:=Indice;
end;

procedure    TfrmCadLancamento1.ExibirLabelIndice(Campo:string; aLabel:Tlabel);
begin
     aLabel.Caption:=RetornarCampoTraduzido(Campo);
end;

procedure    TfrmCadLancamento1.BloqueiaCTRL_DEL_DBGRID(var Key: Word; Shift:TShiftState);
begin
    if (Shift = [ssCtrl])and (Key = 46)or  (Key = 17) then
       Key:=0;
end;

function  TfrmCadLancamento1.RetornarCampoTraduzido(Campo:String):string ;
var I:Integer;
begin
//for I := 0 to QryListagem.Fields.Count-1 do
//begin
 // if LowerCase(QryListagem.Fields[I].FieldName) = LowerCase(Campo) then
 // begin
 //    Result:=QryListagem.Fields[I].DisplayLabel;
 // Break;
 // end;

end;


{$endregion}


end.
