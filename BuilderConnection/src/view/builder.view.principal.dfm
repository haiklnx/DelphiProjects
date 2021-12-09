object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 488
  ClientWidth = 645
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
    Left = 40
    Top = 59
    Width = 46
    Height = 13
    Caption = 'DataBase'
  end
  object Label2: TLabel
    Left = 40
    Top = 86
    Width = 36
    Height = 13
    Caption = 'Usuario'
  end
  object Label3: TLabel
    Left = 40
    Top = 113
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label4: TLabel
    Left = 40
    Top = 140
    Width = 26
    Height = 13
    Caption = 'Porta'
  end
  object Label5: TLabel
    Left = 400
    Top = 59
    Width = 46
    Height = 13
    Caption = 'DataBase'
  end
  object Label6: TLabel
    Left = 400
    Top = 86
    Width = 36
    Height = 13
    Caption = 'Usuario'
  end
  object Label7: TLabel
    Left = 400
    Top = 113
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label8: TLabel
    Left = 400
    Top = 140
    Width = 26
    Height = 13
    Caption = 'Porta'
  end
  object Edit1: TEdit
    Left = 104
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'db'
  end
  object Edit2: TEdit
    Left = 104
    Top = 83
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'root'
  end
  object Edit3: TEdit
    Left = 104
    Top = 110
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'root'
  end
  object Edit4: TEdit
    Left = 104
    Top = 137
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '33089'
  end
  object Edit5: TEdit
    Left = 464
    Top = 137
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 7
    Text = 'BuilderDefault'
  end
  object Edit6: TEdit
    Left = 464
    Top = 110
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 6
    Text = 'BuilderDefault'
  end
  object Edit7: TEdit
    Left = 464
    Top = 83
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 5
    Text = 'BuilderDefault'
  end
  object Edit8: TEdit
    Left = 464
    Top = 56
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 4
    Text = 'BuilderDefault'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 280
    Width = 290
    Height = 185
    DataSource = DataSource1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 352
    Top = 280
    Width = 290
    Height = 185
    DataSource = DataSource2
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 40
    Top = 216
    Width = 185
    Height = 25
    Caption = 'Test Con 1'
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 400
    Top = 216
    Width = 185
    Height = 25
    Caption = 'Test Con 2'
    TabOrder = 11
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 104
    Top = 185
    Width = 75
    Height = 25
    Caption = 'Conectar'
    TabOrder = 12
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 464
    Top = 185
    Width = 75
    Height = 25
    Caption = 'Conectar'
    TabOrder = 13
    OnClick = Button4Click
  end
  object FDQuery1: TFDQuery
    SQL.Strings = (
      'select p.codigo, p.descricao from produtos p')
    Left = 96
    Top = 344
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 152
    Top = 344
  end
  object FDQuery2: TFDQuery
    SQL.Strings = (
      'select p.codigo, p.descricao from produtos p')
    Left = 424
    Top = 344
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 488
    Top = 344
  end
end
