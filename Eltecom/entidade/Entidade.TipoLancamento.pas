unit Entidade.TipoLancamento;

interface
uses SimpleAttributes;
type
TTIPO_LANCAMENTO=class
  private
    FID_PAI: Integer;
    FDESCRICAO: string;
    FCODIGO: string;
    FID: integer;
    FID_TIPO_CENTRO_CUSTO: Integer;
    procedure SetCODIGO(const Value: string);
    procedure SetDESCRICAO(const Value: string);
    procedure SetID(const Value: integer);
    procedure SetID_PAI(const Value: Integer);
    procedure SetID_TIPO_CENTRO_CUSTO(const Value: Integer);
  published
  [PK,AutoInc]
  property ID:integer read FID write SetID;
  property CODIGO:string read FCODIGO write SetCODIGO;
  property DESCRICAO:string read FDESCRICAO write SetDESCRICAO;
  property ID_TIPO_CENTRO_CUSTO:Integer read FID_TIPO_CENTRO_CUSTO write SetID_TIPO_CENTRO_CUSTO;
  property ID_PAI:Integer read FID_PAI write SetID_PAI;
end;



implementation

{ TTIPO_LANCAMENTO }

procedure TTIPO_LANCAMENTO.SetCODIGO(const Value: string);
begin
  FCODIGO := Value;
end;

procedure TTIPO_LANCAMENTO.SetDESCRICAO(const Value: string);
begin
  FDESCRICAO := Value;
end;

procedure TTIPO_LANCAMENTO.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure TTIPO_LANCAMENTO.SetID_PAI(const Value: Integer);
begin
  FID_PAI := Value;
end;

procedure TTIPO_LANCAMENTO.SetID_TIPO_CENTRO_CUSTO(const Value: Integer);
begin
  FID_TIPO_CENTRO_CUSTO := Value;
end;

end.
