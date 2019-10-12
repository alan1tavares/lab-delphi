program dprExercicio02;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

const
  RAIO_TERRA = 6350;

var
  Altura: real;
  Distancia: real;

begin

  Writeln('Altura: ');
  Readln(Altura);
  Altura := Altura / 1000;
  Distancia := SQRT(SQR(Altura) + (2.0 * Altura * RAIO_TERRA));

  Writeln('Distância: ', FloatToStr(Distancia));



  Readln;
end.
