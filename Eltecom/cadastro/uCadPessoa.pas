unit uCadPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,
  cCadPessoa, RxToolEdit, uDTMConexao, uEnum, Vcl.Menus,cFuncao,
  Vcl.Imaging.jpeg, Vcl.ExtDlgs, uDWResponseTranslator, uDWAbout, uDWConstsData,
  uRESTDWPoolerDB;

type
  TfrmCadPessoa = class(TfrmTelaheranca)
    grpDatas: TGroupBox;
    lbl1: TLabel;
    lbl1btespirito: TLabel;
    lblMembroCongregado: TLabel;
    lblbtaguas: TLabel;
    dtdtBtaguas: TDateEdit;
    dtdtbtespirito: TDateEdit;
    dtdtConversao: TDateEdit;
    dtdtMembroCongregado: TDateEdit;
    grpEscolaridade: TGroupBox;
    cbbAcademica: TComboBox;
    lbl3: TLabel;
    lbl4: TLabel;
    cbbSitAcad: TComboBox;
    lbl5: TLabel;
    lbl6: TLabel;
    cbbFormTeo: TComboBox;
    lbl7: TLabel;
    lbl8: TLabel;
    cbbSitformteo: TComboBox;
    lbledtOrigecles: TLabeledEdit;
    lbledtProcedeclesi: TLabeledEdit;
    grpCivil: TGroupBox;
    cbbEstdCivil: TComboBox;
    lbl9: TLabel;
    cbbEstcivianterior: TComboBox;
    lbl10: TLabel;
    lbledtNomeConjugue: TLabeledEdit;
    dtdtCasamento: TDateEdit;
    lbl11: TLabel;
    grpResidencia: TGroupBox;
    lbledtEmail: TLabeledEdit;
    lbledtBairro: TLabeledEdit;
    lbledtEndereco: TLabeledEdit;
    lbledtCidade: TLabeledEdit;
    lblCEP: TLabel;
    medtCEP: TMaskEdit;
    lblTelefone: TLabel;
    medtTelefoneCel: TMaskEdit;
    lbledtComplemento: TLabeledEdit;
    cbbEstadoImovel: TComboBox;
    lbl12: TLabel;
    cbbUfImovel: TComboBox;
    lbl13: TLabel;
    lbl14: TLabel;
    medtTelFixo: TMaskEdit;
    grpProfissional: TGroupBox;
    lbledtProfissao: TLabeledEdit;
    lbledtHabprof: TLabeledEdit;
    lbledtEmpregoAtual: TLabeledEdit;
    lbledtFuncao: TLabeledEdit;
    lbl15: TLabel;
    medtTeltrabalho: TMaskEdit;
    pnlImagem: TPanel;
    imgFoto: TImage;
    QryListagemcod_pessoa: TFDAutoIncField;
    QryListagemnome_pessoa: TStringField;
    QryListagemfoto: TBlobField;
    QryListagemsexo: TStringField;
    QryListagemnome_pai: TStringField;
    QryListagemnome_mae: TStringField;
    QryListagemdta_nascimento: TDateField;
    QryListagemnaturalidade: TStringField;
    QryListagemuf_nascimento: TStringField;
    QryListagemnacionalidade: TStringField;
    QryListagemnrorg: TStringField;
    QryListagemorgaorg: TStringField;
    QryListagemcpf: TStringField;
    QryListagememail: TStringField;
    QryListagemgrau_instr_situacao: TStringField;
    QryListagemgrau_instrucao: TStringField;
    QryListagemform_teo_situacao: TStringField;
    QryListagemformacao_teologica: TStringField;
    QryListagemestado_civil_atual: TStringField;
    QryListagemestado_civil_anterior: TStringField;
    QryListagemnome_conjugue: TStringField;
    QryListagemdta_casamento: TDateField;
    QryListagemlogradouro: TStringField;
    QryListagemuf_endereco: TStringField;
    QryListagemestado_casa: TStringField;
    QryListagemcomplemento: TStringField;
    QryListagemfone_residencial: TStringField;
    QryListagembairro: TStringField;
    QryListagemcep: TStringField;
    QryListagemcidade: TStringField;
    QryListagemfone_celular: TStringField;
    QryListagemdta_conversao: TDateField;
    QryListagemdta_batismo_esprito: TDateField;
    QryListagemdta_batismo_aguas: TDateField;
    QryListagemdta_congregado: TDateField;
    QryListagemlocal_descisao_congregado: TStringField;
    QryListagemdta_membro: TDateField;
    QryListagemorigem_eclesiastica: TStringField;
    QryListagemproced_eclesiastica: TStringField;
    QryListagemprofissao: TStringField;
    QryListagemhabilitacao_profissional: TStringField;
    QryListagememprego_atual: TStringField;
    QryListagemfuncao: TStringField;
    QryListagemfone_trabalho: TStringField;
    QryListagemigreja: TStringField;
    QryListagemsetor: TStringField;
    QryListagemcongregacao: TStringField;
    QryListagemnro_rol: TStringField;
    QryListagemnro_cad_congregado: TStringField;
    QryListagemmembro_congregado: TStringField;
    QryListagemdta_inclusao: TDateField;
    QryListagemUSUARIO_CADASTRO: TStringField;
    QryListagemSITUACAO: TStringField;
    QryListagemcod_congregacao: TIntegerField;
    QryListagemcod_situacao: TIntegerField;
    dlgOpenPicBuscarFoto: TOpenPictureDialog;
    pnl1: TPanel;
    imgFotoP: TImage;
    lblnome: TLabel;
    lblEstadoCivil: TLabel;
    lbl16: TLabel;
    btnConsultaCEP: TSpeedButton;
    dwGetCEP: TRESTDWClientSQL;
    DWResponseTranslatorCEP: TDWResponseTranslator;
    DWClientRESTCEP: TDWClientREST;
    pnlBasicas: TPanel;
    lbledt_codigo: TLabeledEdit;
    lbledtNome: TLabeledEdit;
    cbbMembCong: TComboBox;
    cbbSexo: TComboBox;
    lbledtRol: TLabeledEdit;
    lblSexo: TLabel;
    lblTipo: TLabel;
    lbledtNatural: TLabeledEdit;
    cbbUFnascimento: TComboBox;
    lblufnascimento: TLabel;
    medtCPF: TMaskEdit;
    lbledtRG: TLabeledEdit;
    lbledtNacionalidade: TLabeledEdit;
    lbledtNomeMae: TLabeledEdit;
    lbledtNomePai: TLabeledEdit;
    lblDataNascimento: TLabel;
    dtdtNascimento: TDateEdit;
    lblcpf: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure grdListagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbMembCongChange(Sender: TObject);
    procedure mniLimparImagem1Click(Sender: TObject);
    procedure mniCarregarImagem1Click(Sender: TObject);
    procedure pgcPrincipalChange(Sender: TObject);
    procedure imgFotoDblClick(Sender: TObject);
    procedure dtsListagemDataChange(Sender: TObject; Field: TField);
    procedure grdListagemCellClick(Column: TColumn);
    procedure grdListagemTitleClick(Column: TColumn);
    procedure btnGravarClick(Sender: TObject);
    procedure btnConsultaCEPClick(Sender: TObject);
    procedure DWClientRESTCEPBeforeGet(var AUrl: string;
      var AHeaders: TStringList);
    procedure medtCPFExit(Sender: TObject);
  private
    { Private declarations }
    oPessoa: TPessoa;
    function Apagar: Boolean; override;
    function Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean; override;
    procedure Tipo;
  public
    { Public declarations }
  end;

