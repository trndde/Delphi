inherited frCadastroCarro: TfrCadastroCarro
  Top = 355
  Height = 335
  Caption = 'frCadastroCarro'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbMarca: TLabel
    Top = 40
  end
  object Label1: TLabel [1]
    Left = 16
    Top = 72
    Width = 35
    Height = 13
    Caption = 'Modelo'
  end
  object Label2: TLabel [2]
    Left = 16
    Top = 8
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  inherited edMarca: TEdit
    Top = 40
    TabOrder = 1
  end
  inherited btSalvar: TButton
    Left = 16
    Top = 112
    TabOrder = 3
    OnClick = btSalvarClick
  end
  inherited btConsultar: TButton
    Left = 96
    Top = 112
    TabOrder = 4
  end
  object edModelo: TEdit
    Left = 56
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edCodigo: TEdit
    Left = 56
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object grModelosCarro: TDBGrid
    Left = 8
    Top = 152
    Width = 233
    Height = 120
    DataSource = frDataModule.dsCadastroCarro
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
        Title.Caption = 'C'#243'd.'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdMarca'
        Title.Caption = 'Marca'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdModelo'
        Title.Caption = 'Modelo'
        Width = 90
        Visible = True
      end>
  end
  object btExcluir: TButton
    Left = 176
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 6
  end
end
