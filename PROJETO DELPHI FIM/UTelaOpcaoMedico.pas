unit UTelaOpcaoMedico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTelaOpcaoPadrao, StdCtrls, UCadastroMedico, UConsultaMedico;

type
  TfrTelaOpcaoMedico = class(TfrTelaOpcaoPadrao)
    procedure btCadastrarClick(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frTelaOpcaoMedico: TfrTelaOpcaoMedico;

implementation

{$R *.dfm}

procedure TfrTelaOpcaoMedico.btCadastrarClick(Sender: TObject);
var
  wTelaCadastroMedico: TfrCadastroMedico;
begin
  inherited;
  wTelaCadastroMedico:= TfrCadastroMedico.Create(Self);
  wTelaCadastroMedico.Show;

end;

procedure TfrTelaOpcaoMedico.btConsultarClick(Sender: TObject);
var
  wTelaConsultaMedico: TfrConsultaMedico;
begin
  inherited;
  wTelaConsultaMedico:= TfrConsultaMedico.Create(Self);
  wTelaConsultaMedico.Show;
end;

end.
