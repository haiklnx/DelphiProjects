unit Builder.Connection;

interface

uses
  System.SysUtils,
  Vcl.Forms,
  FireDac.Comp.Client,
  FireDac.Stan.Def,
  FireDAC.VCLUI.Wait,
  FireDac.Phys.MySQL,
  FireDAC.Comp.UI;

type
  IDBConnection = interface;
  IParams = interface;

  { -------------------------------------------------------------------- }
  IParamsBuilder = interface
    ['{75CC2FCF-AC39-496F-AC4A-19793ABD4AF2}']
    function Host(AHost: String): IParamsBuilder;
    function Database(ADatabase: String): IParamsBuilder;
    function User(AUser: String): IParamsBuilder;
    function Password(APassword: String): IParamsBuilder;
    function DriverName(ADriverName: String): IParamsBuilder;
    function Port(APort: Integer): IParamsBuilder;
    function ConnectionName(AName: String): IParamsBuilder;
    function Build: IParams;
  end;

  TParamsBuilder = class(TInterfacedObject, IParamsBuilder)
  private
    FHost, FDatabase, FUser, FPassword, FDriverName,
    FConnecitonName: String;
    FPort: Integer;
  public
    constructor Create;
    destructor Destroy; override;

    function Host(AHost: String): IParamsBuilder;
    function Database(ADatabase: String): IParamsBuilder;
    function User(AUser: String): IParamsBuilder;
    function Password(APassword: String): IParamsBuilder;
    function DriverName(ADriverName: String): IParamsBuilder;
    function Port(APort: Integer): IParamsBuilder;
    function ConnectionName(AName: String): IParamsBuilder;
    function Build: IParams;
  end;

  IParams = interface
    ['{85B524DD-2053-4066-B794-2F3347D62BE2}']
    function Host: String;
    function Database: String;
    function User: String;
    function Password: String;
    function DriverName: String;
    function ConnectionName: String;
    function Port: Integer;
  end;

  TParams = class(TInterfacedObject, IParams)
  private
    FHost, FDatabase, FUser, FPassword, FDriverName,
    FConnectionName: String;
    FPort: Integer;
  public
    constructor Create(AHost, ADatabase, AUser, APassword, ADriverName,
      AConnectionName: String;
      APort: Integer);
    destructor Destroy; override;

    class function Builder: IParamsBuilder;

    function Host: String;
    function Database: String;
    function User: String;
    function Password: String;
    function DriverName: String;
    function ConnectionName: String;
    function Port: Integer;
  end;

  { -------------------------------------------------------------------- }
  IDBConnectionBuilder = interface
    ['{7FE4FED7-CE9C-43E8-970A-7E9F6E4E2700}']
    function Params(AParams: IParams): IDBConnectionBuilder;
    function Build: IDBConnection;
  end;

  TDBConnectionBuilder = class(TInterfacedObject, IDBConnectionBuilder)
  private
    FParams: IParams;
  public
    constructor Create;
    destructor Destroy; override;

    function Params(AParams: IParams): IDBConnectionBuilder;

    function Build: IDBConnection;
  end;

  { -------------------------------------------------------------------- }
  IDBConnection = interface
    ['{AB4599BE-CB1C-4FDA-9A6F-A073F9C7FCE9}']
    function Connect: IDBConnection;
    function Name: String;
  end;

  TDBConnection = class(TInterfacedObject, IDBConnection)
  private
    FDBConnection: TFDConnection;
    FParams: IParams;
    FLib: TFDPhysMySQLDriverLink;
    FCursor: TFDGUIxWaitCursor;

    procedure AtribuirParams(AParams: IParams);
  public
    constructor Create(AParams: IParams);
    destructor Destroy; override;

    class function Builder: IDBConnectionBuilder;

    function Connect: IDBConnection;
    function Name: String;

  end;
    const
    CONN_GLOBAL = 'CONN_GLOBAL';
  { -------------------------------------------------------------------- }

implementation

{ TDBConnection }

procedure TDBConnection.AtribuirParams(AParams: IParams);
begin
  FDBConnection.Params.DriverID := 'MySQL';
  FDBConnection.Params.Add('Server='+ AParams.Host);
  FDBConnection.DriverName := AParams.DriverName;
  FDBConnection.Params.Database := AParams.Database;
  FDBConnection.Params.UserName := AParams.User;
  FDBConnection.Params.Password := AParams.Password;
  FDBConnection.Params.Values['Port'] := IntToStr(AParams.Port);
  FDBConnection.ConnectionName := AParams.ConnectionName;
