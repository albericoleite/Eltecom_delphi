unit uCadIgreja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,Vcl.Imaging.jpeg,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,uEnum,cCadIgreja,
  RxAnimate, Vcl.Menus, Vcl.ExtDlgs;

type
  TfrmCadIgreja = class(TfrmTelaheranca)
    fdtncfldQryListagemcod_igreja: TFDAutoIncField;
    strngfldQryListagemnome_igreja: TStringField;
    strngfldQryListagemcidade: TStringField;
    strngfldQryListagemnome_presidente: TStringField;
    intgrfldQryListagemsituacao: TIntegerField;
    lbledtNome: TLabeledEdit;
    lbledt_codigo: TLabeledEdit;
    dtfldQryListagemdta_fundacao: TDateField;
    dtmfldQryListagemdta_inclusao: TDateTimeField;
    strngfldQryListagemsigla_igreja: TStringField;
    strngfldQryListagemsite: TStringField;
    strngfldQryListagememail: TStringField;
    strngfldQryListagemcnpj: TStringField;
    strngfldQryListagemlogradouro: TStringField;
    strngfldQryListagembairro: TStringField;
    strngfldQryListagemuf: TStringField;
    strngfldQryListagemfone: TStringField;
    QryListagemfoto: TBlobField;
    intgrfldQryListagempercentual_ajuste: TIntegerField;
    intgrfldQryListagemsistema: TIntegerField;
    lbledtCidade: TLabeledEdit;
    lbledtPresidente: TLabeledEdit;
    lbledtSigla: TLabeledEdit;
    lbledtSite: TLabeledEdit;
    lbledtEmail: TLabeledEdit;
    lbledtCNPJ: TLabeledEdit;
    lbledtLogradouro: TLabeledEdit;
    lbledtBairro: TLabeledEdit;
    lbledtPercAjuste: TLabeledEdit;
    pnlImage: TPanel;
    imgFoto: TImage;
    dlgOpenPicBuscarFoto: TOpenPictureDialog;
    lbledtemail_secretaria: TLabeledEdit;
    medtCEP: TMaskEdit;
    lblCEP: TLabel;
    medtFone: TMaskEdit;
    lbl14: TLabel;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CarregarImagem1Click(Sender: TObject);
    procedure imgFotoDblClick(Sender: TObject);
    procedure dtsListagemDataChange(Sender: TObject; Field: TField);
    procedure medtFoneChange(Sender: TObject);
  private
    { Private declarations }
    oIgreja: TIgreja;
    function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadIgreja: TfrmCadIgreja;

implementation

uses
  uDTMConexao;

{$R *.dfm}

{$REGION 'Override'}
function TfrmCadIgreja.Apagar: Boolean;
begin
if oIgreja.Selecionar(QryListagem.FieldByName('cod_igreja').AsInteger) then
      Result:=oIgreja.Apagar;
end;


function TfrmCadIgreja.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
    if lbledt_codigo.Text<>EmptyStr then
       oIgreja.cod_igreja:=StrToInt(lbledt_codigo.Text)
       else
       oIgreja.cod_igreja:=0;
       oIgreja.nome_igreja:=lbledtNome.Text;
       oIgreja.sigla_igreja := lbledtSigla.Text;
       oIgreja.nome_presidente:= lbledtPresidente.Text;
       oIgreja.site:= lbledtSite.Text;
       oIgreja.logradouro:= lbledtLogradouro.Text;
       oIgreja.bairro:= lbledtBairro.Text;
       oIgreja.percentual_ajuste:= StrToInt( lbledtPercAjuste.Text);
       oIgreja.cidade := lbledtCidade.Text;
       oIgreja.email := lbledtEmail.Text;
       oIgreja.cnpj:= lbledtCNPJ.Text;
       oIgreja.email_secretaria:=lbledtemail_secretaria.Text;
       oIgreja.cep:=medtCEP.Text;
       oIgreja.fone:= medtFone.Text;


    if (EstadodoCadastro=ecInserir) then
    Result:=oIgreja.Inserir
    else if (EstadodoCadastro=ecAlterar) then
     Result:=oIgreja.Atualizar;

end;
procedure TfrmCadIgreja.imgFotoDblClick(Sender: TObject);
var jpg : TJPEGImage;
begin
  inherited;
if dlgOpenPicBuscarFoto.Execute then
begin
try
  dtsListagem.Edit;
  jpg:= TJPEGImage.Create;
  // dtmcon.fdqryMembroFOTO.
  QryListagemfoto.LoadFromFile(dlgOpenPicBuscarFoto.FileName);
  //dtmcon.fdqryMembroFOTO.LoadFromFile(dlgOpenPicBuscarFoto.FileName);
  //jpg.CompressionQuality :=7;
  jpg.LoadFromFile(dlgOpenPicBuscarFoto.FileName);
  imgFoto.Picture.Assign(jpg);
  jpg.Free;
