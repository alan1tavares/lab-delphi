program dprjExercicio02;

uses
  Vcl.Forms,
  untExercicio02 in 'untExercicio02.pas' {frmExercicio02};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExercicio02, frmExercicio02);
  Application.Run;
end.
