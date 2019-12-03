unit uCadFuncao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,uDTMConexao,cCadFuncao,uEnum;

type
  TfrmCadFuncao = class(TfrmTelaheranca)
    fdtncfldQryListagemcod_funcao: TFDAutoIncField;
    strngfldQryListagemfuncao: TStringField;
    intgrfldQryListagemcod_departamento: TIntegerField;
    strngfldQryListagemnome_departamento: TStringField;
    lbledtCodigo: TLabeledEdit;
    lbledtFuncao: TLabeledEdit;
    dblkcbbDepartamento: TDBLookupComboBox;
    lbl2: TLabel;
    dsDepartamentos: TDataSource;
    procedure btnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdListagemTitleClick(Column: TColumn);
  private
    { Private declarations }
    oFuncao: TFuncao;
    function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadFuncao: TfrmCadFuncao;

implementation


{$R *.dfm}

{$REGION 'Override'}
function TfrmCadFuncao.Apagar: Boolean;
begin
if oFuncao.Selecionar(QryListagem.FieldByName('cod_funcao').AsInteger) then
      Result:=oFuncao.Apagar;
end;


function TfrmCadFuncao.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
    if lbledtCodigo.Text<>EmptyStr then
       oFuncao.cod_funcao:=StrToInt(lbledtCodigo.Text)
       else
       oFuncao.cod_funcao :=0;
       oFuncao.funcao:=lbledtFuncao.Text;
       oFuncao.cod_departamento:= dblkcbbDepartamento.KeyValue;
       oFuncao.nome_departamento:=   dblkcbbDepartamento.Text;


    if (EstadodoCadastro=ecInserir) then
    Result:=oFuncao.Inserir
    else if (EstadodoCadastro=ecAlterar) then
     Result:=oFuncao.Atualizar;

end;


procedure TfrmCadFuncao.grdListagemTitleClick(Column: TColumn);
begin
  inherited;

end;

{$endregion}

procedure TfrmCadFuncao.btnAlterarClick(Sender: TObject);
begin
if oFuncao.Selecionar(QryListagem.FieldByName('cod_funcao').AsInteger) then
  begin
    lbledtCodigo.Text    := IntToStr(oFuncao.cod_funcao);
    lbledtFuncao.Text       := oFuncao.funcao;
    dblkcbbDepartamento.KeyValue  :=oFuncao.cod_departamento;
    end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;

procedure TfrmCadFuncao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if Assigned(oFuncao) then
    FreeAndNil(oFuncao);
end;

procedure TfrmCadFuncao.FormCreate(Sender: TObject);
begin
  inherited;
  oFuncao:= TFuncao.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual:='cod_funcao';
   dtmPrincipal.fdqryDepartamentos.Open;
end;

end.
