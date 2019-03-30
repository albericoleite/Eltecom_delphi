unit untCongSistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB,
  Vcl.StdCtrls, Vcl.Mask,uDTMConexao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmCongSistema = class(TForm)
    lbl1: TLabel;
    dbedtcod_congregacao: TDBEdit;
    dsCongSistema: TDataSource;
    dblkcbbCongregacao: TDBLookupComboBox;
    lbl2: TLabel;
    dbnvgr1: TDBNavigator;
    dsCongregacao: TDataSource;
    grp1: TGroupBox;
    fdqryListagem: TFDQuery;
    fdqryCongregacaoSistema: TFDQuery;
    intgrfldCongregacaoSistemacod_congregacao: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsCongSistemaUpdateData(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCongSistema: TfrmCongSistema;

implementation


{$R *.dfm}

procedure TfrmCongSistema.dsCongSistemaUpdateData(Sender: TObject);
begin
dtmPrincipal.fdqryCong_sistema.Open;
//frmMenu.statMenu.Panels[3].Text := 'Logado com '+ dtmConexao.fdqryUsuariousuario.Text +' / Congregação: '+dtmConexao.strngfldCongregacaoAtivaSistemacongregacao.Text;
end;

procedure TfrmCongSistema.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//frmMenu.pnlBotoes.Visible := True;
dtmPrincipal.fdqryCong_sistema.Refresh;
    dtmPrincipal.congAtiva:=  dtmPrincipal.fdqryCong_sistema.FieldByName('cod_congregacao').AsInteger;
    dtmPrincipal.descCongAtiva:= dtmPrincipal.fdqryCong_sistema.FieldByName('congregacao').AsString;
fdqryCongregacaoSistema.close;
fdqryListagem.close;
Action := cafree;
frmCongSistema := nil;
end;

procedure TfrmCongSistema.FormCreate(Sender: TObject);
begin
fdqryCongregacaoSistema.Open;
fdqryListagem.Open;
end;

end.
