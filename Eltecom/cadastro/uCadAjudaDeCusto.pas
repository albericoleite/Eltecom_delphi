unit uCadAjudaDeCusto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,cCadRecibo, uEnum,
  RxToolEdit, RxCurrEdit;

type
  TfrmCadAjudaDeCusto = class(TfrmTelaheranca)
    fdtncfldQryListagemcod_recibo: TFDAutoIncField;
    strngfldQryListagemdescricao: TStringField;
    dtfldQryListagemdata_recibo: TDateField;
    fltfldQryListagemvalor: TFloatField;
    strngfldQryListagemendereco: TStringField;
    strngfldQryListagembairro: TStringField;
    strngfldQryListagemcidade: TStringField;
    strngfldQryListagemuf: TStringField;
    strngfldQryListagemcpf: TStringField;
    intgrfldQryListagemcod_operacao: TIntegerField;
    dtfldQryListagemdata_lancamento: TDateField;
    lbledtCodDizimo: TLabeledEdit;
    lbledtDescricao: TLabeledEdit;
    dtdtData: TDateEdit;
    lbl1: TLabel;
    lbledtEndereco: TLabeledEdit;
    lbledtBairro: TLabeledEdit;
    lbledtCidade: TLabeledEdit;
    cbbUF: TComboBox;
    lbl2: TLabel;
    medtCPF: TMaskEdit;
    lblcpf: TLabel;
    crncydtValor: TCurrencyEdit;
    lbl3: TLabel;
    btnImprimir: TBitBtn;
    procedure btnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnImprimirssClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    oRecibo: TRecibo;
    function Apagar:Boolean; override;
    function Gravar(EstadodoCadastro:TEstadoDoCadastro):Boolean; override;
    function valorPorExtenso(vlr: real): string;
  public
    { Public declarations }
  end;

var
  frmCadAjudaDeCusto: TfrmCadAjudaDeCusto;

implementation

uses
  uPrincipal, uDTMConexao, uDTMRelatorio;

{$R *.dfm}

{ TfrmCadAjudaDeCusto }

function TfrmCadAjudaDeCusto.Apagar: Boolean;
begin
 if oRecibo.Selecionar(QryListagem.FieldByName('cod_recibo').AsInteger) then
      Result:=oRecibo.Apagar;
end;

procedure TfrmCadAjudaDeCusto.btnAlterarClick(Sender: TObject);
begin
if oRecibo.Selecionar(QryListagem.FieldByName('cod_recibo').AsInteger) then
  begin
    lbledtCodDizimo.Text    := IntToStr(oRecibo.cod_recibo);
    //lbledtCodtalao.Text       := IntToStr(oRecibo.cod_operacao);
    //lbledtCodCheque.Text        := IntToStr(oRecibo.cod_cheque);
    lbledtDescricao.Text := oRecibo.descricao;
    crncydtValor.Text := FloatToStr(oRecibo.valor);
    dtdtData.Date := oRecibo.data_recibo;
    lbledtDescricao.Text := oRecibo.descricao;
    lbledtEndereco.Text := oRecibo.endereco;
    lbledtCidade.Text := oRecibo.cidade;
    lbledtBairro.Text := oRecibo.bairro;
    cbbUF.Text := oRecibo.uf;
    medtCPF.Text:=oRecibo.cpf;
    //lbledtUF.Text := oRecibo.descricao;
    //lbledtDescricao.Text := oRecibo.descricao;

    end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;

procedure TfrmCadAjudaDeCusto.btnImprimirClick(Sender: TObject);
var valor:string;
begin
  inherited;
dtmRelatorio.frxdbDBRecibo.DataSet:=QryListagem;
valor := valorPorExtenso(QryListagem.FieldByName('valor').AsFloat);
dtmRelatorio.frxrprtRecibo.Variables['valor_extenso'] := QuotedStr(valor);
dtmRelatorio.frxrprtRecibo.ShowReport();
end;

procedure TfrmCadAjudaDeCusto.btnImprimirssClick(Sender: TObject);
var valor:string;
begin
  inherited;
dtmRelatorio.frxdbDBRecibo.DataSet:=QryListagem;
valor := valorPorExtenso(QryListagem.FieldByName('valor').AsFloat);
dtmRelatorio.frxrprtRecibo.Variables['valor_extenso'] := QuotedStr(valor);
dtmRelatorio.frxrprtRecibo.ShowReport();
end;

function TfrmCadAjudaDeCusto.valorPorExtenso(vlr: real): string;
const
  unidade: array [1 .. 19] of string = ('um', 'dois', 'três', 'quatro', 'cinco',
    'seis', 'sete', 'oito', 'nove', 'dez', 'onze', 'doze', 'treze', 'quatorze',
    'quinze', 'dezesseis', 'dezessete', 'dezoito', 'dezenove');
  centena: array [1 .. 9] of string = ('cento', 'duzentos', 'trezentos',
    'quatrocentos', 'quinhentos', 'seiscentos', 'setecentos', 'oitocentos',
    'novecentos');
  dezena: array [2 .. 9] of string = ('vinte', 'trinta', 'quarenta',
    'cinquenta', 'sessenta', 'setenta', 'oitenta', 'noventa');
  qualificaS: array [0 .. 4] of string = ('', 'mil', 'milhão', 'bilhão',
    'trilhão');
  qualificaP: array [0 .. 4] of string = ('', 'mil', 'milhões', 'bilhões',
    'trilhões');
var
  inteiro: Int64;
  resto: real;
  vlrS, s, saux, vlrP, centavos: string;
  n, unid, dez, cent, tam, i: integer;
  umReal, tem: boolean;
