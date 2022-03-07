object Form1: TForm1
  Left = 551
  Top = 147
  Width = 504
  Height = 480
  Caption = 'Form1'
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
  object lblNome: TLabel
    Left = 24
    Top = 40
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object lblSexo: TLabel
    Left = 24
    Top = 72
    Width = 24
    Height = 13
    Caption = 'Sexo'
  end
  object lblCodigo: TLabel
    Left = 24
    Top = 8
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object edNome: TEdit
    Left = 64
    Top = 40
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object cbSexo: TComboBox
    Left = 64
    Top = 72
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      'Masculino'
      'Feminino')
  end
  object ckEstrangeiro: TCheckBox
    Left = 64
    Top = 104
    Width = 145
    Height = 17
    Caption = 'Estrangeiro'
    TabOrder = 2
  end
  object btAdicionar: TButton
    Left = 248
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 3
    OnClick = btAdicionarClick
  end
  object btMostrar: TButton
    Left = 248
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    TabOrder = 4
    OnClick = btMostrarClick
  end
  object btSalvar: TButton
    Left = 248
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = btSalvarClick
  end
  object edCodigo: TEdit
    Left = 64
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 6
    OnExit = edCodigoExit
  end
  object grCadastro: TDBGrid
    Left = 16
    Top = 136
    Width = 449
    Height = 120
    DataSource = dsCadastro
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'bdCodigo'
        Title.Caption = 'C'#243'digo'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdNome'
        Title.Caption = 'Nome'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdSexo'
        Title.Caption = 'Sexo'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdEstrangeiro'
        Title.Caption = 'Estrangeiro'
        Visible = True
      end>
  end
  object cdsCadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 8
    object cdsCadastrobdNome: TStringField
      FieldName = 'bdNome'
      Size = 100
    end
    object cdsCadastrobdEstrangeiro: TBooleanField
      FieldName = 'bdEstrangeiro'
    end
    object cdsCadastrobdSexo: TIntegerField
      FieldName = 'bdSexo'
    end
    object cdsCadastrobdCodigo: TIntegerField
      FieldName = 'bdCodigo'
    end
  end
  object dsCadastro: TDataSource
    DataSet = tbCadastro
    Left = 392
    Top = 8
  end
  object tbCadastro: TTable
    Left = 352
    Top = 48
    object tbCadastrobdCodigo: TStringField
      FieldName = 'bdCodigo'
      Size = 100
    end
    object tbCadastrobdNome: TStringField
      FieldName = 'bdNome'
      Size = 100
    end
    object tbCadastrobdSexo: TIntegerField
      FieldName = 'bdSexo'
    end
    object tbCadastrobdEstrangeiro: TBooleanField
      FieldName = 'bdEstrangeiro'
    end
  end
end
