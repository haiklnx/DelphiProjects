unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TDia = (Segunda, Terça);
  TMes = (Janeiro, Fevereiro);

  TEnumList<T> = class
    class procedure EnumToList(Value : TStrings);
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  System.TypInfo;

{$R *.dfm}

{ TEnumList<T> }

class procedure TEnumList<T>.EnumToList(Value: TStrings);
var
  i, Pos: Integer;
  Aux: string;
begin
  Value.Clear;
  i := 0;
  repeat
    Aux := GetEnumName(TypeInfo(T),i);
    Pos := GetEnumValue(TypeInfo(T), Aux);
    if pos <> -1 then Value.Add(Aux);
    Inc(i);
  until pos < 0;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  TEnumList<TDia>.EnumToList(ComboBox1.Items);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TEnumList<TMes>.EnumToList(ComboBox1.Items);
end;

end.
