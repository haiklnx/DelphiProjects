program Builder;

uses
  Vcl.Forms,
  builder.view.principal in 'src\view\builder.view.principal.pas' {Form1},
  Builder.Connection in 'src\model\Builder.Connection.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
