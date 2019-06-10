unit uCadCargo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,uEnum,cCadCargo,uDTMConexao;

type
  TfrmCadCargo = class(TfrmTelaheranca)
    fdtncfldQryListagemcod_cargo: TFDAutoIncField;
    strngfldQryListagemcargo: TStringField;
    lbledtCargo: TLabeledEdit;
    lbledtCodigo: TLabeledEdit;
    intgrfldQryListagemnivel: TIntegerField;
    lbledtNivel: TLabeledEdit;
    procedure btnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdListagemTitleClick(Column: TColumn);
  private
    { Private declarations }
    oCargo: TCargo;
    function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadCargo: TfrmCadCargo;

implementation

{$R *.dfm}

{$REGION 'Override'}
function TfrmCadCargo.Apagar: Boolean;
begin
if oCargo.Selecionar(QryListagem.FieldByName('cod_cargo').AsInteger) then
      Result:=oCargo.Apagar;
end;


function TfrmCadCargo.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
    if lbledtCodigo.Text<>EmptyStr then
       oCargo.cod_cargo:=StrToInt(lbledtCodigo.Text)
       else
       oCargo.cod_cargo :=0;
       oCargo.cargo:=lbledtCargo.Text;
       oCargo.nivel:=StrToInt(lbledtNivel.Text);


    if (EstadodoCadastro=ecInserir) then
    Result:=oCargo.Inserir
    else if (EstadodoCadastro=ecAlterar) then
     Result:=oCargo.Atualizar;

end;


procedure TfrmCadCargo.grdListagemTitleClick(Column: TColumn);
begin
  inherited;

end;

{$endregion}

procedure TfrmCadCargo.btnAlterarClick(Sender: TObject);
begin
if oCargo.Selecionar(QryListagem.FieldByName('cod_cargo').AsInteger) then
  begin
    lbledtCodigo.Text    := IntToStr(oCargo.cod_cargo);
    lbledtCargo.Text       := oCargo.cargo;
    lbledtNivel.Text:=  oCargo.nivel.ToString();
    end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;

procedure TfrmCadCargo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if Assigned(oCargo) then
    FreeAndNil(oCargo);
end;

procedure TfrmCadCargo.FormCreate(Sender: TObject);
begin
  inherited;
  oCargo:= TCargo.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual:='cod_cargo';
end;

end.
