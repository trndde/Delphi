object Form1: TForm1
  Left = 670
  Top = 209
  Width = 340
  Height = 480
  Caption = 'Cadastro de Roupas'
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
    Left = 8
    Top = 40
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 45
    Height = 13
    Caption = 'Tamanho'
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object edCodigo: TEdit
    Left = 64
    Top = 40
    Width = 41
    Height = 21
    TabOrder = 0
    OnEnter = edCodigoEnter
    OnExit = edCodigoExit
  end
  object edTamanho: TEdit
    Left = 64
    Top = 64
    Width = 41
    Height = 21
    TabOrder = 1
  end
  object edDescricao: TEdit
    Left = 64
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btAdicionar: TButton
    Left = 8
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 3
    OnClick = btAdicionarClick
  end
  object btExcluir: TButton
    Left = 88
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = btExcluirClick
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 184
    Width = 321
    Height = 120
    DataSource = dsCadastro
    TabOrder = 5
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
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdDescricao'
        Title.Caption = 'Descri'#231#227'o'
        Width = 235
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdTamanho'
        Title.Caption = 'Tam.'
        Width = 35
        Visible = True
      end>
  end
  object tbCadastro: TTable
    Left = 208
    Top = 96
    object tbCadastrobdCodigo: TStringField
      FieldName = 'bdCodigo'
      Size = 100
    end
    object tbCadastrobdTamanho: TStringField
      FieldName = 'bdTamanho'
      Size = 100
    end
    object tbCadastrobdDescricao: TStringField
      FieldName = 'bdDescricao'
      Size = 100
    end
  end
  object dsCadastro: TDataSource
    DataSet = tbCadastro
    Left = 208
    Top = 64
  end
end
