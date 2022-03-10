inherited frConsultaFornecedor: TfrConsultaFornecedor
  Left = 288
  Top = 193
  Width = 637
  Caption = 'Consulta de fornecedores'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited grPadrao: TDBGrid
    Width = 465
    DataSource = frDataModule.dsCadastroFornecedor
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
        FieldName = 'bdNome'
        Title.Caption = 'Nome'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdTelefone'
        Title.Caption = 'Telefone'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdCNPJ'
        Title.Caption = 'CNPJ'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdEndereco'
        Title.Caption = 'Endere'#231'o'
        Width = 150
        Visible = True
      end>
  end
end
