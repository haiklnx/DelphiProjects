object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 388
  ClientWidth = 919
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
  object DBGrid1: TDBGrid
    Left = 144
    Top = 72
    Width = 737
    Height = 308
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 48
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Conectar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    Left = 72
    Top = 208
  end
end
