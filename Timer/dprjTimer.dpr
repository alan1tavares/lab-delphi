program dprjTimer;

uses
  Vcl.Forms,
  uTimer in 'uTimer.pas' {frmTimer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTimer, frmTimer);
  Application.Run;
end.
