unit builder.view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.VCLUI.Wait,
  builder.connection;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery2: TFDQuery;
    DataSource2: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    DBConnection: IDBConnection;
    DBConnection2: IDBConnection;
    Params: IParams;
    Params2: IParams;
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
  FDQuery1.Open;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FDQuery2.Open;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  try
    Params := TParams.Builder
      .ConnectionName('CON')
      .Host('127.0.0.1')
      .Database(Edit1.Text)
      .User(Edit2.Text)
      .Password(Edit3.Text)
      .Port(StrToInt(Trim(Edit4.Text)))
      .Build;


    DBConnection := TDBConnection.Builder
      .Params(Params)
      .Build;
    DBConnection.Connect;
    FDQuery1.ConnectionName := DBConnection.Name;
    Button3.Enabled := False;
  except
    DBConnection := nil;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  try
    Params2 := TParams.Builder
      .Build;

    DBConnection2 := TDBConnection.Builder
      .Params(Params2)
      .Build;

    DBConnection2.Connect;
    FDQuery2.ConnectionName := DBConnection2.Name;
    Button4.Enabled := False;
  except
    DBConnection2 := nil;
  end;
end;

end.
