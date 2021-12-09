object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 660
  ClientWidth = 1093
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
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'create'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 48
    Width = 75
    Height = 25
    Caption = 'drop'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 48
    Top = 272
    Width = 129
    Height = 25
    Caption = 'passandoDados'
    TabOrder = 2
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 41
    Top = 303
    Width = 320
    Height = 120
    DataSource = ds
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Memo1: TMemo
    Left = 388
    Top = 50
    Width = 697
    Height = 591
    TabOrder = 4
  end
  object Button4: TButton
    Left = 41
    Top = 178
    Width = 75
    Height = 25
    Caption = 'insert'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Edit1: TEdit
    Left = 41
    Top = 151
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Edit1'
  end
  object fdConn: TFDConnection
    Params.Strings = (
      'Database=teste'
      'User_Name=root'
      'Password=root'
      'Port=33089'
      'MonitorBy=Remote'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 168
    Top = 16
  end
  object cursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 424
    Top = 384
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\haik\Desktop\Exata Desenvolvimento\libmySQL.dll'
    Left = 560
    Top = 376
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 192
    Top = 360
  end
  object ds: TDataSource
    DataSet = FDMemTable1
    Left = 224
    Top = 256
  end
  object FDMoniCustomClientLink1: TFDMoniCustomClientLink
    OnOutput = FDMoniCustomClientLink1Output
    Left = 472
    Top = 72
  end
  object FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink
    FileName = 'trace1.txt'
    Left = 560
    Top = 304
  end
  object FDMoniRemoteClientLink1: TFDMoniRemoteClientLink
    Tracing = True
    Left = 552
    Top = 240
  end
  object qr: TFDQuery
    Connection = fdConn
    SQL.Strings = (
      'select * from data')
    Left = 176
    Top = 120
    object qrCodigo: TFDAutoIncField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qrNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 50
    end
  end
end
