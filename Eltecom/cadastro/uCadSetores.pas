unit uCadSetores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Buttons,cCadSetores,uDTMConexao,uEnum;

type
  TfrmCadSetores = class(TfrmTelaheranca)
    QryListagemcod_setor: TFDAutoIncField;
    QryListagemsetor: TStringField;
    edtcod_setor: TLabeledEdit;
    edtsetor: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
    oSetor:TSetor;
        function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadSetores: TfrmCadSetores;

implementation

{$R *.dfm}

{$region 'Override'}
function TfrmCadSetores.Apagar: Boolean;
begin
if oSetor.Selecionar(QryListagem.FieldByName('cod_setor').AsInteger) then
      Result:=oSetor.Apagar;
end;

function TfrmCadSetores.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
    if edtcod_setor.Text<>EmptyStr then
       oSetor.codigo:=StrToInt(edtcod_setor.Text)
       else
       oSetor.codigo:=0;
       oSetor.descricao:=edtsetor.Text;

    if (EstadodoCadastro=ecInserir) then
    Result:=oSetor.Inserir
    else if (EstadodoCadastro=ecAlterar) then
     Result:=oSetor.Atualizar;

end;
{$endregion}

procedure TfrmCadSetores.btnAlterarClick(Sender: TObject);
begin
if oSetor.Selecionar(QryListagem.FieldByName('cod_setor').AsInteger) then
     begin
     edtcod_setor.Text:= IntToStr(oSetor.codigo);
     edtsetor.Text:=oSetor.descricao;
     end
     else begin
     btnCancelar.Click;
     Abort;
     end;
  inherited;

end;

procedure TfrmCadSetores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if Assigned(oSetor) then
     FreeAndNil(oSetor);
end;

procedure TfrmCadSetores.FormCreate(Sender: TObject);
begin
  inherited;
  oSetor:=TSetor.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual:='setor';
end;



end.
