unit untExercicio01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExercicio01 = class(TForm)
    lblOutput: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExercicio01: TfrmExercicio01;

implementation

{$R *.dfm}

procedure TfrmExercicio01.FormShow(Sender: TObject);
var
   Arquivo: TextFile;
   ConteudoDaMenorLinha: string;
   ConteuDaLinhaAtual: string;
begin
  AssignFile(Arquivo, 'myFile.txt');
  Reset(Arquivo);

  ReadLn(Arquivo, ConteudoDaMenorLinha);

  while not Eof(Arquivo) do
  begin
    ReadLn(Arquivo, ConteuDaLinhaAtual);
    if Length(ConteuDaLinhaAtual) <= Length(ConteudoDaMenorLinha) then
      ConteudoDaMenorLinha := ConteuDaLinhaAtual;
  end;

  CloseFile(Arquivo);

  lblOutput.Caption := ConteudoDaMenorLinha;
end;

end.
