object frCadastroPadrao: TfrCadastroPadrao
  Left = 360
  Top = 173
  Width = 553
  Height = 480
  Caption = 'frCadastroPadrao'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btSalvar: TButton
    Left = 16
    Top = 312
    Width = 75
    Height = 25
    Caption = 'btSalvar'
    TabOrder = 0
  end
  object btSalvarTxt: TButton
    Left = 104
    Top = 312
    Width = 75
    Height = 25
    Caption = 'btSalvarTxt'
    TabOrder = 1
  end
  object btConsultar: TButton
    Left = 192
    Top = 312
    Width = 75
    Height = 25
    Caption = 'btConsultar'
    TabOrder = 2
  end
  object btSair: TButton
    Left = 280
    Top = 312
    Width = 75
    Height = 25
    Caption = 'btSair'
    TabOrder = 3
  end
  object edCodigo: TLabeledEdit
    Left = 16
    Top = 24
    Width = 49
    Height = 21
    EditLabel.Width = 45
    EditLabel.Height = 13
    EditLabel.Caption = 'edCodigo'
    TabOrder = 4
  end
  object edNome: TLabeledEdit
    Left = 16
    Top = 64
    Width = 313
    Height = 21
    EditLabel.Width = 40
    EditLabel.Height = 13
    EditLabel.Caption = 'edNome'
    TabOrder = 5
  end
  object edRG: TLabeledEdit
    Left = 208
    Top = 104
    Width = 121
    Height = 21
    EditLabel.Width = 28
    EditLabel.Height = 13
    EditLabel.Caption = 'edRG'
    TabOrder = 6
  end
  object edCPF: TMaskEdit
    Left = 16
    Top = 104
    Width = 177
    Height = 21
    TabOrder = 7
    Text = 'edCPF'
  end
  object cbSexo: TComboBox
    Left = 352
    Top = 104
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Text = 'cbSexo'
    Items.Strings = (
      'Feminino'
      'Masculino'
      'N'#227'o-Bin'#225'rio')
  end
  object edDataNascimento: TMaskEdit
    Left = 352
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 9
    Text = 'edDataNascimento'
  end
  object edTelefone: TMaskEdit
    Left = 16
    Top = 144
    Width = 105
    Height = 21
    TabOrder = 10
    Text = 'edTelefone'
  end
  object edEmail: TLabeledEdit
    Left = 136
    Top = 144
    Width = 121
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = 'edEmail'
    TabOrder = 11
  end
  object edEndereco: TLabeledEdit
    Left = 272
    Top = 144
    Width = 201
    Height = 21
    EditLabel.Width = 58
    EditLabel.Height = 13
    EditLabel.Caption = 'edEndereco'
    TabOrder = 12
  end
  object edCEP: TMaskEdit
    Left = 16
    Top = 184
    Width = 105
    Height = 21
    TabOrder = 13
    Text = 'edCEP'
  end
  object edCidade: TLabeledEdit
    Left = 136
    Top = 184
    Width = 121
    Height = 21
    EditLabel.Width = 45
    EditLabel.Height = 13
    EditLabel.Caption = 'edCidade'
    TabOrder = 14
  end
  object edEstado: TLabeledEdit
    Left = 272
    Top = 184
    Width = 89
    Height = 21
    EditLabel.Width = 45
    EditLabel.Height = 13
    EditLabel.Caption = 'edEstado'
    TabOrder = 15
  end
  object edPais: TLabeledEdit
    Left = 376
    Top = 184
    Width = 97
    Height = 21
    EditLabel.Width = 32
    EditLabel.Height = 13
    EditLabel.Caption = 'edPais'
    TabOrder = 16
  end
end
