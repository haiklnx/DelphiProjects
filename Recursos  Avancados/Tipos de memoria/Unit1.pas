unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  {
    Memoria Global -> Alocada apenas uma vez e liberada ao fim do programa

    Stack -> Utilizada para
      alocar variaveis de rotinas locais
      parametros de rotina e tipo de retorno
      chamdas de fun��o da API do windows
      Records (por isso n�o precisa instacia-los e destrui-los)
      Alocada dinamicamente LIFO
      Tamanho configurav�l pelo programador (Linker)

    Heap ->
      Memoria alocada dinamicamente
      instancias de classes v�o para o Heap
      Matrizes dinamicas e redimensiomanetos
      Aloca��o usando GetMem FreeMem New Dispose
      String Ansi Wide Unicdade Variant Interfaces
      Consiste e, toda a memoria virutal (ram e espa�o em disco)
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
