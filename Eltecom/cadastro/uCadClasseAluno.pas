unit uCadClasseAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,  uDTMConexao,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,uEnum,cCadClasseAluno;

type
  TfrmCadClasseAluno = class(TfrmTelaheranca)
    QryListagemcodigo: TIntegerField;
    QryListagemcod_aluno: TIntegerField;
    QryListagemaluno: TStringField;
    QryListagemcod_classe: TIntegerField;
    QryListagemclasse: TStringField;
    lbledtCodigo: TLabeledEdit;
    dblkcbbPessoa: TDBLookupComboBox;
    lbl2: TLabel;
    dblkcbbClasse: TDBLookupComboBox;
    lbl3: TLabel;
    fdqryClasses: TFDQuery;
    dsClasses: TDataSource;
    fdqryPessoas: TFDQuery;
    fdtncfldPessoascod_pessoa: TFDAutoIncField;
    strngfldPessoasnome_pessoa: TStringField;
    dsPessoas: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
    oClasseAluno: TClasseAluno;
    function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;

  public
    { Public declarations }
  end;
var
  frmCadClasseAluno: TfrmCadClasseAluno;

implementation

{$R *.dfm}

{ TfrmCadClasseAluno }

function TfrmCadClasseAluno.Apagar: Boolean;
begin
  if oClasseAluno.Selecionar(QryListagem.FieldByName('codigo').AsInteger) then
      Result:=oClasseAluno.Apagar;
end;

procedure TfrmCadClasseAluno.btnAlterarClick(Sender: TObject);
begin
  inherited;
if oClasseAluno.Selecionar(QryListagem.FieldByName('codigo').AsInteger) then
  begin
    lbledtCodigo.Text    := IntToStr(oClasseAluno.codigo);
    dblkcbbPessoa.KeyValue:= oClasseAluno.cod_aluno;
    dblkcbbClasse.KeyValue:= oClasseAluno.cod_classe;
    dblkcbbPessoa.Enabled:=false;
    end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;
end;

procedure TfrmCadClasseAluno.btnNovoClick(Sender: TObject);
begin
  inherited;
dblkcbbPessoa.Enabled:=True;
end;

procedure TfrmCadClasseAluno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
fdqryClasses.Close;
fdqryPessoas.Close;
if Assigned(oClasseAluno) then
    FreeAndNil(oClasseAluno);
end;

procedure TfrmCadClasseAluno.FormCreate(Sender: TObject);
begin
  inherited;
fdqryClasses.Open;
fdqryPessoas.Open;
  oClasseAluno:= TClasseAluno.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual:='codigo';
end;

function TfrmCadClasseAluno.Gravar(
  EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
if lbledtCodigo.Text<>EmptyStr then
       oClasseAluno.codigo:=StrToInt(lbledtCodigo.Text)
       else
       oClasseAluno.codigo :=0;
       oClasseAluno.cod_classe:= dblkcbbClasse.KeyValue;
       oClasseAluno.classe:=dblkcbbClasse.Text;
       oClasseAluno.cod_aluno:= dblkcbbPessoa.KeyValue;
       oClasseAluno.Aluno:=dblkcbbPessoa.Text;
       oClasseAluno.cod_congregacao   := dtmPrincipal.congAtiva;
           if (EstadodoCadastro=ecInserir) then
    Result:=oClasseAluno.Inserir
    else if (EstadodoCadastro=ecAlterar) then
     Result:=oClasseAluno.Atualizar;
     dblkcbbPessoa.Enabled:=True;
end;

end.
