object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 396
  ClientWidth = 685
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 685
    Height = 41
    Align = alTop
    Caption = 'pnlHeader'
    TabOrder = 0
    object imgMenuHamburger: TImage
      Left = 1
      Top = 1
      Width = 40
      Height = 39
      Align = alLeft
      OnClick = imgMenuHamburgerDblClick
    end
  end
  object splVwMenu: TSplitView
    Left = 0
    Top = 41
    Width = 200
    Height = 355
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 1
    object CategoryButtons1: TCategoryButtons
      Left = 0
      Top = -14
      Width = 200
      Height = 143
      BorderStyle = bsNone
      ButtonFlow = cbfVertical
      ButtonHeight = 32
      ButtonOptions = [boFullSize, boShowCaptions, boCaptionOnlyBorder]
      Categories = <
        item
          Color = clNone
          Collapsed = False
          Items = <
            item
              Caption = 'General'
            end
            item
              Caption = 'Finn'
            end
            item
              Caption = 'Jake'
            end>
        end>
      HotButtonColor = clHighlight
      RegularButtonColor = clNone
      SelectedButtonColor = clNone
      TabOrder = 0
    end
  end
  object pnlContent: TPanel
    Left = 200
    Top = 41
    Width = 485
    Height = 355
    Align = alClient
    Caption = 'pnlContent'
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
  end
end
