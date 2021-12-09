object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 286
  ClientWidth = 375
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
    Left = 120
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Quadrado'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 72
    Top = 112
    Width = 75
    Height = 25
    Caption = 'X1'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 153
    Top = 112
    Width = 75
    Height = 25
    Caption = 'X'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Memo1: TMemo
    Left = 72
    Top = 143
    Width = 185
    Height = 135
    TabOrder = 3
  end
end
