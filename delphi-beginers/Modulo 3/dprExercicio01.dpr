program dprExercicio01;

uses
  Vcl.Forms,
  untExercicio02 in 'Exercicio 01\untExercicio02.pas' {frmExercicio01};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExercicio01, frmExercicio01);
  Application.Run;
end.
