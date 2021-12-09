unit eClientes.model.query;

interface

uses
  Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  eClientes.model.conexao.interfs,
  System.SysUtils;

type
  TModelQuery = class(TInterfacedObject, IQuery)
  private
    FParant: IConexao;
    FQuery: TFDQuery;
  public
    constructor Create(AParent: IConexao);
    destructor Destroy; Override;

    class function New(AParent: IConexao): IQuery;
  end;

implementation

{ TClasse }

constructor TModelQuery.Create(AParent: IConexao);
begin
  FParant := AParent;
  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := TFDCustomConnection(AParent.Connection);
end;

destructor TModelQuery.Destroy;
begin
  FreeAndNil(FQuery);

  inherited;
end;

class function TModelQuery.New(AParent: IConexao): IQuery;
begin
  Result := Self.Create(AParent);
end;

end.
