unit uFuncaoCriptografia;

interface

uses
Windows,Messages, System.SysUtils,System.Variants,System.Classes,Vcl.Graphics,
Vcl.Controls,Vcl.Forms,Vcl.Dialogs;

function Criptografar(const aEntrada:string):string;
function Descriptografar(const aEntrada:string):string;

implementation

function Criptografar(const aEntrada:string):string;
var i, iQtdeEnt,iIntervalo:Integer;
sSaida:string;
sProximoCaracter:string;
begin
  iIntervalo:=6;
  i :=0;
  iQtdeEnt:=0;

  if (aEntrada<> EmptyStr) then
  begin
    iQtdeEnt := Length(aEntrada);
    for i := iQtdeEnt downto 1 do
      begin
        sProximoCaracter:= Copy(aEntrada,i,1);
        sSaida:= sSaida + (Char(ord(sProximoCaracter[1])+iIntervalo));
      end;
  end;
   Result :=sSaida;

end;


function Descriptografar(const aEntrada:string):string;
var i, iQtdeEnt,iIntervalo:Integer;
sSaida:string;
sProximoCaracter:string;
begin
      iIntervalo:=6;
  i :=0;
  iQtdeEnt:=0;

  if (aEntrada<> EmptyStr) then
  begin
    iQtdeEnt := Length(aEntrada);
    for i := iQtdeEnt downto 1 do
      begin
        sProximoCaracter:= Copy(aEntrada,i,1);
        sSaida:= sSaida + (Char(ord(sProximoCaracter[1])-iIntervalo));
      end;
  end;
   Result :=sSaida;

end;

end.
