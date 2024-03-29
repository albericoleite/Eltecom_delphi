unit cFuncao;

interface

uses System.Classes, Vcl.Controls,  Winapi.Windows,
  Vcl.ExtCtrls, Vcl.Dialogs, FireDAC.Comp.Client, System.SysUtils,cAcaoAcesso,cUsuarioLogado,Vcl.Forms
  ,Vcl.Imaging.jpeg,Vcl.Imaging.pngimage,Vcl.Graphics,Vcl.ExtDlgs,IdComponent,
IdTCPConnection,
IdTCPClient,
IdHTTP,
IdBaseComponent,
IdMessage,
IdExplicitTLSClientServerBase,
IdMessageClient,
IdSMTPBase,
IdSMTP,
IdIOHandler,
IdIOHandlerSocket,
IdIOHandlerStack,
IdSSL,
IdSSLOpenSSL,
IdAttachmentFile,IdText;

  type
  TFuncao = class
  private





  public
  class procedure CriarForm(aNomeForm: TFormClass;oUsuarioLogado:TUsuarioLogado;aConexao: TFDConnection);static;
  class procedure CarregarImagem(aImage:TImage);static;
  class procedure LimparImagem(var aImage:TImage);static;
  class function ExtensoMes(n: Integer): String; static;
  class function SqlValor(sql:string; aConexao: TFDConnection):String;static;
  class function ExecuteSQL(sql: string; aConexao: TFDConnection): Boolean;static;
   class function EnviarEmail(const AAssunto, ADestino, AAnexo: String;
      ACorpo: TStrings): Boolean; static;
  class function VerificarBackup(): String; static;
  end;

implementation

uses
  uPrincipal;

{ TFuncao }

class procedure TFuncao.CarregarImagem(aImage: TImage);
 var
  Bmp, BmpTrans: TBitmap;
  Jpg: TJPEGImage;
  Pic: TPicture;
  Png: TPngImage;
  opdSelecionar:TOpenPictureDialog;
  iWidth:Integer;
  iHeight:Integer;
begin
  Try
    iWidth:=160;
    iHeight:=130;
    opdSelecionar:=TOpenPictureDialog.Create(nil);
    opdSelecionar.Filter:='All (*.bmp;*.jpg; *.jpeg;*.png)|*.jpg; *.jpeg; *.bmp;*.png|Bitmaps '+
                          '(*.bmp)|*.bmp|JPEG Image File (*.jpg;*.jpeg)|*.jpg; *.jpeg| '+
                          'PNG(*.png)|*.png';
    opdSelecionar.Title:='Selecione a Imagem';
    opdSelecionar.Execute;

    if opdSelecionar.FileName<>EmptyStr then begin
      if (Pos('.JPG',UpperCase(opdSelecionar.FileName))>0) or ( Pos('.JPEG',UpperCase(opdSelecionar.FileName))>0) then begin
        Bmp := TBitmap.Create;
        Jpg := TJPEGImage.Create;
        Pic := TPicture.Create;
        try
          Pic.LoadFromFile(opdSelecionar.FileName);
          Jpg.Assign(Pic);
          Jpg.CompressionQuality :=7;
          Bmp.Width  :=iWidth;
          Bmp.Height :=iHeight;
          Bmp.Canvas.StretchDraw(Rect(0, 0, Bmp.width, Bmp.Height), Jpg);
          aImage.Picture.Bitmap:=Bmp;
        finally
          Pic.Free;
          Jpg.Free;
          Bmp.Free;
        end
      End
      else if Pos('.PNG',UpperCase(opdSelecionar.FileName))>0 then begin
        Bmp := TBitmap.Create;
        png := TPngImage.Create;
        Pic := TPicture.Create;
        try
          Pic.LoadFromFile(opdSelecionar.FileName);
          png.Assign(Pic);
          Bmp.Width  :=iWidth;
          Bmp.Height :=iHeight;
          Bmp.Canvas.StretchDraw(Rect(0, 0, Bmp.width, Bmp.Height), png);

          aImage.Picture.Bitmap:=Bmp;

        finally
          Pic.Free;
          png.Free;
          Bmp.Free;
        end
      end
      else begin
        try
          Bmp := TBitmap.Create;
          BmpTrans:= TBitmap.Create;
          Pic := TPicture.Create;

          Pic.LoadFromFile(opdSelecionar.FileName);
          BmpTrans.Assign(Pic.Bitmap);
          Bmp.Width :=iWidth;
          Bmp.Height:=iHeight;
          Bmp.Canvas.StretchDraw(Rect(0, 0, Bmp.width, Bmp.Height), BmpTrans);
          aImage.Picture.Bitmap:=Bmp;
        finally
          Pic.Free;
          BmpTrans.Free;
          Bmp.Free;
        end;
      end;
    end;

  Finally
     FreeAndNil(opdSelecionar);
  End;
