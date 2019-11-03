object frmExercicio02: TfrmExercicio02
  Left = 0
  Top = 0
  Caption = 'Exercicio 02'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblVerde: TLabel
    Left = 170
    Top = 124
    Width = 28
    Height = 13
    Caption = 'Verde'
  end
  object lblAmarelo: TLabel
    Left = 159
    Top = 93
    Width = 39
    Height = 13
    Caption = 'Amarelo'
  end
  object lblVermelho: TLabel
    Left = 154
    Top = 62
    Width = 44
    Height = 13
    Caption = 'Vermelho'
  end
  object btnVerde: TButton
    Left = 218
    Top = 119
    Width = 75
    Height = 25
    Caption = 'Verde'
    TabOrder = 2
    OnClick = btnVerdeClick
  end
  object btnAmarelo: TButton
    Left = 218
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Amarelo'
    TabOrder = 1
    OnClick = btnAmareloClick
  end
  object btnVermelho: TButton
    Left = 218
    Top = 57
    Width = 75
    Height = 25
    Caption = 'Vermelho'
    TabOrder = 0
    OnClick = btnVermelhoClick
  end
end
