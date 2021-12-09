unit eClientes.view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Grids, Vcl.DBGrids, Data.DB, Vcl.StdCtrls,
  eClientes.model.conexao.interfs,
  eClientes.model.conexao,
  eClientes.model.query;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    FDBConnection: IConexao;
    FQuery: IQuery;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FDBConnection := TModelConexao.New;
  FQuery := TModelQuery.New(FDBConnection);
  DataSource1.DataSet := TDataSet(FQuery);
end;

end.