end;

class procedure TFuncao.CriarForm(aNomeForm: TFormClass;
  oUsuarioLogado: TUsuarioLogado; aConexao: TFDConnection);
  var
  form: TForm;
begin
    try
    form := aNomeForm.Create(Application);
    if TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo, form.Name,
      aConexao) then
    begin
    frmprincipal.pgcDashs.visible:= false;
      form.ShowModal;
    end
    else
    begin
      MessageDlg('Usu�rio: ' + oUsuarioLogado.nome +
        ', n�o tem permiss�o de acesso', mtWarning, [mbOK], 0);
      Abort;
    end;

  finally
    if Assigned(form) then
      form.Release;
      frmprincipal.pgcDashs.visible:= true;
  end;
end;

class procedure TFuncao.LimparImagem(var aImage: TImage);
begin
   aImage.Picture.Assign(nil);
end;

class function TFuncao.SqlValor(sql: string; aConexao: TFDConnection): String;
var
  Qry: TFDQuery;
begin
  try
    Result := '';
    Qry := TFDQuery.Create(nil);
    Qry.Connection := aConexao;
    Qry.SQL.Clear;
    Qry.SQL.Add(sql);
    Qry.Open;
    Result := Qry.FieldByName('VALOR').AsString;

  finally
    Qry.Close;
    if Assigned(Qry) then
      FreeAndNil(Qry)
  end;
end;

class function TFuncao.EnviarEmail(const AAssunto, ADestino, AAnexo: String;
  ACorpo: TStrings): Boolean;
var
  sFrom                : String;
  sBccList             : String;
  sHost                : String;
  iPort                : Integer;
  sUserName            : String;
  sPassword            : String;

  idMsg                : TIdMessage;
  IdText               : TIdText;
  idSMTP               : TIdSMTP;
  IdSSLIOHandlerSocket : TIdSSLIOHandlerSocketOpenSSL;
begin
  try
    try
       sFrom                            := 'albericoleite@gmal.com';
      sBccList                         := 'albericoleite@gmal.com';
      sHost                            := 'smtp.gmail.com';
      iPort                            := 465;
      sUserName                        := 'splendorgestao@gmail.com';
      sPassword                        := 'Splendor@2019';

      //Configura os par�metros necess�rios para SSL
      IdSSLIOHandlerSocket                   := TIdSSLIOHandlerSocketOpenSSL.Create();
      IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
      IdSSLIOHandlerSocket.SSLOptions.Mode  := sslmClient;

      //Vari�vel referente a mensagem
      idMsg                            := TIdMessage.Create();
      idMsg.CharSet                    := 'utf-8';
      idMsg.Encoding                   := meMIME;
      idMsg.From.Name                  := 'TDevRocks Newsletter';
      idMsg.From.Address               := sFrom;
      idMsg.Priority                   := mpNormal;
      idMsg.Subject                    := AAssunto;

      //Add Destinat�rio(s)
      idMsg.Recipients.Add;
      idMsg.Recipients.EMailAddresses := ADestino;
      idMsg.CCList.EMailAddresses      := 'albericoleite@gmail.com';
      idMsg.BccList.EMailAddresses    := sBccList;
      idMsg.BccList.EMailAddresses    := 'albericoleite@gmail.com'; //C�pia Oculta

      //Vari�vel do texto
      idText := TIdText.Create(idMsg.MessageParts);
      idText.Body.Add(ACorpo.Text);
      idText.ContentType := 'text/html; text/plain; charset=iso-8859-1';

      //Prepara o Servidor
      IdSMTP                           := TIdSMTP.Create();
      IdSMTP.IOHandler                 := IdSSLIOHandlerSocket;
      IdSMTP.UseTLS                    := utUseImplicitTLS;
      IdSMTP.AuthType                  := satDefault;
      IdSMTP.Host                      := sHost;
      IdSMTP.AuthType                  := satDefault;
      IdSMTP.Port                      := iPort;
      IdSMTP.Username                  := sUserName;
      IdSMTP.Password                  := sPassword;

      //Conecta e Autentica
      IdSMTP.Connect;
      IdSMTP.Authenticate;

     // if AAnexo &amp;lt;&amp;gt; EmptyStr then
     //   if FileExists(AAnexo) then
     //     TIdAttachmentFile.Create(idMsg.MessageParts, AAnexo);

      //Se a conex�o foi bem sucedida, envia a mensagem
      if IdSMTP.Connected then
      begin
        try
          IdSMTP.Send(idMsg);
        except on E:Exception do
          begin
            ShowMessage('Erro ao tentar enviar: ' + E.Message);
          end;
        end;
      end;

      //Depois de tudo pronto, desconecta do servidor SMTP
      if IdSMTP.Connected then
        IdSMTP.Disconnect;

      Result := True;
    finally
      //IniFile.Free;

      UnLoadOpenSSLLibrary;

      FreeAndNil(idMsg);
      FreeAndNil(IdSSLIOHandlerSocket);
      FreeAndNil(idSMTP);
    end;
  except on e:Exception do
    begin
      Result := False;
    end;
  end;

