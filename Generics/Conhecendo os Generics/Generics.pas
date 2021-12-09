unit Generics;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TKeyValue<T> = class
  private
    FKey: string;
    FValue: T;
    procedure SetKey(const Value: string);
    procedure SetValue(const Value: T);
  published
    property Key : string read FKey write SetKey;
    property Value : T read FValue write SetValue;

  end;


  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TKeyValue<T> }

procedure TKeyValue<T>.SetKey(const Value: string);
begin
  FKey := Value;
end;

procedure TKeyValue<T>.SetValue(const Value: T);
begin
  FValue := Value;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  kv : TKeyValue<TForm>;
begin
  kv := TKeyValue<TForm>.Create;
  try
    kv.Key := 'F1';
    kv.Value := Self;

    ShowMessage(kv.Key + ' -> ' + kv.Value.Name);
  finally
    kv.Free;
  end;
end;

end.
