unit Entidade.Tesouraria;

interface
uses SimpleAttributes;
type
TTB_TESOURARIA = class
  private
    FNRO_DOCUMENTO: integer;
    FVALOR: Double;
    FUSUARIO_INCLUSAO: string;
    FID_CENTRO_CUSTO: Integer;
    FDTA_MOVIMENTO: TDateTime;
    FDESCRICAO: string;
    FID_TIPO_LANCAMENTO: Integer;
    FSTATUS: string;
    FCOD_ENTRADA: integer;
    FSITUACAO: string;
    FID_FORNECEDOR: Integer;
    FCOD_TIPO_SAIDA: Integer;
    FCOD_CONGREGACAO: Integer;
    FID_FORMA_PAGAMENTO: Integer;
    FDTA_INCLUSAO: TDateTime;
    FID_TIPO_CULTO: Integer;
    procedure SetCOD_CONGREGACAO(const Value: Integer);
    procedure SetCOD_ENTRADA(const Value: integer);
    procedure SetCOD_TIPO_SAIDA(const Value: Integer);
    procedure SetDESCRICAO(const Value: string);
    procedure SetDTA_INCLUSAO(const Value: TDateTime);
    procedure SetDTA_MOVIMENTO(const Value: TDateTime);
    procedure SetID_CENTRO_CUSTO(const Value: Integer);
    procedure SetID_FORMA_PAGAMENTO(const Value: Integer);
    procedure SetID_FORNECEDOR(const Value: Integer);
    procedure SetID_TIPO_CULTO(const Value: Integer);
    procedure SetID_TIPO_LANCAMENTO(const Value: Integer);
    procedure SetNRO_DOCUMENTO(const Value: integer);
    procedure SetSITUACAO(const Value: string);
    procedure SetSTATUS(const Value: string);
    procedure SetUSUARIO_INCLUSAO(const Value: string);
    procedure SetVALOR(const Value: Double);
  published
  property COD_ENTRADA:integer read FCOD_ENTRADA write SetCOD_ENTRADA;
  property NRO_DOCUMENTO:integer read FNRO_DOCUMENTO write SetNRO_DOCUMENTO;
  property DTA_MOVIMENTO:TDateTime read FDTA_MOVIMENTO write SetDTA_MOVIMENTO;
  property DTA_INCLUSAO:TDateTime read FDTA_INCLUSAO write SetDTA_INCLUSAO;
  property USUARIO_INCLUSAO:string read FUSUARIO_INCLUSAO write SetUSUARIO_INCLUSAO;
  property DESCRICAO:string read FDESCRICAO write SetDESCRICAO;
  property VALOR:Double read FVALOR write SetVALOR;
  property STATUS:string read FSTATUS write SetSTATUS;
  property COD_CONGREGACAO:Integer read FCOD_CONGREGACAO write SetCOD_CONGREGACAO;
  property SITUACAO:string read FSITUACAO write SetSITUACAO;
  property COD_TIPO_SAIDA:Integer read FCOD_TIPO_SAIDA write SetCOD_TIPO_SAIDA;
  property ID_CENTRO_CUSTO:Integer read FID_CENTRO_CUSTO write SetID_CENTRO_CUSTO;
  property ID_TIPO_LANCAMENTO:Integer read FID_TIPO_LANCAMENTO write SetID_TIPO_LANCAMENTO;
  property ID_FORMA_PAGAMENTO:Integer read FID_FORMA_PAGAMENTO write SetID_FORMA_PAGAMENTO;
  property ID_FORNECEDOR:Integer read FID_FORNECEDOR write SetID_FORNECEDOR;
  property ID_TIPO_CULTO:Integer read FID_TIPO_CULTO write SetID_TIPO_CULTO;
end;

implementation

{ TTESOURARIA }

procedure TTB_TESOURARIA.SetCOD_CONGREGACAO(const Value: Integer);
begin
  FCOD_CONGREGACAO := Value;
end;

procedure TTB_TESOURARIA.SetCOD_ENTRADA(const Value: integer);
begin
  FCOD_ENTRADA := Value;
end;

procedure TTB_TESOURARIA.SetCOD_TIPO_SAIDA(const Value: Integer);
begin
  FCOD_TIPO_SAIDA := Value;
end;

procedure TTB_TESOURARIA.SetDESCRICAO(const Value: string);
begin
  FDESCRICAO := Value;
end;

procedure TTB_TESOURARIA.SetDTA_INCLUSAO(const Value: TDateTime);
begin
  FDTA_INCLUSAO := Value;
end;

procedure TTB_TESOURARIA.SetDTA_MOVIMENTO(const Value: TDateTime);
begin
  FDTA_MOVIMENTO := Value;
end;

procedure TTB_TESOURARIA.SetID_CENTRO_CUSTO(const Value: Integer);
begin
  FID_CENTRO_CUSTO := Value;
end;

procedure TTB_TESOURARIA.SetID_FORMA_PAGAMENTO(const Value: Integer);
begin
  FID_FORMA_PAGAMENTO := Value;
end;

procedure TTB_TESOURARIA.SetID_FORNECEDOR(const Value: Integer);
begin
  FID_FORNECEDOR := Value;
end;

procedure TTB_TESOURARIA.SetID_TIPO_CULTO(const Value: Integer);
begin
  FID_TIPO_CULTO := Value;
end;

procedure TTB_TESOURARIA.SetID_TIPO_LANCAMENTO(const Value: Integer);
begin
  FID_TIPO_LANCAMENTO := Value;
end;

procedure TTB_TESOURARIA.SetNRO_DOCUMENTO(const Value: integer);
begin
  FNRO_DOCUMENTO := Value;
end;

procedure TTB_TESOURARIA.SetSITUACAO(const Value: string);
begin
  FSITUACAO := Value;
end;

procedure TTB_TESOURARIA.SetSTATUS(const Value: string);
begin
  FSTATUS := Value;
end;

procedure TTB_TESOURARIA.SetUSUARIO_INCLUSAO(const Value: string);
begin
  FUSUARIO_INCLUSAO := Value;
end;

procedure TTB_TESOURARIA.SetVALOR(const Value: Double);
begin
  FVALOR := Value;
end;

end.
