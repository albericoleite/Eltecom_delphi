unit uImportarExportarDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,cCadPessoa,
  Dialogs, Grids, StdCtrls, Buttons, ExtCtrls,uRESTDWPoolerDB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDWConstsData, uDWAbout,
  uDWResponseTranslator, Vcl.DBGrids;

type
  TfrmImportarExportarDados = class(TForm)
    strngrdDados: TStringGrid;
	Panel1: TPanel;
    btnCarregar: TBitBtn;
    btnInserir: TBitBtn;
    edtLocal: TEdit;
    btnSelecionar: TBitBtn;
    dlgOpen1: TOpenDialog;
    mmo1: TMemo;
    btnCarregarJson: TBitBtn;
    RESTDWClientSQL1: TRESTDWClientSQL;
    DWResponseTranslator1: TDWResponseTranslator;
    DataSource1: TDataSource;
    dbgrd1: TDBGrid;
    procedure btnCarregarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnCarregarJsonClick(Sender: TObject);
  private
	{ Private declarations }
  oPessoa: TPessoa;
	function FormataCampo(campo: string; delimitador: char; coluna, linhaLista: integer; lista: TStringList; var temAspasInicial, achouAspasFinal: boolean): string;
	procedure ImportaArquivoCSV(arquivo: string; delimitador: char; numColunas: integer);
	procedure RemoveLinhaStringGrid(linha: integer);
    procedure ClearStringGrid(const Grid: TStringGrid);
  public
	{ Public declarations }
  end;

var
  frmImportarExportarDados: TfrmImportarExportarDados;

implementation

uses
  uDTMConexao;

{$R *.dfm}

procedure TfrmImportarExportarDados.RemoveLinhaStringGrid(linha: integer);
var
	x, y: integer;
begin
for x:=linha to strngrdDados.RowCount - 2 do
	for y:=0 to strngrdDados.ColCount - 1 do
		strngrdDados.Cells[y,x]:=strngrdDados.Cells[y,x + 1];
strngrdDados.RowCount:=strngrdDados.RowCount - 1;
end;

procedure TfrmImportarExportarDados.btnCarregarClick(Sender: TObject);
begin
if edtLocal.Text ='' then
begin
MessageDlg('Nenhum arquivo selecionado.',mtWarning,[mbOK],0);
  btnSelecionar.SetFocus;
end else begin
  ClearStringGrid(strngrdDados);
  ImportaArquivoCSV(edtLocal.Text,',',27);
end;

end;

procedure TfrmImportarExportarDados.ClearStringGrid(const Grid: TStringGrid);
var
  c, r: Integer;
begin
  for c := 0 to Pred(Grid.ColCount) do
    for r := 0 to Pred(Grid.RowCount) do
      Grid.Cells[c, r] := '';
end;

procedure TfrmImportarExportarDados.btnCarregarJsonClick(Sender: TObject);
begin
    RESTDWClientSQL1.OpenJson(mmo1.lines.text);
   dbgrd1.DataSource:= DataSource1;
end;

procedure TfrmImportarExportarDados.btnInserirClick(Sender: TObject);
Var I : Integer;   TableName : String;
begin

TableName := 'Table1';

for i := 1 to strngrdDados.RowCount-1 do

    begin
     try
  oPessoa.cod_pessoa := 0;
  oPessoa.nome              := strngrdDados.Cells[0,i];
  oPessoa.nome_pai          := strngrdDados.Cells[1,i];
  oPessoa.nome_mae          := strngrdDados.Cells[2,i];
  oPessoa.sexo              := strngrdDados.Cells[3,i];
  oPessoa.dta_nascimento    := StrToDateTime(strngrdDados.Cells[4,i]);
  oPessoa.cod_congregacao   := StrToInt( strngrdDados.Cells[5,i]);
  oPessoa.nro_rol           := StrToInt( strngrdDados.Cells[6,i]);
  oPessoa.nrorg             := strngrdDados.Cells[7,i];
  oPessoa.nacionalidade     := strngrdDados.Cells[8,i];
  oPessoa.naturalidade      := strngrdDados.Cells[9,i];
  oPessoa.dta_casamento     := StrToDateTime(strngrdDados.Cells[10,i]);
  oPessoa.dta_conversao     :=StrToDateTime(strngrdDados.Cells[11,i]);
  oPessoa.dta_batismo_esprito :=StrToDateTime(strngrdDados.Cells[12,i]);
  oPessoa.dta_batismo_aguas   :=StrToDateTime(strngrdDados.Cells[13,i]);
  oPessoa.dta_membro        :=StrToDateTime(strngrdDados.Cells[14,i]);
  oPessoa.cep               := strngrdDados.Cells[15,i];
  oPessoa.logradouro        := strngrdDados.Cells[16,i];
  oPessoa.bairro            := strngrdDados.Cells[17,i];
  oPessoa.cidade            := strngrdDados.Cells[18,i];
  oPessoa.fone_celular      := strngrdDados.Cells[19,i];
  oPessoa.membro_congregado := strngrdDados.Cells[20,i];;
  oPessoa.cpf               :=  strngrdDados.Cells[21,i];
  oPessoa.funcao            := strngrdDados.Cells[22,i];
  oPessoa.uf_nascimento     := strngrdDados.Cells[23,i];
  oPessoa.uf_endereco       := strngrdDados.Cells[24,i];
  oPessoa.congregacao       := strngrdDados.Cells[25,i];
  oPessoa.setor             :=strngrdDados.Cells[26,i];

 oPessoa.Inserir ;
     except on E: Exception do
      begin
       MessageDlg(E.Message,mtError,[mbOK],0);
       MessageBeep(MB_ICONERROR);
      end;
    end;
