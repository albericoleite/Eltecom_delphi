unit uDTMConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, Data.DB, FireDAC.Comp.Client, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TdtmPrincipal = class(TDataModule)
    ConexaoDB: TFDConnection;
    FlinkMysql: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    fdqryCong_sistema: TFDQuery;
    fdtncfldCong_sistemacod_congregacao: TFDAutoIncField;
    fdqryCriartb_dept_pessoa: TFDQuery;
    fdqryCriartb_congregacao: TFDQuery;
    fdqryCriartb_departamento: TFDQuery;
    fdqryCriartb_funcao: TFDQuery;
    fdqryCriartb_seguranca: TFDQuery;
    fdqryCriartb_usuario: TFDQuery;
    fdqrySetores: TFDQuery;
    fdqryCriartb_dizimo: TFDQuery;
    strngfldCong_sistemacongregacao: TStringField;
    strngfldCong_sistemasetor: TStringField;
    fdqryDepartamentos: TFDQuery;
    fdtncfldDepartamentoscod_departamento: TFDAutoIncField;
    strngfldDepartamentosnome_departamento: TStringField;
    fdqryCriartb_cargo: TFDQuery;
    FDAutoIncField1: TFDAutoIncField;
    StringField1: TStringField;
    fdqryCriartb_func_pessoa: TFDQuery;
    fdqryCriartb_ob_carg: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    congAtiva :Integer;
    descCongAtiva:string;
    setor:string;
  end;

var
  dtmPrincipal: TdtmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdtmPrincipal.DataModuleCreate(Sender: TObject);
begin
 try
    fdqryCong_sistema.Open;
    congAtiva:=  fdqryCong_sistema.FieldByName('cod_congregacao').AsInteger;
    descCongAtiva:= fdqryCong_sistema.FieldByName('congregacao').AsString;
     setor:= fdqryCong_sistema.FieldByName('setor').AsString;
     fdqryDepartamentos.Open;
 Except
  // ShowMessage('Erro na fdqryCong_sistema! ');
 end;
end;

procedure TdtmPrincipal.DataModuleDestroy(Sender: TObject);
begin
 fdqryDepartamentos.Close;
end;

end.
