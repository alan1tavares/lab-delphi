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
  object lblSaida: TLabel
    Left = 163
    Top = 146
    Width = 45
    Height = 13
    Caption = 'Resposta'
  end
  object edtEntrada01: TEdit
    Left = 163
    Top = 61
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    TextHint = 'Entre com um n'#250'mero'
  end
  object edtEntrada02: TEdit
    Left = 163
    Top = 88
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 1
    TextHint = 'Entre com um n'#250'mero'
  end
  object btnMaiorNumero: TButton
    Left = 163
    Top = 115
    Width = 121
    Height = 25
    Caption = 'O 1'#186' n'#250'mero '#233' o maior?'
    TabOrder = 2
    OnClick = btnMaiorNumeroClick
  end
end
