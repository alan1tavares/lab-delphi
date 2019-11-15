program projExercicio02;

uses
  Vcl.Forms,
  untExercicio01 in 'untExercicio01.pas' {frmExercicio02};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExercicio02, frmExercicio02);
  Application.Run;
end.
