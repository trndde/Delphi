object Form1: TForm1
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 26
    Height = 13
    Caption = 'idade'
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 22
    Height = 13
    Caption = 'sexo'
  end
  object Edit1: TEdit
    Left = 88
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 96
    Top = 64
    Width = 113
    Height = 21
    TabOrder = 1
  end
  object Estrangeiro: TCheckBox
    Left = 72
    Top = 136
    Width = 97
    Height = 17
    Caption = 'Estrangeiro'
    TabOrder = 2
  end
  object sexo: TComboBox
    Left = 88
    Top = 96
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'masculino'
      'feminino')
  end
  object Button1: TButton
    Left = 32
    Top = 168
    Width = 75
    Height = 25
    Caption = 'btProcedure'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 168
    Width = 75
    Height = 25
    Caption = 'btFun'#231#227'o'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 120
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Mensagem'
    TabOrder = 6
    OnClick = Button3Click
  end
end
