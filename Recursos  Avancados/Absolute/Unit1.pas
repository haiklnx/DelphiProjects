unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    procedure Edit1Change(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private
    procedure UppderAbsolute (Sender : TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Edit1Change(Sender: TObject);
begin
  UppderAbsolute(Sender);
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
  UppderAbsolute(Sender);
end;

procedure TForm1.UppderAbsolute(Sender: TObject);
var
  //CAST-Tipificação é feita na declaração da variavel
  // aponta o ponteiro para o Sender já tipificado

  edit : TEdit absolute Sender;
  memo : TMemo absolute Sender;
begin
  // Evitar fazer o Cast do objeto como é feito do jeito convencional

  if Sender is TEdit then
    edit.Text := UpperCase(edit.Text);

  if Sender is TMemo then
    memo.Text := UpperCase(memo.Text);
end;

end.
