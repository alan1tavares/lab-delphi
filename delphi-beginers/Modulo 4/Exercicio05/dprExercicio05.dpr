program dprExercicio05;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, Math;

var
  Distancia: real;
  Angulo: real;
  AlturaArvore: real;
  ParteInteiraDaAltura: real;
  ParteFlutuanteDaAltura: real;

begin
  Writeln('Distancia atá a árvore: ');
  Readln(Distancia);
  Writeln('Angulo: ');
  Readln(Angulo);

  AlturaArvore := Distancia * TAN(PI/180 * Angulo);
  ParteInteiraDaAltura := TRUNC(AlturaArvore);
  ParteFlutuanteDaAltura := TRUNC((AlturaArvore - ParteInteiraDaAltura) * 100);

  Writeln('A altura da árvore é igual a ' + FloatToStr(ParteInteiraDaAltura) +
    ' m e ' + FloatToStr(ParteFlutuanteDaAltura) + ' cm'
  );

  Readln;
end.