var
  frmCadPessoa: TfrmCadPessoa;

implementation

{$R *.dfm}
{$REGION 'Override'}

function TfrmCadPessoa.Apagar: Boolean;
begin
  if oPessoa.Selecionar(QryListagem.FieldByName('cod_pessoa').AsInteger) then
    Result := oPessoa.Apagar;
end;

function TfrmCadPessoa.Gravar(EstadodoCadastro: TEstadoDoCadastro): Boolean;
var jpg : TJPEGImage;
begin
  if lbledt_codigo.Text <> EmptyStr then
    oPessoa.cod_pessoa := StrToInt(lbledt_codigo.Text)
  else
  oPessoa.cod_pessoa := 0;
  oPessoa.nome              := lbledtNome.Text;
  oPessoa.nome_pai          := lbledtNomePai.Text;
  oPessoa.nome_mae          := lbledtNomeMae.Text;
  oPessoa.sexo              := cbbSexo.Text;
  oPessoa.dta_nascimento    := dtdtNascimento.Date;
  oPessoa.cod_congregacao   := dtmPrincipal.congAtiva;
  oPessoa.nro_rol           := StrToInt(lbledtRol.Text);
  oPessoa.nrorg             := lbledtRG.Text;
  oPessoa.nacionalidade     := lbledtNacionalidade.Text;
  oPessoa.naturalidade      := lbledtNatural.Text;
  oPessoa.dta_casamento     := dtdtCasamento.Date;
  oPessoa.dta_conversao     :=dtdtConversao.Date;
  oPessoa.dta_batismo_esprito :=dtdtbtespirito.Date;
  oPessoa.dta_batismo_aguas   :=dtdtBtaguas.Date;

  oPessoa.cep               := medtCEP.Text;
  oPessoa.logradouro        := lbledtEndereco.Text;
  oPessoa.bairro            := lbledtBairro.Text;
  oPessoa.cidade            := lbledtCidade.Text;
  oPessoa.fone_celular      := medtTelefoneCel.Text;
  oPessoa.fone_residecial   := medtTelFixo.Text;
  oPessoa.fone_trabalho := medtTeltrabalho.Text;
  oPessoa.membro_congregado := cbbMembCong.Text;
  oPessoa.cpf               :=  medtCPF.Text;
  oPessoa.funcao            := lbledtFuncao.Text;
  oPessoa.uf_nascimento     := cbbUFnascimento.Text;
  oPessoa.uf_endereco       := cbbUfImovel.Text;
  oPessoa.congregacao       := dtmPrincipal.descCongAtiva;
  oPessoa.setor             :=dtmPrincipal.setor;
  oPessoa.estado_civil_atual := cbbEstdCivil.Text;
  oPessoa.estado_civil_anterior:=cbbEstcivianterior.Text;
  oPessoa.nome_conjugue     :=lbledtNomeConjugue.Text;
  oPessoa.email             := lbledtEmail.Text;
  oPessoa.profissao:= lbledtProfissao.Text;
  oPessoa.habilitacao_profissional := lbledtHabprof.Text;
  oPessoa.emprego_atual := lbledtEmpregoAtual.Text;
  oPessoa.funcao := lbledtFuncao.Text;
  oPessoa.grau_instrucao     :=cbbAcademica.Text;
  oPessoa.grau_inst_situacao := cbbSitAcad.Text;
  oPessoa.formacao_teologica := cbbFormTeo.Text;
  oPessoa.form_teo_situacao  := cbbSitformteo.Text;
  oPessoa.origem_eclesiastica :=lbledtOrigecles.Text;
  oPessoa.proced_eclesiastica :=lbledtProcedeclesi.Text;

     if cbbMembCong.Text ='CONGREGADO' then
    oPessoa.dta_congregado        :=dtdtMembroCongregado.Date else
    oPessoa.dta_membro        :=dtdtMembroCongregado.Date;

 //jpg.LoadFromFile(imgFoto.Picture.Bitmap);

 if imgFoto.Picture.Bitmap.Empty then
 begin
     oPessoa.foto.Assign(nil)
   //imgFoto.Picture.LoadFromFile('C:\mysql\img\semfoto.jpg');
 end
     else
     begin
      oPessoa.foto.Assign(imgFoto.Picture);
     end;

  if (EstadodoCadastro = ecInserir) then
    Result := oPessoa.Inserir
  else if (EstadodoCadastro = ecAlterar) then
    Result := oPessoa.Atualizar;

