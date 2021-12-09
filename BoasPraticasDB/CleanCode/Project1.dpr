program Project1;

uses
  Vcl.Forms,
  eClientes.view.principal in 'eClientes.view.principal.pas' {Form1},
  eClientes.model.conexao in 'eClientes.model.conexao.pas',
  eClientes.model.conexao.interfs in 'eClientes.model.conexao.interfs.pas',
  eClientes.model.query in 'eClientes.model.query.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
