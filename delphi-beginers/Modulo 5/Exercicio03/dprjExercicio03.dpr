program dprjExercicio03;

uses
  Vcl.Forms,
  untExercicio03 in 'untExercicio03.pas' {frmExercicio03};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExercicio03, frmExercicio03);
  Application.Run;
end.
