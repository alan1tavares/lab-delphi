unit untExercicio02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtEntrada: TEdit;
    lblResultado: TLabel;
    btnCelsiusFahrenheit: TButton;
    btnFahrenheitCelsius: TButton;
    procedure btnCelsiusFahrenheitClick(Sender: TObject);
    procedure btnFahrenheitCelsiusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCelsiusFahrenheitClick(Sender: TObject);
var
  Fahrenheit: double;
begin
  Fahrenheit := 9/5 * StrToFloat(edtEntrada.Text) + 32;
  lblResultado.Caption := FloatToStr(Fahrenheit);
end;

procedure TForm1.btnFahrenheitCelsiusClick(Sender: TObject);
var
  Celsius: double;
begin
  Celsius := 5/9 * (StrToFloat(edtEntrada.Text) - 32);
  lblResultado.Caption := FloatToStr(Celsius);
end;

end.
