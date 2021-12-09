unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button1: TButton;
    fdConn: TFDConnection;
    meta: TFDMetaInfoQuery;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    ds: TDataSource;
    Button2: TButton;
    meta2: TFDMetaInfoQuery;
    ds2: TDataSource;
    DBGrid3: TDBGrid;
    DataSource1: TDataSource;
    ds3: TDataSource;
    qr: TFDQuery;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure metaAfterScroll(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure fdConnRecover(ASender, AInitiator: TObject; AException: Exception;
      var AAction: TFDPhysConnectionRecoverAction);
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
  fdConn.getTableNames(
    '', '', '', ListBox1.Items
  )
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  meta.Open();
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  qr.Open();
end;

procedure TForm1.fdConnRecover(ASender, AInitiator: TObject;
  AException: Exception; var AAction: TFDPhysConnectionRecoverAction);
var
  resp: integer;
begin
  resp := MessageDlg('Yes - Offline | Ok - Reconectar | Cancel - Cancelar',
    mtConfirmation, [mbYes, mbOK, mbCancel], 0);
  case resp of
    mrYes: AAction := faOfflineAbort;
    mrOK:  AAction := faRetry;
    mrCancel:  AAction := faFail;
  end;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  if ListBox1.ItemIndex > -1 then
    fdConn.GetFieldNames(
      '', '', ListBox1.Items[ListBox1.ItemIndex], '', ListBox2.Items
    );
end;

procedure TForm1.metaAfterScroll(DataSet: TDataSet);
begin
  meta2.Close;
  meta2.ObjectName := meta.FieldByName('TABLE_NAME').AsString;
  meta2.Open();
end;

end.
