inherited frCadastroProduto: TfrCadastroProduto
  Left = 359
  Top = 169
  Width = 195
  Caption = 'Cadastro de produtos'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited edCodigo: TLabeledEdit
    OnExit = edCodigoExit
  end
  inherited btSalvar: TButton
    Top = 224
    Width = 49
    Height = 41
    TabOrder = 5
    OnClick = btSalvarClick
  end
  inherited btConsultar: TButton
    Left = 96
    Top = 224
    Width = 49
    Height = 41
    TabOrder = 6
    OnClick = btConsultarClick
  end
  object edTipo: TLabeledEdit
    Left = 24
    Top = 72
    Width = 121
    Height = 21
    EditLabel.Width = 75
    EditLabel.Height = 13
    EditLabel.Caption = 'Tipo do produto'
    TabOrder = 1
  end
  object edMarca: TLabeledEdit
    Left = 24
    Top = 112
    Width = 121
    Height = 21
    EditLabel.Width = 30
    EditLabel.Height = 13
    EditLabel.Caption = 'Marca'
    TabOrder = 2
  end
  object edModelo: TLabeledEdit
    Left = 24
    Top = 152
    Width = 121
    Height = 21
    EditLabel.Width = 35
    EditLabel.Height = 13
    EditLabel.Caption = 'Modelo'
    TabOrder = 3
  end
  object edCor: TLabeledEdit
    Left = 24
    Top = 192
    Width = 121
    Height = 21
    EditLabel.Width = 16
    EditLabel.Height = 13
    EditLabel.Caption = 'Cor'
    TabOrder = 4
  end
end
