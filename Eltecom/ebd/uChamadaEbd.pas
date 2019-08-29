unit uChamadaEbd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Mask, RxToolEdit, System.ImageList,
  Vcl.ImgList;

type
  TfrmChamadaEbd = class(TForm)
    dtdtAula: TDateEdit;
    dblkcbbClasses: TDBLookupComboBox;
    dsClasses: TDataSource;
    fdqryClasses: TFDQuery;
    fdqryClassescod_classe: TFDAutoIncField;
    fdqryClassesclasse: TStringField;
    lbl1: TLabel;
    Label1: TLabel;
    dsChamada: TDataSource;
    fdqryChamada: TFDQuery;
    fdqryChamadacodigo: TFDAutoIncField;
    fdqryChamadapresente: TShortintField;
    btnBuscar: TBitBtn;
    FDStoredProcChamada: TFDStoredProc;
    dbgrdChamada: TDBGrid;
    fdqryChamadadta_aula: TDateTimeField;
    fdqryChamadacod_classe: TIntegerField;
    fdqryChamadacod_aluno: TIntegerField;
    fdqryAlunos: TFDQuery;
    fdqryAlunoscod_aluno: TIntegerField;
    fdqryAlunosaluno: TStringField;
    fdqryAlunoscod_classe: TIntegerField;
    fdqryChamadaAluno: TStringField;
    ilcheck: TImageList;
    fdqryAula: TFDQuery;
    fdqryAulacodigo: TFDAutoIncField;
    fdqryAuladta_aula: TDateTimeField;
    fdqryAulacod_classe: TIntegerField;
    fdqryAulaqtd_biblias: TIntegerField;
    fdqryAulaqtd_revistas: TIntegerField;
    fdqryAulatrimestre: TIntegerField;
    fdqryAulacod_congregacao: TIntegerField;
    fdqryAulanro_licao: TIntegerField;
    fdqryAulatitulo_licao: TStringField;
    fdqryAulatitulo_revista: TStringField;
    dsAula: TDataSource;
    FDStoredProcAula: TFDStoredProc;
    btnSalvar: TBitBtn;
    fdqryAulaqtd_visitante_amigo: TIntegerField;
    fdqryAulaqtd_visitante_evang: TIntegerField;
    dbgrdAula: TDBGrid;
    lblTrimestre: TLabel;
    btnRelatorio: TBitBtn;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblkcbbClassesClick(Sender: TObject);
    procedure dbgrdChamadaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrdChamadaCellClick(Column: TColumn);
    procedure DBEdit1Change(Sender: TObject);
    procedure dbgrdAulaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure dbgrdAulaDblClick(Sender: TObject);
  private
    procedure ListadeChamada;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChamadaEbd: TfrmChamadaEbd;

implementation

uses
  uDTMConexao, cFuncao, uDTMEbd;

{$R *.dfm}

procedure TfrmChamadaEbd.btnBuscarClick(Sender: TObject);
begin
  ListadeChamada;
end;

procedure TfrmChamadaEbd.DBEdit1Change(Sender: TObject);
begin
dsAula.Edit;
end;

procedure TfrmChamadaEbd.dbgrdAulaDblClick(Sender: TObject);
begin
btnSalvar.Enabled:=True;
end;

procedure TfrmChamadaEbd.dbgrdAulaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
//fdqryAula.Edit;
//fdqryAula.Post;
end;

procedure TfrmChamadaEbd.dbgrdChamadaCellClick(Column: TColumn);
begin
    if Column.Field = fdqryChamadapresente  then begin
       fdqryChamada.Edit;
       if fdqryChamadapresente.AsAnsiString = '1' then
         fdqryChamadapresente.AsAnsiString := '0'   else
         fdqryChamadapresente.AsAnsiString := '1' ;

       fdqryChamada.Post;
    end;

end;

procedure TfrmChamadaEbd.dbgrdChamadaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var
  R: TRect;
  begin
  if Column.Field = fdqryChamadapresente  then begin
       dbgrdChamada.Canvas.FillRect(Rect);
        ilcheck.Draw(dbgrdChamada.Canvas,Rect.Left +10,Rect.Top +1,0);
        if fdqryChamadapresente.AsAnsiString = '0' then
         ilcheck.Draw(dbgrdChamada.Canvas,Rect.Left +10,Rect.Top +1,1)
         else
         ilcheck.Draw(dbgrdChamada.Canvas,Rect.Left +10,Rect.Top +1,2);

  end;

end;

procedure TfrmChamadaEbd.dblkcbbClassesClick(Sender: TObject);
begin
ListadeChamada;
end;

