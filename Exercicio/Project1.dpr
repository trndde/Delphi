program Project1;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frPrincipal},
  uClasses in 'uClasses.pas',
  uCadastroPadrao in 'uCadastroPadrao.pas' {frCadastroPadrao},
  uCadastroCliente in 'uCadastroCliente.pas' {frCadastroCliente},
  uDataModule in 'uDataModule.pas' {dmCadastro: TDataModule},
  uCadastroEmpresa in 'uCadastroEmpresa.pas' {frCadastroEmpresa},
  uGrPrincipal in 'uGrPrincipal.pas' {frGridPrincipal},
  uGrCliente in 'uGrCliente.pas' {frGridCliente},
  uGrEmpresa in 'uGrEmpresa.pas' {GrEmpresa};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.CreateForm(TfrCadastroPadrao, frCadastroPadrao);
  Application.CreateForm(TfrCadastroCliente, frCadastroCliente);
  Application.CreateForm(TdmCadastro, dmCadastro);
  Application.CreateForm(TfrCadastroEmpresa, frCadastroEmpresa);
  Application.CreateForm(TfrGridPrincipal, frGridPrincipal);
  Application.CreateForm(TfrGridCliente, frGridCliente);
  Application.CreateForm(TGrEmpresa, GrEmpresa);
  Application.Run;
end.
