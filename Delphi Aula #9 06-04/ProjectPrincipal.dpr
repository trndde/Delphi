program ProjectPrincipal;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frPrincipal},
  uDataModule in 'uDataModule.pas' {frDataModule: TDataModule},
  Unit2 in 'Unit2.pas' {DataModule2: TDataModule},
  uConsulta in 'uConsulta.pas' {frConsulta};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.CreateForm(TfrDataModule, frDataModule);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TfrConsulta, frConsulta);
  Application.Run;
end.
