program Project1;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {frPrincipal},
  UClasses in 'UClasses.pas',
  UCadastroPadrao in 'UCadastroPadrao.pas' {frCadastroPadrao},
  UConsultaPadrao in 'UConsultaPadrao.pas' {frConsultaPadrao},
  UDataModule in 'UDataModule.pas' {frDataModule: TDataModule},
  UCadastroProduto in 'UCadastroProduto.pas' {frCadastroProduto},
  UCadastroFornecedor in 'UCadastroFornecedor.pas' {frCadastroFornecedor},
  UConsultaProduto in 'UConsultaProduto.pas' {frConsultaProduto},
  UConsultaFornecedor in 'UConsultaFornecedor.pas' {frConsultaFornecedor};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.CreateForm(TfrDataModule, frDataModule);
  Application.Run;
end.
