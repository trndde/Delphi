inherited frConsultaProduto: TfrConsultaProduto
  Caption = 'Consulta de produtos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited grPadrao: TDBGrid
    DataSource = frDataModule.dsCadastroProduto
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
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdTipo'
        Title.Caption = 'Tipo de produto'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdModelo'
        Title.Caption = 'Modelo'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdCor'
        Title.Caption = 'Cor'
        Width = 55
        Visible = True
      end>
  end
end
