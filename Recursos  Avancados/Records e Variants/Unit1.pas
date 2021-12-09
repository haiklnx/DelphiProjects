unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type


  // O valores vão ocupar o mesmo espaço na memória utlizando o CASEa no record
  // vai ter mais de uma forma de manipular o objeto otimizando a memoria
  TForma = record
    Nome : String;
    case isQuadrado : Boolean of
      True : (x1,x2,y1,y2 : Integer);
      False : (x,y : Integer);
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    quadrado : TForma;
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
  quadrado.Nome := 'Quadrado';
  quadrado.isQuadrado := True;

  quadrado.x1 := 10;
  quadrado.x2 := 20;
  quadrado.y1 := 30;
  quadrado.y2 := 40;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  with Memo1 do
  begin
    Lines.Add('x1: ' + IntToStr(quadrado.x1));
    Lines.Add('x2: '+ IntToStr(quadrado.x2));
    Lines.Add('y1: ' +IntToStr(quadrado.y1));
    Lines.Add('y2: ' +IntToStr(quadrado.y2));
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
with Memo1 do
  begin
    Lines.Add('x: ' + IntToStr(quadrado.x));
    Lines.Add('y: '+ IntToStr(quadrado.y));
  end;
end;

end.