end;

class function TDBConnection.Builder: IDBConnectionBuilder;
begin
  Result := TDBConnectionBuilder.Create;
end;

function TDBConnection.Connect: IDBConnection;
begin
  FDBConnection.Connected := True;
  Result := Self;
end;

constructor TDBConnection.Create(AParams: IParams);
begin
  FDBConnection := TFDConnection.Create(nil);
  FDBConnection.LoginPrompt := False;
  FLib := TFDPhysMySQLDriverLink.Create(nil);
  FLib.VendorLib := ExtractFileDir(Application.ExeName) + '\libmySQL.dll';
  FCursor := TFDGUIxWaitCursor.Create(nil);
  FCursor.Provider := 'Forms';

  FParams := AParams;
  AtribuirParams(FParams);
end;

destructor TDBConnection.Destroy;
begin
  FParams := nil;
  FDBConnection.Free;
  FLib.Free;
  FCursor.Free;

  inherited;
end;

function TDBConnection.Name: String;
begin
  Result := FDBConnection.ConnectionName;
end;

{ TDBBuilder }

function TDBConnectionBuilder.Build: IDBConnection;
begin
  if FParams = nil then
    FParams := TParams.Builder.Build;

  Result := TDBConnection.Create(FParams);
end;

constructor TDBConnectionBuilder.Create;
begin

end;

destructor TDBConnectionBuilder.Destroy;
begin

  inherited;
end;

function TDBConnectionBuilder.Params(AParams: IParams): IDBConnectionBuilder;
begin
  FParams := AParams;
  Result := Self;
end;

{ TParams }

class function TParams.Builder: IParamsBuilder;
begin
  Result := TParamsBuilder.Create;
end;

function TParams.ConnectionName: String;
begin
  Result := FConnectionName;
end;

constructor TParams.Create(AHost, ADatabase, AUser, APassword, ADriverName, AConnectionName: String; APort: Integer);
begin
  FHost := AHost;
  FDatabase := ADatabase;
  FUser := AUser;
  FPassword := APassword;
  FDriverName := ADriverName;
  FPort := APort;
  FConnectionName := AConnectionName;
end;

function TParams.Database: String;
begin
  Result := FDatabase;
end;

destructor TParams.Destroy;
begin

  inherited;
end;

function TParams.DriverName: String;
begin
  Result := FDriverName;
end;

function TParams.Host: String;
begin
  Result := FHost;
end;

function TParams.Password: String;
begin
  Result := FPassword;
end;

function TParams.Port: Integer;
begin
  Result := FPort;
end;

function TParams.User: String;
begin
  Result := FUser;
end;

{ TParamsBuilder }

function TParamsBuilder.Build: IParams;
begin
  if FHost = EmptyStr then
    FHost := 'localhost';

  if FDatabase = EmptyStr then
    FDatabase := 'exata';

  if FUser = EmptyStr then
    FUser := 'root';

  if FPassword = EmptyStr then
    FPassword := 'root';

  if FDriverName = EmptyStr then
    FDriverName := 'MySQL';

  if FPort = 0 then
    FPort := 33089;

  if FConnecitonName = EmptyStr then
    FConnecitonName := CONN_GLOBAL;

  Result := TParams.Create(FHost, FDatabase, FUser, FPassword, FDriverName, FConnecitonName, FPort);
end;

function TParamsBuilder.ConnectionName(AName: String): IParamsBuilder;
begin
  FConnecitonName := AName;
  Result := Self;
end;

constructor TParamsBuilder.Create;
begin

end;

function TParamsBuilder.Database(ADatabase: String): IParamsBuilder;
begin
  FDatabase := ADatabase;
  Result := Self;
end;

destructor TParamsBuilder.Destroy;
begin

  inherited;
end;

function TParamsBuilder.DriverName(ADriverName: String): IParamsBuilder;
begin
  FDriverName := ADriverName;
  Result := Self;
end;

function TParamsBuilder.Host(AHost: String): IParamsBuilder;
begin
  FHost := AHost;
  Result := Self;
end;

function TParamsBuilder.Password(APassword: String): IParamsBuilder;
begin
  FPassword := APassword;
  Result := Self;
end;

function TParamsBuilder.Port(APort: Integer): IParamsBuilder;
begin
  FPort := APort;
  Result := Self;
end;

function TParamsBuilder.User(AUser: String): IParamsBuilder;
begin
  FUser := AUser;
  Result := Self;
end;

end.
