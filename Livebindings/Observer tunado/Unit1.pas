unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, unit4,system.bindings.expression, system.bindings.helper;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  FController : TControllerTesouraPapel;
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
  FController.Papel.Cortado := not FController.Papel.Cortado;
  TBindings.Notify(FController.Tesoura, 'cortar');

  case FController.Papel.Cortado of
    True: Label1.Caption := 'papel cortado';
    False: Label1.Caption := 'papel inteiro';
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FController := TControllerTesouraPapel.create;
end;

end.
