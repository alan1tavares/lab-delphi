program dprExercicio04;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
type
  TPonto = array[1..2] of real;
var
  PontosDoTriangulo: array[1..3] of TPonto;
  Distancia: array[1..3] of real;

  PerimetroTriangulo: real;
  SemiPerimetroTriangulo: real;
  AreaTriangulo: real;

  I: integer;
  J: integer;

function ClcularDistancia(Ponto1: TPonto; Ponto2: Tponto): real;
begin
  Result := SQRT(
    SQR(Ponto1[1] - Ponto2[1]) +
    SQR(Ponto1[2] - Ponto2[2])
  );
end;

begin
  for I := 1 to 3 do
  begin
    Writeln('Ponto ' + IntToStr(I));
    for J := 1 to 2 do
    begin
      Read(PontosDoTriangulo[I][J]);
    end;
  end;

  Distancia[1] := ClcularDistancia(PontosDoTriangulo[1], PontosDoTriangulo[2]);
  Distancia[2] := ClcularDistancia(PontosDoTriangulo[1], PontosDoTriangulo[3]);
  Distancia[3] := ClcularDistancia(PontosDoTriangulo[2], PontosDoTriangulo[3]);

  PerimetroTriangulo := Distancia[1] + Distancia[2] + Distancia[3];
  SemiPerimetroTriangulo := PerimetroTriangulo / 2;

  AreaTriangulo := SQRT(
    SemiPerimetroTriangulo * (SemiPerimetroTriangulo - Distancia[1]) *
    (SemiPerimetroTriangulo - Distancia[2]) *
    (SemiPerimetroTriangulo - Distancia[3])

  );

  Writeln('Perimetro: ' + FloatToStr(PerimetroTriangulo));
  Writeln('Area: ' + FloatToStr(AreaTriangulo));

  Readln;
    Readln;
      Readln;
        Readln;
          Readln;


end.
