
unit untExercicio03;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExercicio03 = class(TForm)
    edtEntrada01: TEdit;
    edtEntrada02: TEdit;
    btnMaiorNumero: TButton;
    lblSaida: TLabel;
    procedure btnMaiorNumeroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExercicio03: TfrmExercicio03;

implementation

{$R *.dfm}

procedure TfrmExercicio03.btnMaiorNumeroClick(Sender: TObject);
var
  OMaiorNumeroEhOPrimeiro: boolean;

begin
  OMaiorNumeroEhOPrimeiro := StrToInt(edtEntrada01.Text) > StrToInt(edtEntrada02.Text);
  if OMaiorNumeroEhOPrimeiro then
    lblSaida.Caption := 'Verdadeiro'
  else
    lblSaida.Caption := 'Falso';
end;

end.
