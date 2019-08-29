unit uCadTipoCentroCusto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,Entidade.TipoCentroCusto,  SimpleDAO,SimpleInterface,
  Vcl.Grids, Vcl.DBGrids,SimpleQueryFiredac,System.Generics.Collections,
  Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TfrmTipoCentroCusto = class(TForm)
    dbgrd1: TDBGrid;
    btnBuscar: TBitBtn;
    ds1: TDataSource;
    pnlRodape: TPanel;
    btnNavigator: TDBNavigator;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnApagar: TBitBtn;
    btnFechar: TBitBtn;
    btnGravar: TBitBtn;
    lbledtDescricao: TLabeledEdit;
    lbledtCodigo: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure ds1DataChange(Sender: TObject; Field: TField);
    procedure btnFecharClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    DAOTipocentrocusto  :iSimpleDAO<TTIPO_CENTRO_CUSTO>;
  public
    { Public declarations }
  end;

var
  frmTipoCentroCusto: TfrmTipoCentroCusto;

implementation

uses
  uDTMConexao;

{$R *.dfm}

procedure TfrmTipoCentroCusto.btnAlterarClick(Sender: TObject);
begin
lbledtDescricao.Enabled:=true;
lbledtDescricao.SetFocus;
end;

procedure TfrmTipoCentroCusto.btnApagarClick(Sender: TObject);
var
  tipo : TTIPO_CENTRO_CUSTO;
begin
if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    lbledtCodigo.Text + #13 + 'Descrição: ' + lbledtDescricao.Text,
    mtConfirmation, [mbYes, mbNo], 0) = mrNO then
  begin
    Abort;
  end;


  tipo := TTIPO_CENTRO_CUSTO.Create;
  TRY
    tipo.ID := StrToInt(lbledtCodigo.Text);
    DAOTipocentrocusto.Delete(tipo);
  finally
    tipo.Free;
   btnBuscarClick(nil);
  end;
end;

procedure TfrmTipoCentroCusto.btnBuscarClick(Sender: TObject);
var
  tipos : TList<TTIPO_CENTRO_CUSTO>;
  tipo : TTIPO_CENTRO_CUSTO;
begin
  tipos := DAOTipocentrocusto.SQL.OrderBy('ID').&End.Find;
       dbgrd1.Columns[0].Title.Caption:='Código';
   dbgrd1.Columns[1].Title.Caption:='Descrição';
end;

procedure TfrmTipoCentroCusto.btnCancelarClick(Sender: TObject);
begin
lbledtDescricao.Enabled:=false;
end;

procedure TfrmTipoCentroCusto.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TfrmTipoCentroCusto.btnGravarClick(Sender: TObject);
var
  tipo : TTIPO_CENTRO_CUSTO;
begin
  tipo := TTIPO_CENTRO_CUSTO.Create;

  if lbledtCodigo.Text <>'' then  begin

    try
    tipo.ID := StrToInt(lbledtCodigo.Text);
    tipo.DESCRICAO := lbledtDescricao.Text;
    DAOTipocentrocusto.Update(tipo);
    finally
    tipo.Free;
    btnBuscarClick(nil);
  end;
  end else begin

   try
    tipo.DESCRICAO := lbledtDescricao.Text;
    DAOTipocentrocusto.Insert(tipo);
    finally
    tipo.Free;
    btnBuscarClick(nil);
  end;
  end;
   lbledtDescricao.Enabled:=false;


end;

procedure TfrmTipoCentroCusto.btnNovoClick(Sender: TObject);

begin
lbledtCodigo.Clear;
lbledtDescricao.Clear;
lbledtDescricao.Enabled:=true;
 lbledtDescricao.SetFocus;
end;

procedure TfrmTipoCentroCusto.ds1DataChange(Sender: TObject; Field: TField);
begin
  lbledtCodigo.Text := ds1.DataSet.FieldByName('ID').AsString;
  lbledtDescricao.Text := ds1.DataSet.FieldByName('DESCRICAO').AsString;
end;

procedure TfrmTipoCentroCusto.FormCreate(Sender: TObject);
begin
   DAOTipocentrocusto := TSimpleDAO<TTIPO_CENTRO_CUSTO>
   .New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(ds1);
   btnBuscarClick(nil);
end;

end.
