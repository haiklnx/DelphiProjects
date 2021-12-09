unit eClientes.model.conexao;

interface

uses
  Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  eClientes.model.conexao.interfs, System.SysUtils;
type
  TModelConexao = class(TInterfacedObject, IConexao)
  private
    FConnection: TFDConnection;
  public
    constructor Create;
    destructor Destroy; Override;

    class function New: IConexao;

    function Connection : TCustomConnection;
  end;

implementation

{ TClasse }

function TModelConexao.Connection: TCustomConnection;
begin
  Result := FConnection;
end;

constructor TModelConexao.Create;
begin
  FConnection := TFDConnection.Create(nil);

  FConnection.DriverName := 'MySQL';
  FConnection.Params.DriverID := 'MySQL';
  FConnection.Params.Database := 'exata';
  FConnection.Params.UserName := 'root';
  FConnection.Params.Password := 'root';
  FConnection.Params.Values['Port'] := '33089';
  FConnection.Connected := True;
end;

destructor TModelConexao.Destroy;
begin
  FreeAndNil(FConnection);

  inherited;
end;

class function TModelConexao.New: IConexao;
begin
  Result := Self.Create;
end;

end.
