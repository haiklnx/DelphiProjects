object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 603
  ClientWidth = 755
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
  object ListBox1: TListBox
    Left = 128
    Top = 8
    Width = 306
    Height = 129
    ItemHeight = 13
    TabOrder = 0
    OnClick = ListBox1Click
  end
  object ListBox2: TListBox
    Left = 440
    Top = 8
    Width = 307
    Height = 129
    ItemHeight = 13
    TabOrder = 1
  end
  object Button1: TButton
    Left = 24
    Top = 24
    Width = 75
    Height = 25
    Caption = 'fdConn'
    TabOrder = 2
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 128
    Top = 160
    Width = 619
    Height = 120
    DataSource = ds
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 128
    Top = 286
    Width = 619
    Height = 120
    DataSource = ds2
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 24
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Meta'
    TabOrder = 5
    OnClick = Button2Click
  end
  object DBGrid3: TDBGrid
    Left = 128
    Top = 424
    Width = 619
    Height = 137
    DataSource = ds3
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button3: TButton
    Left = 24
    Top = 440
    Width = 75
    Height = 25
    Caption = 'qr'
    TabOrder = 7
    OnClick = Button3Click
  end
  object fdConn: TFDConnection
    Params.Strings = (
      'Database=exata'
      'User_Name=root'
      'Password=root'
      'Port=33089'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    OnRecover = fdConnRecover
    Left = 136
    Top = 16
  end
  object meta: TFDMetaInfoQuery
    AfterScroll = metaAfterScroll
    Connection = fdConn
    Left = 288
    Top = 200
  end
  object ds: TDataSource
    DataSet = meta
    Left = 232
    Top = 208
  end
  object meta2: TFDMetaInfoQuery
    Connection = fdConn
    MetaInfoKind = mkTableFields
    Left = 448
    Top = 344
  end
  object ds2: TDataSource
    DataSet = meta2
    Left = 392
    Top = 328
  end
  object DataSource1: TDataSource
    Left = 312
    Top = 304
  end
  object ds3: TDataSource
    DataSet = qr
    Left = 272
    Top = 472
  end
  object qr: TFDQuery
    Connection = fdConn
    SQL.Strings = (
      'select * from produtos')
    Left = 368
    Top = 472
  end
end
