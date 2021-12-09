unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMeuGenerico = array [0..9] of string;

  TMeuArrayGenerico<T> = class
    FArray : Array [0..9] of T;
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

  TMeuGenericoA = TMeuArrayGenerico<string>;

  {
    No caso do Generics o compilador utilizado os tipos que foram setados em
    tempo de projeoto para fazer a validação!
  }


var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  aux1 : TMeuGenerico;
  aux2 : TMeuGenerico;
  aux3 : array of string;
  aux4 : array of string;
begin
  aux1 := aux2;
//  aux1 := aux3;  vai gerar o erro por incompatibilidade
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  aux1 : TMeuArrayGenerico<String>;
  aux2 : TMeuArrayGenerico<String>;
  aux3 : TMeuGenericoA;
  aux4 : TMeuGenericoA;
begin
  aux1 := aux3;
end;

end.
