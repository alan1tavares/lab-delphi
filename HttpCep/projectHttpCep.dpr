program projectHttpCep;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uBoxTools in 'uBoxTools.pas',
  uRequestAdress in 'Model\uRequestAdress.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
