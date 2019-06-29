unit uCadFuncaoPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,uEnum,  uDTMConexao,cCadFuncaoPessoa;

type
  TfrmCadFuncaoPessoa = class(TfrmTelaheranca)
    dblkcbbPessoa: TDBLookupComboBox;
    lbl2: TLabel;
    lbledtCodDeptpessoa: TLabeledEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    dblkcbbFuncao: TDBLookupComboBox;
    dblkcbbSitucao: TDBLookupComboBox;
    dsFuncoes: TDataSource;
    fdqryFuncoes: TFDQuery;
    dsPessoas: TDataSource;
    fdqryPessoas: TFDQuery;
    dsSituacao: TDataSource;
    fdqrySituacao: TFDQuery;
    fdtncfldQryListagemcod_func_pessoa: TFDAutoIncField;
    intgrfldQryListagemcod_funcao: TIntegerField;
    strngfldQryListagemnome_funcao: TStringField;
    intgrfldQryListagemcod_pessoa: TIntegerField;
    strngfldQryListagemnome_pessoa: TStringField;
    dtmfldQryListagemdta_inclusao: TDateTimeField;
    strngfldQryListagemstatus: TStringField;
    dtmfldQryListagemdta_alteracao: TDateTimeField;
    strngfldQryListagemusuario_inclusao: TStringField;
    strngfldQryListagemusuario_alteracao: TStringField;
    btnImprimir: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
        oFuncaoPessoa: TFuncaoPessoa;
    function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadFuncaoPessoa: TfrmCadFuncaoPessoa;

implementation

uses
  uDTMRelatorio;


{$R *.dfm}

{$REGION 'Override'}
function TfrmCadFuncaoPessoa.Apagar: Boolean;
begin
if oFuncaoPessoa.Selecionar(QryListagem.FieldByName('cod_func_pessoa').AsInteger) then
Result:=oFuncaoPessoa.Apagar;
end;


function TfrmCadFuncaoPessoa.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
    if lbledtCodDeptpessoa.Text<>EmptyStr then
       oFuncaoPessoa.cod_func_pessoa:=StrToInt(lbledtCodDeptpessoa.Text)
       else
       oFuncaoPessoa.cod_func_pessoa :=0;
       oFuncaoPessoa.cod_funcao := dblkcbbFuncao.KeyValue;
       oFuncaoPessoa.nome_funcao:= dblkcbbFuncao.Text;
       oFuncaoPessoa.cod_pessoa:= dblkcbbPessoa.KeyValue;
       oFuncaoPessoa.nome_pessoa:=dblkcbbPessoa.Text;
       oFuncaoPessoa.status:= dblkcbbSitucao.KeyValue;
    if (EstadodoCadastro=ecInserir) then
    Result:=oFuncaoPessoa.Inserir
    else if (EstadodoCadastro=ecAlterar) then
     Result:=oFuncaoPessoa.Atualizar;

end;

{$endregion}
procedure TfrmCadFuncaoPessoa.btnAlterarClick(Sender: TObject);
begin
if oFuncaoPessoa.Selecionar(QryListagem.FieldByName('cod_func_pessoa').AsInteger) then
  begin
    lbledtCodDeptpessoa.Text    := IntToStr(oFuncaoPessoa.cod_func_pessoa);
    dblkcbbPessoa.KeyValue:= oFuncaoPessoa.cod_pessoa;
    dblkcbbFuncao.KeyValue:= oFuncaoPessoa.cod_funcao;
    dblkcbbSitucao.KeyValue:=oFuncaoPessoa.status;

    end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;

procedure TfrmCadFuncaoPessoa.btnImprimirClick(Sender: TObject);
begin
  inherited;
 dtmRelatorio.fdqryCargosPessoas.Close;
  dtmRelatorio.fdqryCargosPessoas.open;

  dtmRelatorio.frxrprtCargosPessoas.ReportOptions.Name :=
    'Visualização de Impressão: Relação de Cargos:2019';
    dtmRelatorio.frxrprtCargosPessoas.PrepareReport(True);
    dtmRelatorio.frxrprtCargosPessoas.ShowReport();
end;

procedure TfrmCadFuncaoPessoa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
fdqryPessoas.close;
fdqryFuncoes.close;
if Assigned(oFuncaoPessoa) then
    FreeAndNil(oFuncaoPessoa);
end;


procedure TfrmCadFuncaoPessoa.FormCreate(Sender: TObject);
begin
  inherited;
fdqryPessoas.Open;
fdqryFuncoes.Open;
  oFuncaoPessoa:= TFuncaoPessoa.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual:='cod_func_pessoa';
end;

end.
