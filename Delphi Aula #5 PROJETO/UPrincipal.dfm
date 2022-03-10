object frPrincipal: TfrPrincipal
  Left = 257
  Top = 118
  Width = 727
  Height = 461
  Caption = 'Tela Principal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 873
    Height = 553
    Color = clHighlight
    TabOrder = 4
  end
  object btCadastroCPF: TButton
    Left = 16
    Top = 16
    Width = 161
    Height = 33
    Caption = 'Cadastro Pessoa F'#237'sica'
    TabOrder = 0
    OnClick = btCadastroCPFClick
  end
  object btCadastroCNPJ: TButton
    Left = 184
    Top = 16
    Width = 161
    Height = 33
    Caption = 'Cadastro Pessoa Jur'#237'dica'
    TabOrder = 1
    OnClick = btCadastroCNPJClick
  end
  object btConsultaCPF: TButton
    Left = 352
    Top = 16
    Width = 161
    Height = 33
    Caption = 'Consultar CPF'
    TabOrder = 2
    OnClick = btConsultaCPFClick
  end
  object btConsultaCNPJ: TButton
    Left = 520
    Top = 16
    Width = 161
    Height = 33
    Caption = 'Consultar CNPJ'
    TabOrder = 3
    OnClick = btConsultaCNPJClick
  end
end
