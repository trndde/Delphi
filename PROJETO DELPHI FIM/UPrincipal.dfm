object frPrincipal: TfrPrincipal
  Left = 227
  Top = 408
  Width = 928
  Height = 480
  Caption = 'frPrincipal'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btPaciente: TButton
    Left = 48
    Top = 32
    Width = 75
    Height = 25
    Caption = 'btPaciente'
    TabOrder = 0
    OnClick = btPacienteClick
  end
  object btVisitante: TButton
    Left = 48
    Top = 72
    Width = 75
    Height = 25
    Caption = 'btVisitante'
    TabOrder = 1
    OnClick = btVisitanteClick
  end
  object btMedico: TButton
    Left = 48
    Top = 112
    Width = 75
    Height = 25
    Caption = 'btMedico'
    TabOrder = 2
    OnClick = btMedicoClick
  end
  object btSair: TButton
    Left = 48
    Top = 152
    Width = 75
    Height = 25
    Caption = 'btSair'
    TabOrder = 3
  end
end