end;

procedure TfrmCadPessoa.grdListagemCellClick(Column: TColumn);
 var jpg1 : TJPEGImage;
stream : TMemoryStream;
caminho: AnsiString;
begin
  inherited;
lblnome.Caption:= QryListagemnome_pessoa.Text;
lblEstadoCivil.Caption:= 'Estado Civ�l:'+QryListagemestado_civil_atual.Text ;
//ARQUIVO BINARIOS AUDIO, VIDEO E FOTOS
begin
  inherited;
  if not QryListagemfoto.IsNull then
   BEGIN
   try
  // ALOCANDO ESPA�O NA MEMORIA RAM
  jpg1:= TJPEGImage.Create;
  stream:= TMemoryStream.Create;
  //CARREGANDO A IMAGEM PARA A MEMORIA RAM
  QryListagemfoto.SaveToStream(stream);
  //VOLTANDO O PONTEIRO PARA O INICIO DOS DADOS
  stream.Seek(0, soFromBeginning);
  //GRANDO A INFORMA��O NA JPG
  jpg1.LoadFromStream(stream);
  //CARREGANDO A  IMAGEM NO IMAGE
  imgFotoP.Picture.Assign(jpg1);
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
   imgFotoP.Picture.LoadFromFile(caminho);
   //imgFoto.Picture.LoadFromFile('C:\Program Files (x86)\Eltecom\semfoto.jpg');
     //imgFoto.Picture.Assign(nil);
   end;
