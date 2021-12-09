unit Unit3;

interface

Type

  TTesoura = class
  private
    FCortar: Boolean;
    procedure SetCortar(const Value: Boolean);
  public
    property Cortar : Boolean read FCortar write SetCortar;
end;

implementation

{ TTesoura }

procedure TTesoura.SetCortar(const Value: Boolean);
begin
  FCortar := Value;
end;

end.
