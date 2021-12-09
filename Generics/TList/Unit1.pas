unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Classes,
  System.Generics.Collections;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    ListaNum : TList<Integer>;
    procedure Notificar(Sender : TObject);
    procedure Notificacao (Sender : TObject; const Item: Integer; Action : TCollectionNotification);
    { Private declarations }
  public
    constructor create;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  ListaNum.Add(StrToInt(Edit1.Text))
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ListaNum.Delete(Pred(ListaNum.Count));
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i: Integer;
begin
  i := 0;
  Memo1.Clear;
  for I := 0 to Pred(ListaNum.Count) do
    Memo1.Lines.Add(ListaNum[i].ToString());
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Memo1.Clear;
  Memo1.Lines.Add(ListaNum.Capacity.ToString());
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Memo1.Clear;
  Memo1.Lines.Add(IntToStr(ListaNum.Count));
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  ListaNum.OnNotify := Notificacao;
end;

constructor TForm1.create;
begin
  ListaNum := TList<Integer>.Create;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ListaNum := TList<Integer>.Create;
end;

procedure TForm1.Notificacao(Sender: TObject; const Item: Integer;
  Action: TCollectionNotification);
begin
  case Action of
    cnAdded: memo1.Lines.Add('Add: ' + Item.ToString());
    cnRemoved: memo1.Lines.Add('RM:' + Item.ToString());
    cnExtracted: Memo1.Lines.Add('Ext:' + Item.ToString());
  end;
end;

procedure TForm1.Notificar(Sender: TObject);
begin

end;

end.
