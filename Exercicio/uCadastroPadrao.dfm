object frCadastroPadrao: TfrCadastroPadrao
  Left = 683
  Top = 128
  Width = 243
  Height = 201
  Caption = 'Cadastro Padrao'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbCodigo: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object lbNome: TLabel
    Left = 8
    Top = 32
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object edCodigo: TEdit
    Left = 48
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edNome: TEdit
    Left = 48
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btSalvar: TButton
    Left = 32
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
  end
  object btConsultar: TButton
    Left = 128
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 3
  end
end
