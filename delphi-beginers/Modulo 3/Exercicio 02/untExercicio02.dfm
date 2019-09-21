object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblResultado: TLabel
    Left = 71
    Top = 103
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtEntrada: TEdit
    Left = 71
    Top = 76
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Digite a teperatura'
  end
  object btnCelsiusFahrenheit: TButton
    Left = 226
    Top = 72
    Width = 150
    Height = 25
    Caption = 'Celsius para Fahrenheit'
    TabOrder = 1
    OnClick = btnCelsiusFahrenheitClick
  end
  object btnFahrenheitCelsius: TButton
    Left = 226
    Top = 103
    Width = 150
    Height = 25
    Caption = 'Fahrenheit para Celsius'
    TabOrder = 2
    OnClick = btnFahrenheitCelsiusClick
  end
end
