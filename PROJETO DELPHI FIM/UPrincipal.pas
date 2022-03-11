unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UTelaOpcaoPaciente, UTelaOpcaoVisitante, UTelaOpcaoMedico;

type
  TfrPrincipal = class(TForm)
    btPaciente: TButton;
    btVisitante: TButton;
    btMedico: TButton;
    btSair: TButton;
    procedure btPacienteClick(Sender: TObject);
    procedure btVisitanteClick(Sender: TObject);
    procedure btMedicoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frPrincipal: TfrPrincipal;

implementation

{$R *.dfm}

procedure TfrPrincipal.btPacienteClick(Sender: TObject);
var
  wTelaOpcaoPaciente: TfrTelaOpcaoPaciente;
begin
  wTelaOpcaoPaciente:= TfrTelaOpcaoPaciente.Create(Self);
  wTelaOpcaoPaciente.Show;
end;

procedure TfrPrincipal.btVisitanteClick(Sender: TObject);
var
  wTelaOpcaoVisitante: TfrTelaOpcaoVisitante;
begin
  wTelaOpcaoVisitante:= TfrTelaOpcaoVisitante.Create(Self);
  wTelaOpcaoVisitante.Show;
end;

procedure TfrPrincipal.btMedicoClick(Sender: TObject);
var
  wTelaOpcaoMedico: TfrTelaOpcaoMedico;
begin
  wTelaOpcaoMedico:= TfrTelaOpcaoMedico.Create(Self);
  wTelaOpcaoMedico.Show;
end;

end.

