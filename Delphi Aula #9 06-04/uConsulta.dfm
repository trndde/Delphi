object frConsulta: TfrConsulta
  Left = 1
  Top = 115
  Width = 1361
  Height = 477
  Caption = 'Tela de Consulta'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbSoletrado: TLabel
    Left = 176
    Top = 8
    Width = 3
    Height = 13
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 1337
    Height = 353
    DataSource = frDataModule.dsCadastro
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = DBGrid1KeyPress
    OnKeyUp = DBGrid1KeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'BDCODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDRAZAO'
        Title.Caption = 'Raz'#227'o Social'
        Width = 275
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDCNPJ'
        Title.Caption = 'CNPJ'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDNOMEFANTASIA'
        Title.Caption = 'NomeFantasia'
        Width = 217
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDTELEFONE'
        Title.Caption = 'Telefone Fixo'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDCELULAR'
        Title.Caption = 'Celular'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDLOGRADOURO'
        Title.Caption = 'Logradouro'
        Width = 155
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDNUMERO'
        Title.Caption = 'N'#186
        Width = 24
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDBAIRRO'
        Title.Caption = 'Bairro'
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDCIDADE'
        Title.Caption = 'Cidade'
        Width = 137
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDESTADO'
        Title.Caption = 'Estado'
        Width = 48
        Visible = True
      end>
  end
  object btExcluir: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 1
    OnClick = btExcluirClick
  end
  object Button2: TButton
    Left = 96
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
  end
end