end;
end;

procedure TfrmCadPessoa.grdListagemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var jpg1 : TJPEGImage;
stream : TMemoryStream;
caminho: AnsiString;
begin
  inherited;
BloqueiaCTRL_DEL_DBGRID(Key,Shift);
    lblnome.Caption:= QryListagemnome_pessoa.Text;
    lblEstadoCivil.Caption:= 'Estado Civ�l:'+QryListagemestado_civil_atual.Text;
//ARQUIVO BINARIOS AUDIO, VIDEO E FOTOS
begin
  inherited;
  if not QryListagemfoto.IsNull then
   BEGIN
   try
  // ALOCANDO ESPA�O NA MEMORIA RAM
  jpg1:= TJPEGImage.Create;
  stream:= TMemoryStream.Create;
  //CARREGANDO A IMAGEM PARA A MEMORIA RAM
  QryListagemfoto.SaveToStream(stream);
  //VOLTANDO O PONTEIRO PARA O INICIO DOS DADOS
  stream.Seek(0, soFromBeginning);
  //GRANDO A INFORMA��O NA JPG
  jpg1.LoadFromStream(stream);
  //CARREGANDO A  IMAGEM NO IMAGE
  imgFotoP.Picture.Assign(jpg1);
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
   imgFotoP.Picture.LoadFromFile(caminho);
   //imgFoto.Picture.LoadFromFile('C:\Program Files (x86)\Eltecom\semfoto.jpg');
     //imgFoto.Picture.Assign(nil);
   end;
end;
end;

procedure TfrmCadPessoa.grdListagemTitleClick(Column: TColumn);
begin
  inherited;
lblnome.Caption:= QryListagemnome_pessoa.Text;
lblEstadoCivil.Caption:= 'Estado Civ�l:'+QryListagemestado_civil_atual.Text;
end;

procedure TfrmCadPessoa.imgFotoDblClick(Sender: TObject);
var jpg : TJPEGImage;
   foto_stream : TMemoryStream;
begin
  inherited;
if dlgOpenPicBuscarFoto.Execute then
begin

   foto_stream := TMemoryStream.Create;
   foto_stream.Clear;

      foto_stream.LoadFromFile( dlgOpenPicBuscarFoto.FileName );
      if ( foto_stream.Size < 200000 ) then begin
         imgFoto.Picture.LoadFromFile( dlgOpenPicBuscarFoto.FileName );
      end else begin
         showMessage( 'Tamanho da imagem excedeu 200Kb' );
         Abort;
      end;


