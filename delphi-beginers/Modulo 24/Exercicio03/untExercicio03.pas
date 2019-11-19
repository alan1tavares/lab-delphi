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
  Linha: string;
  Soma: integer;
  NumeroAtual: integer;
  SomaIsPar: boolean;
begin
  AssignFile(Arquivo01, edtArquivo01.Text);
  AssignFile(Arquivo02, edtArquivo02.Text);

  Reset(Arquivo01);
  Rewrite(Arquivo02);

  while not SeekEof(Arquivo01) do
  begin
    Soma := 0;
    Linha := '';

    while not SeekEoln(Arquivo01) do
    begin
      Read(Arquivo01, NumeroAtual);
      Linha :=  IntToStr(NumeroAtual) + ' ' + Linha;
      Soma := Soma + NumeroAtual;
    end;

    SomaIsPar := (Soma Mod 2) = 0;
    if SomaIsPar then
      Writeln(Arquivo02, Linha);
  end;

  CloseFile(Arquivo01);
  CloseFile(Arquivo02);
end;


end.
