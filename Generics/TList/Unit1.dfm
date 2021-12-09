object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
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
  object Button1: TButton
    Left = 32
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 79
    Width = 75
    Height = 25
    Caption = 'Remover'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 32
    Top = 110
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 32
    Top = 141
    Width = 75
    Height = 25
    Caption = 'Capacidade'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 32
    Top = 172
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 32
    Top = 203
    Width = 75
    Height = 25
    Caption = 'OnNotiffy'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Edit1: TEdit
    Left = 32
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Memo1: TMemo
    Left = 176
    Top = 50
    Width = 169
    Height = 178
    TabOrder = 7
  end
end
