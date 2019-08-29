unit uBackupRestore;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TfrmBackupRestore = class(TForm)
    btnBackup: TBitBtn;
    btnRestaurar: TBitBtn;
    lst1: TListBox;
    btnListar: TBitBtn;
    chkTimer: TCheckBox;
    BitBtn1: TBitBtn;
    edtLocal: TEdit;
    CheckBox1: TCheckBox;
    BitBtn2: TBitBtn;
    cbbTabelas: TComboBox;
    tmrTimer: TTimer;
    OpenDialog1: TOpenDialog;
    dsTabelas: TDataSource;
    edtCaminho: TEdit;
    procedure btnBackupClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure btnRestaurarClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure chkTimerClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure lst1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure ListarArquivos(Diretorio: string; Sub: Boolean);
    function TemAtributo(Attr, Val: Integer): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBackupRestore: TfrmBackupRestore;
  nome: string;
implementation

{$R *.dfm}

procedure TfrmBackupRestore.BitBtn1Click(Sender: TObject);
begin
if OpenDialog1.Execute then
begin
if OpenDialog1.FileName <> '' then
begin
edtLocal.Text := OpenDialog1.FileName;
btnRestaurar.Enabled:=true;
nome:= OpenDialog1.FileName;
end;
end;
end;

procedure TfrmBackupRestore.btnBackupClick(Sender: TObject);
Var
  xArquivoBat : TStringList;
  //nome: string;
begin
nome:= FormatDateTime('ddmmyyyyhhmmss',Now)+'.sql"';
  Try
    xArquivoBat := TStringList.Create;
    xArquivoBat.Add('@echo off');
    xArquivoBat.Add('@echo.');
    xArquivoBat.Add('echo    #################################################');
    xArquivoBat.Add('echo    #################################################');
    xArquivoBat.Add('echo ### ###');
    xArquivoBat.Add('echo ### ###');
    xArquivoBat.Add('echo ### Backup automático ###');
    xArquivoBat.Add('echo ### ###');
    xArquivoBat.Add('echo ### ###');
    xArquivoBat.Add('echo    #################################################');
    xArquivoBat.Add('echo    #################################################');
    xArquivoBat.Add('cd C:\mysql\bin\');
    xArquivoBat.Add('mysqldump.exe -u root -pjulia --databases igreja > "C:\mysql\Backup\backup_'+nome);
    //xArquivoBat.Add('mysqldump.exe -uroot --p'+FSenha +' --databases '+FNomeBancoDados +' > "C:\mysql\Backup\backup_'+nome);
    // backup.sql"');
                            //xArquivoBat.Add('pause');
    xArquivoBat.SaveToFile('BackupMySQL.bat');
    btnListarClick(sender);
    WinExec('BackupMySQL.bat', SW_HIDE);

   Finally
    FreeAndNil(xArquivoBat);
   End;
    Application.MessageBox('Backup realizado com sucesso!','Atenção!') ;
end;

procedure TfrmBackupRestore.btnListarClick(Sender: TObject);
begin
ListarArquivos(edtCaminho.Text, chkTimer.Checked);
end;

procedure TfrmBackupRestore.btnRestaurarClick(Sender: TObject);
Var
  xArquivoBat : TStringList;
 // nome: string;
begin

//Ck_timer.Checked:=false;
//ShowMessage(lst1.Items[lst1.ItemIndex]);
//nome := lst1.Items[lst1.ItemIndex];
//ShowMessage('selecionado'+ nome);
//nome:= FormatDateTime('ddmmyyyyhhmmss',Now)+'.sql"';
  Try
    xArquivoBat := TStringList.Create;
    xArquivoBat.Add('@echo off');
    xArquivoBat.Add('@echo.');
    xArquivoBat.Add('echo    #################################################');
    xArquivoBat.Add('echo    #################################################');
    xArquivoBat.Add('echo ### ###');
    xArquivoBat.Add('echo ### ###');
    xArquivoBat.Add('echo ### Backup automático ###');
    xArquivoBat.Add('echo ### ###');
    xArquivoBat.Add('echo ### ###');
    xArquivoBat.Add('echo    #################################################');
    xArquivoBat.Add('echo    #################################################');
    xArquivoBat.Add('cd C:\mysql\bin\');
    //xArquivoBat.Add('mysql.exe -u root -pjulia --databases igreja < "C:\mysql\Backup\backup_30012017143515.sql');//+nome);
    xArquivoBat.Add('mysql.exe -u root -pjulia igreja < '+nome);//C:\mysql\Backup\'+nome);//backup_30012017143515.sql');
    //xArquivoBat.Add('mysqldump.exe -uroot --p'+FSenha +' --databases '+FNomeBancoDados +' > "C:\mysql\Backup\backup_'+nome);
    // backup.sql"');
                           //xArquivoBat.Add('pause');
    xArquivoBat.SaveToFile('BackupMySQL.bat');
    WinExec('BackupMySQL.bat', SW_HIDE);
   Finally
    FreeAndNil(xArquivoBat);
   End;
    Application.MessageBox('Backup restaurado com sucesso! O sistema será encerrado, favor iniciar novamente!','Atenção!') ;
   Application.Terminate;
end;

procedure TfrmBackupRestore.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked=true then
begin
chkTimer.Checked:=false;
BitBtn1.Enabled:=true;
end
 else
 begin
chkTimer.Checked:=true;
BitBtn1.Enabled:=false;
 end;
end;

procedure TfrmBackupRestore.chkTimerClick(Sender: TObject);
begin
if chkTimer.Checked=true then
btnListar.Enabled:=false
 else
btnListar.Enabled:=true
end;

procedure TfrmBackupRestore.FormCreate(Sender: TObject);
begin
btnListarClick(sender);
end;

function TfrmBackupRestore.TemAtributo(Attr, Val: Integer): Boolean;
begin
  Result := Attr and Val = Val;
end;

procedure TfrmBackupRestore.ListarArquivos(Diretorio: string; Sub: Boolean);
var
  F: TSearchRec;
  Ret: Integer;
  TempNome: string;
begin

  Ret := FindFirst(Diretorio + '\*.sql', faAnyFile, F);
  lst1.Items.Clear;
  try
    while Ret = 0 do
    begin
      if TemAtributo(F.Attr, faDirectory) then
      begin
        if (F.Name <> '.') And (F.Name <> '..') then
          if Sub = True then
          begin
            TempNome := Diretorio + '\' + F.Name;
            ListarArquivos(TempNome, True);
          end;
      end
      else
      begin
        lst1.Items.Add(Diretorio + '\' + F.Name)
      end;
      Ret := FindNext(F);
    end;
  finally
    begin
      FindClose(F);
    end;
  end;
end;

procedure TfrmBackupRestore.lst1Click(Sender: TObject);
begin
chkTimer.Checked:=false;
btnRestaurar.Enabled:=true;
nome := lst1.Items[lst1.ItemIndex];
end;

end.
