object frConsultaPadrao: TfrConsultaPadrao
  Left = 306
  Top = 190
  Width = 824
  Height = 480
  Caption = 'frConsultaPadrao'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btSair: TButton
    Left = 120
    Top = 224
    Width = 75
    Height = 25
    Caption = 'btSair'
    TabOrder = 0
  end
  object grPadrao: TDBGrid
    Left = 24
    Top = 8
    Width = 737
    Height = 185
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object btExcluir: TButton
    Left = 24
    Top = 224
    Width = 75
    Height = 25
    Caption = 'btExcluir'
    TabOrder = 2
    OnClick = btExcluirClick
  end
end
