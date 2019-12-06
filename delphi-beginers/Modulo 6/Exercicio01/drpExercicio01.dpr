program drpExercicio01;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  n: integer;
  m: integer;
begin             

  Readln(n);
  Readln(m);

  if (n mod m) = 0 then
    Writeln((n/m).ToString)
  else
    Writeln('n cannot be divided by m');

  Readln;
  

end.
