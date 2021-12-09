unit Unit4;

interface

uses
  Unit3, Unit2, system.bindings.expression, system.bindings.helper;

Type
  TControllerTesouraPapel = class
    private
    FTesoura: TTesoura;
    FPapel: TPapel;
    FBinginds : TBindingExpression;
    procedure SetPapel(const Value: TPapel);
    procedure SetTesoura(const Value: TTesoura);

    public
      constructor create;
      destructor destroy; override;
      property Tesoura : TTesoura read FTesoura write SetTesoura;
      property Papel : TPapel read FPapel write SetPapel;

  end;
implementation

{ TControllerTesouraPapel }

constructor TControllerTesouraPapel.create;
begin
  Tesoura := TTesoura.Create;
  Papel := TPapel.Create;


  FBinginds := TBindings.CreateManagedBinding(
    [TBindings.CreateAssociationScope([Associate(FTesoura, 'tesoura')])],
    'tesoura.cortar',
    [TBindings.CreateAssociationScope([Associate(FPapel, 'papel')])],
    'papel.cortado',
    nil,nil);
end;

destructor TControllerTesouraPapel.destroy;
begin
  Tesoura.Free;
  Papel.Free;

  inherited;
end;

procedure TControllerTesouraPapel.SetPapel(const Value: TPapel);
begin
  FPapel := Value;
end;

procedure TControllerTesouraPapel.SetTesoura(const Value: TTesoura);
begin
  FTesoura := Value;
end;

end.
