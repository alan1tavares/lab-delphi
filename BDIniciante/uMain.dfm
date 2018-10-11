object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Banco de Daodos'
  ClientHeight = 272
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btCreateTable: TButton
    Left = 24
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Create Table'
    TabOrder = 0
    OnClick = btCreateTableClick
  end
  object Connection: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      
        'Database=C:\Users\alan1\git\lab-delphi\BDIniciante\database\BD.F' +
        'DB'
      'Password=masterkey'
      'DriverID=FB')
    Left = 32
    Top = 160
  end
  object Query: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'select * from bd_teste')
    Left = 88
    Top = 160
  end
  object DataSource: TDataSource
    DataSet = Query
    Left = 144
    Top = 160
  end
end
