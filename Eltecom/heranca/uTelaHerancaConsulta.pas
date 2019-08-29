unit uTelaHerancaConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmTelaHerancaConsulta = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    medtPesquisa: TMaskEdit;
    lblIndice: TLabel;
    dbgrdPesquisa: TDBGrid;
    dsListagem: TDataSource;
    QryListagem: TFDQuery;
    btnFechar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure dbgrdPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrdPesquisaTitleClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure dbgrdPesquisaDblClick(Sender: TObject);
    procedure medtPesquisaChange(Sender: TObject);
  private
    procedure ExibirLabelIndice(Campo: string; aLabel: Tlabel);
    function RetornarCampoTraduzido(Campo: String): string;
    { Private declarations }
  public
    { Public declarations }
    aRetornarIDSelecionado:Variant;
    aIniciarPesuisaID:Variant;
    aCampoID:string;
    IndiceAtual:string;
  end;

var
  frmTelaHerancaConsulta: TfrmTelaHerancaConsulta;

implementation

{$R *.dfm}

procedure TfrmTelaHerancaConsulta.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TfrmTelaHerancaConsulta.dbgrdPesquisaDblClick(Sender: TObject);
begin
aRetornarIDSelecionado := QryListagem.FieldByName(aCampoID).AsVariant;
Close;
end;

procedure TfrmTelaHerancaConsulta.dbgrdPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if (Shift = [ssCtrl])and (Key = 46)or  (Key = 17) then
       Key:=0;
end;

procedure TfrmTelaHerancaConsulta.dbgrdPesquisaTitleClick(Column: TColumn);
begin
IndiceAtual:=Column.FieldName;
QryListagem.IndexFieldNames:=IndiceAtual;
ExibirLabelIndice(IndiceAtual,lblIndice);
end;

procedure TfrmTelaHerancaConsulta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      if QryListagem.Active then
    QryListagem.Close;
end;

procedure TfrmTelaHerancaConsulta.FormCreate(Sender: TObject);
begin
    if QryListagem.Active then
    QryListagem.Close;

    ExibirLabelIndice(IndiceAtual,lblIndice);

    QryListagem.Open;
end;


procedure TfrmTelaHerancaConsulta.FormShow(Sender: TObject);
begin
if (aIniciarPesuisaID<> Unassigned) then
begin
    QryListagem.Locate(aCampoID,aIniciarPesuisaID,[loPartialKey])
end;
end;

procedure TfrmTelaHerancaConsulta.medtPesquisaChange(Sender: TObject);
begin
QryListagem.Locate(IndiceAtual,TMaskEdit(sender).Text,[loPartialKey])
end;

procedure    TfrmTelaHerancaConsulta.ExibirLabelIndice(Campo:string; aLabel:Tlabel);
begin
     aLabel.Caption:=RetornarCampoTraduzido(Campo);
end;

function  TfrmTelaHerancaConsulta.RetornarCampoTraduzido(Campo:String):string ;
var I:Integer;
begin
for I := 0 to QryListagem.Fields.Count-1 do
begin
  if LowerCase(QryListagem.Fields[I].FieldName) = LowerCase(Campo) then
  begin
     Result:=QryListagem.Fields[I].DisplayLabel;
  Break;
  end;

end;

end;

end.
