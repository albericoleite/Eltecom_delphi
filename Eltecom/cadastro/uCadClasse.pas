unit uCadClasse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
   Vcl.ComCtrls,cCadClasse, uEnum,uDTMConexao;

type
  TfrmCadClasse = class(TfrmTelaheranca)
    lbledtCodClasse: TLabeledEdit;
    lbledtDescricao: TLabeledEdit;
    lbledtClasse: TLabeledEdit;
    fdtncfldQryListagemcod_classe: TFDAutoIncField;
    strngfldQryListagemclasse: TStringField;
    strngfldQryListagemdescricao: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
     oClasse: TClasse;
    function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadClasse: TfrmCadClasse;

implementation

{$R *.dfm}

{ TfrmCadClasse }

function TfrmCadClasse.Apagar: Boolean;
begin
  if oClasse.Selecionar(QryListagem.FieldByName('cod_classe').AsInteger) then
      Result:=oClasse.Apagar;
end;

function TfrmCadClasse.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
if lbledtCodClasse.Text<>EmptyStr then
       oClasse.cod_classe:=StrToInt(lbledtCodClasse.Text)
       else
       oClasse.cod_classe :=0;
       oClasse.classe:=lbledtClasse.Text;
       oClasse.descricao:=lbledtDescricao.Text;
           if (EstadodoCadastro=ecInserir) then
    Result:=oClasse.Inserir
    else if (EstadodoCadastro=ecAlterar) then
     Result:=oClasse.Atualizar;
end;


procedure TfrmCadClasse.btnAlterarClick(Sender: TObject);
begin
if oClasse.Selecionar(QryListagem.FieldByName('cod_classe').AsInteger) then
  begin
    lbledtCodClasse.Text    := IntToStr(oClasse.cod_classe);
    lbledtDescricao.Text := oClasse.descricao;
    lbledtClasse.Text := oClasse.classe
    end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;

procedure TfrmCadClasse.btnNovoClick(Sender: TObject);
begin
  inherited;
lbledtClasse.SetFocus;
end;

procedure TfrmCadClasse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if Assigned(oClasse) then
    FreeAndNil(oClasse);
end;

procedure TfrmCadClasse.FormCreate(Sender: TObject);
begin
  inherited;
     oClasse:= TClasse.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual:='cod_classe';

end;


end.
