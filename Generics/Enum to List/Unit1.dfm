object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 388
  ClientWidth = 839
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 288
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Dia'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 392
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Mes'
    TabOrder = 1
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 288
    Top = 200
    Width = 145
    Height = 21
    TabOrder = 2
    Text = 'ComboBox1'
  end
end
