unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;


Type

  IClasse = interface
    ['{8A28806A-0014-4B32-B53A-022D6EC48AB1}']
    procedure MSG;
  end;

  IBuilder = interface
    ['{8E4E0984-BE44-4E26-AA19-6994AD9BBCF3}']
    function Nome(ANome : String) : IBuilder;
    function Build : IClasse;
  end;

  TClasse = class(TInterfacedObject, IClasse)
  private
    FNome : String;
  public
    constructor Create(ANome: String);
    destructor Destroy; override;
    class function Builder  : IBuilder;
    procedure MSG;
  end;

  TBuilder = class(TInterfacedObject, IBuilder)
  private
    FNome : String;
  public
    destructor Destroy; override;
    function Nome(ANome : String) : IBuilder;
    function Build : IClasse;

  end;
implementation

{ TClasse }

class function TClasse.Builder: IBuilder;
begin
  Result := TBuilder.Create;
end;

constructor TClasse.Create(ANome: String);
begin
  FNome := ANome;
end;

destructor TClasse.Destroy;
begin

  inherited;
end;

procedure TClasse.MSG;
begin
  ShowMessage('Builder: ' + FNome);
end;

{ TBuilder }

function TBuilder.Build: IClasse;
begin
  if FNome = '' then
    FNome := 'Build';

  Result := TClasse.Create(FNome);
end;

destructor TBuilder.Destroy;
begin

  inherited;
end;

function TBuilder.Nome(ANome: String): IBuilder;
begin
  FNome := ANome;
  Result := Self;
end;

end.

