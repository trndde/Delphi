inherited frGridCliente: TfrGridCliente
  Left = 231
  Top = 193
  Width = 414
  Height = 175
  Caption = 'frGridCliente'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited grPadrao: TDBGrid
    Left = 8
    Width = 369
    DataSource = dmCadastro.dtCadastroCliente
    Columns = <
      item
        Expanded = False
        FieldName = 'bdCodigo'
        Title.Caption = 'Codigo'
        Width = 50
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
        FieldName = 'bdEndereco'
        Title.Caption = 'Endereco'
        Width = 200
        Visible = True
      end>
  end
end
