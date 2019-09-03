unit Entidade.TipoSaida;


interface
uses SimpleAttributes;
type
TTIPO_SAIDA = class
  private
    FDESCRICAO: string;
    FID: integer;
    FTIPO: string;
    procedure SetID(const Value: integer);
    procedure SetDESCRICAO(const Value: string);
    procedure SetTIPO(const Value: string);
  published
  [PK,AutoInc]
  property ID:integer read FID write SetID;
  property DESCRICAO:string read FDESCRICAO write SetDESCRICAO;
  property TIPO:string read FTIPO write SetTIPO;
end;

implementation

{ TTIPO_CULTO }

procedure TTIPO_SAIDA.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure TTIPO_SAIDA.SetDESCRICAO(const Value: string);
begin
  FDESCRICAO := Value;
end;

procedure TTIPO_SAIDA.SetTIPO(const Value: string);
begin
  FTIPO := Value;
end;

end.
