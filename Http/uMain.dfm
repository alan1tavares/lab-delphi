object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 408
  ClientWidth = 684
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 304
    Top = 96
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object SplitView1: TSplitView
    Left = 0
    Top = 17
    Width = 200
    Height = 391
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 0
    ExplicitLeft = 1
    ExplicitTop = 23
    object catMenu: TCategoryButtons
      Left = 0
      Top = -25
      Width = 200
      Height = 124
      Align = alCustom
      BorderStyle = bsNone
      ButtonFlow = cbfVertical
      ButtonWidth = 32
      ButtonOptions = [boFullSize, boShowCaptions, boCaptionOnlyBorder]
      Categories = <
        item
          Color = 16777194
          Collapsed = False
          Items = <
            item
              Caption = 'TNetHTTPClient'
            end
            item
              Caption = 'REST'
            end>
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Segoe UI'
      Font.Style = []
      HotButtonColor = clMenuHighlight
      RegularButtonColor = clNone
      SelectedButtonColor = clMenuHighlight
      TabOrder = 0
    end
  end
  object pnHeader: TPanel
    Left = 0
    Top = 0
    Width = 684
    Height = 17
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
  end
  object pgControl: TPageControl
    Left = 200
    Top = 17
    Width = 484
    Height = 391
    ActivePage = sheetTNetHTTPClient
    Align = alClient
    TabOrder = 2
    object sheetTNetHTTPClient: TTabSheet
      Caption = 'TNetHTTPClient'
      ExplicitLeft = -12
      ExplicitTop = 16
      object Label2: TLabel
        Left = 3
        Top = 3
        Width = 272
        Height = 55
        Caption = 'TNetHTTPClient'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 56
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        ParentFont = False
      end
      object btBuscarCep: TButton
        Left = 139
        Top = 83
        Width = 75
        Height = 25
        Caption = 'Buscar Cep'
        TabOrder = 0
        OnClick = btBuscarCepClick
      end
      object edCep: TEdit
        Left = 3
        Top = 85
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'Cep aqui...'
        OnClick = edCepClick
      end
    end
  end
end
