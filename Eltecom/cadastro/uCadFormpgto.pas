unit uCadFormpgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHerancaEntidade, Data.DB, Entidade.FormaPagamento,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.ExtCtrls, SimpleDAO,SimpleInterface  ,uEnum
  ,SimpleQueryFiredac,System.Generics.Collections ;

type
  TfrmCadFormpgto = class(TfrmTelaHerancaEntidade)
    lbledtCodigo: TLabeledEdit;
    lbledtDescricao: TLabeledEdit;
    procedure btnApagarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
  private
  DAOFormapgto: iSimpleDAO<TFORMA_PAGAMENTO>;
  function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
    function Listar: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadFormpgto: TfrmCadFormpgto;

implementation

uses
  uPrincipal, uDTMConexao;

{$R *.dfm}

procedure TfrmCadFormpgto.btnAlterarClick(Sender: TObject);
begin
  inherited;
  lbledtCodigo.Text := dsListagem.DataSet.FieldByName('ID').AsString;
  lbledtDescricao.Text := dsListagem.DataSet.FieldByName('DESCRICAO').AsString;
end;

procedure TfrmCadFormpgto.btnApagarClick(Sender: TObject);
begin
  inherited;
Listar;
end;

procedure TfrmCadFormpgto.btnCancelarClick(Sender: TObject);
begin
  inherited;
Listar;
end;

procedure TfrmCadFormpgto.dsListagemDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  lbledtCodigo.Text := dsListagem.DataSet.FieldByName('ID').AsString;
  lbledtDescricao.Text := dsListagem.DataSet.FieldByName('DESCRICAO').AsString;
end;

procedure TfrmCadFormpgto.FormCreate(Sender: TObject);
begin
  inherited;
   DAOFormapgto:= TSimpleDAO<TFORMA_PAGAMENTO>
   .New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(dsListagem);
   Listar;
end;

function TfrmCadFormpgto.Listar: string;
var
  tipos : TList<TFORMA_PAGAMENTO>;
  tipo : TFORMA_PAGAMENTO;
begin
  tipos := DAOFormapgto.SQL.OrderBy('ID').&End.Find;
   dbgrdListagem.Columns[0].Title.Caption:='Código';
   dbgrdListagem.Columns[1].Title.Caption:='Nome';
   dbgrdListagem.Columns[1].Width:=100;
end;

function TfrmCadFormpgto.Apagar: Boolean;
var
  tipo : TFORMA_PAGAMENTO;
begin
if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    lbledtCodigo.Text + #13 + 'Descrição: ' + lbledtDescricao.Text,
    mtConfirmation, [mbYes, mbNo], 0) = mrNO then
  begin
    Result:=False;
    Abort;
  end;
  tipo := TFORMA_PAGAMENTO.Create;
  TRY
    tipo.ID := StrToInt(lbledtCodigo.Text);
    DAOFormapgto.Delete(tipo);
  finally
  Result:=true;
    tipo.Free;
  end;

end;

function TfrmCadFormpgto.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
var
  tipo : TFORMA_PAGAMENTO;
begin
  tipo := TFORMA_PAGAMENTO.Create;

  if lbledtCodigo.Text <>EmptyStr then  begin

    try
    tipo.ID := StrToInt(lbledtCodigo.Text);
    tipo.DESCRICAO := lbledtDescricao.Text;
    DAOFormapgto.Update(tipo);
    finally
    Result :=true;
    tipo.Free;
    Listar;
  end;
  end else begin

   try
    tipo.DESCRICAO := lbledtDescricao.Text;
    DAOFormapgto.Insert(tipo);
    finally
    Result :=true;
    tipo.Free;
    Listar;
  end;
  end;


end;

end.
