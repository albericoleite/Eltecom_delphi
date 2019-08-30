unit uCadFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,Entidade.Fornecedor,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,uEnum,uDTMConexao,
  uTelaHerancaEntidade,SimpleDAO,SimpleInterface
  ,SimpleQueryFiredac,System.Generics.Collections, uDWResponseTranslator, uDWAbout, uDWConstsData,
  uRESTDWPoolerDB;

type
  TfrmCadFornecedor = class(TfrmTelaHerancaEntidade)
    lbledtCodigo: TLabeledEdit;
    lbledtNome: TLabeledEdit;
    grpResidencia: TGroupBox;
    lblCEP: TLabel;
    lblTelefone: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    btnConsultaCEP: TSpeedButton;
    lbledtEmail: TLabeledEdit;
    lbledtBairro: TLabeledEdit;
    lbledtRua: TLabeledEdit;
    lbledtCidade: TLabeledEdit;
    medtCEP: TMaskEdit;
    medtTelefoneCel: TMaskEdit;
    lbledtNumero: TLabeledEdit;
    cbbUf: TComboBox;
    medtTelFixo: TMaskEdit;
    cbbTipo: TComboBox;
    DWClientRESTCEP: TDWClientREST;
    dwGetCEP: TRESTDWClientSQL;
    DWResponseTranslatorCEP: TDWResponseTranslator;
    lbl12: TLabel;
    medtCpfcnpj: TMaskEdit;
    lbltipo: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure btnConsultaCEPClick(Sender: TObject);
    procedure cbbTipoChange(Sender: TObject);
    procedure DWClientRESTCEPBeforeGet(var AUrl: string;
      var AHeaders: TStringList);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
    function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
    function Listar:string;

  public
    { Public declarations }
    DAOFornecedor : iSimpleDAO<TFORNECEDOR>;
  end;

var
  frmCadFornecedor: TfrmCadFornecedor;

implementation
uses
 uPrincipal;


{$R *.dfm}

{$REGION 'Override'}
function TfrmCadFornecedor.Apagar: Boolean;
var
  tipo : TFORNECEDOR;
begin
if MessageDlg('Apagar o Registro: ' + #13 + #13 + 'Código: ' +
    lbledtCodigo.Text + #13 + 'Descrição: ' + lbledtNome.Text,
    mtConfirmation, [mbYes, mbNo], 0) = mrNO then
  begin
    Result:=False;
    Abort;
  end;


  tipo := TFORNECEDOR.Create;
  TRY
    tipo.ID := StrToInt(lbledtCodigo.Text);
    DAOFornecedor.Delete(tipo);
  finally
  Result:=true;
    tipo.Free;
   //btnBuscarClick(nil);
  end;

end;


procedure TfrmCadFornecedor.btnAlterarClick(Sender: TObject);
begin

inherited;
lbledtCodigo.Text := dsListagem.DataSet.FieldByName('ID').AsString;
  lbledtNome.Text := dsListagem.DataSet.FieldByName('NOMERAZAO').AsString;
  lbledtEmail.Text:= dsListagem.DataSet.FieldByName('EMAIL').AsString;
  lbledtRua.Text:= dsListagem.DataSet.FieldByName('RUA').AsString;
  lbledtCidade.Text:=dsListagem.DataSet.FieldByName('CIDADE').AsString;
  lbledtBairro.Text:=dsListagem.DataSet.FieldByName('BAIRRO').AsString;
  lbledtNumero.Text:= dsListagem.DataSet.FieldByName('NUMERO').AsString;
  cbbUf.Text:=dsListagem.DataSet.FieldByName('UF').AsString;
  medtTelFixo.Text := dsListagem.DataSet.FieldByName('TELEFONE').AsString;
  medtTelefoneCel.Text:= dsListagem.DataSet.FieldByName('CELULAR').AsString;
  medtCEP.Text:=dsListagem.DataSet.FieldByName('CEP').AsString;
  cbbTipo.Text:=  dsListagem.DataSet.FieldByName('TIPO').AsString;
end;

procedure TfrmCadFornecedor.btnApagarClick(Sender: TObject);
begin
  inherited;
  Listar;
end;

procedure TfrmCadFornecedor.btnCancelarClick(Sender: TObject);
begin
  inherited;
   Listar;
end;

procedure TfrmCadFornecedor.btnConsultaCEPClick(Sender: TObject);
begin
inherited;
   if Length(medtCEP.Text) = 8 then
  begin
    Screen.Cursor := crSQLWait;

    dwGetCEP.Close;
    dwGetCEP.Open;

    if (dwGetCEP.FieldCount > 1)  then
    begin
      {
        https://viacep.com.br/ws/%s/json/

        "cep": "88801-530",
        "logradouro": "Rua João Pessoa",
        "complemento": "até 743/744",
        "bairro": "Centro",
        "localidade": "Criciúma",
        "uf": "SC",
        "unidade": "",
        "ibge": "4204608",
        "gia": ""
      }
      lbledtRua.Text := dwGetCEP.FieldByName('logradouro').AsString;
      lbledtBairro.Text := dwGetCEP.FieldByName('bairro').AsString;
      lbledtCidade.Text := dwGetCEP.FieldByName('localidade').AsString;
      cbbUf.ItemIndex := cbbUf.Items.IndexOf(dwGetCEP.FieldByName('uf').AsString);
    end
    else
      ShowMessage('CEP não encontrado!');

    Screen.Cursor := crDefault;
  end
  else
    ShowMessage('CEP inválido, verifique!'+medtCEP.Text);

