object frmExercicio03: TfrmExercicio03
  Left = 0
  Top = 0
  Caption = 'Exercicio 03'
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
    Left = 104
    Top = 116
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtEntrada: TEdit
    Left = 104
    Top = 85
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Entre com um valor...'
  end
  object btnKmHoraParaMetroSegundo: TButton
    Left = 252
    Top = 73
    Width = 90
    Height = 25
    Caption = 'Km/h para m/s'
    TabOrder = 1
    OnClick = btnKmHoraParaMetroSegundoClick
  end
  object btnMetroSegundoParaKmHHora: TButton
    Left = 252
    Top = 104
    Width = 90
    Height = 25
    Caption = 'm/s para K/h'
    TabOrder = 2
    OnClick = btnMetroSegundoParaKmHHoraClick
  end
end
