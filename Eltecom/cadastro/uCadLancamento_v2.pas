unit uCadLancamento_v2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, RxCurrEdit, RxToolEdit, Vcl.Mask,
  Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmLancamentos = class(TForm)
    pnlRodape: TPanel;
    dbnvgrNavigator: TDBNavigator;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnApagar: TBitBtn;
    btnFechar: TBitBtn;
    btnGravar: TBitBtn;
    pgcPrincipal: TPageControl;
    tabListagem: TTabSheet;
    pnlListagem: TPanel;
    lblIndice: TLabel;
    lblDataNascimento: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl4: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    medtPesquisar: TMaskEdit;
    btnPesquisar: TBitBtn;
    dtdtIni: TDateEdit;
    dtdtFim: TDateEdit;
    btnBuscar: TBitBtn;
    mmoSemana: TMemo;
    btnImprimir: TBitBtn;
    crncydtEntrada: TCurrencyEdit;
    crncydtSaida: TCurrencyEdit;
    crncydtSubtotal: TCurrencyEdit;
    dblkcbbMes: TDBLookupComboBox;
    dbgrdListagem: TDBGrid;
    tabManutencao: TTabSheet;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    cbbTipo: TComboBox;
    crncydtValor: TCurrencyEdit;
    dtdtData: TDateEdit;
    lbledtCodTalao: TLabeledEdit;
    lbledtDescricao: TLabeledEdit;
    lbledtCodigo: TLabeledEdit;
    dblkcbbTipoSaida: TDBLookupComboBox;
    dblkcbbTipoEntrada: TDBLookupComboBox;
    dblkcbb1: TDBLookupComboBox;
    lbl12: TLabel;
    lbl13: TLabel;
    dblkcbbFornecedor: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLancamentos: TfrmLancamentos;

implementation

{$R *.dfm}

end.
