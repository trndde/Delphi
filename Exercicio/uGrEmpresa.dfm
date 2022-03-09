inherited GrEmpresa: TGrEmpresa
  Left = 219
  Top = 136
  Width = 390
  Caption = 'frGridEmpresa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited grPadrao: TDBGrid
    DataSource = dmCadastro.dtCadastroEmpresa
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
        FieldName = 'bdCnpj'
        Title.Caption = 'Cnpj'
        Width = 150
        Visible = True
      end>
  end
end
