inherited frConsultaPessoaFisica: TfrConsultaPessoaFisica
  Left = 469
  Top = 206
  Width = 542
  Caption = 'Consulta CPF'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited btExcluir: TButton
    Top = 192
  end
  inherited grPadrao: TDBGrid
    Width = 505
    DataSource = frDataModule.dsCadastroCPF
    Columns = <
      item
        Expanded = False
        FieldName = 'bdCodigo'
        Title.Caption = 'C'#243'd'
        Width = 25
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
        FieldName = 'bdCPF'
        Title.Caption = 'CPF'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdData'
        Title.Caption = 'Data'
        Width = 60
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
