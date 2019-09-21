unit uUsuarioVsAcoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmUsuarioVsAcoes = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    spl1: TSplitter;
    dbgrdUsuarios: TDBGrid;
    dbgrdAcoes: TDBGrid;
    fdqryUsuarios: TFDQuery;
    fdqryAcoes: TFDQuery;
    dsUsuarios: TDataSource;
    dsAcoes: TDataSource;
    fdtncfldUsuarioscodigo: TFDAutoIncField;
    strngfldUsuariosusuario: TStringField;
    intgrfldAcoescod_usuario: TIntegerField;
    intgrfldAcoescod_acao_acesso: TIntegerField;
    strngfldAcoesdescricao: TStringField;
    blnfldAcoesativo: TBooleanField;
    btnFechar: TBitBtn;
    btnAtualizar: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
    procedure fdqryUsuariosAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dbgrdAcoesDblClick(Sender: TObject);
    procedure dbgrdAcoesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnAtualizarClick(Sender: TObject);
  private
    { Private declarations }
    procedure SelecionarAcoesAcessoPorUsuario;
  public
    { Public declarations }
  end;

var
  frmUsuarioVsAcoes: TfrmUsuarioVsAcoes;

implementation

uses
  uDTMConexao, uPrincipal;

{$R *.dfm}

procedure TfrmUsuarioVsAcoes.btnAtualizarClick(Sender: TObject);
begin
frmprincipal.CriarAcoes;
end;

procedure TfrmUsuarioVsAcoes.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TfrmUsuarioVsAcoes.dbgrdAcoesDblClick(Sender: TObject);
var Qry:TFDQuery;
    bmRegistroAtual:TBookmark;
begin
  try
    bmRegistroAtual := fdqryAcoes.GetBookMark; //Marcar o Registro Selecionado
    Qry:=TFDQuery.Create(nil);
    Qry.Connection:=DtmPrincipal.ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE tb_usuarios_acao_acesso '+
                '   SET ativo=:ativo '+
                ' WHERE cod_usuario=:cod_usuario '+
                '   AND cod_acao_acesso=:cod_acao_acesso ');
    Qry.ParamByName('cod_usuario').AsInteger    :=fdqryAcoes.FieldByName('cod_usuario').AsInteger;
    Qry.ParamByName('cod_acao_acesso').AsInteger :=fdqryAcoes.FieldByName('cod_acao_acesso').AsInteger;
    Qry.ParamByName('ativo').AsBoolean        :=not fdqryAcoes.FieldByName('ativo').AsBoolean;
    Try

      DtmPrincipal.ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      DtmPrincipal.ConexaoDB.Commit;
    Except
      DtmPrincipal.ConexaoDB.Rollback;
    End;

  finally
    SelecionarAcoesAcessoPorUsuario;
    fdqryAcoes.GotoBookMark(bmRegistroAtual);  //Faz o Retorno do Registro depois que a query foi fechada e aberta
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

procedure TfrmUsuarioVsAcoes.dbgrdAcoesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 If not fdqryAcoes.FieldByName('ativo').AsBoolean  then
  begin
    TDBGrid(Sender).Canvas.Font.Color:= clWhite;
    TDBGrid(Sender).Canvas.Brush.Color:=clRed
  end;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, TDBGrid(Sender).columns[datacol].field, State);
end;

procedure TfrmUsuarioVsAcoes.fdqryUsuariosAfterScroll(DataSet: TDataSet);
begin
SelecionarAcoesAcessoPorUsuario;
end;

procedure TfrmUsuarioVsAcoes.FormShow(Sender: TObject);
begin
try
fdqryUsuarios.DisableControls;
fdqryUsuarios.Open;
SelecionarAcoesAcessoPorUsuario;
finally
   fdqryUsuarios.EnableControls;
end;


end;

procedure TfrmUsuarioVsAcoes.SelecionarAcoesAcessoPorUsuario;
begin
  fdqryAcoes.Close;
  fdqryAcoes.ParamByName('cod_usuario').AsInteger := fdqryUsuarios.FieldByName('codigo').AsInteger;
  fdqryAcoes.Open;
end;

end.
