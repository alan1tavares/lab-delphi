object frmExercicio01: TfrmExercicio01
  Left = 0
  Top = 0
  ActiveControl = edtEntrada01
  Caption = 'Exercicio 01'
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
    Left = 8
    Top = 112
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtEntrada01: TEdit
    Left = 8
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Digite um n'#250'mero'
  end
  object edtEntrada02: TEdit
    Left = 136
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Digite um n'#250'mero'
  end
  object btnSoma: TButton
    Left = 272
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Soma'
    TabOrder = 2
    OnClick = btnSomaClick
  end
  object btnSubtracao: TButton
    Left = 272
    Top = 73
    Width = 75
    Height = 25
    Caption = 'Subtrac'#231#227'o'
    TabOrder = 3
    OnClick = btnSubtracaoClick
  end
  object btnMultiplicacao: TButton
    Left = 272
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Multiplica'#231#227'o'
    TabOrder = 4
    OnClick = btnMultiplicacaoClick
  end
  object btnDivisao: TButton
    Left = 272
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Divis'#227'o'
    TabOrder = 5
    OnClick = btnDivisaoClick
  end
end
