unit ClassCahorroTreinado;

interface

uses ClassCachorro;

type
  TCachorroTreinado = class(TCachorro)
  public
    function Rola : string;
    function Latir: string; override;
  end;
implementation


{ TCachorroTreinado }

function TCachorroTreinado.Latir: string;
begin
  Result := 'Miau Miau'
end;

function TCachorroTreinado.Rola: String;
begin
  Result := 'Estou rolando!!';
end;

end.
