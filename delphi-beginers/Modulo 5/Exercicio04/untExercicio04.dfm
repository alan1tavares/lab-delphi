object frmExercicio04: TfrmExercicio04
  Left = 0
  Top = 0
  Caption = 'Exercicio 04'
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
  object lblResposta: TLabel
    Left = 155
    Top = 123
    Width = 45
    Height = 13
    Caption = 'Resposta'
  end
  object edtEntrada: TEdit
    Left = 155
    Top = 65
    Width = 137
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    TextHint = 'Entre com um n'#250'mero'
  end
  object btnSomaDeDoisNumerorsIgualTerceiro: TButton
    Left = 155
    Top = 92
    Width = 137
    Height = 25
    Caption = 'A soma de 2 d'#237'gitos = 3'#186'?'
    TabOrder = 1
    OnClick = btnSomaDeDoisNumerorsIgualTerceiroClick
  end
end
