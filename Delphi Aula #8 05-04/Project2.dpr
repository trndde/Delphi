program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frPrincipal},
  uDataModule in 'uDataModule.pas' {frDataModule: TDataModule},
  uConsulta in 'uConsulta.pas' {frConsulta};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.CreateForm(TfrDataModule, frDataModule);
  Application.CreateForm(TfrConsulta, frConsulta);
  Application.Run;
end.
