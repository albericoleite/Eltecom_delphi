unit uCadProfessor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls ,cCadProfessor,uEnum,uDTMConexao;

type
  TfrmCadProfessor = class(TfrmTelaheranca)
    fdtncfldQryListagemcod_professor: TFDAutoIncField;
    intgrfldQryListagemcod_pessoa: TIntegerField;
    strngfldQryListagemnome: TStringField;
    strngfldQryListagemusuario_cadastro: TStringField;
    sqltmstmpfldQryListagemdta_cadastro: TSQLTimeStampField;
    strngfldQryListagemstatus: TStringField;
    lbledtCodProfessor: TLabeledEdit;
    lbl2: TLabel;
    dblkcbbPessoa: TDBLookupComboBox;
    dblkcbbSitucao: TDBLookupComboBox;
    lbl4: TLabel;
    fdqryPessoas: TFDQuery;
    dsPessoas: TDataSource;
    dsSituacao: TDataSource;
    fdqrySituacao: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
      oProfessor: TProfessor;
    function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadProfessor: TfrmCadProfessor;

implementation

{$R *.dfm}

{ TfrmCadProfessor }

function TfrmCadProfessor.Apagar: Boolean;
begin
   if oProfessor.Selecionar(QryListagem.FieldByName('cod_professor').AsInteger) then
      Result:=oProfessor.Apagar;
end;

procedure TfrmCadProfessor.btnAlterarClick(Sender: TObject);
 begin
if oProfessor.Selecionar(QryListagem.FieldByName('cod_professor').AsInteger) then
  begin
    lbledtCodProfessor.Text    := IntToStr(oProfessor.cod_professor);
    dblkcbbPessoa.KeyValue :=   oProfessor.cod_pessoa;
    dblkcbbSitucao.KeyValue:=oProfessor.status;
    dblkcbbPessoa.Enabled:=false;
    end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;

procedure TfrmCadProfessor.btnGravarClick(Sender: TObject);
begin
  inherited;
fdqryPessoas.Refresh;
end;

procedure TfrmCadProfessor.btnNovoClick(Sender: TObject);
begin
  inherited;
dblkcbbPessoa.Enabled:=True;
end;

procedure TfrmCadProfessor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
fdqryPessoas.Close;
fdqrySituacao.Close;
if Assigned(oProfessor) then
    FreeAndNil(oProfessor);
end;

procedure TfrmCadProfessor.FormCreate(Sender: TObject);
begin
  inherited;
fdqryPessoas.Open;
fdqrySituacao.Open;
  oProfessor:= TProfessor.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual:='cod_professor';
end;

function TfrmCadProfessor.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
  if lbledtCodProfessor.Text<>EmptyStr then
       oProfessor.cod_professor:=StrToInt(lbledtCodProfessor.Text)
       else
       oProfessor.cod_professor :=0;
       oProfessor.cod_pessoa:= dblkcbbPessoa.KeyValue;
       oProfessor.nome:=dblkcbbPessoa.Text;
       oProfessor.status:= dblkcbbSitucao.KeyValue;
    if (EstadodoCadastro=ecInserir) then
    Result:=oProfessor.Inserir
    else if (EstadodoCadastro=ecAlterar) then
     Result:=oProfessor.Atualizar;
   //fdqryPessoas.Refresh;
   dblkcbbPessoa.Enabled:=True;
end;

end.
