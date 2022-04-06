object frConsulta: TfrConsulta
  Left = 651
  Top = 130
  Width = 561
  Height = 653
  Caption = 'frConsulta'
  Color = clHotLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 16
    Width = 441
    Height = 553
    DataSource = frPrincipal.dsCadastro
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BDCODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDNOME'
        Width = 163
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDSEXO'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDESTRANGEIRO'
        Width = 119
        Visible = True
      end>
  end
  object btExcluir: TButton
    Left = 456
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 1
    OnClick = btExcluirClick
  end
  object btSair: TButton
    Left = 456
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = btSairClick
  end
end
