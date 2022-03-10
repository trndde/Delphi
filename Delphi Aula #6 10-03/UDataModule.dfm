object frDataModule: TfrDataModule
  OldCreateOrder = False
  Left = 518
  Top = 190
  Height = 186
  Width = 215
  object tbCadastroProduto: TTable
    Left = 128
    Top = 16
    object tbCadastroProdutobdCodigo: TIntegerField
      FieldName = 'bdCodigo'
    end
    object tbCadastroProdutobdMarca: TStringField
      FieldName = 'bdMarca'
      Size = 100
    end
    object tbCadastroProdutobdModelo: TStringField
      FieldName = 'bdModelo'
      Size = 100
    end
    object tbCadastroProdutobdCor: TStringField
      FieldName = 'bdCor'
      Size = 100
    end
    object tbCadastroProdutobdTipo: TStringField
      FieldName = 'bdTipo'
      Size = 100
    end
  end
  object tbCadastroFornecedor: TTable
    Left = 128
    Top = 64
    object tbCadastroFornecedorbdCodigo: TIntegerField
      FieldName = 'bdCodigo'
    end
    object tbCadastroFornecedorbdNome: TStringField
      FieldName = 'bdNome'
      Size = 100
    end
    object tbCadastroFornecedorbdCNPJ: TStringField
      FieldName = 'bdCNPJ'
      Size = 100
    end
    object tbCadastroFornecedorbdTelefone: TStringField
      FieldName = 'bdTelefone'
      Size = 100
    end
    object tbCadastroFornecedorbdEndereco: TStringField
      FieldName = 'bdEndereco'
      Size = 100
    end
  end
  object dsCadastroProduto: TDataSource
    DataSet = tbCadastroProduto
    Left = 24
    Top = 16
  end
  object dsCadastroFornecedor: TDataSource
    DataSet = tbCadastroFornecedor
    Left = 24
    Top = 64
  end
end
