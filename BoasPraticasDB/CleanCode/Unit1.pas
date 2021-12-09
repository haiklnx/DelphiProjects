unit Unit1;

interface

type
  TModelQuery = class(TInterfacedObject, IQuery)
  private

  public
    constructor Create;
    destructor Destroy; Override;

    class function New: IClasse;
  end;

implementation

{ TClasse }

constructor TModelQuery.Create;
begin

end;

destructor TModelQuery.Destroy;
begin

  inherited;
end;

class function TModelQuery.New: IClasse;
begin

end;

end.
