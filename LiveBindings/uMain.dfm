object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 399
  ClientWidth = 735
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
  object DBGrid1: TDBGrid
    Left = 137
    Top = 0
    Width = 598
    Height = 399
    Align = alClient
    DataSource = DataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 137
    Height = 399
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 1
    object DBLookupListBox1: TDBLookupListBox
      Left = 8
      Top = 24
      Width = 113
      Height = 95
      KeyField = 'COUNTRY'
      ListSource = DataSourceCountry
      TabOrder = 0
    end
    object Button1: TButton
      Left = 8
      Top = 256
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 10
      Top = 125
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\cortana\Documents\Embarcadero\Studio\Projects\' +
        'lab-delphi\LiveBindings\DataBase\EMPLOYEE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    Left = 464
    Top = 48
  end
  object FDQuery: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from CUSTOMER;')
    Left = 384
    Top = 48
  end
  object DataSource: TDataSource
    DataSet = FDQuery
    Left = 384
    Top = 112
  end
  object FDQueryCountry: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from COUNTRY;')
    Left = 48
    Top = 136
  end
  object DataSourceCountry: TDataSource
    DataSet = FDQueryCountry
    Left = 48
    Top = 192
  end
end