{imgFoto.Picture.LoadFromFile(dlgOpenPicBuscarFoto.FileName);
     //Label1.Caption := Format('%dx%d', [imgFoto.Picture.Height, imgFoto.Picture.Width]);
     if (imgFoto.Picture.Height > 200) and (imgFoto.Picture.Width > 200) then
     begin
          imgFoto.Picture := nil;
          ShowMessage('Imagem maior do que o esperado');
     end;  }

try
  dtsListagem.Edit;
  jpg:= TJPEGImage.Create;
  // dtmcon.fdqryMembroFOTO.
  QryListagemfoto.LoadFromFile(dlgOpenPicBuscarFoto.FileName);
  //dtmcon.fdqryMembroFOTO.LoadFromFile(dlgOpenPicBuscarFoto.FileName);
  jpg.CompressionQuality :=7;
  jpg.LoadFromFile(dlgOpenPicBuscarFoto.FileName);
  imgFoto.Picture.Assign(jpg);
  jpg.Free;
except
 on E: Exception do begin
 jpg.Free;
 Application.MessageBox('Arquivo n�o permitido!','Aten��o');
 end;
end;
end;
end;

procedure TfrmCadPessoa.medtCPFExit(Sender: TObject);
var qry:TFDQuery;
qtd :Integer;
begin
  inherited;
//TODO: CONSULTAR SE O CPF INFORMADO J� EXISTE NA BASE
if medtCPF.Text <> '   .   .   -  ' then   begin

   qtd  := StrToInt(dtmPrincipal.ConexaoDB.ExecSQLScalar('SELECT COUNT(*) AS QTD FROM TB_PESSOA WHERE CPF=:CPF',[medtCPF.Text]));
   if qtd > 0 then   begin
     ShowMessage('CPF informado j� est� cadastrado! Favor verificar: '+medtCPF.Text);
     medtCPF.Clear;
     medtCPF.SetFocus;
   end;
end;

end;

procedure TfrmCadPessoa.mniCarregarImagem1Click(Sender: TObject);
begin
  inherited;
 TFuncao.CarregarImagem(imgFoto);
end;

procedure TfrmCadPessoa.mniLimparImagem1Click(Sender: TObject);
begin
  inherited;
    TFuncao.LimparImagem(imgFoto);
end;

procedure TfrmCadPessoa.pgcPrincipalChange(Sender: TObject);
begin
  inherited;

end;

{$ENDREGION}

