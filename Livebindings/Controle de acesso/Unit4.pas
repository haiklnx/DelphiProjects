unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, unit2, unit3;

type
  TForm4 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    procedure Cadastro1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Cadastro1Click(Sender: TObject);
var
  Controller : TController;
begin
  Controller := TController.Create;
  Controller.free;
end;

end.
