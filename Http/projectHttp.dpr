program projectHttp;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uBoxTools in 'uBoxTools.pas',
  uModelViaCep in 'uModelViaCep.pas' {ModelViaCep: TDataModule},
  uRequestAdress in 'Model\uRequestAdress.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TModelViaCep, ModelViaCep);
  Application.Run;
end.
