program dprExercicio03;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Generics.Collections;

var
  InputList : TList<Double>;
  Input: real;
  
begin
  InputList := TList<Double>.Create;
  
  Readln(Input);  
  InputList.Add(Input);
  
  Readln(Input);  
  InputList.Add(Input);
  
  Readln(Input);  
  InputList.Add(Input);

  InputList.Sort;
  
  Writeln('M�nimo: ' + InputList.First.ToString);
  Writeln('M�ximo: ' + InputList.Last.ToString);

  Readln;

  InputList.Free;
end.
