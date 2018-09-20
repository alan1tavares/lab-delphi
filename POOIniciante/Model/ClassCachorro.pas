unit ClassCachorro;

interface

type
  TCachorro = class
  private
    FNome: string;
    function getNome(): string;
    procedure setNome(Nome: string);

  public
    property Nome: string read getNome write setNome;
    function Latir: string; virtual;
  end;

implementation

function TCachorro.getNome;
begin
  Result := FNome;
end;

procedure TCachorro.setNome(Nome: string);
begin
if Length(Nome) > 1 then
  FNome := Nome;
end;

function TCachorro.Latir: string;
begin
  Result := 'Au Au';
end;

end.
