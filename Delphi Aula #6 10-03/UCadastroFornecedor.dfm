inherited frCadastroFornecedor: TfrCadastroFornecedor
  Left = 749
  Top = 222
  Width = 210
  Height = 338
  Caption = 'Cadastro de fornecedores'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited edCodigo: TLabeledEdit
    OnExit = edCodigoExit
  end
  inherited btSalvar: TButton
    Width = 49
    Height = 41
    TabOrder = 5
    OnClick = btSalvarClick
  end
  inherited btConsultar: TButton
    Left = 96
    Width = 49
    Height = 41
    TabOrder = 6
    OnClick = btConsultarClick
  end
  object edNome: TLabeledEdit
    Left = 24
    Top = 72
    Width = 121
    Height = 21
    EditLabel.Width = 28
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome'
    TabOrder = 1
  end
  object edCNPJ: TLabeledEdit
    Left = 24
    Top = 112
    Width = 121
    Height = 21
    EditLabel.Width = 27
    EditLabel.Height = 13
    EditLabel.Caption = 'CNPJ'
    TabOrder = 2
  end
  object edTelefone: TLabeledEdit
    Left = 24
    Top = 152
    Width = 121
    Height = 21
    EditLabel.Width = 42
    EditLabel.Height = 13
    EditLabel.Caption = 'Telefone'
    TabOrder = 3
  end
  object edEndereco: TLabeledEdit
    Left = 24
    Top = 192
    Width = 121
    Height = 21
    EditLabel.Width = 46
    EditLabel.Height = 13
    EditLabel.Caption = 'Endere'#231'o'
    TabOrder = 4
  end
end
