object frDataModule: TfrDataModule
  OldCreateOrder = False
  Left = 202
  Top = 540
  Height = 150
  Width = 236
  object dsCadastroCPF: TDataSource
    DataSet = tbCadastroCPF
    Left = 16
    Top = 8
  end
  object tbCadastroCPF: TTable
    Left = 144
    Top = 8
    object tbCadastroCPFbdCodigo: TStringField
      FieldName = 'bdCodigo'
      Size = 100
    end
    object tbCadastroCPFbdNome: TStringField
      FieldName = 'bdNome'
      Size = 100
    end
    object tbCadastroCPFbdTelefone: TStringField
      FieldName = 'bdTelefone'
      Size = 100
    end
    object tbCadastroCPFbdEndereco: TStringField
      FieldName = 'bdEndereco'
      Size = 100
    end
    object tbCadastroCPFbdCEP: TStringField
      FieldName = 'bdCEP'
      Size = 100
    end
    object tbCadastroCPFbdCPF: TStringField
      FieldName = 'bdCPF'
      Size = 100
    end
    object tbCadastroCPFbdData: TStringField
      FieldName = 'bdData'
      Size = 100
    end
  end
  object dsCadastroCNPJ: TDataSource
    DataSet = tbCadastroCNPJ
    Left = 16
    Top = 64
  end
  object tbCadastroCNPJ: TTable
    Left = 144
    Top = 64
    object tbCadastroCNPJbdCodigo: TStringField
      FieldName = 'bdCodigo'
      Size = 100
    end
    object tbCadastroCNPJbdNome: TStringField
      FieldName = 'bdNome'
      Size = 100
    end
    object tbCadastroCNPJbdTelefone: TStringField
      FieldName = 'bdTelefone'
      Size = 100
    end
    object tbCadastroCNPJbdEndereco: TStringField
      FieldName = 'bdEndereco'
      Size = 100
    end
    object tbCadastroCNPJbdCEP: TStringField
      FieldName = 'bdCEP'
      Size = 100
    end
    object tbCadastroCNPJbdRazaoSocial: TStringField
      FieldName = 'bdRazaoSocial'
      Size = 100
    end
    object tbCadastroCNPJbdCNPJ: TStringField
      FieldName = 'bdCNPJ'
      Size = 100
    end
  end
end