procedure TfrmChamadaEbd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fdqryClasses.Close;
end;

procedure TfrmChamadaEbd.ListadeChamada;
var dta:string;
begin
if (dayofweek(strtodate(dtdtAula.text)))<>1 then
begin
  Showmessage('Esta data não é Domingo');
  dtdtAula.SetFocus;
  Abort;
end;
dta:= FormatDateTime('yyyy-mm-dd',dtdtAula.Date);
lblTrimestre.Caption:= TFuncao.SqlValor('select trimestre as valor  '+
' from tb_ebd_calendario  '+
' where date(dta_inicio) <= '+QuotedStr(dta)+
' and  date(dta_fim) >='+QuotedStr(dta),dtmPrincipal.ConexaoDB)+'º Trimestre';

  fdqryAlunos.close;
  fdqryAlunos.ParamByName('cod_classe').AsInteger := dblkcbbClasses.KeyValue;
  fdqryAlunos.ParamByName('cod_congregacao').AsInteger := dtmPrincipal.congAtiva;
  fdqryAlunos.Open;
    if fdqryAlunos.RecordCount = 0 then      begin
  ShowMessage('Nenhum aluno cadastrado na Classe: '+dblkcbbClasses.Text) ;
  dbgrdAula.DataSource:= nil;
  dbgrdChamada.DataSource:= nil;
  dblkcbbClasses.SetFocus;
  Abort;
  end;

  //INSERIR CHAMADA
  FDStoredProcChamada.ParamByName('cod_cong').AsInteger := dtmPrincipal.congAtiva;
  FDStoredProcChamada.ParamByName('cod_class').AsInteger := dblkcbbClasses.KeyValue;
  FDStoredProcChamada.ParamByName('dta_chamada').AsDateTime := dtdtAula.Date;
  FDStoredProcChamada.ExecProc;

  //INSERIR AULA
  FDStoredProcAula.ParamByName('cod_cong').AsInteger := dtmPrincipal.congAtiva;
  FDStoredProcAula.ParamByName('cod_class').AsInteger := dblkcbbClasses.KeyValue;
  FDStoredProcAula.ParamByName('nro_lic').AsInteger := 1;
  FDStoredProcAula.ParamByName('tlic').AsString := '';
  FDStoredProcAula.ParamByName('trev').AsString := '';
  FDStoredProcAula.ParamByName('dta_aul').AsDateTime := dtdtAula.Date;
  FDStoredProcAula.ExecProc;

  fdqryAlunos.close;
  fdqryAlunos.ParamByName('cod_classe').AsInteger := dblkcbbClasses.KeyValue;
  fdqryAlunos.ParamByName('cod_congregacao').AsInteger := dtmPrincipal.congAtiva;
  fdqryAlunos.Open;
  fdqryChamada.close;
  fdqryChamada.ParamByName('cod_classe').AsInteger := dblkcbbClasses.KeyValue;
  fdqryChamada.ParamByName('cod_congregacao').AsInteger := dtmPrincipal.congAtiva;
  fdqryChamada.ParamByName('dta_aula').AsDateTime := dtdtAula.Date;
  fdqryChamada.Open;

  fdqryAula.Close;
  fdqryAula.ParamByName('cod_classe').AsInteger := dblkcbbClasses.KeyValue;
  fdqryAula.ParamByName('cod_congregacao').AsInteger := dtmPrincipal.congAtiva;
  fdqryAula.ParamByName('dta_aula').AsDateTime := dtdtAula.Date;
  fdqryAula.Open;

  dbgrdAula.DataSource:= dsAula;
  dbgrdChamada.DataSource:= dsChamada;

end;

procedure TfrmChamadaEbd.btnRelatorioClick(Sender: TObject);
begin
dtmEbd.fdqryRelatorio.Close;
dtmEbd.fdqryRelatorio.ParamByName('dta_aula').AsDate:= dtdtAula.Date;
dtmEbd.fdqryRelatorio.Open;
dtmebd.frxrprtRelatorio.ReportOptions.Name := 'Relatório';
dtmebd.frxrprtRelatorio.ShowReport();
end;

procedure TfrmChamadaEbd.btnSalvarClick(Sender: TObject);
begin
fdqryAula.Post;
end;

procedure TfrmChamadaEbd.FormCreate(Sender: TObject);
begin
fdqryClasses.Open;
dtdtAula.Date:= Now;
dtmEbd := TdtmEbd.Create(dtmPrincipal.ConexaoDB);
end;

end.