end;
end;

procedure TfrmImportarExportarDados.btnSelecionarClick(Sender: TObject);
begin
if dlgOpen1.Execute then
begin
if dlgOpen1.FileName <> '' then
begin
edtLocal.Text := dlgOpen1.FileName;
btnInserir.Enabled:=true;
//nome:= dlgOpen1.FileName;
end;
end;
end;

function TfrmImportarExportarDados.FormataCampo(campo: string; delimitador: char; coluna, linhaLista: integer; lista: TStringList; var temAspasInicial, achouAspasFinal: boolean): string;
var
	x, aux: integer;
	str: string;
	delimitadorOK, encontrou: Boolean;
begin
if (not achouAspasFinal) then
	begin
	encontrou:=False;
	for x:=1 to Length(campo) do
		begin
		if (campo[x] = '"') then
			begin
			if (campo[x + 1] = ',') then
				begin
				encontrou:=True;
				Break;
				end;
			end;
		end;
	if (encontrou) then
		begin
		str:=copy(campo,1,x);
		achouAspasFinal:=True;
		lista[linhaLista]:=copy(lista[linhaLista],Length(str) + 2,Length(lista[linhaLista]) - Length(str));
		end
	else
		str:=campo;
	end
else
	begin
	x:=1;
	aux:=0;
	str:='';
	delimitadorOK:=False;
	while (x < Length(campo) + 1) and (aux < coluna) do
		begin
		if (campo[x] = '"') then
			delimitadorOK:=not delimitadorOK;
		if (campo[x] = delimitador) and (not delimitadorOK) then
			Inc(aux);
		Inc(x);
		end;
	delimitadorOK:=False;
	while (x < Length(campo) + 1) and ((campo[x] <> delimitador) or delimitadorOK) do
		begin
		if (campo[x] = '"') then
			begin
			temAspasInicial:=not temAspasInicial;
			achouAspasFinal:=not achouAspasFinal;
			delimitadorOK:=not delimitadorOK;
			end;
		str:=str + campo[x];
		Inc(x);
		end;
	end;
FormataCampo:=Trim(str);
end;

procedure TfrmImportarExportarDados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Assigned(oPessoa) then
    FreeAndNil(oPessoa);
end;

procedure TfrmImportarExportarDados.FormCreate(Sender: TObject);
begin
oPessoa := TPessoa.Create(dtmPrincipal.ConexaoDB);
end;

procedure TfrmImportarExportarDados.ImportaArquivoCSV(arquivo: string; delimitador: char; numColunas: integer);
var
	listaCSV: TStringList;
	x, xAux, numLinha, numLinhaAux: integer;
	aspasIni, aspasFim: boolean;
	strTemp: string;
begin
listaCSV:=TStringList.Create;
try
	strngrdDados.ColCount:=numColunas;
	listaCSV.LoadFromFile(arquivo);

	numLinha:=0;
	while (numLinha <= listaCSV.Count - 1) do
		begin
		strngrdDados.RowCount:=numLinha + 1;
		x:=0;
		xAux:=0;
		numLinhaAux:=numLinha;
		while (x <= strngrdDados.ColCount - 1) do
			begin
			strTemp:=FormataCampo(listaCSV[numLinha],delimitador,xAux,numLinha,listaCSV,aspasIni,aspasFim);
			if (strngrdDados.Cells[x,numLinhaAux] <> '') then
				strTemp:=strngrdDados.Cells[x,numLinhaAux] + #13#10 + strTemp;
			if (strTemp <> '') and (strTemp[1] = '"') and (strTemp[Length(strTemp)] = '"') then
				strTemp:=copy(strTemp,2,Length(strTemp) - 2);
			strngrdDados.Cells[x,numLinhaAux]:=strTemp;
			if ((aspasIni) and (not aspasFim)) then
				begin
				xAux:=-1;
				Inc(numLinha);
				end
			else
				begin
				Inc(x);
				Inc(xAux);
				aspasIni:=False;
				aspasFim:=True;
				end;
			end;
		Inc(numLinha);
		end;

	numLinha:=0;
	while (numLinha <= strngrdDados.RowCount - 1) do
		begin
		if (strngrdDados.Cells[0,numLinha] = '') then
			RemoveLinhaStringGrid(numLinha)
		else
			Inc(numLinha);
		end;

finally
	listaCSV.Free;
	end;
end;

end.
