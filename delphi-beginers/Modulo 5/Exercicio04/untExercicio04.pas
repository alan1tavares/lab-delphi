unit untExercicio04;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExercicio04 = class(TForm)
    edtEntrada: TEdit;
    lblResposta: TLabel;
    btnSomaDeDoisNumerorsIgualTerceiro: TButton;
    procedure btnSomaDeDoisNumerorsIgualTerceiroClick(Sender: TObject);
  private
    { Private declarations }
    function SomaDeDoisNumero(Numero1: string; Numero2: string): integer;
  public
    { Public declarations }
  end;

var
  frmExercicio04: TfrmExercicio04;

implementation

{$R *.dfm}

procedure TfrmExercicio04.btnSomaDeDoisNumerorsIgualTerceiroClick(Sender: TObject);
var
  Entrada: string;
  SomaDeDoisNumerosEhIgualAoTerceiro: boolean;

begin
  Entrada := edtEntrada.Text;

  SomaDeDoisNumerosEhIgualAoTerceiro := (
    (SomaDeDoisNumero(Entrada[2], Entrada[3]) = StrToInt(Entrada[1])) or
    (SomaDeDoisNumero(Entrada[1], Entrada[3]) = StrToInt(Entrada[2])) or
    (SomaDeDoisNumero(Entrada[1], Entrada[2]) = StrToInt(Entrada[3]))
  );

  if SomaDeDoisNumerosEhIgualAoTerceiro then
    lblResposta.Caption := 'Verdadeiro'
  else
    lblResposta.Caption := 'Falso';


end;

function TfrmExercicio04.SomaDeDoisNumero(Numero1, Numero2: string): integer;
begin
  Result := StrToInt(Numero1) + StrToInt(Numero2);
end;

end.
