unit eClientes.model.conexao.interfs;

interface

uses
  Data.DB;
type
  IConexao = interface
    ['{1CD6141A-619E-42A8-80A2-84148C8BAC91}']
    function Connection : TCustomConnection;
  end;

  iQuery = interface
    ['{9314583B-9F93-46C7-A544-885A88F6F7EB}']
  end;
implementation

end.
