object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 366
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 241
    Top = 75
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 473
    Top = 75
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 101
    Width = 619
    Height = 120
    DataSource = ds
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 227
    Width = 619
    Height = 120
    DataSource = ds2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 144
    Top = 70
    Width = 75
    Height = 25
    Caption = 'open'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 376
    Top = 70
    Width = 75
    Height = 25
    Caption = 'batch'
    TabOrder = 3
    OnClick = Button2Click
  end
  object fdConn: TFDConnection
    Params.Strings = (
      'Database=buda'
      'User_Name=root'
      'Password=root'
      'Port=33089'
      'Server=192.168.2.191'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 224
    Top = 8
  end
  object ds: TDataSource
    DataSet = qr
    Left = 80
    Top = 168
  end
  object ds2: TDataSource
    DataSet = qr2
    Left = 72
    Top = 280
  end
  object qr: TFDQuery
    Connection = fdConn
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from produtos')
    Left = 136
    Top = 160
  end
  object qr2: TFDQuery
    Connection = fdConn
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from clientes')
    Left = 120
    Top = 288
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 320
    Top = 144
  end
  object FDMemTable2: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 320
    Top = 272
  end
  object qr3: TFDQuery
    Connection = fdConn
    SQL.Strings = (
      'select * from produtos;'
      'select * from clientes;')
    Left = 536
    Top = 152
  end
end
