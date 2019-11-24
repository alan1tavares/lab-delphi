unit untExercicio04;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Generics.Collections, Vcl.StdCtrls;

type
  TfrmExercicio04 = class(TForm)
    lblSaida: TLabel;
    procedure FormShow(Sender: TObject);
  private                         
    { Private declarations }
  function GetQuantidadeDeParticipantePorEscola(const Path: string)
    : TDictionary<integer, integer>; 
  function GetEscolaComMenorQuantidadeDeParticipante(
    const Escola: TDictionary<integer, integer>
  ): TList<integer>;
  public
    { Public declarations }
  end;

var
  frmExercicio04: TfrmExercicio04;

implementation

{$R *.dfm}

procedure TfrmExercicio04.FormShow(Sender: TObject);
var
  Escola: TDictionary<integer, integer>;
  EscolaComMaiorQuantidadeDeParticipante: TList<integer>;
  Elemento: integer;
begin
  Escola := GetQuantidadeDeParticipantePorEscola('myFile.txt');
  EscolaComMaiorQuantidadeDeParticipante :=
    GetEscolaComMenorQuantidadeDeParticipante(Escola);
    
  try
    lblSaida.Caption := '';
    for Elemento in EscolaComMaiorQuantidadeDeParticipante do
    begin
      lblSaida.Caption := lblSaida.Caption + ' ' + IntToStr(Elemento);
    end;
  finally
    Escola.Free;
    EscolaComMaiorQuantidadeDeParticipante.Free;    
  end;
end;

function TfrmExercicio04.GetQuantidadeDeParticipantePorEscola(
  const Path: string): TDictionary<integer, integer>;
var
  NumeroDaEscola: integer;
  Arquivo: TextFile;
  Linha: string;
  LinhaDoArquivo: TStrings;
begin
  AssignFile(Arquivo, 'myFile.txt');
  Reset(Arquivo);
  Result := TDictionary<integer, integer>.Create;
  LinhaDoArquivo := TStringList.Create;

  try
    while not Eof(Arquivo) do
    begin
      Readln(Arquivo, Linha);
    
      LinhaDoArquivo.Clear;
      ExtractStrings([' '], [], Pchar(Linha), LinhaDoArquivo);
      NumeroDaEscola := LinhaDoArquivo[3].ToInteger;

      if not Result.ContainsKey(NumeroDaEscola) then
        Result.Add(NumeroDaEscola, 1)
      else
        Result[NumeroDaEscola] := Result[NumeroDaEscola] + 1;
  
    end;
  finally
    CloseFile(Arquivo);
    LinhaDoArquivo.Free;
  end;
end;

function TfrmExercicio04.GetEscolaComMenorQuantidadeDeParticipante(
  const Escola: TDictionary<integer, integer>): TList<integer>;
var
  QuantidadeDeParticipanteOrdenado: TArray<integer>;
  MenorQuantidadeDeParticipante: integer;
  Key: integer;
begin
  QuantidadeDeParticipanteOrdenado := Escola.Values.ToArray;
  TArray.Sort<integer>(QuantidadeDeParticipanteOrdenado);
  
  MenorQuantidadeDeParticipante := QuantidadeDeParticipanteOrdenado[0];
                    
  Result := TList<integer>.Create;

  for Key in Escola.Keys do
  begin
    if Escola.Items[Key] = MenorQuantidadeDeParticipante then
      Result.Add(Key);
  end;
end;


end.
