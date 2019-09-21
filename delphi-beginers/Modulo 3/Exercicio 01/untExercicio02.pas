unit untExercicio02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExercicio01 = class(TForm)
    edtEntrada01: TEdit;
    edtEntrada02: TEdit;
    lblResultado: TLabel;
    btnSoma: TButton;
    btnSubtracao: TButton;
    btnMultiplicacao: TButton;
    btnDivisao: TButton;
    procedure btnDivisaoClick(Sender: TObject);
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubtracaoClick(Sender: TObject);
    procedure btnMultiplicacaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExercicio01: TfrmExercicio01;

implementation

{$R *.dfm}

procedure TfrmExercicio01.btnDivisaoClick(Sender: TObject);
var
  Resultado: double;
begin
  Resultado := StrToFloat(edtEntrada01.Text) / StrToFloat(edtEntrada02.Text);
  lblResultado.Caption := FloatToStr(Resultado);
end;

procedure TfrmExercicio01.btnMultiplicacaoClick(Sender: TObject);
var
  Resultado: double;
begin
  Resultado := StrToFloat(edtEntrada01.Text) * StrToFloat(edtEntrada02.Text);
  lblResultado.Caption := FloatToStr(Resultado);
end;

procedure TfrmExercicio01.btnSomaClick(Sender: TObject);
var
  Resultado: double;
begin
  Resultado := StrToFloat(edtEntrada01.Text) + StrToFloat(edtEntrada02.Text);
  lblResultado.Caption := FloatToStr(Resultado);
end;

procedure TfrmExercicio01.btnSubtracaoClick(Sender: TObject);
var
  Resultado: double;
begin
  Resultado := StrToFloat(edtEntrada01.Text) - StrToFloat(edtEntrada02.Text);
  lblResultado.Caption := FloatToStr(Resultado);
end;

end.
