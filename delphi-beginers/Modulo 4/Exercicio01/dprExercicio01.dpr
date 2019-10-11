program dprExercicio01;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  Numero: real;
  ParteInteira: integer;
  ParteFracionaria: real;

begin
  Readln(Numero);

  ParteInteira := Trunc(Numero);
  ParteFracionaria := Numero - ParteInteira;

  Writeln('Intera: ' + IntToStr(ParteInteira));
  Writeln('Fracionária: ' + FloatToStr(ParteFracionaria));

  Readln;
end.
