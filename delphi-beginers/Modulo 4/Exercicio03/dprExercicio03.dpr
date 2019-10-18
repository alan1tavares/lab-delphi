program dprExercicio03;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
var
  InputPrimeiroNumero, InputSegundoNumero, InputTerceiroNumero: real;
  OutputProduo, OutputSoma: real;
begin
  Readln(InputPrimeiroNumero);
  Readln(InputSegundoNumero);
  Readln(InputTerceiroNumero);

  OutputSoma := InputPrimeiroNumero + InputSegundoNumero + InputTerceiroNumero;
  OutputProduo := InputPrimeiroNumero * InputSegundoNumero * InputTerceiroNumero;

  Writeln('Soma: ' + FloatToStr(OutputSoma));
  Writeln('Produto: ' + FloatToStr(OutputProduo));

  Readln;
end.
