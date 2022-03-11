unit UTelaOpcaoPaciente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTelaOpcaoPadrao, StdCtrls, UCadastroPaciente, UConsultaPaciente;

type
  TfrTelaOpcaoPaciente = class(TfrTelaOpcaoPadrao)
    procedure btCadastrarClick(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frTelaOpcaoPaciente: TfrTelaOpcaoPaciente;

implementation

{$R *.dfm}

procedure TfrTelaOpcaoPaciente.btCadastrarClick(Sender: TObject);
var
  wTelaCadastroPaciente: TfrCadastroPaciente;
begin
  inherited;
  wTelaCadastroPaciente:= TfrCadastroPaciente.Create(Self);
  wTelaCadastroPaciente.Show;

end;

procedure TfrTelaOpcaoPaciente.btConsultarClick(Sender: TObject);
var
  wTelaConsultaPaciente: TfrConsultaPaciente;
begin
  inherited;
  wTelaConsultaPaciente:= TfrConsultaPaciente.Create(Self);
  wTelaConsultaPaciente.Show;

end;

end.
