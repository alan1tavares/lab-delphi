program Project1;

uses
  Vcl.Forms,
  ViewMain in 'ViewMain.pas' {Form1},
  ClassPessoa in 'ClassPessoa.pas',
  ClassCachorro in 'ClassCachorro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
