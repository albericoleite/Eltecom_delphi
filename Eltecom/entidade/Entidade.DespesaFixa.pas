unit Entidade.DespesaFixa;

interface
uses SimpleAttributes;
type
TDESPESA_FIXA = class
  private
    FVALOR: Double;
    FDESCRICAO: string;
    FVENCIMENTO: Integer;
    FID_TIPO_LANCAMENTO: Integer;
    FID_CONGREGACAO: Integer;
    FID: Integer;
    FID_FORNECEDOR: Integer;
    FID_IGREJA: Integer;
    procedure SetDESCRICAO(const Value: string);
    procedure SetID(const Value: Integer);
    procedure SetID_CONGREGACAO(const Value: Integer);
    procedure SetID_FORNECEDOR(const Value: Integer);
    procedure SetID_IGREJA(const Value: Integer);
    procedure SetID_TIPO_LANCAMENTO(const Value: Integer);
    procedure SetVALOR(const Value: Double);
    procedure SetVENCIMENTO(const Value: Integer);
  published
  [PK,AutoInc]
   property ID :Integer read FID write SetID;
   property DESCRICAO:string read FDESCRICAO write SetDESCRICAO;
   property ID_FORNECEDOR:Integer read FID_FORNECEDOR write SetID_FORNECEDOR;
   property VENCIMENTO:Integer read FVENCIMENTO write SetVENCIMENTO;
   property VALOR:Double read FVALOR write SetVALOR;
   property ID_IGREJA:Integer read FID_IGREJA write SetID_IGREJA;
   property ID_CONGREGACAO:Integer read FID_CONGREGACAO write SetID_CONGREGACAO;
   property ID_TIPO_LANCAMENTO:Integer read FID_TIPO_LANCAMENTO write SetID_TIPO_LANCAMENTO;
end;

implementation

{ TDESPESA_FIXA }

procedure TDESPESA_FIXA.SetDESCRICAO(const Value: string);
begin
  FDESCRICAO := Value;
end;

procedure TDESPESA_FIXA.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TDESPESA_FIXA.SetID_CONGREGACAO(const Value: Integer);
begin
  FID_CONGREGACAO := Value;
end;

procedure TDESPESA_FIXA.SetID_FORNECEDOR(const Value: Integer);
begin
  FID_FORNECEDOR := Value;
end;

procedure TDESPESA_FIXA.SetID_IGREJA(const Value: Integer);
begin
  FID_IGREJA := Value;
end;

procedure TDESPESA_FIXA.SetID_TIPO_LANCAMENTO(const Value: Integer);
begin
  FID_TIPO_LANCAMENTO := Value;
end;

procedure TDESPESA_FIXA.SetVALOR(const Value: Double);
begin
  FVALOR := Value;
end;

procedure TDESPESA_FIXA.SetVENCIMENTO(const Value: Integer);
begin
  FVENCIMENTO := Value;
end;

end.
