object frmExercicio01: TfrmExercicio01
  Left = 0
  Top = 0
  ActiveControl = btnAtivaOuDesativaORotulo
  Caption = 'Exercicio 01'
  ClientHeight = 200
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblRotulo: TLabel
    Left = 290
    Top = 92
    Width = 31
    Height = 13
    Caption = 'R'#243'tulo'
  end
  object btnAtivaOuDesativaORotulo: TButton
    Left = 123
    Top = 87
    Width = 146
    Height = 25
    Caption = 'Ativa ou Desativa o R'#243'tulo'
    TabOrder = 0
    OnClick = btnAtivaOuDesativaORotuloClick
  end
end
