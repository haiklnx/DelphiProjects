unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, Data.DB, FireDAC.Comp.Client,
  Vcl.StdCtrls, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids, FireDAC.Moni.Base,
  FireDAC.Moni.Custom, FireDAC.DApt, FireDAC.Moni.FlatFile,
  FireDAC.Moni.RemoteClient;

type
  TForm1 = class(TForm)
    fdConn: TFDConnection;
    cursor: TFDGUIxWaitCursor;
    Button1: TButton;
    Button2: TButton;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    Button3: TButton;
    FDMemTable1: TFDMemTable;
    ds: TDataSource;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    FDMoniCustomClientLink1: TFDMoniCustomClientLink;
    FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink;
    FDMoniRemoteClientLink1: TFDMoniRemoteClientLink;
    Button4: TButton;
    qr: TFDQuery;
    qrCodigo: TFDAutoIncField;
    qrNome: TStringField;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FDMoniCustomClientLink1Output(ASender: TFDMoniClientLinkBase;
      const AClassName, AObjName, AMessage: string);
    procedure Button4Click(Sender: TObject);
  private
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
//  fdConn.ExecSQL('Create Table workshop (ID Integer NOT NULL PRIMARY KEY, Descricao VARCHAR(50))');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
//  fdConn.ExecSQL('DROP Table workshop', True);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  fdConn.ExecSQL('SELECT * FROM DATA', TFDParams.Create, TDataSet(FDMemTable1));
  ds.DataSet := FDMemTable1;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  qr.Open;
  qr.Append;
  qrNome.AsString := Edit1.Text;
  qr.Post;
  qr.Close;
end;

procedure TForm1.FDMoniCustomClientLink1Output(ASender: TFDMoniClientLinkBase;
  const AClassName, AObjName, AMessage: string);
begin
  memo1.Lines.Add(AMessage);
end;

end.
