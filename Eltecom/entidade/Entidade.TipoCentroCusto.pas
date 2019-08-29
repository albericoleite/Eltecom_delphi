unit Entidade.TipoCentroCusto;

interface
uses SimpleAttributes;
type
TTIPO_CENTRO_CUSTO = class
  private
    FDESCRICAO: string;
    FID: Integer;
    procedure SetDESCRICAO(const Value: string);
    procedure SetID(const Value: Integer);
  published
  [PK,AutoInc]
  property ID : Integer read FID write SetID;
  property DESCRICAO : string read FDESCRICAO write SetDESCRICAO;
end;

implementation

{ TTIPO_CENTRO_CUSTO }

procedure TTIPO_CENTRO_CUSTO.SetDESCRICAO(const Value: string);
begin
  FDESCRICAO := Value;
end;

procedure TTIPO_CENTRO_CUSTO.SetID(const Value: Integer);
begin
  FID := Value;
end;

end.
