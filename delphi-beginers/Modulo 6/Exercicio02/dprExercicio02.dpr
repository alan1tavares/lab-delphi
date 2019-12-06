program dprExercicio02;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, System.StrUtils;

var
  Input: integer;
begin
  Readln(Input);
  if Input.ToString = ReverseString(Input.ToString)
    then
    Writeln('É um palindromo')
  else
    Writeln('Não é um palindromo');
    
  Readln;
  

end.
