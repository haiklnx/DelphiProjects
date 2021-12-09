unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.VCLUI.Wait;

type
  TForm3 = class(TForm)
    fdConn: TFDConnection;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Button1: TButton;
    Label1: TLabel;
    ds: TDataSource;
    ds2: TDataSource;
    qr: TFDQuery;
    qr2: TFDQuery;
    Button2: TButton;
    FDMemTable1: TFDMemTable;
    FDMemTable2: TFDMemTable;
    qr3: TFDQuery;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  tempo: Cardinal;
begin
  fdConn.Close;
  tempo := GetTickCount;
  qr.Open;
  qr2.Open;
  ds.DataSet := qr;
  ds2.DataSet := qr2;
  Label1.Caption := IntToStr(GetTickCount - tempo);
end;

procedure TForm3.Button2Click(Sender: TObject);
var
  tempo: Cardinal;
begin
  fdConn.Close;
  qr3.FetchOptions.AutoClose := False;
  tempo := GetTickCount;
  qr3.Open;
  qr3.FetchAll;
  label2.Caption := IntToStr(GetTickCount - tempo);
  FDMemTable1.Close;
  FDMemTable2.Close;
  FDMemTable1.Data := qr3.Data;
  qr3.NextRecordSet;
  qr3.FetchAll;
  FDMemTable2.Data := qr3.Data;

  ds.DataSet := FDMemTable1;
  ds2.DataSet := FDMemTable2;
end;

end.
