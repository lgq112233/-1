object Form7: TForm7
  Left = 263
  Top = 174
  Width = 1044
  Height = 540
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 208
    Top = 56
    Width = 761
    Height = 353
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 72
    Top = 120
    Width = 75
    Height = 25
    Caption = #21047#26032
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 72
    Top = 296
    Width = 75
    Height = 25
    Caption = #19978#20256
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 920
    Top = 440
    Width = 75
    Height = 25
    Caption = #20851#38381
    TabOrder = 3
    OnClick = Button3Click
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *from gongyou;')
    Left = 376
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 496
    Top = 32
  end
end
