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
  object lblArquivo01: TLabel
    Left = 91
    Top = 65
    Width = 96
    Height = 13
    Caption = 'Caminho Arquivo 01'
  end
  object lblArquivo02: TLabel
    Left = 235
    Top = 65
    Width = 96
    Height = 13
    Caption = 'Caminho Arquivo 02'
  end
  object edtArquivo01: TEdit
    Left = 91
    Top = 84
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtArquivo02: TEdit
    Left = 235
    Top = 84
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object bttGravaArquivo02: TButton
    Left = 91
    Top = 111
    Width = 110
    Height = 25
    Caption = 'Gravar Arquivo 02'
    TabOrder = 2
    OnClick = bttGravaArquivo02Click
  end
end
