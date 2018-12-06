unit uRequestAdress;

interface

uses
  System.JSON;

type
  TRequestAdress = class
  private
    AdressInJSON: TJSONObject;

    function GetCep: String;
    function GetLogradouro: String;
    function GetComplemento: String;
    function GetGia: String;
    function GetIbge: String;
    function GetLocalidade: String;
    function GetUf: String;
    function GetUnidade: String;
    function GetBairro: String;

  public
    property Cep: String read GetCep;
    property Logradouro: String read GetLogradouro;
    property Complemento: String read GetComplemento;
    property Bairro: String read GetBairro;
    property Localidade: String read GetLocalidade;
    property Uf: String read GetUf;
    property Unidade: String read GetUnidade;
    property Ibge: String read GetIbge;
    property Gia: String read GetGia;

    Constructor Create(Cep: integer); overload;

    procedure loadAdress(Cep: integer);
  end;

implementation

{ TRequstAdress }
uses
  System.Net.HttpClient, System.SysUtils;

constructor TRequestAdress.Create(Cep: integer);
begin
  loadAdress(Cep);
end;

procedure TRequestAdress.loadAdress(Cep: integer);
var
  HttpClient: THttpClient;
  JSONStringAdress: String;

begin
  HttpClient := THttpClient.Create;
  JSONStringAdress := HttpClient.Get('https://viacep.com.br/ws/' + IntToStr(Cep)
    + '/json/unicode/').ContentAsString;

  // AdressInJSON.Create(JSONStringAdress);
  AdressInJSON := TJSONObject.ParseJSONValue
    (TEncoding.UTF8.GetBytes(JSONStringAdress), 0) as TJSONObject;
end;

function TRequestAdress.GetBairro: String;
begin
  Result := AdressInJSON.GetValue('bairro').Value;
end;

function TRequestAdress.GetCep: String;
begin
  Result := AdressInJSON.GetValue('cep').Value;
end;

function TRequestAdress.GetComplemento: String;
begin
  Result := AdressInJSON.GetValue('complemento').Value;
end;

function TRequestAdress.GetGia: String;
begin
  Result := AdressInJSON.GetValue('gia').Value;
end;

function TRequestAdress.GetIbge: String;
begin
  Result := AdressInJSON.GetValue('ibge').Value;
end;

function TRequestAdress.GetLocalidade: String;
begin

end;

function TRequestAdress.GetLogradouro: String;
begin
  Result := AdressInJSON.GetValue('logradouro').Value;
end;

function TRequestAdress.GetUf: String;
begin
  Result := AdressInJSON.GetValue('uf').Value;
end;

function TRequestAdress.GetUnidade: String;
begin
  Result := AdressInJSON.GetValue('unidade').Value;
end;

end.