except
 on E: Exception do begin
 jpg.Free;
 Application.MessageBox('Arquivo não permitido!','Atenção');
 end;
end;
end;
end;

procedure TfrmCadIgreja.medtFoneChange(Sender: TObject);
begin
  inherited;

end;

{$endregion}

procedure TfrmCadIgreja.btnAlterarClick(Sender: TObject);
begin
  if oIgreja.Selecionar(QryListagem.FieldByName('cod_igreja').AsInteger) then
  begin
    lbledt_codigo.Text    := IntToStr(oIgreja.cod_igreja);
    lbledtNome.Text       := oIgreja.nome_igreja;
    lbledtPresidente.Text := oIgreja.nome_presidente;
    lbledtCidade.Text     := oIgreja.cidade;
    lbledtEmail.Text      := oIgreja.email;
    lbledtBairro.Text     := oIgreja.bairro;
    lbledtLogradouro.Text := oIgreja.logradouro;
    lbledtSite.Text       := oIgreja.site;
    lbledtSigla.Text      := oIgreja.sigla_igreja;
    lbledtPercAjuste.Text :=oIgreja.percentual_ajuste.ToString();
    lbledtCNPJ.Text       := oIgreja.cnpj;
    lbledtemail_secretaria.Text:=oIgreja.email_secretaria;
    medtCEP.Text:=oIgreja.cep;
    medtFone.Text:=oIgreja.fone;
    end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;

procedure TfrmCadIgreja.btnNovoClick(Sender: TObject);
begin
  inherited;
  //dtdtNascimento.Date := Date;
  lbledtNome.SetFocus;
end;


procedure TfrmCadIgreja.CarregarImagem1Click(Sender: TObject);
//var jpg : TJPEGImage;
begin
  inherited;
 {
if dlgOpenPicBuscarFoto.Execute  then
begin
try
  dsIgreja.Edit;
  jpg:= TJPEGImage.Create;
  // dtmcon.fdqryMembroFOTO.
  dtmConexao.fdqryIgrejafoto.LoadFromFile(dlgOpenPicBuscarFoto.FileName);
  //dtmcon.fdqryMembroFOTO.LoadFromFile(dlgOpenPicBuscarFoto.FileName);
  jpg.LoadFromFile(dlgOpenPicBuscarFoto.FileName);
  imgFoto.Picture.Assign(jpg);
  jpg.Free;
except
 on E: Exception do begin
 jpg.Free;
 Application.MessageBox('Arquivo não permitido!','Atenção');
 end;
end;
end;  }
end;

procedure TfrmCadIgreja.dtsListagemDataChange(Sender: TObject; Field: TField);
var jpg1 : TJPEGImage;
stream : TMemoryStream;
caminho: AnsiString;
//ARQUIVO BINARIOS AUDIO, VIDEO E FOTOS
begin
  inherited;
  if not QryListagemfoto.IsNull then
   BEGIN
   try
  // ALOCANDO ESPAÇO NA MEMORIA RAM
  jpg1:= TJPEGImage.Create;
  stream:= TMemoryStream.Create;
  //CARREGANDO A IMAGEM PARA A MEMORIA RAM
  QryListagemfoto.SaveToStream(stream);
  //VOLTANDO O PONTEIRO PARA O INICIO DOS DADOS
  stream.Seek(0, soFromBeginning);
  //GRANDO A INFORMAÇÃO NA JPG
  jpg1.LoadFromStream(stream);
  //CARREGANDO A  IMAGEM NO IMAGE
  imgFoto.Picture.Assign(jpg1);
  //LIBERANDO MEMORIA APAGANDO AS INSTANCIAS
  jpg1.Free;
  stream.Free;
   except
      on e : Exception do begin
       jpg1.Free;
      stream.Free;
      MessageBox(Application.Handle, PChar(e.Message),PChar('Falha ao carregar a imagem da Igreja'),MB_OK+MB_ICONWARNING);
      end;
   end;
   END
   else
   begin
  // caminho:=(ExtractFilePath(Application.ExeName) + 'semfoto.jpg');
   caminho :='C:\mysql\img\semfoto.jpg';
   imgFoto.Picture.LoadFromFile(caminho);
   //imgFoto.Picture.LoadFromFile('C:\Program Files (x86)\Eltecom\semfoto.jpg');
     //imgFoto.Picture.Assign(nil);
   end;
end;

procedure TfrmCadIgreja.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(oIgreja) then
    FreeAndNil(oIgreja);
end;

procedure TfrmCadIgreja.FormCreate(Sender: TObject);
begin
  inherited;
oIgreja := TIgreja.Create(dtmPrincipal.ConexaoDB);
  IndiceAtual := 'cod_igreja';
end;

end.
