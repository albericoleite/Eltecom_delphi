unit Entidade.Fornecedor;

interface
uses SimpleAttributes;

type

TFORNECEDOR= class
  private
    FBAIRRO: string;
    FEMAIL: string;
    FUSUARIO_CADASTRO: string;
    FUF: string;
    FDATA_CADASTRO: TDateTime;
    FCEP: string;
    FCPFCNPJ: string;
    FID: Integer;
    FNUMERO: string;
    FNOMERAZAO: string;
    FTIPO: string;
    FCIDADE: string;
    FTELEFONE: string;
    FRUA: string;
    FCELULAR: string;
    procedure SetBAIRRO(const Value: string);
    procedure SetCELULAR(const Value: string);
    procedure SetCEP(const Value: string);
    procedure SetCIDADE(const Value: string);
    procedure SetCPFCNPJ(const Value: string);
    procedure SetDATA_CADASTRO(const Value: TDateTime);
    procedure SetEMAIL(const Value: string);
    procedure SetID(const Value: Integer);
    procedure SetNOMERAZAO(const Value: string);
    procedure SetNUMERO(const Value: string);
    procedure SetRUA(const Value: string);
    procedure SetTELEFONE(const Value: string);
    procedure SetTIPO(const Value: string);
    procedure SetUF(const Value: string);
    procedure SetUSUARIO_CADASTRO(const Value: string);
  published
  [PK,AutoInc]
  property ID: Integer read FID write SetID;
  property NOMERAZAO:string read FNOMERAZAO write SetNOMERAZAO;
  property CPFCNPJ:string read FCPFCNPJ write SetCPFCNPJ;
  property EMAIL:string read FEMAIL write SetEMAIL;
  property TELEFONE:string read FTELEFONE write SetTELEFONE;
  property CELULAR:string read FCELULAR write SetCELULAR;
  property RUA:string read FRUA write SetRUA;
  property NUMERO:string read FNUMERO write SetNUMERO;
  property BAIRRO:string read FBAIRRO write SetBAIRRO;
  property CIDADE:string read FCIDADE write SetCIDADE;
  property UF:string read FUF write SetUF;
  property CEP:string read FCEP write SetCEP;
  property USUARIO_CADASTRO:string read FUSUARIO_CADASTRO write SetUSUARIO_CADASTRO;
  property DATA_CADASTRO:TDateTime read FDATA_CADASTRO write SetDATA_CADASTRO;
  property TIPO:string read FTIPO write SetTIPO;

end;

implementation

{ TFORNECEDOR }

procedure TFORNECEDOR.SetBAIRRO(const Value: string);
begin
  FBAIRRO := Value;
end;

procedure TFORNECEDOR.SetCELULAR(const Value: string);
begin
  FCELULAR := Value;
end;

procedure TFORNECEDOR.SetCEP(const Value: string);
begin
  FCEP := Value;
end;

procedure TFORNECEDOR.SetCIDADE(const Value: string);
begin
  FCIDADE := Value;
end;

procedure TFORNECEDOR.SetCPFCNPJ(const Value: string);
begin
  FCPFCNPJ := Value;
end;

procedure TFORNECEDOR.SetDATA_CADASTRO(const Value: TDateTime);
begin
  FDATA_CADASTRO := Value;
end;

procedure TFORNECEDOR.SetEMAIL(const Value: string);
begin
  FEMAIL := Value;
end;

procedure TFORNECEDOR.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TFORNECEDOR.SetNOMERAZAO(const Value: string);
begin
  FNOMERAZAO := Value;
end;

procedure TFORNECEDOR.SetNUMERO(const Value: string);
begin
  FNUMERO := Value;
end;

procedure TFORNECEDOR.SetRUA(const Value: string);
begin
  FRUA := Value;
end;

procedure TFORNECEDOR.SetTELEFONE(const Value: string);
begin
  FTELEFONE := Value;
end;

procedure TFORNECEDOR.SetTIPO(const Value: string);
begin
  FTIPO := Value;
end;

procedure TFORNECEDOR.SetUF(const Value: string);
begin
  FUF := Value;
end;

procedure TFORNECEDOR.SetUSUARIO_CADASTRO(const Value: string);
begin
  FUSUARIO_CADASTRO := Value;
end;

end.
