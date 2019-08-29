unit uCadClasseProfessor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,  uDTMConexao,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,uEnum,cCadClasseProfessor;

type
  TfrmCadClasseProfessor = class(TfrmTelaheranca)
    dblkcbbPessoa: TDBLookupComboBox;
    lbledtCodigo: TLabeledEdit;
    lbl2: TLabel;
    dblkcbbClasse: TDBLookupComboBox;
    lbl3: TLabel;
    fdqryClasses: TFDQuery;
    dsClasses: TDataSource;
    fdqryPessoas: TFDQuery;
    fdtncfldPessoascod_pessoa: TFDAutoIncField;
    strngfldPessoasnome_pessoa: TStringField;
    dsPessoas: TDataSource;
    fdtncfldQryListagemcodigo: TFDAutoIncField;
    intgrfldQryListagemcod_professor: TIntegerField;
    strngfldQryListagemprofessor: TStringField;
    intgrfldQryListagemcod_classe: TIntegerField;
    strngfldQryListagemclasse: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarClick(Sender: TObject);
      private
    { Private declarations }
    oClasseProfessor: TClasseProfessor;
    function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadClasseProfessor: TfrmCadClasseProfessor;

implementation

{$R *.dfm}

{ TfrmCadClasseProfessor }

function TfrmCadClasseProfessor.Apagar: Boolean;
begin
  if oClasseProfessor.Selecionar(QryListagem.FieldByName('codigo').AsInteger) then
      Result:=oClasseProfessor.Apagar;
end;

procedure TfrmCadClasseProfessor.btnAlterarClick(Sender: TObject);
begin
  inherited;
if oClasseProfessor.Selecionar(QryListagem.FieldByName('codigo').AsInteger) then
  begin
    lbledtCodigo.Text    := IntToStr(oClasseProfessor.codigo);
    dblkcbbPessoa.KeyValue:= oClasseProfessor.cod_professor;
    dblkcbbClasse.KeyValue:= oClasseProfessor.cod_classe;
    end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
end;

procedure TfrmCadClasseProfessor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
fdqryClasses.Close;
fdqryPessoas.Close;
if Assigned(oClasseProfessor) then
    FreeAndNil(oClasseProfessor);
end;

procedure TfrmCadClasseProfessor.FormCreate(Sender: TObject);
begin
  inherited;
fdqryClasses.Open;
fdqryPessoas.Open;
  oClasseProfessor:= TClasseProfessor.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual:='codigo';
end;

function TfrmCadClasseProfessor.Gravar(
  EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
 if lbledtCodigo.Text<>EmptyStr then
       oClasseProfessor.codigo:=StrToInt(lbledtCodigo.Text)
       else
       oClasseProfessor.codigo :=0;
       oClasseProfessor.cod_classe:= dblkcbbClasse.KeyValue;
       oClasseProfessor.classe:=dblkcbbClasse.Text;
       oClasseProfessor.cod_professor:= dblkcbbPessoa.KeyValue;
       oClasseProfessor.professor:=dblkcbbPessoa.Text;
       oClasseProfessor.cod_congregacao   := dtmPrincipal.congAtiva;
           if (EstadodoCadastro=ecInserir) then
    Result:=oClasseProfessor.Inserir
    else if (EstadodoCadastro=ecAlterar) then
     Result:=oClasseProfessor.Atualizar;
end;

end.
