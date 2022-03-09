object frDataModule: TfrDataModule
  OldCreateOrder = False
  Left = 189
  Top = 471
  Height = 150
  Width = 306
  object tbCadastroCarro: TTable
    Left = 88
    Top = 8
    object tbCadastroCarrobdMarca: TStringField
      FieldName = 'bdMarca'
      Size = 100
    end
    object tbCadastroCarrobdModelo: TStringField
      FieldName = 'bdModelo'
      Size = 100
    end
    object tbCadastroCarrobdCodigo: TStringField
      FieldName = 'bdCodigo'
      Size = 100
    end
  end
  object dsCadastroCarro: TDataSource
    DataSet = tbCadastroCarro
    Left = 8
    Top = 8
  end
end
