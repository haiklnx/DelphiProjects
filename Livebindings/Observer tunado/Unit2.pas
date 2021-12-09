unit Unit2;

interface

Type
  TPapel = class
  private
    FCortado: Boolean;
    procedure SetCortado(const Value: Boolean);
  public
    property Cortado : Boolean read FCortado write SetCortado;
  end;

implementation

{ TPapel }

procedure TPapel.SetCortado(const Value: Boolean);
begin
  FCortado := Value;
end;

end.
