inherited frConsultaPessoaJuridica: TfrConsultaPessoaJuridica
  Left = 542
  Top = 298
  Width = 687
  Caption = 'Consulta Pessoa Jur'#237'dica'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited grPadrao: TDBGrid
    Left = 8
    Width = 649
    DataSource = frDataModule.dsCadastroCNPJ
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
        FieldName = 'bdRazaoSocial'
        Title.Caption = 'Raz'#227'o Social'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdCNPJ'
        Title.Caption = 'CNPJ'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdNome'
        Title.Caption = 'Nome'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdTelefone'
        Title.Caption = 'Telefone'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdEndereco'
        Title.Caption = 'Endere'#231'o'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdCEP'
        Title.Caption = 'CEP'
        Width = 100
        Visible = True
      end>
  end
end
