object Form1: TForm1
  Left = 185
  Top = 115
  Width = 929
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 40
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 48
    Top = 80
    Width = 24
    Height = 13
    Caption = 'Sexo'
  end
  object Ed1: TEdit
    Left = 96
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object CheckBox1: TCheckBox
    Left = 64
    Top = 120
    Width = 97
    Height = 17
    Caption = 'Estrangeiro'
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 96
    Top = 80
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'Masculino'
      'Feminino')
  end
  object Button1: TButton
    Left = 40
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Procedure'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Fun'#231#227'o'
    TabOrder = 4
    OnClick = Button2Click
  end
end
