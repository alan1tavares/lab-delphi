program dprjExercicio04;

uses
  Vcl.Forms,
  untExercicio04 in 'untExercicio04.pas' {frmExercicio04};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExercicio04, frmExercicio04);
  Application.Run;
end.
