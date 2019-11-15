unit untExercicio03;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExercicio03 = class(TForm)
    lblArquivo01: TLabel;
    lblArquivo02: TLabel;
    edtArquivo01: TEdit;
    edtArquivo02: TEdit;
    bttGravaArquivo02: TButton;
    procedure bttGravaArquivo02Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExercicio03: TfrmExercicio03;

implementation

{$R *.dfm}

procedure TfrmExercicio03.bttGravaArquivo02Click(Sender: TObject);
var
  Arquivo01, Arquivo02: TextFile;
begin
  AssignFile(Arquivo01, edtArquivo01.Text);
  Reset(Arquivo01);

end;

end.
