unit uDTMTesouraria;

interface

uses
  System.SysUtils, System.Classes;

type
  TdtmTesouraria = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmTesouraria: TdtmTesouraria;

implementation

uses
  uDTMConexao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
