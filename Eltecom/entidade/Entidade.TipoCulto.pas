unit Entidade.TipoCulto;

interface
uses SimpleAttributes;
type
TTIPO_CULTO = class
  private
    FDESCRICAO: string;
    FID: integer;
    FOBJETIVO: string;
    procedure SetID(const Value: integer);
    procedure SetDESCRICAO(const Value: string);
    procedure SetOBJETIVO(const Value: string);
  published
  [PK,AutoInc]
  property ID:integer read FID write SetID;
  property DESCRICAO:string read FDESCRICAO write SetDESCRICAO;
  property OBJETIVO:string read FOBJETIVO write SetOBJETIVO;
end;

implementation

{ TTIPO_CULTO }

procedure TTIPO_CULTO.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure TTIPO_CULTO.SetDESCRICAO(const Value: string);
begin
  FDESCRICAO := Value;
end;

procedure TTIPO_CULTO.SetOBJETIVO(const Value: string);
begin
  FOBJETIVO := Value;
end;

end.
