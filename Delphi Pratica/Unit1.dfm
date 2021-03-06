object Form1: TForm1
  Left = 405
  Top = 112
  Width = 489
  Height = 463
  Caption = 'Tela De Cadastro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 48
    Width = 31
    Height = 13
    Caption = 'Nome '
  end
  object Label2: TLabel
    Left = 104
    Top = 128
    Width = 97
    Height = 13
    Caption = 'Data de Nascimento'
  end
  object Label3: TLabel
    Left = 104
    Top = 88
    Width = 20
    Height = 13
    Caption = 'CPF'
  end
  object Label4: TLabel
    Left = 104
    Top = 168
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label5: TLabel
    Left = 232
    Top = 128
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object Label6: TLabel
    Left = 232
    Top = 168
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label7: TLabel
    Left = 104
    Top = 8
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object edNome: TEdit
    Left = 104
    Top = 64
    Width = 249
    Height = 21
    TabOrder = 1
  end
  object edCPF: TEdit
    Left = 104
    Top = 104
    Width = 249
    Height = 21
    MaxLength = 14
    TabOrder = 2
    OnKeyPress = edCPFKeyPress
  end
  object edData: TEdit
    Left = 104
    Top = 144
    Width = 97
    Height = 21
    MaxLength = 10
    TabOrder = 3
    OnKeyPress = edDataKeyPress
  end
  object edTelefone: TEdit
    Left = 104
    Top = 184
    Width = 97
    Height = 21
    TabOrder = 5
  end
  object cbEstado: TComboBox
    Left = 232
    Top = 144
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'Acre'
      'Alagoas'
      'Amap'#225
      'Amazonas'
      'Bahia'
      'Cear'#225
      'Distrito Federal'
      'Esp'#237'rito Santo'
      'Goi'#225's'
      'Maranh'#227'o'
      'Mato Grosso'
      'Mato Grosso do Sul'
      'Minas Gerais'
      'Par'#225
      'Para'#237'ba'
      'Paran'#225
      'Pernambuco'
      'Piau'#237
      'Rio de Janeiro'
      'Rio Grande do Norte'
      'Rio Grande do Sul'
      'Rond'#244'nia'
      'Roraima'
      'Santa Catarina'
      'S'#227'o Paulo'
      'Sergipe'
      'Tocantins')
  end
  object edEndereco: TEdit
    Left = 232
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object btAdicionar: TButton
    Left = 104
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 7
    OnClick = btAdicionarClick
  end
  object btSalvar: TButton
    Left = 192
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 8
  end
  object btMostrar: TButton
    Left = 280
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    TabOrder = 9
    OnClick = btMostrarClick
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 296
    Width = 425
    Height = 120
    DataSource = dsCadastro
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'bdCodigo'
        Title.Caption = 'Cod.'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdNome'
        Title.Caption = 'Nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdData'
        Title.Caption = 'Data de Nascimento'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdCPF'
        Title.Caption = 'CPF'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdTelefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdEndereco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdEstado'
        Visible = True
      end>
  end
  object edCodigo: TEdit
    Left = 104
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    OnExit = edCodigoExit
  end
  object cdsCadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 256
    object cdsCadastrobdNome: TStringField
      FieldName = 'bdNome'
      Size = 100
    end
    object cdsCadastrobdData: TStringField
      FieldName = 'bdData'
      Size = 100
    end
    object cdsCadastrobdTelefone: TStringField
      FieldName = 'bdTelefone'
      Size = 100
    end
    object cdsCadastrobdEstado: TIntegerField
      FieldName = 'bdEstado'
    end
    object cdsCadastrobdEndereco: TStringField
      FieldName = 'bdEndereco'
      Size = 100
    end
    object cdsCadastrobdCPF: TStringField
      FieldName = 'bdCPF'
      Size = 100
    end
    object cdsCadastrobdCodigo: TStringField
      FieldName = 'bdCodigo'
      Size = 100
    end
  end
  object dsCadastro: TDataSource
    DataSet = cdsCadastro
    Left = 312
    Top = 256
  end
end
