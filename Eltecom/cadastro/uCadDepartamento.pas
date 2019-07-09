unit uCadDepartamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
   Vcl.ComCtrls,cCadDepartamento, uEnum,uDTMConexao;

type
  TfrmCadDepartamento = class(TfrmTelaheranca)
    fdtncfldQryListagemcod_departamento: TFDAutoIncField;
    strngfldQryListagemnome_departamento: TStringField;
    lbledtDepartamento: TLabeledEdit;
    lbledtCodigo: TLabeledEdit;
    lbledtSigla: TLabeledEdit;
    QryListagemsigla: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure grdListagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
     oDepartamento: TDepartamento;
    function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadDepartamento: TfrmCadDepartamento;

implementation


{$R *.dfm}

{$REGION 'Override'}
function TfrmCadDepartamento.Apagar: Boolean;
begin
if oDepartamento.Selecionar(QryListagem.FieldByName('cod_departamento').AsInteger) then
      Result:=oDepartamento.Apagar;
end;


function TfrmCadDepartamento.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
    if lbledtCodigo.Text<>EmptyStr then
       oDepartamento.cod_departamento:=StrToInt(lbledtCodigo.Text)
       else
       oDepartamento.cod_departamento :=0;
       oDepartamento.nome_departamento:=lbledtDepartamento.Text;
       oDepartamento.sigla:=lbledtSigla.Text;

    if (EstadodoCadastro=ecInserir) then
    Result:=oDepartamento.Inserir
    else if (EstadodoCadastro=ecAlterar) then
     Result:=oDepartamento.Atualizar;

end;
procedure TfrmCadDepartamento.grdListagemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
BloqueiaCTRL_DEL_DBGRID(Key,Shift);
end;

{$endregion}

procedure TfrmCadDepartamento.btnAlterarClick(Sender: TObject);
begin
if oDepartamento.Selecionar(QryListagem.FieldByName('cod_departamento').AsInteger) then
  begin
    lbledtCodigo.Text    := IntToStr(oDepartamento.cod_departamento);
    lbledtDepartamento.Text       := oDepartamento.nome_departamento;
    lbledtSigla.Text:= oDepartamento.sigla;
    end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;

procedure TfrmCadDepartamento.btnNovoClick(Sender: TObject);
begin
  inherited;
lbledtDepartamento.SetFocus;
end;

procedure TfrmCadDepartamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
if Assigned(oDepartamento) then
    FreeAndNil(oDepartamento);
end;

procedure TfrmCadDepartamento.FormCreate(Sender: TObject);
begin
  inherited;
  oDepartamento:= TDepartamento.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual:='cod_departamento';
end;

end.
