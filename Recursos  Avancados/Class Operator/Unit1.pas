unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  TProduto = record
    Valor : Integer;
    Nome : String;



    class operator add(a,b : TProduto) : TProduto;
    class operator implicit(value : String) : TProduto;
  end;



  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
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

{$R *.dfm}

{ TProduto }

class operator TProduto.add(a, b: TProduto): TProduto;
begin
  Result.Valor := a.Valor + b.Valor;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  p1,p2,p3 : TProduto;
begin
  p1.Valor := 10;
  p2.Valor := 70;
  p3 := p1 + p2;

  ShowMessage(IntToStr(p3.Valor));
end;

class operator TProduto.implicit(value: String): TProduto;
begin
  Result.Valor := StrToInt(value);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  p : TProduto;
begin
  p := '15';
  ShowMessage(IntToStr(p.Valor));
end;

end.
