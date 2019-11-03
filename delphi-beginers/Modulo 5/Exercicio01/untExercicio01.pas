unit untExercicio01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExercicio01 = class(TForm)
    btnAtivaOuDesativaORotulo: TButton;
    lblRotulo: TLabel;
    procedure btnAtivaOuDesativaORotuloClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExercicio01: TfrmExercicio01;

implementation

{$R *.dfm}

procedure TfrmExercicio01.btnAtivaOuDesativaORotuloClick(Sender: TObject);
begin
  lblRotulo.Enabled := not(lblRotulo.Enabled);
end;

end.
