unit Entidade.FormaPagamento;

interface
uses SimpleAttributes;
type
TFORMA_PAGAMENTO = class
  private
    FDESCRICAO: string;
    FID: Integer;
    procedure SetDESCRICAO(const Value: string);
    procedure SetID(const Value: Integer);
  published
  [PK,AutoInc]
  property ID:Integer read FID write SetID;
  property DESCRICAO:string read FDESCRICAO write SetDESCRICAO;
end;

implementation

{ TFORMA_PAGAMENTO }

procedure TFORMA_PAGAMENTO.SetDESCRICAO(const Value: string);
begin
  FDESCRICAO := Value;
end;

procedure TFORMA_PAGAMENTO.SetID(const Value: Integer);
begin
  FID := Value;
end;

end.
