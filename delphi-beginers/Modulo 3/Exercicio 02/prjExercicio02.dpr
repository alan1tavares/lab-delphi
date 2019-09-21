program prjExercicio02;

uses
  Vcl.Forms,
  untExercicio02 in 'untExercicio02.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