end;

procedure TfrmCadFornecedor.cbbTipoChange(Sender: TObject);
begin
  inherited;
if cbbTipo.Text = 'F' then   begin
  lbltipo.Caption:= 'CPF';
medtCpfcnpj.EditMask:='###.###.###-##;0;_';
end else begin
      lbltipo.Caption:= 'CNPJ';
medtCpfcnpj.EditMask:='##.###.###/####-##;0';
end;

end;

procedure TfrmCadFornecedor.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
lbledtCodigo.Text := dsListagem.DataSet.FieldByName('ID').AsString;
  lbledtNome.Text := dsListagem.DataSet.FieldByName('NOMERAZAO').AsString;
  lbledtEmail.Text:= dsListagem.DataSet.FieldByName('EMAIL').AsString;
  lbledtRua.Text:= dsListagem.DataSet.FieldByName('RUA').AsString;
  lbledtCidade.Text:=dsListagem.DataSet.FieldByName('CIDADE').AsString;
  lbledtBairro.Text:=dsListagem.DataSet.FieldByName('BAIRRO').AsString;
  lbledtNumero.Text:= dsListagem.DataSet.FieldByName('NUMERO').AsString;
  cbbUf.Text:=dsListagem.DataSet.FieldByName('UF').AsString;
  medtTelFixo.Text := dsListagem.DataSet.FieldByName('TELEFONE').AsString;
  medtTelefoneCel.Text:= dsListagem.DataSet.FieldByName('CELULAR').AsString;
  medtCEP.Text:=dsListagem.DataSet.FieldByName('CEP').AsString;
  medtCpfcnpj.Text:=dsListagem.DataSet.FieldByName('CPFCNPJ').AsString;

end;

procedure TfrmCadFornecedor.DWClientRESTCEPBeforeGet(var AUrl: string;
  var AHeaders: TStringList);
begin
  inherited;
AUrl := format('https://viacep.com.br/ws/%s/json/', [medtCEP.Text]);
end;

procedure TfrmCadFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
   DAOFornecedor:= TSimpleDAO<TFORNECEDOR>
   .New(TSimpleQueryFiredac.Create(dtmPrincipal.ConexaoDB)).DataSource(dsListagem);
   Listar;
end;

function TfrmCadFornecedor.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
var
  tipo : TFORNECEDOR;
begin
  tipo := TFORNECEDOR.Create;

  if lbledtCodigo.Text <>EmptyStr then  begin

    try
    tipo.ID := StrToInt(lbledtCodigo.Text);
    tipo.NOMERAZAO := lbledtNome.Text;
    tipo.EMAIL := lbledtEmail.Text;
    tipo.TELEFONE:= medtTelFixo.Text;
    tipo.CELULAR:= medtTelefoneCel.Text;
    tipo.RUA:= lbledtRua.Text;
    tipo.BAIRRO:= lbledtBairro.Text;
    tipo.NUMERO:= lbledtNumero.Text;
    tipo.CIDADE:= lbledtCidade.Text;
    tipo.CEP:= medtCEP.Text;
    tipo.UF:= cbbUf.Text;
    tipo.TIPO:=cbbTipo.Text;
    tipo.USUARIO_CADASTRO:= oUsuarioLogado.nome;
    tipo.CPFCNPJ := medtCpfcnpj.Text;
    DAOFornecedor.Update(tipo);
    finally
    Result :=true;
    tipo.Free;
    Listar;
  end;
  end else begin

   try
    tipo.NOMERAZAO := lbledtNome.Text;
    tipo.EMAIL := lbledtEmail.Text;
    tipo.TELEFONE:= medtTelFixo.Text;
    tipo.CELULAR:= medtTelefoneCel.Text;
    tipo.RUA:= lbledtRua.Text;
    tipo.BAIRRO:= lbledtBairro.Text;
    tipo.NUMERO:= lbledtNumero.Text;
    tipo.CIDADE:= lbledtCidade.Text;
    tipo.CEP:= medtCEP.Text;
    tipo.UF:= cbbUf.Text;
    tipo.TIPO:=cbbTipo.Text;
    tipo.CPFCNPJ := medtCpfcnpj.Text;
    DAOFornecedor.Insert(tipo);
    finally
    Result :=true;
    tipo.Free;
    Listar;
  end;
  end;


end;
function TfrmCadFornecedor.Listar: string;
var
  tipos : TList<TFORNECEDOR>;
  tipo : TFORNECEDOR;
begin
  tipos := DAOFornecedor.SQL.OrderBy('ID').&End.Find;
   dbgrdListagem.Columns[0].Title.Caption:='Código';
   dbgrdListagem.Columns[1].Title.Caption:='Nome';
   dbgrdListagem.Columns[1].Width:=100;
end;

{$endregion}

end.
