unit untExercicio03;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExercicio03 = class(TForm)
    edtEntrada: TEdit;
    btnKmHoraParaMetroSegundo: TButton;
    lblResultado: TLabel;
    btnMetroSegundoParaKmHHora: TButton;
    procedure btnKmHoraParaMetroSegundoClick(Sender: TObject);
    procedure btnMetroSegundoParaKmHHoraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExercicio03: TfrmExercicio03;

implementation

{$R *.dfm}

procedure TfrmExercicio03.btnKmHoraParaMetroSegundoClick(Sender: TObject);
var
  Resultado: double;
begin
  Resultado := StrToFloat(edtEntrada.Text) / 3.6;
  lblResultado.Caption := FloatToStr(Resultado);
end;

procedure TfrmExercicio03.btnMetroSegundoParaKmHHoraClick(Sender: TObject);
var
  Resultado: double;
begin
  Resultado := StrToFloat(edtEntrada.Text) * 3.6;
  lblResultado.Caption := FloatToStr(Resultado);
end;

end.
