unit uModelViaCep;

interface

uses
  System.SysUtils, System.Classes, System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent, System.JSON;

type
  TModelViaCep = class(TDataModule)
    NetHTTPClient1: TNetHTTPClient;
    NetHTTPRequest1: TNetHTTPRequest;
  private
    { Private declarations }
  public
    { Public declarations }
    function buscarCep(cep: Integer): String;
  end;

var
  ModelViaCep: TModelViaCep;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

function TModelViaCep.buscarCep(cep: Integer): String;
var
  conteudo: String;
begin
  conteudo := 'não deu certo';

  // NetHTTPRequest1.Get('https://viacep.com.br/ws/' + IntToStr(cep) + '/json/');
  conteudo := NetHTTPRequest1.Get
    ('https://viacep.com.br/ws/01003000/json/unicode/').ContentAsString;

  Result := conteudo;
end;

end.
