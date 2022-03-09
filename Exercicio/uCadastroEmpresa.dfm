inherited frCadastroEmpresa: TfrCadastroEmpresa
  Left = 582
  Top = 110
  Width = 251
  Height = 188
  Caption = 'Cadastro Empresa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object lbCnpj: TLabel [2]
    Left = 8
    Top = 56
    Width = 21
    Height = 13
    Caption = 'Cnpj'
  end
  inherited btSalvar: TButton
    OnClick = btSalvarClick
  end
  inherited btConsultar: TButton
    OnClick = btConsultarClick
  end
  object edCnpj: TEdit
    Left = 48
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 4
  end
end
