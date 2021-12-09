unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TPessoa = class
  private
    Fnome: String;
    procedure Setnome(const Value: String);
  published
     property nome : String read Fnome write Setnome;
  end;

  {
    Sempre que precisar instanciar uma outra classe para o generic,
    é preciso declarar o constructor como é feito a baixo e
    inicilizar a classe como em TNFe<T>.create
  }

  TNFe<T : Constructor> = class
    FGeneric : T;
    constructor create;
    function GetGeneric : T;
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

{ TPessoa }

procedure TPessoa.Setnome(const Value: String);
begin
  Fnome := Value;
end;

{ TNFe<T> }

constructor TNFe<T>.create;
begin
  FGeneric := T.Create;
end;

function TNFe<T>.GetGeneric: T;
begin
  Result := FGeneric;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  nfe : TNFe<TPessoa>;
begin
   nfe := TNFe<TPessoa>.Create;
   try
      nfe.FGeneric.Nome := 'Gabriel';
      ShowMessage(nfe.GetGeneric.Nome);
   finally
     nfe.Free;
   end;

end;

end.
