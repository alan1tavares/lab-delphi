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
  PixelsPerInch = 96
  TextHeight = 13
  object pnHeader: TPanel
    Left = 0
    Top = 0
    Width = 684
    Height = 17
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
  end
  object pnBody: TPanel
    Left = 0
    Top = 17
    Width = 684
    Height = 391
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnBody'
    Color = clBtnHighlight
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    object Label2: TLabel
      Left = 0
      Top = 0
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
    object lbTeste: TLabel
      Left = 10
      Top = 110
      Width = 82
      Height = 21
      Caption = 'Logradouro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 394
      Top = 110
      Width = 99
      Height = 21
      Caption = 'Complemento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 10
      Top = 164
      Width = 42
      Height = 21
      Caption = 'Bairro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 10
      Top = 218
      Width = 74
      Height = 21
      Caption = 'Localidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 394
      Top = 218
      Width = 19
      Height = 21
      Caption = 'UF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 10
      Top = 56
      Width = 27
      Height = 21
      Caption = 'Cep'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object maskEdCep: TMaskEdit
      Left = 10
      Top = 83
      Width = 116
      Height = 21
      Hint = 'Cep aqui...'
      EditMask = '99999\-999;0;_'
      MaxLength = 9
      TabOrder = 0
      Text = ''
      TextHint = 'Cep aqui...'
      OnChange = maskEdCepChange
    end
    object edLogradouro: TEdit
      Left = 10
      Top = 137
      Width = 351
      Height = 21
      TabOrder = 1
    end
    object edComplemento: TEdit
      Left = 394
      Top = 137
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edBairro: TEdit
      Left = 10
      Top = 191
      Width = 351
      Height = 21
      TabOrder = 3
    end
    object edLocalidade: TEdit
      Left = 10
      Top = 245
      Width = 351
      Height = 21
      TabOrder = 4
    end
    object edUF: TEdit
      Left = 394
      Top = 245
      Width = 121
      Height = 21
      TabOrder = 5
    end
  end
end
