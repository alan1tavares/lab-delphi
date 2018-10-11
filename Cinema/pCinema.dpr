program pCinema;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {fmMain},
  uViewCadeiras in 'view\uViewCadeiras.pas' {fmCadeiras},
  uDAOCadeiras in 'model\uDAOCadeiras.pas' {dmDAOCadeiras: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TfmCadeiras, fmCadeiras);
  Application.CreateForm(TdmDAOCadeiras, dmDAOCadeiras);
  Application.Run;
end.
