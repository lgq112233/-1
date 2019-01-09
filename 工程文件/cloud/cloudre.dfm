object Form1: TForm1
  Left = 585
  Top = 203
  Width = 427
  Height = 360
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
    Left = 120
    Top = 24
    Width = 153
    Height = 33
    Alignment = taCenter
    AutoSize = False
    Caption = #30331#24405
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = #26999#20307
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 144
    Width = 89
    Height = 33
    Alignment = taCenter
    AutoSize = False
    Caption = #23494#30721
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = #26999#20307
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 88
    Width = 89
    Height = 33
    Alignment = taCenter
    AutoSize = False
    Caption = #29992#25143#21517
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = #26999#20307
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 168
    Top = 88
    Width = 185
    Height = 33
    AutoSize = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 168
    Top = 144
    Width = 185
    Height = 33
    AutoSize = False
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 80
    Top = 232
    Width = 75
    Height = 25
    Caption = #30331#24405
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 240
    Top = 232
    Width = 75
    Height = 25
    Caption = #27880#20876
    TabOrder = 3
    OnClick = Button2Click
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=#unkowngroup999;Persist Security In' +
      'fo=True;User ID=unkowngroup;Initial Catalog=cloud;Data Source=rm' +
      '-2ze1i78x334q3d0zh1o.sqlserver.rds.aliyuncs.com,3433'
    Provider = 'SQLOLEDB.1'
    Left = 312
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 368
    Top = 32
  end
end
