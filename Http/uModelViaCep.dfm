object ModelViaCep: TModelViaCep
  OldCreateOrder = False
  Height = 150
  Width = 215
  object NetHTTPClient1: TNetHTTPClient
    Asynchronous = False
    ConnectionTimeout = 60000
    ResponseTimeout = 60000
    AllowCookies = True
    HandleRedirects = True
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 40
    Top = 24
  end
  object NetHTTPRequest1: TNetHTTPRequest
    Asynchronous = False
    ConnectionTimeout = 60000
    ResponseTimeout = 60000
    URL = 'https://viacep.com.br/ws/01001000/json/unicode/'
    Client = NetHTTPClient1
    Left = 136
    Top = 24
  end
end
