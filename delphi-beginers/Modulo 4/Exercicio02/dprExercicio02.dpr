program dprExercicio02;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

const
  RAIO_TERRA = 6378.1;

var
  Altura: real;
  Distancia: real;

begin

  Writeln('Altura: ');
  Readln(Altura);

  Distancia := SQRT(SQR(Altura) + (2.0 * Altura * 6378.1));

  Writeln('Distância: ', FloatToStr(Distancia));



  Readln;
end.
