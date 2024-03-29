unit uCadDepartPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,uEnum,  uDTMConexao, cCadDepartPessoa;

type
  TfrmCadDepartPessoa = class(TfrmTelaheranca)
    lbledtCodDeptpessoa: TLabeledEdit;
    dblkcbbPessoa: TDBLookupComboBox;
    lbl2: TLabel;
    lbl1: TLabel;
    lbl3: TLabel;
    fdqryPessoas: TFDQuery;
    dsPessoas: TDataSource;
    dsDepartamentos: TDataSource;
    fdqryDepartamentos: TFDQuery;
    lbl4: TLabel;
    dsSituacao: TDataSource;
    fdqrySituacao: TFDQuery;
    fdtncfldPessoascod_pessoa: TFDAutoIncField;
    strngfldPessoasnome_pessoa: TStringField;
    fdtncfldQryListagemcod_dept_pessoa: TFDAutoIncField;
    intgrfldQryListagemcod_departamento: TIntegerField;
    strngfldQryListagemnome_departamento: TStringField;
    intgrfldQryListagemcod_pessoa: TIntegerField;
    strngfldQryListagemnome_pessoa: TStringField;
    dtmfldQryListagemdta_inclusao: TDateTimeField;
    dtmfldQryListagemdta_alteracao: TDateTimeField;
    strngfldQryListagemstatus: TStringField;
    strngfldQryListagemusuario_inclusao: TStringField;
    strngfldQryListagemusuario_alteracao: TStringField;
    dblkcbbSitucao: TDBLookupComboBox;
    dblkcbbDepartamento: TDBLookupComboBox;
    procedure btnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    oDepartPessoa: TDepartPessoa;
    function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadDepartPessoa: TfrmCadDepartPessoa;

implementation


{$R *.dfm}

{$REGION 'Override'}
function TfrmCadDepartPessoa.Apagar: Boolean;
begin
if oDepartPessoa.Selecionar(QryListagem.FieldByName('cod_dept_pessoa').AsInteger) then
      Result:=oDepartPessoa.Apagar;
end;


function TfrmCadDepartPessoa.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
    if lbledtCodDeptpessoa.Text<>EmptyStr then
       oDepartPessoa.cod_dept_pessoa:=StrToInt(lbledtCodDeptpessoa.Text)
       else
       oDepartPessoa.cod_dept_pessoa :=0;
       oDepartPessoa.cod_departamento := dblkcbbDepartamento.KeyValue;
       oDepartPessoa.nome_departamento:= dblkcbbDepartamento.Text;
       oDepartPessoa.cod_pessoa:= dblkcbbPessoa.KeyValue;
       oDepartPessoa.nome_pessoa:=dblkcbbPessoa.Text;
       oDepartPessoa.status:= dblkcbbSitucao.KeyValue;
    if (EstadodoCadastro=ecInserir) then
    Result:=oDepartPessoa.Inserir
    else if (EstadodoCadastro=ecAlterar) then
     Result:=oDepartPessoa.Atualizar;

end;

{$endregion}

procedure TfrmCadDepartPessoa.btnAlterarClick(Sender: TObject);
begin
if oDepartPessoa.Selecionar(QryListagem.FieldByName('cod_dept_pessoa').AsInteger) then
  begin
    lbledtCodDeptpessoa.Text    := IntToStr(oDepartPessoa.cod_dept_pessoa);
    dblkcbbPessoa.KeyValue:= oDepartPessoa.cod_pessoa;
    dblkcbbDepartamento.KeyValue:= oDepartPessoa.cod_departamento;
    dblkcbbSitucao.KeyValue:=oDepartPessoa.status;

    end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;

procedure TfrmCadDepartPessoa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
fdqryPessoas.close;
fdqryDepartamentos.close;
fdqrySituacao.close;
if Assigned(oDepartPessoa) then
    FreeAndNil(oDepartPessoa);
end;

procedure TfrmCadDepartPessoa.FormCreate(Sender: TObject);
begin
  inherited;
fdqryPessoas.Open;
fdqryDepartamentos.Open;
fdqrySituacao.Open;
  oDepartPessoa:= TDepartPessoa.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual:='cod_dept_pessoa';
end;

end.
