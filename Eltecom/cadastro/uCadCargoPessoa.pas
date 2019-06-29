unit uCadCargoPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cCadCargoPessoa,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,uEnum,  uDTMConexao, cCadDepartPessoa;

type
  TfrmCadCargoPessoa = class(TfrmTelaheranca)
    lbledtCodDeptpessoa: TLabeledEdit;
    dblkcbbPessoa: TDBLookupComboBox;
    lbl2: TLabel;
    lbl1: TLabel;
    lbl3: TLabel;
    fdqryPessoas: TFDQuery;
    dsPessoas: TDataSource;
    dsCargos: TDataSource;
    fdqryCargos: TFDQuery;
    lbl4: TLabel;
    dsSituacao: TDataSource;
    fdqrySituacao: TFDQuery;
    fdtncfldCargoscod_cargo: TFDAutoIncField;
    strngfldCargoscargo: TStringField;
    QryListagemCOD_MEMBRO: TIntegerField;
    QryListagemNOME: TStringField;
    QryListagemCOD_CARGO: TIntegerField;
    QryListagemCARGO: TStringField;
    dblkcbbCargo: TDBLookupComboBox;
    dblkcbbSitucao: TDBLookupComboBox;
    QryListagemCOD_CARG_PESSOA: TIntegerField;
    QryListagemSTATUS: TStringField;
    QryListagemCOD_CONGREGACAO: TIntegerField;
    btnImprimir: TBitBtn;
    procedure btnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    oCargoPessoa: TCargoPessoa;
    function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadCargoPessoa: TfrmCadCargoPessoa;

implementation

uses
  uEmissaoDocumentos, uDTMRelatorio;


{$R *.dfm}

{$REGION 'Override'}
function TfrmCadCargoPessoa.Apagar: Boolean;
begin
if oCargoPessoa.Selecionar(QryListagem.FieldByName('cod_carg_pessoa').AsInteger) then
      Result:=oCargoPessoa.Apagar;
       fdqryPessoas.Refresh;
end;


function TfrmCadCargoPessoa.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
    if lbledtCodDeptpessoa.Text<>EmptyStr then
       oCargoPessoa.cod_carg_pessoa:=StrToInt(lbledtCodDeptpessoa.Text)
       else
       oCargoPessoa.cod_carg_pessoa :=0;
       oCargoPessoa.cod_cargo := dblkcbbCargo.KeyValue;
       oCargoPessoa.cargo:= dblkcbbCargo.Text;
       oCargoPessoa.cod_membro:= dblkcbbPessoa.KeyValue;
       oCargoPessoa.nome:=dblkcbbPessoa.Text;
       oCargoPessoa.status:= dblkcbbSitucao.KeyValue;
       oCargoPessoa.cod_congregacao:=dtmPrincipal.congAtiva;
    if (EstadodoCadastro=ecInserir) then
    Result:=oCargoPessoa.Inserir
    else if (EstadodoCadastro=ecAlterar) then
     Result:=oCargoPessoa.Atualizar;
   fdqryPessoas.Refresh;
end;

{$endregion}

procedure TfrmCadCargoPessoa.btnAlterarClick(Sender: TObject);
begin
if oCargoPessoa.Selecionar(QryListagem.FieldByName('cod_carg_pessoa').AsInteger) then
  begin
    lbledtCodDeptpessoa.Text    := IntToStr(oCargoPessoa.cod_carg_pessoa);
    dblkcbbPessoa.KeyValue:= oCargoPessoa.cod_membro;
    dblkcbbCargo.KeyValue:= oCargoPessoa.cod_cargo;
    dblkcbbSitucao.KeyValue:=oCargoPessoa.status;

    end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;

procedure TfrmCadCargoPessoa.btnImprimirClick(Sender: TObject);
begin
  inherited;
  dtmRelatorio.fdqryCargosPessoas.Close;
  dtmRelatorio.fdqryCargosPessoas.open;

  dtmRelatorio.frxrprtCargosPessoas.ReportOptions.Name :=
    'Visualização de Impressão: Relação de Cargos:2019';
    dtmRelatorio.frxrprtCargosPessoas.PrepareReport(True);
    dtmRelatorio.frxrprtCargosPessoas.ShowReport();
end;

procedure TfrmCadCargoPessoa.btnNovoClick(Sender: TObject);
begin
  inherited;
dblkcbbSitucao.ListFieldIndex:=1;
end;

procedure TfrmCadCargoPessoa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
fdqryPessoas.close;
fdqryCargos.close;
if Assigned(oCargoPessoa) then
    FreeAndNil(oCargoPessoa);
end;

procedure TfrmCadCargoPessoa.FormCreate(Sender: TObject);
begin
  inherited;
fdqryPessoas.Open;
fdqryCargos.Open;
QryListagem.Close;
QryListagem.ParamByName('COD_CONGREGACAO').AsInteger:= dtmPrincipal.congAtiva;
QryListagem.open;
  oCargoPessoa:= TCargoPessoa.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual:='cod_membro';
end;

end.
