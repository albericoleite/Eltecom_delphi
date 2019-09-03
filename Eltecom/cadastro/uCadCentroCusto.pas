unit uCadCentroCusto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,Entidade.CentroCusto,  SimpleDAO,SimpleInterface,
  Vcl.Grids, Vcl.DBGrids,SimpleQueryFiredac,System.Generics.Collections,Entidade.TipoCentroCusto,
  Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TfrmCadCentroCusto = class(TForm)
    pnlRodape: TPanel;
    dbnvgrNavigator: TDBNavigator;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnApagar: TBitBtn;
    btnFechar: TBitBtn;
    btnGravar: TBitBtn;
    dbgrd1: TDBGrid;
    lbledtCodigo: TLabeledEdit;
    lbledtDescricao: TLabeledEdit;
    btnBuscar: TBitBtn;
    ds1: TDataSource;
    dblkcbbTipo: TDBLookupComboBox;
    lbl1: TLabel;
    dsTipo: TDataSource;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure ds1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
     DAOCentrocusto  :iSimpleDAO<TCENTRO_CUSTO>;
     DAOTipocentrocusto  :iSimpleDAO<TTIPO_CENTRO_CUSTO>;
  public
    { Public declarations }
  end;

var
  frmCadCentroCusto: TfrmCadCentroCusto;

implementation
uses
  uDTMConexao;

{$R *.dfm}

procedure TfrmCadCentroCusto.btnAlterarClick(Sender: TObject);
begin
lbledtDescricao.Enabled:=true;
lbledtDescricao.SetFocus;
end;

procedure TfrmCadCentroCusto.btnApagarClick(Sender: TObject);
var
  tipo : TCENTRO_CUSTO;
begin

if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    lbledtCodigo.Text + #13 + 'Descrição: ' + lbledtDescricao.Text,
    mtConfirmation, [mbYes, mbNo], 0) = mrNO then
  begin
    Abort;
  end;
  tipo := TCENTRO_CUSTO.Create;
  TRY
    tipo.ID := StrToInt(lbledtCodigo.Text);
    DAOCentrocusto.Delete(tipo);
  finally
    tipo.Free;
   btnBuscarClick(nil);
  end;

end;

procedure TfrmCadCentroCusto.btnBuscarClick(Sender: TObject);
var
  tipos : TList<TCENTRO_CUSTO>;
  tipo : TCENTRO_CUSTO;
begin
  tipos := DAOCentrocusto.SQL.OrderBy('ID').&End.Find;
  dbgrd1.Columns[0].Title.Caption:='Código';
   dbgrd1.Columns[1].Title.Caption:='Descrição';
   dbgrd1.Columns[2].Title.Caption:='Cod. Tipo';

end;

procedure TfrmCadCentroCusto.btnCancelarClick(Sender: TObject);
begin
lbledtDescricao.Enabled:=false;
end;

procedure TfrmCadCentroCusto.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TfrmCadCentroCusto.btnGravarClick(Sender: TObject);
var
  tipo : TCENTRO_CUSTO;
begin
  tipo := TCENTRO_CUSTO.Create;

  if lbledtCodigo.Text <>'' then  begin

    try
    tipo.ID := StrToInt(lbledtCodigo.Text);
    tipo.DESCRICAO := lbledtDescricao.Text;
    tipo.ID_TIPO_CC :=dblkcbbTipo.KeyValue;
    DAOCentrocusto.Update(tipo);
    finally
    tipo.Free;
    btnBuscarClick(nil);
  end;
  end else begin

   try
    tipo.DESCRICAO := lbledtDescricao.Text;
    tipo.ID_TIPO_CC :=dblkcbbTipo.KeyValue;
    DAOCentrocusto.Insert(tipo);
    finally
    tipo.Free;
    btnBuscarClick(nil);
  end;
  end;
   lbledtDescricao.Enabled:=false;


end;

procedure TfrmCadCentroCusto.btnNovoClick(Sender: TObject);
begin
lbledtCodigo.Clear;
lbledtDescricao.Clear;
lbledtDescricao.Enabled:=true;
lbledtDescricao.SetFocus;
end;

procedure TfrmCadCentroCusto.ds1DataChange(Sender: TObject; Field: TField);
begin
  lbledtCodigo.Text := ds1.DataSet.FieldByName('ID').AsString;
  lbledtDescricao.Text := ds1.DataSet.FieldByName('DESCRICAO').AsString;
  dblkcbbTipo.KeyValue:=  ds1.DataSet.FieldByName('ID_TIPO_CC').AsInteger;
end;

procedure TfrmCadCentroCusto.FormCreate(Sender: TObject);
 var
  tipos : TList<TTIPO_CENTRO_CUSTO>;
  tipo : TTIPO_CENTRO_CUSTO;

begin

    DAOTipocentrocusto := TSimpleDAO<TTIPO_CENTRO_CUSTO>
   .New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(dsTipo);
   tipos := DAOTipocentrocusto.SQL.OrderBy('ID').&End.Find;
   dblkcbbTipo.ListSource:= dsTipo;
   dblkcbbTipo.ListField:= 'DESCRICAO';
   dblkcbbTipo.KeyField := 'ID';

   DAOCentrocusto := TSimpleDAO<TCENTRO_CUSTO>
   .New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(ds1);
   btnBuscarClick(nil);

end;

end.
