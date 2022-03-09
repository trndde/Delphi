object frPadraoCadastro: TfrPadraoCadastro
  Left = 254
  Top = 174
  Width = 425
  Height = 480
  Caption = 'PadraoCadastro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edCodigoCliente: TLabeledEdit
    Left = 16
    Top = 32
    Width = 121
    Height = 21
    EditLabel.Width = 82
    EditLabel.Height = 13
    EditLabel.Caption = 'C'#243'digo do cliente'
    TabOrder = 0
  end
  object edNomeCliente: TLabeledEdit
    Left = 16
    Top = 72
    Width = 121
    Height = 21
    EditLabel.Width = 28
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome'
    TabOrder = 1
  end
  object edTelefone: TLabeledEdit
    Left = 16
    Top = 112
    Width = 121
    Height = 21
    EditLabel.Width = 42
    EditLabel.Height = 13
    EditLabel.Caption = 'Telefone'
    TabOrder = 2
  end
  object edEndereco: TLabeledEdit
    Left = 16
    Top = 152
    Width = 121
    Height = 21
    EditLabel.Width = 46
    EditLabel.Height = 13
    EditLabel.Caption = 'Endere'#231'o'
    TabOrder = 3
  end
  object edCEP: TLabeledEdit
    Left = 16
    Top = 192
    Width = 121
    Height = 21
    EditLabel.Width = 21
    EditLabel.Height = 13
    EditLabel.Caption = 'CEP'
    TabOrder = 4
  end
  object btSalvar: TButton
    Left = 176
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 5
  end
  object btConsulta: TButton
    Left = 176
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Consulta'
    TabOrder = 6
  end
end
