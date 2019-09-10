unit uCadDespesaFixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHerancaEntidade, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.ExtCtrls, SimpleDAO,SimpleInterface  ,uEnum
  ,SimpleQueryFiredac,System.Generics.Collections, Entidade.DespesaFixa,Entidade.Fornecedor,Entidade.TipoLancamento,
  RxCurrEdit, RxToolEdit ;

type
  TfrmCadDespesaFixa = class(TfrmTelaHerancaEntidade)
    lbledtCodigo: TLabeledEdit;
    lbledtDescricao: TLabeledEdit;
    crncydtValor: TCurrencyEdit;
    lbl3: TLabel;
    lbl1: TLabel;
    dblkcbbFornecedor: TDBLookupComboBox;
    lblCultoFornec: TLabel;
    lblTipoGenerico: TLabel;
    dblkcbbTipoDespesa: TDBLookupComboBox;
    dsFornecedor: TDataSource;
    dsTipoDespesa: TDataSource;
    cbbVencimento: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
  private
   DAODespesafixa: iSimpleDAO<TDESPESA_FIXA>;
   DAOFornecedor  :iSimpleDAO<TFORNECEDOR>;
   DAOTipolancamento:iSimpleDAO<TTIPO_LANCAMENTO>;
   function Apagar:Boolean; override;
   function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
   function Listar: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadDespesaFixa: TfrmCadDespesaFixa;

implementation

uses
  uDTMConexao;

{$R *.dfm}

{ TfrmCadDespesaFixa }

function TfrmCadDespesaFixa.Apagar: Boolean;
var
  tipo : TDESPESA_FIXA;
begin
if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    lbledtCodigo.Text + #13 + 'Descrição: ' + lbledtDescricao.Text,
    mtConfirmation, [mbYes, mbNo], 0) = mrNO then
  begin
    Result:=False;
    Abort;
  end;
  tipo := TDESPESA_FIXA.Create;
  TRY
    tipo.ID := StrToInt(lbledtCodigo.Text);
    DAODespesafixa.Delete(tipo);
  finally
  Result:=true;
    tipo.Free;
    Listar;
  end;

end;

procedure TfrmCadDespesaFixa.btnNovoClick(Sender: TObject);
begin
  inherited;
  cbbVencimento.ItemIndex:=0;
lbledtDescricao.SetFocus;
end;

procedure TfrmCadDespesaFixa.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  lbledtCodigo.Text := dsListagem.DataSet.FieldByName('ID').AsString;
  lbledtDescricao.Text := dsListagem.DataSet.FieldByName('DESCRICAO').AsString;
  crncydtValor.Text:= dsListagem.DataSet.FieldByName('VALOR').AsString;
  cbbVencimento.Text:=dsListagem.DataSet.FieldByName('VENCIMENTO').AsString;
  dblkcbbFornecedor.keyvalue :=dsListagem.DataSet.FieldByName('ID_FORNECEDOR').AsInteger;
  dblkcbbTipoDespesa.keyvalue :=dsListagem.DataSet.FieldByName('ID_TIPO_LANCAMENTO').AsInteger;
end;

procedure TfrmCadDespesaFixa.FormCreate(Sender: TObject);
var
fornecedores: TList<TFORNECEDOR>;
tipos: TList<TTIPO_LANCAMENTO>;
begin
  inherited;
   DAODespesafixa:= TSimpleDAO<TDESPESA_FIXA>
   .New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(dsListagem);

      DAOFornecedor:= TSimpleDAO<TFORNECEDOR>
   .New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(dsFornecedor);
     fornecedores := DAOFornecedor.SQL.OrderBy('ID').&End.Find;
     dblkcbbFornecedor.ListSource := dsFornecedor;
  dblkcbbFornecedor.ListField := 'NOMERAZAO';
  dblkcbbFornecedor.KeyField := 'ID';

         DAOTipolancamento:= TSimpleDAO<TTIPO_LANCAMENTO>
   .New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(dsTipoDespesa);
   tipos := DAOTipolancamento.SQL.OrderBy('ID').&End.Find;
     dblkcbbTipoDespesa.ListSource := dsTipoDespesa;
  dblkcbbTipoDespesa.ListField := 'DESCRICAO';
  dblkcbbTipoDespesa.KeyField := 'ID';

  Listar;
end;

function TfrmCadDespesaFixa.Gravar(
  EstadodoCadastro: TEstadoDoCadastro): Boolean;
var
  tipo : TDESPESA_FIXA;
begin
  tipo := TDESPESA_FIXA.Create;

  if lbledtCodigo.Text <>EmptyStr then  begin

    try
    tipo.ID := StrToInt(lbledtCodigo.Text);
    tipo.DESCRICAO := lbledtDescricao.Text;
    tipo.ID_IGREJA:=dtmPrincipal.igrejaAtiva;
    tipo.ID_CONGREGACAO:= dtmPrincipal.congAtiva;
    tipo.ID_FORNECEDOR := dblkcbbFornecedor.KeyValue;;
    tipo.ID_TIPO_LANCAMENTO:= dblkcbbTipoDespesa.keyvalue;
    tipo.VALOR:= StrToFloat(crncydtValor.Text);
    tipo.VENCIMENTO:= StrToInt(cbbVencimento.Text);
    DAODespesafixa.Update(tipo);
    finally
    Result :=true;
    tipo.Free;
    Listar;
  end;
  end else begin

   try
tipo.DESCRICAO := lbledtDescricao.Text;
    tipo.ID_IGREJA:=dtmPrincipal.igrejaAtiva;
    tipo.ID_CONGREGACAO:= dtmPrincipal.congAtiva;
    tipo.ID_FORNECEDOR := dblkcbbFornecedor.KeyValue;;
    tipo.ID_TIPO_LANCAMENTO:= dblkcbbTipoDespesa.keyvalue;
    tipo.VALOR:= StrToFloat(crncydtValor.Text);
    tipo.VENCIMENTO:= StrToInt(cbbVencimento.Text);
    DAODespesafixa.Insert(tipo);
    finally
    Result :=true;
    tipo.Free;
    Listar;
  end;
  end;

end;

function TfrmCadDespesaFixa.Listar: string;
var
  tipos : TList<TDESPESA_FIXA>;
  tipo : TDESPESA_FIXA;
begin
  tipos := DAODespesafixa.SQL.OrderBy('ID').&End.Find;
   {dbgrdListagem.Columns[0].Title.Caption:='Código';
   dbgrdListagem.Columns[1].Title.Caption:='Nome';
   dbgrdListagem.Columns[1].Width:=100;}


dbgrdListagem.Columns.Clear;
dbgrdListagem.Columns.Add;
dbgrdListagem.Columns[0].FieldName := 'ID';
dbgrdListagem.Columns[0].Title.Caption := 'Código';
dbgrdListagem.Columns.Add;
dbgrdListagem.Columns[1].FieldName := 'DESCRICAO';
dbgrdListagem.Columns[1].Title.Caption := 'Descrição';
dbgrdListagem.Columns.Add;
dbgrdListagem.Columns[2].FieldName := 'VENCIMENTO';
dbgrdListagem.Columns[2].Title.Caption := 'Vencimento';
dbgrdListagem.Columns.Add;
dbgrdListagem.Columns[3].FieldName := 'VALOR';
dbgrdListagem.Columns[3].Title.Caption := 'Valor';

end;

end.
