unit uTimer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmTimer = class(TForm)
    Timer1: TTimer;
    lblTimer: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTimer: TfrmTimer;

implementation

{$R *.dfm}

procedure TfrmTimer.Timer1Timer(Sender: TObject);
begin
  lblTimer.Caption := DateTimeToStr(Now);
end;

end.
