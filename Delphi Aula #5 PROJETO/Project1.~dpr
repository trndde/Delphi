program Project1;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {frPrincipal},
  UClasses in 'UClasses.pas',
  UPadraoCadastro in 'UPadraoCadastro.pas' {frPadraoCadastro},
  UPadraoConsulta in 'UPadraoConsulta.pas' {frPadraoConsulta},
  UDataModule in 'UDataModule.pas' {frDataModule: TDataModule},
  UCadastroCPF in 'UCadastroCPF.pas' {frCadastroPessoaFisica},
  UCadastroCNPJ in 'UCadastroCNPJ.pas' {frCadastroPessoaJuridica},
  UConsultaCPF in 'UConsultaCPF.pas' {frConsultaPessoaFisica},
  UConsultaCNPJ in 'UConsultaCNPJ.pas' {frConsultaPessoaJuridica};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.CreateForm(TfrPadraoCadastro, frPadraoCadastro);
  Application.CreateForm(TfrPadraoConsulta, frPadraoConsulta);
  Application.CreateForm(TfrDataModule, frDataModule);
  Application.CreateForm(TfrCadastroPessoaFisica, frCadastroPessoaFisica);
  Application.CreateForm(TfrCadastroPessoaJuridica, frCadastroPessoaJuridica);
  Application.CreateForm(TfrConsultaPessoaFisica, frConsultaPessoaFisica);
  Application.CreateForm(TfrConsultaPessoaJuridica, frConsultaPessoaJuridica);
  Application.Run;
end.
