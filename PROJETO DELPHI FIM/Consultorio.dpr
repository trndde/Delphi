program Consultorio;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {frPrincipal},
  UClasses in 'UClasses.pas',
  UDataModule in 'UDataModule.pas' {frDataModule: TDataModule},
  UCadastroPadrao in 'UCadastroPadrao.pas' {frCadastroPadrao},
  UTelaOpcaoPadrao in 'UTelaOpcaoPadrao.pas' {frTelaOpcaoPadrao},
  UConsultaPadrao in 'UConsultaPadrao.pas' {frConsultaPadrao},
  UCadastroPaciente in 'UCadastroPaciente.pas' {frCadastroPaciente},
  UCadastroVisitante in 'UCadastroVisitante.pas' {frCadastroVisitante},
  UCadastroMedico in 'UCadastroMedico.pas' {frCadastroMedico},
  UConsultaPaciente in 'UConsultaPaciente.pas' {frConsultaPaciente},
  UConsultaVisitante in 'UConsultaVisitante.pas' {frConsultaVisitante},
  UConsultaMedico in 'UConsultaMedico.pas' {frConsultaMedico},
  UTelaOpcaoPaciente in 'UTelaOpcaoPaciente.pas' {frTelaOpcaoPaciente},
  UTelaOpcaoVisitante in 'UTelaOpcaoVisitante.pas' {frTelaOpcaoVisitante},
  UTelaOpcaoMedico in 'UTelaOpcaoMedico.pas' {frTelaOpcaoMedico};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.CreateForm(TfrDataModule, frDataModule);
  Application.Run;
end.