procedure TfrmCadPessoa.btnAlterarClick(Sender: TObject);
var JPG: TImage;
begin
  if oPessoa.Selecionar(QryListagem.FieldByName('cod_pessoa').AsInteger) then
  begin
    lbledt_codigo.Text    := IntToStr(oPessoa.cod_pessoa);
    lbledtNome.Text       := oPessoa.nome;
    lbledtCidade.Text     := oPessoa.cidade;
    lbledtEmail.Text      := oPessoa.email;
    lbledtBairro.Text     := oPessoa.bairro;
    lbledtEndereco.Text   := oPessoa.logradouro;
    lbledtNomePai.Text    := oPessoa.nome_pai;
    lbledtNomeMae.Text    := oPessoa.nome_mae;
    medtTelFixo.Text      := oPessoa.fone_residecial;
    medtTelefoneCel.Text     := oPessoa.fone_celular;
    medtTeltrabalho.Text  := oPessoa.fone_trabalho;
    cbbSexo.Text          := oPessoa.sexo;
    cbbUFnascimento.Text  := oPessoa.uf_nascimento;
    cbbUfImovel.Text      := oPessoa.uf_endereco;
    cbbMembCong.Text      := oPessoa.membro_congregado;
    lbledtRG.Text         := oPessoa.nrorg;
    lbledtNatural.Text    := oPessoa.naturalidade;
    lbledtNacionalidade.Text:=oPessoa.nacionalidade;
    lbledtRol.Text        :=IntToStr(oPessoa.nro_rol);
    medtCEP.Text          := oPessoa.cep;
    lbledtProfissao.Text :=oPessoa.profissao;
    lbledtHabprof.Text :=oPessoa.habilitacao_profissional;
    lbledtEmpregoAtual.Text :=oPessoa.emprego_atual;
    lbledtFuncao.Text:=oPessoa.funcao;
    cbbAcademica.Text:= oPessoa.grau_instrucao;
    cbbSitAcad.Text:=oPessoa.SITUACAO;
    cbbFormTeo.Text:=oPessoa.formacao_teologica;
    cbbSitformteo.Text:=oPessoa.form_teo_situacao;
    lbledtOrigecles.Text:=oPessoa.origem_eclesiastica;
    lbledtProcedeclesi.Text:=oPessoa.proced_eclesiastica;
        if DateToStr(oPessoa.dta_nascimento)='30/12/1899' then
    dtdtNascimento.Clear  else dtdtNascimento.Text      :=DateToStr(oPessoa.dta_nascimento) ;
    if DateToStr(oPessoa.dta_batismo_aguas)='30/12/1899' then
    dtdtBtaguas.Clear  else dtdtBtaguas.Text      :=DateToStr(oPessoa.dta_batismo_aguas) ;
    if DateToStr(oPessoa.dta_batismo_esprito)='30/12/1899' then
    dtdtbtespirito.Clear  else dtdtbtespirito.Text      :=DateToStr(oPessoa.dta_batismo_esprito) ;
    if DateToStr(oPessoa.dta_conversao)='30/12/1899' then
    dtdtConversao.Clear  else dtdtConversao.Text      :=DateToStr(oPessoa.dta_conversao) ;
    if DateToStr(oPessoa.dta_casamento)='30/12/1899' then
    dtdtCasamento.Clear  else dtdtCasamento.Text      :=DateToStr(oPessoa.dta_casamento) ;
    if DateToStr(oPessoa.dta_membro)='30/12/1899' then
    dtdtMembroCongregado.Clear  else dtdtMembroCongregado.Text      :=DateToStr(oPessoa.dta_membro) ;

    dtdtMembroCongregado.Text  :=DateToStr(oPessoa.dta_membro);

    if cbbMembCong.Text ='CONGREGADO' then
  begin
    if DateToStr(oPessoa.dta_membro)='30/12/1899' then
    dtdtMembroCongregado.Clear  else dtdtMembroCongregado.Text      :=DateToStr(oPessoa.dta_congregado) ;
    dtdtMembroCongregado.Text  :=DateToStr(oPessoa.dta_congregado);
  end;


    dtdtMembroCongregado.Text  :=DateToStr(oPessoa.dta_membro);
    //dtdtMembro.Text  :=DateToStr(oPessoa.dta_congregado);
    medtCPF.Text          := oPessoa.cpf;
    lbledtNomeConjugue.Text:= oPessoa.nome_conjugue;
    lbledtFuncao.Text := oPessoa.funcao;
    cbbSitAcad.Text       := oPessoa.grau_inst_situacao;
     cbbAcademica.Text    := oPessoa.grau_instrucao;
     cbbFormTeo.Text      := oPessoa.formacao_teologica;
     cbbSitformteo.Text    := oPessoa.form_teo_situacao;
     cbbEstdCivil.Text        :=oPessoa.estado_civil_atual;
     cbbEstcivianterior.Text  :=oPessoa.estado_civil_anterior;
     lbledtNomeConjugue.Text  :=oPessoa.nome_conjugue;
     //imgFoto.Picture.Assign(oPessoa.foto);

     { if oPessoa.foto.Empty then
     //if oPessoa.foto. then
      //imgFoto.Picture.Assign(JPG)
      imgFoto.Picture.LoadFromFile('C:\mysql\img\semfoto.jpg')
      else
     imgFoto.Picture.Assign(oPessoa.foto);  }
    // cbbEstdCivil.Text    := oPessoa.
    //      :=
   {
    cbbEstcivianterior.Text

    cbbSitAcad.Text
    cbbFormTeo.Text

    lbledtOrigecles.Text
    lbledtProcedeclesi.Text }
       end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;

