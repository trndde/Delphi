object frPrincipal: TfrPrincipal
  Left = 180
  Top = 124
  Width = 502
  Height = 480
  Caption = 'frPrincipal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btCadastroProduto: TButton
    Left = 16
    Top = 16
    Width = 99
    Height = 25
    Caption = 'Cadastro Produto'
    TabOrder = 0
    OnClick = btCadastroProdutoClick
  end
  object btCadastroFornecedor: TButton
    Left = 120
    Top = 16
    Width = 113
    Height = 25
    Caption = 'Cadastro Fornecedor'
    TabOrder = 1
    OnClick = btCadastroFornecedorClick
  end
  object btConsultaProduto: TButton
    Left = 240
    Top = 16
    Width = 97
    Height = 25
    Caption = 'Consulta Produto'
    TabOrder = 2
    OnClick = btConsultaProdutoClick
  end
  object btConsultaFornecedor: TButton
    Left = 344
    Top = 16
    Width = 113
    Height = 25
    Caption = 'Consulta Fornecedor'
    TabOrder = 3
    OnClick = btConsultaFornecedorClick
  end
end
