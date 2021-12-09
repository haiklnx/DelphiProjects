unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  {
    ARC memory management

    Unsafe -> inseguro
      Desabilita o contato de referencia para interface
      Manipula como se fosse um ponteiro normal

    Weak -> fraca
      Não incrementa o contador de referencia
      gerencia a vida util do objeto

    Para controle do garbage colector automatico da interface
    quando ocorre referencia cruzada (um conhece o outro)
    é preciso utlizar '[weak]' acima da variavel que armazena esta interface
    para que ela não sofra incremento de contador
    EX:

      TNota = class(TinterfacedObject, INota)
      private
        [weak]
        FNota : Inota
      ....

  }

  TForm1 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
