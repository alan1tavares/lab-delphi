program dprExercicio04;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, System.Math;

function SomaDosTermosDeUmaPa(
  PrimeriroTermo: integer;
  UltimoTermo: integer;
  QuantidaddeDeElementos: integer
): integer;
begin
  Result := ((PrimeriroTermo + UltimoTermo) * 
            QuantidaddeDeElementos) div 2;
end;
var
  NAposentos: integer;
  AStart: integer;
  SomaDeTodosOsComodos: integer;
  EhPar: boolean;
begin
  Readln(NAposentos);
  Readln(AStart);
  SomaDeTodosOsComodos := SomaDosTermosDeUmaPa(
      AStart,
      AStart + NAposentos - 1,
      NAposentos
    );
  EhPar := (SomaDeTodosOsComodos mod 2) = 0;
  if EhPar then
    Writeln('É par')
  else
    Writeln('Não é par');
  Readln;
end.
