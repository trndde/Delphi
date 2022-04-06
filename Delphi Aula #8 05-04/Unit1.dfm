object frPrincipal: TfrPrincipal
  Left = 325
  Top = 110
  Width = 305
  Height = 383
  Caption = 'uPrincipal'
  Color = clHotLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 96
    Width = 24
    Height = 13
    Caption = 'Sexo'
  end
  object edCodigo: TLabeledEdit
    Left = 64
    Top = 32
    Width = 153
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'C'#243'digo'
    TabOrder = 0
    OnExit = edCodigoExit
  end
  object edNome: TLabeledEdit
    Left = 64
    Top = 72
    Width = 153
    Height = 21
    EditLabel.Width = 28
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome'
    TabOrder = 1
  end
  object btAdicionar: TButton
    Left = 56
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 2
    OnClick = btAdicionarClick
  end
  object btConsultar: TButton
    Left = 56
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 3
    OnClick = btConsultarClick
  end
  object btSalvar: TButton
    Left = 144
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = btSalvarClick
  end
  object ckEstrangeiro: TCheckBox
    Left = 64
    Top = 152
    Width = 97
    Height = 17
    Caption = 'Estrangeiro'
    TabOrder = 5
  end
  object cbSexo: TComboBox
    Left = 64
    Top = 112
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'Feminino'
      'Masculino'
      '')
  end
  object btMensagem: TButton
    Left = 144
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Mensagem'
    TabOrder = 7
    OnClick = btMensagemClick
  end
  object btSair: TButton
    Left = 96
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 8
    OnClick = btSairClick
  end
  object dsCadastro: TDataSource
    DataSet = tbCadastro
    Left = 264
    Top = 48
  end
  object tbCadastro: TTable
    Left = 264
    Top = 88
    object tbCadastroBDCODIGO: TIntegerField
      FieldName = 'BDCODIGO'
    end
    object tbCadastroBDNOME: TStringField
      FieldName = 'BDNOME'
      Size = 100
    end
    object tbCadastroBDSEXO: TStringField
      FieldName = 'BDSEXO'
      Size = 100
    end
    object tbCadastroBDESTRANGEIRO: TStringField
      FieldName = 'BDESTRANGEIRO'
      Size = 100
    end
  end
end
