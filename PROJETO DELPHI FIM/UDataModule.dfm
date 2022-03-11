object frDataModule: TfrDataModule
  OldCreateOrder = False
  Left = 107
  Top = 423
  Height = 254
  Width = 469
  object dsPaciente: TDataSource
    DataSet = tbCadastroPaciente
    Left = 32
    Top = 24
  end
  object dsVisitante: TDataSource
    DataSet = cdsCadastroVisitante
    Left = 32
    Top = 88
  end
  object dsMedico: TDataSource
    DataSet = tbCadastroMedico
    Left = 32
    Top = 144
  end
  object cdsCadastroVisitante: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 80
    object cdsCadastroVisitantebdCodigo: TStringField
      FieldName = 'bdCodigo'
      Size = 100
    end
    object cdsCadastroVisitantebdNome: TStringField
      FieldName = 'bdNome'
      Size = 100
    end
    object cdsCadastroVisitantebdData: TStringField
      FieldName = 'bdData'
      Size = 100
    end
    object cdsCadastroVisitantebdCPF: TStringField
      FieldName = 'bdCPF'
      Size = 100
    end
    object cdsCadastroVisitantebdRG: TStringField
      FieldName = 'bdRG'
      Size = 100
    end
    object cdsCadastroVisitantebdSexo: TIntegerField
      FieldName = 'bdSexo'
    end
    object cdsCadastroVisitantebdPaciente: TStringField
      FieldName = 'bdPaciente'
      Size = 100
    end
    object cdsCadastroVisitantebdParentesco: TStringField
      FieldName = 'bdParentesco'
      Size = 100
    end
    object cdsCadastroVisitantebdTelefone: TStringField
      FieldName = 'bdTelefone'
      Size = 100
    end
    object cdsCadastroVisitantebdEmail: TStringField
      FieldName = 'bdEmail'
      Size = 100
    end
    object cdsCadastroVisitantebdEndereco: TStringField
      FieldName = 'bdEndereco'
      Size = 100
    end
    object cdsCadastroVisitantebdCEP: TStringField
      FieldName = 'bdCEP'
      Size = 100
    end
    object cdsCadastroVisitantebdCidade: TStringField
      FieldName = 'bdCidade'
      Size = 100
    end
    object cdsCadastroVisitantebdEstado: TStringField
      FieldName = 'bdEstado'
      Size = 100
    end
    object cdsCadastroVisitantebdPais: TStringField
      FieldName = 'bdPais'
      Size = 100
    end
  end
  object tbCadastroPaciente: TTable
    Left = 144
    Top = 24
    object tbCadastroPacientebdCodigo: TIntegerField
      FieldName = 'bdCodigo'
    end
    object tbCadastroPacientebdNome: TStringField
      FieldName = 'bdNome'
      Size = 100
    end
    object tbCadastroPacientebdData: TStringField
      FieldName = 'bdData'
      Size = 100
    end
    object tbCadastroPacientebdCPF: TStringField
      FieldName = 'bdCPF'
      Size = 100
    end
    object tbCadastroPacientebdRG: TStringField
      FieldName = 'bdRG'
      Size = 100
    end
    object tbCadastroPacientebdSexo: TIntegerField
      FieldName = 'bdSexo'
    end
    object tbCadastroPacientebdTelefone: TStringField
      FieldName = 'bdTelefone'
      Size = 100
    end
    object tbCadastroPacientebdEmail: TStringField
      FieldName = 'bdEmail'
      Size = 100
    end
    object tbCadastroPacientebdEndereco: TStringField
      FieldName = 'bdEndereco'
      Size = 100
    end
    object tbCadastroPacientebdCEP: TStringField
      FieldName = 'bdCEP'
      Size = 100
    end
    object tbCadastroPacientebdCidade: TStringField
      FieldName = 'bdCidade'
      Size = 100
    end
    object tbCadastroPacientebdEstado: TStringField
      FieldName = 'bdEstado'
      Size = 100
    end
    object tbCadastroPacientebdPais: TStringField
      FieldName = 'bdPais'
      Size = 100
    end
    object tbCadastroPacientebdContatoAcompanhante: TStringField
      FieldName = 'bdContatoAcompanhante'
      Size = 100
    end
    object tbCadastroPacientebdPrioridade: TIntegerField
      FieldName = 'bdPrioridade'
    end
  end
  object tbCadastroMedico: TTable
    Left = 144
    Top = 144
    object tbCadastroMedicobdCodigo: TIntegerField
      FieldName = 'bdCodigo'
    end
    object tbCadastroMedicobdNome: TStringField
      FieldName = 'bdNome'
      Size = 100
    end
    object tbCadastroMedicobdData: TStringField
      FieldName = 'bdData'
      Size = 100
    end
    object tbCadastroMedicobdCPF: TStringField
      FieldName = 'bdCPF'
      Size = 100
    end
    object tbCadastroMedicobdRG: TStringField
      FieldName = 'bdRG'
      Size = 100
    end
    object tbCadastroMedicobdSexo: TIntegerField
      FieldName = 'bdSexo'
    end
    object tbCadastroMedicobdCRM: TStringField
      FieldName = 'bdCRM'
      Size = 100
    end
    object tbCadastroMedicobdEspecialidade: TStringField
      FieldName = 'bdEspecialidade'
      Size = 100
    end
    object tbCadastroMedicobdTelefone: TStringField
      FieldName = 'bdTelefone'
      Size = 100
    end
    object tbCadastroMedicobdEmail: TStringField
      FieldName = 'bdEmail'
      Size = 100
    end
    object tbCadastroMedicobdEndereco: TStringField
      FieldName = 'bdEndereco'
      Size = 100
    end
    object tbCadastroMedicobdCEP: TStringField
      FieldName = 'bdCEP'
      Size = 100
    end
    object tbCadastroMedicobdCidade: TStringField
      FieldName = 'bdCidade'
      Size = 100
    end
    object tbCadastroMedicobdEstado: TStringField
      FieldName = 'bdEstado'
      Size = 100
    end
    object tbCadastroMedicobdPais: TStringField
      FieldName = 'bdPais'
      Size = 100
    end
  end
end
