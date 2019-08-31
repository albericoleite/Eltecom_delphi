unit uCadTipoLancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHerancaEntidade, Data.DB, Entidade.TipoLancamento,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.ExtCtrls,SimpleDAO,SimpleInterface  ,uEnum ,Entidade.TipoCentroCusto
  ,SimpleQueryFiredac,System.Generics.Collections;

type
  TfrmCadTipoLancamento = class(TfrmTelaHerancaEntidade)
    lbledtDescricao: TLabeledEdit;
    lbledtCodigo: TLabeledEdit;
    lbledtID: TLabeledEdit;
    dblkcbbTipoCC: TDBLookupComboBox;
    Label7: TLabel;
    lbl1: TLabel;
    dblkcbbPai: TDBLookupComboBox;
    dsTipoCC: TDataSource;
    dsPai: TDataSource;
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    DAOTipolanc: iSimpleDAO<TTIPO_LANCAMENTO>;
    DAOTipolancp: iSimpleDAO<TTIPO_LANCAMENTO>;
    DAOTipoCC:iSimpleDAO<TTIPO_CENTRO_CUSTO>;
  function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
    function Listar: string;
  public
    { Public declarations }
  end;

var
  frmCadTipoLancamento: TfrmCadTipoLancamento;

implementation
uses
  uPrincipal, uDTMConexao;

{$R *.dfm}

{ TfrmCadTipoLancamento }

function TfrmCadTipoLancamento.Apagar: Boolean;
var
  tipo : TTIPO_LANCAMENTO;
begin
if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    lbledtID.Text + #13 + 'Descrição: ' + lbledtDescricao.Text,
    mtConfirmation, [mbYes, mbNo], 0) = mrNO then
  begin
    Result:=False;
    Abort;
  end;
  tipo := TTIPO_LANCAMENTO.Create;
  TRY
    tipo.ID := StrToInt(lbledtID.Text);
    DAOTipolanc.Delete(tipo);
  finally
  Result:=true;
    tipo.Free;
    Listar;
  end;

end;

procedure TfrmCadTipoLancamento.btnAlterarClick(Sender: TObject);
begin
  inherited;
  lbledtID.Text := dsListagem.DataSet.FieldByName('ID').AsString;
  lbledtCodigo.Text := dsListagem.DataSet.FieldByName('CODIGO').AsString;
  lbledtDescricao.Text := dsListagem.DataSet.FieldByName('DESCRICAO').AsString;
  dblkcbbTipoCC.KeyValue :=  dsListagem.DataSet.FieldByName('ID_TIPO_CENTRO_CUSTO').AsInteger;
  dblkcbbPai.KeyValue:=  dsListagem.DataSet.FieldByName('ID_PAI').AsInteger;
end;

procedure TfrmCadTipoLancamento.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  lbledtID.Text := dsListagem.DataSet.FieldByName('ID').AsString;
  lbledtCodigo.Text := dsListagem.DataSet.FieldByName('CODIGO').AsString;
  lbledtDescricao.Text := dsListagem.DataSet.FieldByName('DESCRICAO').AsString;
  dblkcbbTipoCC.KeyValue :=  dsListagem.DataSet.FieldByName('ID_TIPO_CENTRO_CUSTO').AsInteger;
  dblkcbbPai.KeyValue:=  dsListagem.DataSet.FieldByName('ID_PAI').AsInteger;
end;

procedure TfrmCadTipoLancamento.FormCreate(Sender: TObject);
var
  tipos: TList<TTIPO_CENTRO_CUSTO>;
  tiposc: TList<TTIPO_LANCAMENTO>;
begin
  inherited;
  DAOTipoCC := TSimpleDAO<TTIPO_CENTRO_CUSTO>
  .New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(dsTipoCC);
  tipos := DAOTipoCC.SQL.OrderBy('ID').&End.Find;
  dblkcbbTipoCC.ListSource := dsTipoCC;
  dblkcbbTipoCC.ListField := 'DESCRICAO';
  dblkcbbTipoCC.KeyField := 'ID';

   DAOTipolanc:= TSimpleDAO<TTIPO_LANCAMENTO>
   .New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(dsListagem);

      DAOTipolancp:= TSimpleDAO<TTIPO_LANCAMENTO>
   .New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(dspai);
    tiposc := DAOTipolancp.SQL.OrderBy('ID').&End.Find;
      dblkcbbPai.ListSource := dspai;
  dblkcbbPai.ListField := 'DESCRICAO';
  dblkcbbPai.KeyField := 'ID';
   Listar;
end;

function TfrmCadTipoLancamento.Gravar(
  EstadodoCadastro: TEstadoDoCadastro): Boolean;
var
  tipo : TTIPO_LANCAMENTO;
begin
  tipo := TTIPO_LANCAMENTO.Create;

  if lbledtID.Text <>EmptyStr then  begin

    try
    tipo.ID := StrToInt(lbledtID.Text);
    TIPO.CODIGO:= lbledtCodigo.Text;
    tipo.DESCRICAO := lbledtDescricao.Text;
    tipo.ID_TIPO_CENTRO_CUSTO :=dblkcbbTipoCC.KeyValue;
    tipo.ID_PAI:= dblkcbbPai.KeyValue;
    DAOTipolanc.Update(tipo);
    finally
    Result :=true;
    tipo.Free;
    Listar;
  end;
  end else begin

   try
    tipo.DESCRICAO := lbledtDescricao.Text;
    TIPO.CODIGO:= lbledtCodigo.Text;
    tipo.ID_TIPO_CENTRO_CUSTO :=dblkcbbTipoCC.KeyValue;
    tipo.ID_PAI:= dblkcbbPai.KeyValue;
    DAOTipolanc.Insert(tipo);
    finally
    Result :=true;
    tipo.Free;
    Listar;
  end;
  end;

end;

function TfrmCadTipoLancamento.Listar: string;
var
  tipos : TList<TTIPO_LANCAMENTO>;
  tipo : TTIPO_LANCAMENTO;
begin
  tipos := DAOTipolanc.SQL.OrderBy('ID').&End.Find;
  { dbgrdListagem.Columns[0].Title.Caption:='Id';
   dbgrdListagem.Columns[1].Title.Caption:='Código';
   dbgrdListagem.Columns[2].Title.Caption:='Nome';
   dbgrdListagem.Columns[2].Width:=200; }


end;

end.
