inherited frCadastroPessoaJuridica: TfrCadastroPessoaJuridica
  Left = 738
  Top = 110
  Caption = 'Cadastro Pessoa Juridica'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited btSalvar: TButton
    Left = 160
    Top = 144
    OnClick = btSalvarClick
  end
  inherited btConsulta: TButton
    Left = 160
    Top = 184
    OnClick = btConsultaClick
  end
  object edRazaoSocial: TLabeledEdit
    Left = 160
    Top = 72
    Width = 121
    Height = 21
    EditLabel.Width = 63
    EditLabel.Height = 13
    EditLabel.Caption = 'Raz'#227'o Social'
    TabOrder = 7
  end
  object edCNPJ: TLabeledEdit
    Left = 160
    Top = 112
    Width = 121
    Height = 21
    EditLabel.Width = 123
    EditLabel.Height = 13
    EditLabel.Caption = 'CNPJ (Somente Numeros)'
    TabOrder = 8
  end
end
