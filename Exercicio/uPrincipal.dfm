object frPrincipal: TfrPrincipal
  Left = 698
  Top = 169
  Width = 253
  Height = 157
  Caption = 'Principal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btCadastroCliente: TButton
    Left = 16
    Top = 24
    Width = 89
    Height = 25
    Caption = 'Cadastro Cliente'
    TabOrder = 0
    OnClick = btCadastroClienteClick
  end
  object btCadastroEmpresa: TButton
    Left = 136
    Top = 24
    Width = 89
    Height = 25
    Caption = 'Cadastro Empresa'
    TabOrder = 1
    OnClick = btCadastroEmpresaClick
  end
end
