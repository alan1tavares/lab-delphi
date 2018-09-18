unit ClassCachorro;

interface

type
  TCachorro = class

  public
    function latir : string;
  end;

implementation

function TCachorro.latir : string;
begin
 Result := 'Au Au';
end;
end.
