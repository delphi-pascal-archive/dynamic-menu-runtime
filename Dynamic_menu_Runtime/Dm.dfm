object Form1: TForm1
  Left = 223
  Top = 125
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Dynamic menu, RunTime'
  ClientHeight = 328
  ClientWidth = 535
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object Bevel1: TBevel
    Left = 8
    Top = 136
    Width = 513
    Height = 9
    Shape = bsTopLine
  end
  object Memo1: TMemo
    Left = 200
    Top = 16
    Width = 113
    Height = 105
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 16
    Width = 97
    Height = 25
    Caption = 'New Menu'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 56
    Width = 97
    Height = 25
    Caption = 'Add Items'
    Enabled = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 112
    Top = 96
    Width = 81
    Height = 25
    Caption = 'Capition '#39'-'#39
    Enabled = False
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 112
    Top = 16
    Width = 81
    Height = 25
    Caption = 'Load menu'
    Enabled = False
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 320
    Top = 16
    Width = 81
    Height = 25
    Caption = 'Vvod menu'
    Enabled = False
    TabOrder = 5
    OnClick = Button5Click
  end
  object Memo2: TMemo
    Left = 408
    Top = 16
    Width = 113
    Height = 105
    Lines.Strings = (
      'New'
      'Open'
      'Save'
      'Save As...'
      '-'
      'Exit')
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object Button6: TButton
    Left = 8
    Top = 96
    Width = 97
    Height = 25
    Caption = 'Delete item (!)'
    Enabled = False
    TabOrder = 7
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 16
    Top = 152
    Width = 145
    Height = 25
    Caption = 'TEdit.Create'
    TabOrder = 8
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 16
    Top = 192
    Width = 145
    Height = 25
    Caption = 'TFontdialog.Create'
    TabOrder = 9
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 176
    Top = 192
    Width = 145
    Height = 25
    Caption = 'Sort in Memo    ->'
    TabOrder = 10
    OnClick = Button9Click
  end
  object Memo3: TMemo
    Left = 336
    Top = 152
    Width = 177
    Height = 65
    Lines.Strings = (
      'Memo 2'
      'Memo 1'
      'Memo 3')
    TabOrder = 11
  end
  object Button10: TButton
    Left = 176
    Top = 152
    Width = 145
    Height = 25
    Caption = 'Massive TEdit, TLabel'
    TabOrder = 12
    OnClick = Button10Click
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
  end
end
