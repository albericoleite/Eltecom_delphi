unit uConsultarDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,   ClipBrd,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,  System.JSON,  REST.Json,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,     cCadPessoa,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,uDWJSONObject, uDWConsts,
  FireDAC.Stan.StorageJSON,StrUtils;

type
  TfrmConsultaDados = class(TForm)
    dsPrincipal: TDataSource;
    fdqryConsulta: TFDQuery;
    pnlPrincipal: TPanel;
    dbgrdPrincipal: TDBGrid;
    dbnvgrControles: TDBNavigator;
    pnlTabelas: TPanel;
    dbgrdTabelas: TDBGrid;
    dsTabelas: TDataSource;
    fdqryTabelas: TFDQuery;
    strngfldTabelasTables_in_igreja: TStringField;
    spl1: TSplitter;
    pnl1: TPanel;
    mmoQuery: TMemo;
    pnlBotoes: TPanel;
    btnAlterarSeq: TBitBtn;
    btnDeletar: TBitBtn;
    btnConsultar: TBitBtn;
    btnGerarJson: TBitBtn;
    DataSource1: TDataSource;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    btnCopiar: TBitBtn;
    btn1: TBitBtn;
    btnLimpaBD: TBitBtn;
    btnExecutar: TBitBtn;
    procedure dbgrdTabelasDblClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnAlterarSeqClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnGerarJsonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoQueryKeyPress(Sender: TObject; var Key: Char);
    procedure btn1Click(Sender: TObject);
    procedure btnLimpaBDClick(Sender: TObject);
    procedure btnExecutarClick(Sender: TObject);
  private
    { Private declarations }
    oPessoa : TPessoa;
     JSONValue     : TJSONValue;
  public
    { Public declarations }
  end;

var
  frmConsultaDados: TfrmConsultaDados;

implementation

uses
  uDTMConexao, cAtualizacaoTabelaMySQL;

{$R *.dfm}

procedure TfrmConsultaDados.btn1Click(Sender: TObject);
var oPessoa,rest:TPessoa;
begin
try
oPessoa:= TPessoa.Create(dtmPrincipal.ConexaoDB);
oPessoa.nome:='teste';
oPessoa.dta_nascimento:= Now;

   mmoQuery.Text := TJson.ObjectToJsonString(oPessoa);
finally
  oPessoa.Free;
end;
end;

procedure TfrmConsultaDados.btnAlterarSeqClick(Sender: TObject);
begin
  if MessageDlg('Deseja Alterar a seguencia da tabela?:'+fdqryTabelas.FieldByName
    ('Tables_in_igreja').AsString,
    mtConfirmation, [mbYes, mbNo], 0) = mrNO then
  begin
    Abort;
  end;
 dtmPrincipal.ConexaoDB.ExecSQL('ALTER TABLE '+fdqryTabelas.FieldByName
    ('Tables_in_igreja').AsString+' AUTO_INCREMENT = 1;');

end;

procedure TfrmConsultaDados.btnConsultarClick(Sender: TObject);
begin
  if ContainsText(mmoQuery.Text, 'select') then
   begin
  fdqryConsulta.SQL.Clear;
  fdqryConsulta.Close;
  fdqryConsulta.SQL.Add(mmoQuery.Text);
  fdqryConsulta.Open;
    end else
   ShowMessage('Não é uma instrução SELECT');

end;

procedure TfrmConsultaDados.btnDeletarClick(Sender: TObject);
begin
 if MessageDlg('Deseja limpar os registros tabela?'+fdqryTabelas.FieldByName
    ('Tables_in_igreja').AsString,
    mtConfirmation, [mbYes, mbNo], 0) = mrNO then
  begin
    Abort;
  end;
  dtmPrincipal.ConexaoDB.ExecSQL('DELETE FROM '+fdqryTabelas.FieldByName
    ('Tables_in_igreja').AsString);

end;

procedure TfrmConsultaDados.btnExecutarClick(Sender: TObject);
begin
if not ContainsText(mmoQuery.Text, 'select') then
   begin
   dtmPrincipal.ConexaoDB.ExecSQL(mmoQuery.Text,true);
   end else
   ShowMessage('Não é uma instrução DDL');
end;

procedure TfrmConsultaDados.btnGerarJsonClick(Sender: TObject);
begin
mmoQuery.Clear;
 JSONValue.LoadFromDataset(fdqryTabelas.FieldByName
    ('Tables_in_igreja').AsString, fdqryConsulta, False,jmPureJSON,'dd/mm/yyyy');
 mmoQuery.Lines.Add(JSONValue.ToJSON);
 mmoQuery.Lines.SaveToFile('C:\'+fdqryTabelas.FieldByName
    ('Tables_in_igreja').AsString+'.json');

end;

procedure TfrmConsultaDados.btnLimpaBDClick(Sender: TObject);
begin
  if MessageDlg('Deseja Apagar Todos os registros de todas as tabelas??',
    mtConfirmation, [mbYes, mbNo], 0) = mrNO then
  begin
    Abort;
  end;
  //APAGAR REGISTROS DE TODAS AS TABELAS
  ShowMessage('APAGAR REGISTROS DE TODAS AS TABELAS');
   while not dsTabelas.DataSet.Eof do begin
   ShowMessage('APAGAR REGISTROS DA TABELA : '+fdqryTabelas.FieldByName
    ('Tables_in_igreja').AsString);
dtmPrincipal.ConexaoDB.ExecSQL('TRUNCATE TABLE '+dsTabelas.DataSet.FieldByName('Tables_in_igreja').AsString,true);

dtmPrincipal.ConexaoDB.ExecSQL('ALTER TABLE '+fdqryTabelas.FieldByName
    ('Tables_in_igreja').AsString+' AUTO_INCREMENT = 1;',true);
dsTabelas.DataSet.Next;
end;
end;

procedure TfrmConsultaDados.dbgrdTabelasDblClick(Sender: TObject);
begin
  fdqryConsulta.SQL.Clear;
  fdqryConsulta.Close;
  fdqryConsulta.SQL.Add('select * from ' + fdqryTabelas.FieldByName
    ('Tables_in_igreja').AsString);
  fdqryConsulta.Open;
 // btnGerarJsonClick(sender);
end;

procedure TfrmConsultaDados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Assigned(oPessoa) then
    FreeAndNil(oPessoa);
end;

procedure TfrmConsultaDados.FormCreate(Sender: TObject);
begin
oPessoa := TPessoa.Create(dtmPrincipal.ConexaoDB);
 JSONValue := TJSONValue.Create;
end;

procedure TfrmConsultaDados.mmoQueryKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ^A then
  begin
    (Sender as TMemo).SelectAll;
    Key := #0;
  end;
end;


end.
