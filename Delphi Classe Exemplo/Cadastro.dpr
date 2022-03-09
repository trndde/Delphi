program Cadastro;

uses
  Forms,
  Fcadastro in 'Fcadastro.pas' {Form1},
  Ucadastro in 'Ucadastro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
