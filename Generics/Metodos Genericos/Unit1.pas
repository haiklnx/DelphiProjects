unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TProduto = class
  private
    Fdescricao: string;
    procedure Setdescricao(const Value: string);
  published
    constructor create;
    property descricao : string read Fdescricao write Setdescricao;
  end;

  TUtills = class
      class function IIF<T>(Condition : Boolean; T1, T2: T) : T;
  end;


  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
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

{ TUtills }

class function TUtills.IIF<T>(Condition: Boolean; T1, T2: T): T;
begin
  if Condition then
    Result := T1
  else
    Result := T2;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  aux : string;
begin
  aux := TUtills.IIF<String>(Edit1.Text <> '', Edit1.Text, 'Default');
  ShowMessage(aux);
end;

{ TProduto }

constructor TProduto.create;
begin
  Fdescricao := 'Produto Generico';
end;

procedure TProduto.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  prod1, prod2, prod3 : TProduto;
begin
  prod1 := TProduto.create;
  prod1.descricao := 'Pen Drive';
  prod2 := nil;

  prod3 := TUtills.IIF<TProduto>(Assigned(prod2) , prod1, TProduto.create);
  ShowMessage(prod3.descricao);
end;

end.
