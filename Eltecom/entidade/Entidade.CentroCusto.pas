unit Entidade.CentroCusto;

interface

uses SimpleAttributes;

type
TCENTRO_CUSTO = class
  private
    FID_TIPO_CC: Integer;
    FDESCRICAO: string;
    FID: Integer;
    procedure SetDESCRICAO(const Value: string);
    procedure SetID(const Value: Integer);
    procedure SetID_TIPO_CC(const Value: Integer);
  published
  [PK,AutoInc]
property  ID: Integer read FID write SetID;
property  DESCRICAO: string read FDESCRICAO write SetDESCRICAO;
property  ID_TIPO_CC : Integer read FID_TIPO_CC write SetID_TIPO_CC;

end;

implementation

{ TCENTRO_CUSTO }

procedure TCENTRO_CUSTO.SetDESCRICAO(const Value: string);
begin
  FDESCRICAO := Value;
end;

procedure TCENTRO_CUSTO.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TCENTRO_CUSTO.SetID_TIPO_CC(const Value: Integer);
begin
  FID_TIPO_CC := Value;
end;

end.
