object Form8: TForm8
  Left = 590
  Top = 186
  Width = 439
  Height = 452
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 32
    Width = 81
    Height = 33
    Alignment = taCenter
    AutoSize = False
    Caption = #26631#39064
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = #26999#20307
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 88
    Width = 81
    Height = 33
    Alignment = taCenter
    AutoSize = False
    Caption = #27491#25991
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = #26999#20307
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 152
    Top = 32
    Width = 209
    Height = 21
    TabOrder = 0
    Text = '15'#23383#20197#20869#65292#22914#26102#38388#65292#22320#28857#65292#24515#24773#31561
    OnClick = Edit1Click
  end
  object Edit2: TEdit
    Left = 40
    Top = 136
    Width = 329
    Height = 177
    AutoSize = False
    TabOrder = 1
    Text = #20843#21313#23383#20197#20869#65292#20869#23481#19981#38480#12290
    OnClick = Edit2Click
  end
  object Button1: TButton
    Left = 88
    Top = 352
    Width = 75
    Height = 25
    Caption = #19978#20256
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 256
    Top = 352
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 3
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.con1
    Parameters = <>
    Left = 384
    Top = 8
  end
end
