unit cArquivoIni;

interface

uses  System.Classes,Vcl.Controls,Vcl.ExtCtrls,
System.SysUtils,System.IniFiles,Vcl.Forms;

type
TArquivoIni = class
  private

  public
  class function ArquivoIni:string;static;
  class function LerIni(aSecao:string; aEntrada:string):string;static;
  class procedure AtualizarIni(aSecao:string; aEntrada:string;aValor:string);static;
end;

implementation

{ TArquivoIni }

class function TArquivoIni.ArquivoIni: string;
begin
   Result := ChangeFileExt(Application.ExeName,'.INI');
end;

class procedure TArquivoIni.AtualizarIni(aSecao, aEntrada,aValor: string);
var
Ini: TiniFile;
begin
  try
       Ini:= TIniFile.Create(ArquivoIni);
       Ini.WriteString(aSecao,aEntrada,aValor);
    finally
       Ini.Free;
    end;
end;

class function TArquivoIni.LerIni(aSecao, aEntrada: string): string;
var
Ini: TiniFile;
begin
    try
       Ini:= TIniFile.Create(ArquivoIni);
       Result:= Ini.ReadString(aSecao,aEntrada,'NAO ENCONTRADO');
    finally
       Ini.Free;
    end;
end;

end.