begin
  if (vlr = 0) then
  begin
    valorPorExtenso := 'zero';
    exit;
  end;

  inteiro := trunc(vlr); // parte inteira do valor
  resto := vlr - inteiro; // parte fracionária do valor
  vlrS := inttostr(inteiro);
  if (Length(vlrS) > 15) then
  begin
    valorPorExtenso := 'Erro: valor superior a 999 trilhões.';
    exit;
  end;

  s := '';
  centavos := inttostr(round(resto * 100));

  // definindo o extenso da parte inteira do valor
  i := 0;
  umReal := false;
  tem := false;
  while (vlrS <> '0') do
  begin
    tam := Length(vlrS);
    // retira do valor a 1a. parte, 2a. parte, por exemplo, para 123456789:
    // 1a. parte = 789 (centena)
    // 2a. parte = 456 (mil)
    // 3a. parte = 123 (milhões)
    if (tam > 3) then
    begin
      vlrP := copy(vlrS, tam - 2, tam);
      vlrS := copy(vlrS, 1, tam - 3);
    end
    else
    begin // última parte do valor
      vlrP := vlrS;
      vlrS := '0';
    end;
    if (vlrP <> '000') then
    begin
      saux := '';
      if (vlrP = '100') then
        saux := 'cem'
      else
      begin
        n := strtoint(vlrP); // para n = 371, tem-se:
        cent := n div 100; // cent = 3 (centena trezentos)
        dez := (n mod 100) div 10; // dez  = 7 (dezena setenta)
        unid := (n mod 100) mod 10; // unid = 1 (unidade um)
        if (cent <> 0) then
          saux := centena[cent];
        if ((dez <> 0) or (unid <> 0)) then
        begin
          if ((n mod 100) <= 19) then
          begin
            if (Length(saux) <> 0) then
              saux := saux + ' e ' + unidade[n mod 100]
            else
              saux := unidade[n mod 100];
          end
          else
          begin
            if (Length(saux) <> 0) then
              saux := saux + ' e ' + dezena[dez]
            else
              saux := dezena[dez];
            if (unid <> 0) then
              if (Length(saux) <> 0) then
                saux := saux + ' e ' + unidade[unid]
              else
                saux := unidade[unid];
          end;
        end;
      end;
      if ((vlrP = '1') or (vlrP = '001')) then
      begin
        if (i = 0) // 1a. parte do valor (um real)
        then
          umReal := true
        else
          saux := saux + ' ' + qualificaS[i];
      end
      else if (i <> 0) then
        saux := saux + ' ' + qualificaP[i];
      if (Length(s) <> 0) then
        s := saux + ', ' + s
      else
        s := saux;
    end;
    if (((i = 0) or (i = 1)) and (Length(s) <> 0)) then
      tem := true; // tem centena ou mil no valor
    i := i + 1; // próximo qualificador: 1- mil, 2- milhão, 3- bilhão, ...
  end;

  if (Length(s) <> 0) then
  begin
    if (umReal) then
      s := s + ' real'
    else if (tem) then
      s := s + ' reais'
    else
      s := s + ' de reais';
  end;
  // definindo o extenso dos centavos do valor
  if (centavos <> '0') // valor com centavos
  then
  begin
    if (Length(s) <> 0) // se não é valor somente com centavos
    then
      s := s + ' e ';
    if (centavos = '1') then
      s := s + 'um centavo'
    else
    begin
      n := strtoint(centavos);
      if (n <= 19) then
        s := s + unidade[n]
      else
      begin // para n = 37, tem-se:
        unid := n mod 10; // unid = 37 % 10 = 7 (unidade sete)
        dez := n div 10; // dez  = 37 / 10 = 3 (dezena trinta)
        s := s + dezena[dez];
        if (unid <> 0) then
          s := s + ' e ' + unidade[unid];
      end;
      s := s + ' centavos';
    end;
  end;
  valorPorExtenso := s;
end;

procedure TfrmCadAjudaDeCusto.btnNovoClick(Sender: TObject);
begin
  inherited;
lbledtDescricao.SetFocus;
end;

procedure TfrmCadAjudaDeCusto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
if Assigned(oRecibo) then
    FreeAndNil(oRecibo);
end;

procedure TfrmCadAjudaDeCusto.FormCreate(Sender: TObject);
begin
  inherited;
   oRecibo:= TRecibo.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual:='cod_recibo';
   dtdtData.Date:=Now;

end;

function TfrmCadAjudaDeCusto.Gravar(
  EstadodoCadastro: TEstadoDoCadastro): Boolean;
begin
     if lbledtCodDizimo.Text<>EmptyStr then
       oRecibo.cod_recibo:=StrToInt(lbledtCodDizimo.Text)
       else
       oRecibo.cod_recibo :=0;
       oRecibo.cod_congregacao:=dtmPrincipal.congAtiva;
       //oRecibo.cod_talao := StrToInt(lbledtCodtalao.Text);
       //oRecibo.cod_cheque:= StrToInt(lbledtCodCheque.Text);
       oRecibo.descricao:=lbledtDescricao.Text;
       oRecibo.valor := StrToFloat(crncydtValor.Text);
       oRecibo.data_recibo:=dtdtData.Date;
       oRecibo.endereco:=lbledtEndereco.Text;
       oRecibo.bairro:=lbledtBairro.Text;
       oRecibo.cidade:=lbledtCidade.Text;
       oRecibo.uf:=cbbUF.Text;
       oRecibo.cpf:=medtCPF.Text;
           if (EstadodoCadastro=ecInserir) then
    Result:=oRecibo.Inserir
    else if (EstadodoCadastro=ecAlterar) then
     Result:=oRecibo.Atualizar;
end;

end.