end;


class function TFuncao.ExecuteSQL(sql: string; aConexao: TFDConnection): Boolean;
var Qry:TFDQuery;
begin
    try
    Result:=true;
       Qry:=TFDQuery.Create(nil);
       Qry.Connection:= aConexao;
       Qry.SQL.Clear;
       Qry.SQL.Add(sql);
      try
        aConexao.StartTransaction;
         Qry.ExecSQL;
         aConexao.Commit;
       except
       aConexao.Rollback;
        Result:=false;
       end;
    finally
       if Assigned(Qry) then
         FreeAndNil(Qry)
    end;
end;

class function TFuncao.ExtensoMes(n: Integer): String;
const
  aMeses: Array[0..11] of String = (
            'Janeiro', 'Fevereiro', 'Mar�o', 'Abril', 'Maio', 'Junho',
            'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro');
begin
  Result := '';
  if (n > 1) and (n < 12) then
    Result := aMeses[n-1];
end;

class function TFuncao.VerificarBackup(): String;
var
  NomeArquivo,nomex: string;
  xArquivoBat : TStringList;
begin
  nomex:= FormatDateTime('ddmmyyyy',Now)+'.sql';
  NomeArquivo := 'C:\mysql\Backup\'+nomex;
  if not FileExists(NomeArquivo) then
  begin
  //raise Exception.CreateFmt('Backup n�o Realizado, iniciando backup autom�tico...!', [NomeArquivo]);
    Try
    xArquivoBat := TStringList.Create;
    xArquivoBat.Add('@echo off');
    xArquivoBat.Add('@echo.');
    xArquivoBat.Add('echo    #################################################');
    xArquivoBat.Add('echo    #################################################');
    xArquivoBat.Add('echo ### ###');
    xArquivoBat.Add('echo ### ###');
    xArquivoBat.Add('echo ### Backup autom�tico ###');
    xArquivoBat.Add('echo ### ###');
    xArquivoBat.Add('echo ### ###');
    xArquivoBat.Add('echo    #################################################');
    xArquivoBat.Add('echo    #################################################');
    xArquivoBat.Add('cd C:\mysql\bin\');
    xArquivoBat.Add('mysqldump.exe -u root -pjulia --databases igreja > "C:\mysql\Backup\'+nomex);
    //xArquivoBat.Add('mysqldump.exe -uroot --p'+FSenha +' --databases '+FNomeBancoDados +' > "C:\mysql\Backup\backup_'+nome);
    // backup.sql"');
                            //xArquivoBat.Add('pause');
    xArquivoBat.SaveToFile('BackupMySQL.bat');
    WinExec('BackupMySQL.bat', SW_HIDE);

   Finally
    FreeAndNil(xArquivoBat);
   End;
    Application.MessageBox('Backup realizado com sucesso!','Aten��o!') ;
  end;


end;

end.
