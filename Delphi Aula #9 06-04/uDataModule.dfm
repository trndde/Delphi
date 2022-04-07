object frDataModule: TfrDataModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 739
  Top = 218
  Height = 150
  Width = 215
  object dsCadastro: TDataSource
    DataSet = tbCadastro
    Left = 32
    Top = 16
  end
  object tbCadastro: TTable
    Left = 144
    Top = 16
    object tbCadastroBDCODIGO: TIntegerField
      FieldName = 'BDCODIGO'
    end
    object tbCadastroBDRAZAO: TStringField
      FieldName = 'BDRAZAO'
      Size = 100
    end
    object tbCadastroBDNOMEFANTASIA: TStringField
      FieldName = 'BDNOMEFANTASIA'
      Size = 100
    end
    object tbCadastroBDCNPJ: TStringField
      FieldName = 'BDCNPJ'
      Size = 100
    end
    object tbCadastroBDINSCRICAO: TStringField
      FieldName = 'BDINSCRICAO'
      Size = 100
    end
    object tbCadastroBDCNAE: TStringField
      FieldName = 'BDCNAE'
      Size = 100
    end
    object tbCadastroBDEMAIL: TStringField
      FieldName = 'BDEMAIL'
      Size = 100
    end
    object tbCadastroBDLOGRADOURO: TStringField
      FieldName = 'BDLOGRADOURO'
      Size = 100
    end
    object tbCadastroBDNUMERO: TStringField
      FieldName = 'BDNUMERO'
      Size = 100
    end
    object tbCadastroBDCEP: TStringField
      FieldName = 'BDCEP'
      Size = 100
    end
    object tbCadastroBDBAIRRO: TStringField
      FieldName = 'BDBAIRRO'
      Size = 100
    end
    object tbCadastroBDCIDADE: TStringField
      FieldName = 'BDCIDADE'
      Size = 100
    end
    object tbCadastroBDESTADO: TStringField
      FieldName = 'BDESTADO'
      Size = 100
    end
    object tbCadastroBDTELEFONE: TStringField
      FieldName = 'BDTELEFONE'
      Size = 100
    end
    object tbCadastroBDCELULAR: TStringField
      FieldName = 'BDCELULAR'
      Size = 100
    end
    object tbCadastroBDINICIOATIVIDADE: TStringField
      FieldName = 'BDINICIOATIVIDADE'
      Size = 100
    end
  end
end
