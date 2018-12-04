unit uBoxTools;

interface

uses
  Vcl.ComCtrls;

procedure
  HiddenTabsPageControl(pageControl: TPageControl);

implementation

procedure HiddenTabsPageControl(pageControl: TPageControl);
var
  I: Integer;
begin
  for I := 0 to pageControl.PageCount - 1 do
    pageControl.Pages[I].TabVisible := false;
end;

end.
