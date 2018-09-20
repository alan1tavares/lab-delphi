program POOCachorro;

uses
  Vcl.Forms,
  ViewMain in 'View\ViewMain.pas' {Form1},
  ClassPessoa in 'Model\ClassPessoa.pas',
  ClassCachorro in 'Model\ClassCachorro.pas',
  ClassCahorroTreinado in 'Model\ClassCahorroTreinado.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
