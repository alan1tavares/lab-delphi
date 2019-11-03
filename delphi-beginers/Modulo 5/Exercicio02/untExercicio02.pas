unit untExercicio02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExercicio02 = class(TForm)
    lblVerde: TLabel;
    lblAmarelo: TLabel;
    lblVermelho: TLabel;
    btnVerde: TButton;
    btnAmarelo: TButton;
    btnVermelho: TButton;
    procedure btnVerdeClick(Sender: TObject);
    procedure btnAmareloClick(Sender: TObject);
    procedure btnVermelhoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure DesativarTodasAsLabels;
  public
    { Public declarations }
  end;

var
  frmExercicio02: TfrmExercicio02;

implementation

{$R *.dfm}

procedure TfrmExercicio02.btnAmareloClick(Sender: TObject);
begin
  DesativarTodasAsLabels;
  lblAmarelo.Enabled := True;
end;

procedure TfrmExercicio02.btnVerdeClick(Sender: TObject);
begin
  DesativarTodasAsLabels;
  lblVerde.Enabled := True;
end;

procedure TfrmExercicio02.btnVermelhoClick(Sender: TObject);
begin
  DesativarTodasAsLabels;
  lblVermelho.Enabled := True;
end;

procedure TfrmExercicio02.FormShow(Sender: TObject);
begin
  DesativarTodasAsLabels;
end;

procedure TfrmExercicio02.DesativarTodasAsLabels;
begin
  lblVerde.Enabled := False;
  lblAmarelo.Enabled := False;
  lblVermelho.Enabled := False;
end;

end.
