unit untExercicio01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExercicio02 = class(TForm)
    mmOutput: TMemo;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function IsPalindromo(Input: string): boolean;
  public
    { Public declarations }
  end;

var
  frmExercicio02: TfrmExercicio02;

implementation

uses
  StrUtils;

{$R *.dfm}

procedure TfrmExercicio02.FormShow(Sender: TObject);
var
  Arquivo: TextFile;
  Input: string;
begin
  AssignFile(Arquivo, 'myFile.txt');
  Reset(Arquivo);

  while not Eof(Arquivo) do
  begin
    Readln(Arquivo, Input);
    if IsPalindromo(Input) then
       mmOutput.Lines.Append(Input);
  end;

  CloseFile(Arquivo);
end;

function TfrmExercicio02.IsPalindromo(Input: string): boolean;
begin
  Result := Input = ReverseString(Input);
end;

end.
