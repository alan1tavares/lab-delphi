object frmTimer: TfrmTimer
  Left = 0
  Top = 0
  Caption = 'Timer'
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
  object lblTimer: TLabel
    Left = 112
    Top = 56
    Width = 105
    Height = 13
    Caption = 'lblTimer'
  end
  object Timer1: TTimer
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 56
    Top = 40
  end
end
