program Project1;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {frPrincipal},
  UClasses in 'UClasses.pas',
  UCadastroPadrao in 'UCadastroPadrao.pas' {frCadastroPadrao},
  UCadastroCarro in 'UCadastroCarro.pas' {frCadastroCarro},
  UCadastroMoto in 'UCadastroMoto.pas' {frCadastroPadrao2},
  UDataModule in 'UDataModule.pas' {frDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.CreateForm(TfrCadastroPadrao, frCadastroPadrao);
  Application.CreateForm(TfrCadastroCarro, frCadastroCarro);
  Application.CreateForm(TfrCadastroPadrao2, frCadastroPadrao2);
  Application.CreateForm(TfrDataModule, frDataModule);
  Application.Run;
end.
