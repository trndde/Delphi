object dmCadastro: TdmCadastro
  OldCreateOrder = False
  Left = 1140
  Top = 131
  Height = 188
  Width = 228
  object dtCadastroCliente: TDataSource
    DataSet = tbCadastroCliente
    Left = 32
    Top = 64
  end
  object tbCadastroCliente: TTable
    Left = 136
    Top = 64
    object tbCadastroClientebdCodigo: TStringField
      FieldName = 'bdCodigo'
      Size = 100
    end
    object tbCadastroClientebdNome: TStringField
      FieldName = 'bdNome'
      Size = 100
    end
    object tbCadastroClientebdEndereco: TStringField
      FieldName = 'bdEndereco'
      Size = 100
    end
  end
  object dtCadastroEmpresa: TDataSource
    DataSet = tbCadastroEmpresa
    Left = 32
    Top = 8
  end
  object tbCadastroEmpresa: TTable
    Left = 136
    Top = 8
    object tbCadastroEmpresabdCodigo: TStringField
      FieldName = 'bdCodigo'
      Size = 100
    end
    object tbCadastroEmpresabdNome: TStringField
      FieldName = 'bdNome'
      Size = 100
    end
    object tbCadastroEmpresabdCnpj: TStringField
      FieldName = 'bdCnpj'
      Size = 100
    end
  end
end
