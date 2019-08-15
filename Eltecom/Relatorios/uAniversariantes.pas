unit uAniversariantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;
  //TODO: CRIAR OBREIROS ANIVERSARIANTES
type
  TfrmAniversariantes = class(TForm)
    lbl1: TLabel;
    lblData: TLabel;
    lbl2: TLabel;
    cbbCategoria: TComboBox;
    btnVisualizar: TBitBtn;
    dtpData: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    fdqryAniverariantes: TFDQuery;
    fdqryAniverariantescod_pessoa: TFDAutoIncField;
    fdqryAniverariantesnome_pessoa: TStringField;
    fdqryAniverariantessexo: TStringField;
    fdqryAniverariantesmembro_congregado: TStringField;
    fdqryAniverariantesdta_nascimento: TDateField;
    fdqryAniverariantesfiltro: TStringField;
    fdqryAniverariantestelefone: TStringField;
    dblkcbbMes: TDBLookupComboBox;
    dsMes: TDataSource;
    dbgrdAniversariantes: TDBGrid;
    dsAniversariantes: TDataSource;
    Label1: TLabel;
    fdqryAniverariantesidade: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure fdqryAniverariantesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dblkcbbMesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAniversariantes: TfrmAniversariantes;

implementation

uses
  uDTMRelatorio;

{$R *.dfm}

procedure TfrmAniversariantes.btnVisualizarClick(Sender: TObject);
begin

dtmRelatorio.fdqryAniverariantes.Close;
dtmRelatorio.fdqryAniverariantes.Params.ParamByName('dta1').AsDate:= dtpData.Date;
dtmRelatorio.fdqryAniverariantes.Params.ParamByName('dta2').AsDate:= dtpDataFinal.Date;




//<frxDBAniversariantes."membro_congregado">='MEMBRO'
dtmRelatorio.frxrprtAniversariantes.Variables['Data'] :=
QuotedStr(DateToStr(dtpData.Date));
dtmRelatorio.frxrprtAniversariantes.Variables['Data2'] :=
QuotedStr(DateToStr(dtpDataFinal.Date));

if cbbCategoria.Text ='TODOS' then   begin
    dtmRelatorio.frxrprtAniversariantes.Variables['Filtro'] := QuotedStr('');
   dtmRelatorio.fdqryAniverariantes.Params.ParamByName('filtro').AsString:= '%%';
end;


if cbbCategoria.Text <> 'TODOS' then  begin
   dtmRelatorio.frxrprtAniversariantes.Variables['Filtro'] := QuotedStr(cbbCategoria.Text);
   dtmRelatorio.fdqryAniverariantes.Params.ParamByName('filtro').AsString:= cbbCategoria.Text;
end;

dtmRelatorio.fdqryAniverariantes.Open;

if  not dtmRelatorio.fdqryAniverariantes.IsEmpty then
begin

dtmRelatorio.frxrprtAniversariantes.ReportOptions.Name := 'Aniversariantes';
dtmRelatorio.frxrprtAniversariantes.ShowReport();
end
 else
 begin
   // tipo:= cbbCategoria.Text ;
   // if tipo='TODOS' then
   // tipo:='cadastro';
  Application.MessageBox(Pchar('Nenhum registro localizado!' ),'Atenção!',mb_ok or mb_IconQuestion)
 end;
end;

procedure TfrmAniversariantes.dblkcbbMesClick(Sender: TObject);
begin
 fdqryAniverariantes.Close;
 fdqryAniverariantes.Filtered:=False;
 fdqryAniverariantes.Open;
 fdqryAniverariantes.Filtered:=True;
end;

procedure TfrmAniversariantes.fdqryAniverariantesFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
  var dia, mes, ano : Word;
  begin
         if fdqryAniverariantes.RecordCount = 0 then
         Abort else
         Accept:=False;
         DecodeDate(fdqryAniverariantes.FieldByName('dta_nascimento').AsDateTime,ano,mes,dia);
         if mes = StrToInt(dblkcbbMes.KeyValue) then
         Accept:=True;


end;

procedure TfrmAniversariantes.FormCreate(Sender: TObject);
begin
dtpData.Date:= StrToDate ( '01/' + FormatDateTime ( 'mm/yyyy', date ) );
dtpDataFinal.Date := Date;
//dtmRelatorio.fdqryMeses.Open;
end;

end.