procedure TfrmCadPessoa.btnConsultaCEPClick(Sender: TObject);

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
        "logradouro": "Rua Jo�o Pessoa",
        "complemento": "at� 743/744",
        "bairro": "Centro",
        "localidade": "Crici�ma",
        "uf": "SC",
        "unidade": "",
        "ibge": "4204608",
        "gia": ""
      }
      lbledtEndereco.Text := dwGetCEP.FieldByName('logradouro').AsString;
      lbledtComplemento.Text := dwGetCEP.FieldByName('complemento').AsString;
      lbledtBairro.Text := dwGetCEP.FieldByName('bairro').AsString;
      lbledtCidade.Text := dwGetCEP.FieldByName('localidade').AsString;
      cbbUfImovel.ItemIndex := cbbUfImovel.Items.IndexOf(dwGetCEP.FieldByName('uf').AsString);
    end
    else
      ShowMessage('CEP n�o encontrado!');

    Screen.Cursor := crDefault;
  end
  else
    ShowMessage('CEP inv�lido, verifique!'+medtCEP.Text);
end;

procedure TfrmCadPessoa.btnGravarClick(Sender: TObject);
begin
  inherited;
imgFoto.Enabled:=true;
end;

procedure TfrmCadPessoa.btnNovoClick(Sender: TObject);
begin
  inherited;
  dtdtNascimento.Date := Date;
  lbledtNome.SetFocus;
  cbbMembCong.ItemIndex:=0;
  imgFoto.Enabled:=false;
end;

procedure TfrmCadPessoa.cbbMembCongChange(Sender: TObject);
begin
  inherited;
  Tipo;

end;

procedure TfrmCadPessoa.dtsListagemDataChange(Sender: TObject; Field: TField);
var jpg1 : TJPEGImage;
stream : TMemoryStream;
caminho: AnsiString;
//ARQUIVO BINARIOS AUDIO, VIDEO E FOTOS
begin
  inherited;
  if not QryListagemfoto.IsNull then
   BEGIN
   try
  // ALOCANDO ESPA�O NA MEMORIA RAM
  jpg1:= TJPEGImage.Create;
  stream:= TMemoryStream.Create;
  //CARREGANDO A IMAGEM PARA A MEMORIA RAM
  QryListagemfoto.SaveToStream(stream);
  //VOLTANDO O PONTEIRO PARA O INICIO DOS DADOS
  stream.Seek(0, soFromBeginning);
  //GRANDO A INFORMA��O NA JPG
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

procedure TfrmCadPessoa.DWClientRESTCEPBeforeGet(var AUrl: string;
  var AHeaders: TStringList);
begin
  inherited;
   AUrl := format('https://viacep.com.br/ws/%s/json/', [medtCEP.Text]);
end;

procedure TfrmCadPessoa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(oPessoa) then
    FreeAndNil(oPessoa);
end;

procedure TfrmCadPessoa.FormCreate(Sender: TObject);
begin
//QryListagem.ParamByName('cod_congregacao').AsInteger:=dtmPrincipal.congAtiva;
  inherited;
  oPessoa := TPessoa.Create(dtmPrincipal.ConexaoDB);
  IndiceAtual := 'cod_pessoa';
end;

procedure TfrmCadPessoa.Tipo;
begin
  if cbbMembCong.Text = 'MEMBRO' then
  begin
  lblMembroCongregado.Caption:= 'Membro desde';
  end;
  if cbbMembCong.Text ='CONGREGADO' then
  begin
    lblMembroCongregado.Caption:= 'Congregado desde';
  end;
end;

end.
